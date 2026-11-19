#!/usr/bin/env bash
set -euo pipefail

# ====== CONFIG ======
OLD_OWNER="igiteam"
OLD_REPO="openofpcwc-projectigi"
NEW_OWNER="igiteam"                 # change if the new repo lives under a different user/org
NEW_REPO="openofpcwc-hidden-and-dangerous"
# ====================

# Prompt for token (hidden input)
read -r -s -p "Paste your GitHub Personal Access Token (repo scope): " GH_TOKEN
echo

if [[ -z "${GH_TOKEN}" ]]; then
  echo "No token provided. Aborting." >&2
  exit 1
fi

OLD_URL="https://github.com/${OLD_OWNER}/${OLD_REPO}.git"
AUTH_OLD="https://x-access-token:${GH_TOKEN}@github.com/${OLD_OWNER}/${OLD_REPO}.git"
AUTH_NEW="https://x-access-token:${GH_TOKEN}@github.com/${NEW_OWNER}/${NEW_REPO}.git"

WORKDIR="$(mktemp -d)"
BARE_DIR="${WORKDIR}/${OLD_REPO}.git"

cleanup() {
  # Remove temp dir and scrub token from any lingering git config
  if [[ -d "${BARE_DIR}" ]]; then
    git -C "${BARE_DIR}" remote set-url --push origin "https://github.com/${NEW_OWNER}/${NEW_REPO}.git" >/dev/null 2>&1 || true
  fi
  rm -rf "${WORKDIR}"
}
trap cleanup EXIT

echo "==> Creating new empty repo ${NEW_OWNER}/${NEW_REPO} on GitHub..."
# Create the new repo via the API (private by default; set "private": false to make it public)
HTTP_CODE=$(curl -s -o /tmp/gh_create_resp.json -w "%{http_code}" \
  -X POST \
  -H "Authorization: Bearer ${GH_TOKEN}" \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/user/repos \
  -d "{\"name\":\"${NEW_REPO}\",\"private\":true}")

if [[ "${HTTP_CODE}" == "201" ]]; then
  echo "    Created."
elif [[ "${HTTP_CODE}" == "422" ]]; then
  echo "    Repo already exists (or name conflict). Continuing with mirror push."
else
  echo "    Unexpected API response (HTTP ${HTTP_CODE}):" >&2
  cat /tmp/gh_create_resp.json >&2
  echo >&2
  echo "If the new repo is under an org, create it manually and re-run." >&2
  exit 1
fi
rm -f /tmp/gh_create_resp.json

echo "==> Bare-cloning source repo..."
git clone --bare "${AUTH_OLD}" "${BARE_DIR}"

echo "==> Mirror-pushing to ${NEW_OWNER}/${NEW_REPO}..."
git -C "${BARE_DIR}" push --mirror "${AUTH_NEW}"

echo
echo "Done. New repo: https://github.com/${NEW_OWNER}/${NEW_REPO}"
