# openofpcwc-hidden-and-dangerous
## Operation Flashpoint: Cold War Crisis — Hidden & Dangerous Remake
A total conversion project that fuses the open-world military sandbox of *Operation Flashpoint: Cold War Crisis* (2001) with the squad-based tactical stealth and behind-enemy-lines sabotage of *Hidden & Dangerous* (1999), built on the open-sourced Poseidon engine source.


## Github Treeview
[https://treegit.macosxjs.com/?url=igiteam/openofpcwc-hidden-and-dangerous](https://treegit.macosxjs.com/?url=igiteam/openofpcwc-hidden-and-dangerous)

## Github Tree Api Direct JSON
[https://api.github.com/repos/igiteam/openofpcwc-hidden-and-dangerous/git/trees/main?recursive=1](https://api.github.com/repos/igiteam/openofpcwc-hidden-and-dangerous/git/trees/main?recursive=1)

## Poseidon WASM (browser build)
[https://motionmark.itch.io/poseidonwasm](https://motionmark.itch.io/poseidonwasm)

## Operation Flashpoint: Cold War Crisis
[![Operation Flashpoint: Cold War Crisis](https://raw.githubusercontent.com/igiteam/openofpcwc/refs/heads/main/operation-flashpoint-find-the-car-mission.png)](https://www.youtube.com/watch?v=CH3JswOpzIQ)

[![FDFMod 1.4 WW2 missions (OFP 25 Years)](https://img.youtube.com/vi/7Mmh5EVLjCE/maxresdefault.jpg)](https://ytembed.macosxjs.com/?N01taDVFVkxqQ0U)

[![Hidden & Dangerous 1 Deluxe completed in 86 minutes, annotated 2D version](https://img.youtube.com/vi/nXCtiULbxlU/maxresdefault.jpg)](https://ytembed.macosxjs.com/?blhDdGlVTGJ4bFU)

[![Hidden and Dangerous Deluxe Ultimate Mod 5.0, Fallen Gods, Greece, 1946](https://img.youtube.com/vi/fsaWn2QWSnI/maxresdefault.jpg)](https://ytembed.macosxjs.com/?ZnNhV24yUVdTbkk)

## WS11WineCX20.0.4 (MacOSX Big Sur 32bit)
[WS11WineCX20.0.4.tar.7z](https://github.com/vitor251093/porting-kit-engines/releases/download/wineskin/WS11WineCX20.0.4.tar.7z)

[![wine windows games on macosx](https://raw.githubusercontent.com/igiteam/igi1-macbook-3d-workstation/refs/heads/main/wine-engine-config.png)](https://github.com/igiteam/wine_engines)

## openofpcwc-projectigi
[https://github.com/igiteam/openofpcwc-projectigi](https://github.com/igiteam/openofpcwr)

[![openofpcwc-projectigi](https://raw.githubusercontent.com/igiteam/openofpcwr/refs/heads/main/Operation-Flashpoint-Cold-War-Crisis-Free.jpg)](https://github.com/igiteam/openofpcwr)

## Operation Flashpoint - Cold War Crisis 2001
[![Operation Flashpoint - Cold War Crisis 2001](https://raw.githubusercontent.com/igiteam/openofpcwr/refs/heads/main/operation-flashpoint-cold-war-crisis-cd-cover.jpg)](https://archive.org/details/Nova_OperationFlashpointCWCUSA)

## Bohemia Interactive Editing Tools Bundle 1.6gb
[![Bohemia Interactive Editing Tools Bundle 1.6gb](https://raw.githubusercontent.com/igiteam/openofpcwc/refs/heads/main/wrpedit-0-93-beta.png)](https://archive.org/details/bohemia-interactive-editing-tools) 

## Digimask SDK
[![Digimask SDK](https://raw.githubusercontent.com/igiteam/postal2-half-dude-the-thing/refs/heads/main/digimask-wireframe.png)](https://archive.org/details/digimask-launchpad2-2002)

[DigimaskPS2.txt](https://raw.githubusercontent.com/igiteam/postal2-half-dude-the-thing/refs/heads/main/digimaskps2.txt)

[This is Football 2005 PS2 Digimask](https://archive.org/download/PS2_COLLECTION_PART25/This%20Is%20Football%202005%20%28Europe%29%20%28En%2CEs%2CPt%2CAr%29.zip)

## opflash_-_uber_editor_tutorial
[![opflash_-_uber_editor_tutorial](https://raw.githubusercontent.com/igiteam/opflash_-_uber_editor_tutorial_FlipBook/refs/heads/main/opflash_-_uber_editor_tutorial_page_1.png)](https://igiteam.github.io/opflash_-_uber_editor_tutorial_FlipBook/)

## Operation Flashpoint: Cold War Crisis Tutorials
[https://archive.org/details/tutorials-ofp](https://archive.org/details/tutorials-ofp)

[https://archive.org/details/rinza_ofp_tutorials_eng](https://archive.org/details/rinza_ofp_tutorials_eng)

[![Operation Flashpoint Tutorials](https://img.youtube.com/vi/Rce72rPMGu0/maxresdefault.jpg)](https://www.youtube.com/playlist?list=PLb8oNKiUbnjFTciA4gaSJ2w1PmcAfNo4Q)

[https://www.moddb.com/games/hidden-dangerous/downloads](https://www.moddb.com/games/hidden-dangerous/downloads)

[https://www.hidden-and-dangerous.net/](https://www.hidden-and-dangerous.net/)

[http://warhd.faithweb.com/](http://warhd.faithweb.com/)

[https://www.moddb.com/games/hidden-dangerous/mods](https://www.moddb.com/games/hidden-dangerous/mods)

[https://archive.org/download/h-d-Collec/H_D_English.iso](https://archive.org/download/h-d-Collec/H_D_English.iso)




## Hidden & Dangerous (1999) to Operation Flashpoint: Cold War Crisis

Format conversion map for the `opencwc-hidden-and-dangerous` total conversion.

> ⚠️ **Confidence note:** Unlike the Project I.G.I. map, H&D1's asset formats are
> essentially undocumented. Rows marked **[?]** are inferred from H&D2/Mafia
> (same studio, related `.dta` archive lineage) and need verification against
> real H&D1 files before being trusted. Rows marked **[confirmed]** are things
> we actually know from public sources.

---

## Conversion Map

| H&D1 Format | H&D1 Role | OFP CWC Target | OFP Role | Difficulty | Notes |
|---|---|---|---|---|---|
| `.dta` + `.cnt` | Game archive + directory index **[confirmed]** | `.pbo` | Addon archive | Medium | `.dta` is a RAR-style archive; `.cnt` holds the file table. Unpack first, then repack converted assets into PBO via MakePbo/BinPbo. |
| `.i3d` | Game resource / scene data **[?]** | `.p3d` (ODOL7) | Model + scene node graph | Very High | Believed to be a scene/resource container rather than raw mesh. Needs reverse-engineering before any mapping. No public converter exists. |
| `.4ds` | 3D model (H&D2 confirmed; H&D1 usage **[?]**) | `.p3d` (ODOL7) | Model geometry | High | H&D2 `.4ds` has 010 Editor templates and a 3ds Max plugin. If H&D1 shares the format, export via 4ds → OBJ/3DS → Oxygen. Scale conversion needed. |
| `.dds` / `.tga` | Textures **[?]** | `.paa` / `.pac` | OFP textures | Medium | If H&D1 ships DDS/TGA, convert to PAA/PAC. OFP `.wrp` references textures via a 512-entry table of 32-byte ASCIIZ filenames. |
| Terrain (format unknown) **[?]** | Heightmap + terrain mesh | `.wrp` (4WVR) | 256x256 heightmap + texture index grid | Very High | H&D1 terrain container is undocumented. Must be baked to a flat heightmap; OFP's `.wrp` is strictly a uniform 256x256 grid. |
| Lightmaps (format unknown) **[?]** | Static terrain/object lighting | `.p3d` vertex lighting / baked `.paa` | Object lighting | High | No direct OFP terrain-lightmap slot in 4WVR. Rebake in Oxygen or export as texture overlays. |
| `.wav` | Audio samples **[confirmed]** | `.wss` / OGG | Audio | Medium | Straightforward audio transcode. |
| Video (`.bik` / `.avi`) **[?]** | Cutscenes / intro | `.ogv` | OFP cutscenes | Low | Re-encode to Theora/OGV. |
| Mission / level scripts **[?]** | Level logic, triggers, AI | `.sqs` / `.sqf` + mission editor | OFP scripting + waypoints | Very High | No bytecode-level mapping. Must be reimplemented as missions in the OFP editor. |
| AI navigation data **[?]** | Pathfinding graph | Engine-internal (no file) | OFP pathfinding | Very High | No external navmesh format in OFP. Discard; approximate via editor waypoints. |
| Fonts / UI **[?]** | Bitmap fonts, menus | `.fxy` + `.paa` | UI text + textures | Medium | Remap glyphs to OFP's FXY descriptor + PAA atlas. |
| Skeletal animation **[?]** | Character animations | `.rtm` | Animation | Very High | Must be retargeted/re-authored in Oxygen. No public H&D1 anim exporter known. |

---

## Key Conversion Constraints

1. **You must unpack `.dta` first.** Everything else is blocked until the archive is open. `.dta` is RAR-lineage; `.cnt` is the index. Get the file list before mapping anything.

2. **`.i3d` is the big unknown.** It may be a scene container, a resource bundle, or the mesh format itself. Until a hex dump is analysed, treat it as "unknown — needs RE" rather than mapping it to `.p3d`.

3. **Models must go through Oxygen.** Same as the I.G.I. project: no direct converter to `.p3d`. If H&D1 models can be exported to OBJ/3DS, Oxygen can import them. Note the 10x scale increase for 3DS-to-P3D.

4. **Terrain is the hardest bottleneck.** OFP's `.wrp` is a strict 256x256 uniform grid; H&D1's terrain container is undocumented. You'll need to bake H&D1 terrain down to a flat heightmap before a 4WVR writer can emit it.

5. **Scripts and AI are not convertible.** Mission logic and pathfinding must be reimplemented in the OFP editor — this is a total conversion, not a port.

6. **Binarize for final packaging.** Author `.wrp` in 4WVR (WrpTool/Visitor) and `.p3d` in Oxygen, then Binarize to OPRW/ODOL for the engine.

---

## Suggested Research Order

1. Unpack `.dta`/`.cnt` — get the raw asset list.
2. Hex-dump a small `.i3d` and a `.4ds` — identify headers/magic bytes.
3. Check whether H&D1 shares `.4ds` with H&D2 (if yes, the 010 templates and 3ds Max plugin are usable).
4. Only then attempt a real IGI-style mapping table with confirmed field-level correspondences.

## Quick Start

```sh
cmake --preset win-x64-clang-rwdi
cmake --build build/win-x64-clang-rwdi
```

On GNU/Linux, use the matching `linux-x64-clang-rwdi` preset.

## Layout

- [Apps](apps/README.md) - executable targets
- [Engine](engine/README.md) - engine libraries and Rust Trident tooling
- [Master server tools](mserver/README.md) - Rust service and CLI crates
- [Tests](tests/README.md) - test source trees; CI currently compiles them only
- `cmake/` - presets, toolchains, vcpkg triplets, and overlay ports
- `docker/` - container support for service and runtime environments
- `packages/` - ignored local game data staging area
- `resources/` - application icon resources
- `thirdparty/` - vendored third-party headers and sources

## Dev Environment

**Official White Wii Remote With Nunchuk — Tested And Working — £14.99**
[https://www.ebay.co.uk/itm/800847189353](https://www.ebay.co.uk/itm/800847189353)

**Infrared Sensor Bar USB for Wii Emulator Remote Motion Detection Setup — £6.69**
[https://www.ebay.co.uk/itm/227423830875](https://www.ebay.co.uk/itm/227423830875)

**Apple MacBook Pro Retina 15in (2014) i7 2.8GHz 16GB 1TB SSD GT 750M — £120.30**
[https://www.ebay.co.uk/itm/800844561513](https://www.ebay.co.uk/itm/800844561513)

**WS11WineCX20.0.4 (Wine engine)**
[https://igiteam.github.io/wine_engines/](https://igiteam.github.io/wine_engines/)

**Official Genuine Sony PS3 PlayStation 3 DualShock 3 Wireless Controller Black — £19.99**
[https://www.ebay.co.uk/itm/840031043465](https://www.ebay.co.uk/itm/840031043465)

**Amazon Basics 4K HDMI Cable 3m — 18Gbps High Speed with Ethernet, 4K@60Hz, 2160p — £8.44**
[https://www.ebay.co.uk/itm/327352257557](https://www.ebay.co.uk/itm/327352257557)

**wiimote_nunchuk_macosx**
[https://github.com/igiteam/wiimote-nunchuk](https://github.com/igiteam/wiimote-nunchuk)

**xbox360_input_gui_py**
[https://github.com/igiteam/xbox360_input_gui_py](https://github.com/igiteam/xbox360_input_gui_py)

**logitec_mx_mouse_3_macos**
[https://github.com/igiteam/logitec_mx_mouse_3_macos](https://github.com/igiteam/logitec_mx_mouse_3_macos)

**igi1-macbook-3d-workstation**
[https://github.com/igiteam/igi1-macbook-3d-workstation](https://github.com/igiteam/igi1-macbook-3d-workstation)

---
