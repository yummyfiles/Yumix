<div align="center">

<a href="https://github.com/yummyfiles/Yumix">
  <img src="https://readme-typing-svg.demolab.com?font=Share+Tech+Mono&size=42&duration=2800&pause=900&color=FFFFFF&center=true&vCenter=true&width=700&height=80&lines=YUMIX;ARCH+%2B+HYPRLAND;A+LINUX+DISTRO+BY+YUMMYFILES" alt="Yumix animated title" />
</a>

<p>
  <strong>an Arch-based Linux distro built around Hyprland</strong>
</p>

<p>
  <img src="https://img.shields.io/badge/STATUS-EARLY%20DEVELOPMENT-000000?style=for-the-badge&labelColor=000000&color=ffffff" alt="Status: early development" />
  <img src="https://img.shields.io/badge/BASE-ARCH-000000?style=for-the-badge&labelColor=000000&color=ffffff" alt="Base: Arch" />
  <img src="https://img.shields.io/badge/DESKTOP-HYPRLAND-000000?style=for-the-badge&labelColor=000000&color=ffffff" alt="Desktop: Hyprland" />
  <img src="https://img.shields.io/badge/FOCUS-FOSS-000000?style=for-the-badge&labelColor=000000&color=ffffff" alt="Focus: FOSS" />
</p>

<br>

<img src="https://capsule-render.vercel.app/api?type=waving&color=000000&height=100&section=header&text=&fontColor=ffffff" width="100%" alt="" />

</div>

## ok so...

YummyOS started as me thinking i was gonna build an operating system from scratch.

yeah.

**we're not doing that anymore.**

instead, i'm building **Yumix** — an actual Linux distribution based on Arch, with Hyprland as the default desktop.

not a custom kernel project.  
not just a Hyprland rice.  
not Arch with a wallpaper slapped on it.

the goal is to make something that actually feels like its own distro.

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Share+Tech+Mono&size=20&duration=3200&pause=1200&color=FFFFFF&center=true&vCenter=true&width=650&height=45&lines=build+it.;boot+it.;break+it.;fix+it.;repeat." alt="Build it. Boot it. Break it. Fix it. Repeat." />

</div>

---

## what is Yumix?

Yumix is a lightweight, customizable, FOSS-focused Linux distribution built on top of Arch Linux.

the main desktop is **Hyprland**, with a setup that's meant to be clean, fast, minimal, and actually usable.

underneath, it's still Arch:

- Linux kernel
- systemd
- pacman
- Arch packages/repos
- rolling release model

Yumix is basically me taking the parts of Linux i actually want and putting them together into one proper distro.

<div align="center">

| layer | Yumix |
| :--- | :--- |
| **base** | Arch Linux |
| **kernel** | Linux |
| **init** | systemd |
| **desktop** | Hyprland |
| **display** | Wayland |
| **packages** | pacman |
| **build** | Archiso |
| **target** | x86_64 |

</div>

## current status

<div align="center">

<img src="https://img.shields.io/badge/YUMIX-0.1.0--dev-000000?style=for-the-badge&logo=linux&logoColor=white&labelColor=000000&color=ffffff" alt="Yumix 0.1.0 development" />

<br><br>

**very early.**

</div>

right now i'm working toward the first real bootable Yumix ISO.

the first big milestone is:

> build the ISO → boot it in QEMU → get into Yumix → make sure it actually works.

don't expect a polished daily-driver yet lol.

---

## the desktop

the default Yumix desktop is going for a pretty simple look:

- black / white
- high contrast
- minimal
- clean
- subtle transparency
- subtle blur
- not a giant pile of effects
- no neon RGB gamer stuff

i'll be making the official Yumix logo and default wallpaper myself.

those will be treated as actual distro branding instead of random placeholder art.

### planned desktop stack

```text
┌──────────────────────────────────────────────┐
│                    Yumix                     │
├──────────────────────────────────────────────┤
│                  Hyprland                    │
│                    │                         │
│        ┌───────────┼───────────┐             │
│        ▼           ▼           ▼             │
│     Waybar       Kitty       Launcher        │
│        │           │           │             │
│        └───────────┼───────────┘             │
│                    ▼                         │
│             Wayland / Linux                  │
│                    │                         │
│                 Arch Linux                   │
└──────────────────────────────────────────────┘
```

## planned features

- [ ] Arch Linux base
- [ ] Hyprland as the default desktop
- [ ] Wayland
- [ ] Waybar
- [ ] Kitty
- [ ] zsh
- [ ] PipeWire + WirePlumber
- [ ] XWayland
- [ ] notifications
- [ ] lock screen + idle management
- [ ] graphical file manager
- [ ] application launcher
- [ ] browser
- [ ] networking + Bluetooth
- [ ] hardware detection
- [ ] proper installer
- [ ] Yumix system tools
- [ ] customizable themes
- [ ] official Yumix branding
- [ ] reproducible ISO builds

---

## building Yumix

Yumix uses **Archiso** to build the ISO.

### dependencies

on an Arch-based system:

```bash
sudo pacman -S --needed archiso qemu-desktop make
```

### build the ISO

```bash
make iso
```

the ISO should end up somewhere around:

```text
build/Yumix-0.1.0-x86_64.iso
```

### test it

```bash
make run
```

QEMU is the main development/testing environment for now.

<div align="center">

<img src="https://capsule-render.vercel.app/api?type=rect&color=000000&height=2&section=header" width="90%" alt="" />

<sub>build → boot → test → break → fix → repeat</sub>

</div>

## project structure

the repo is being organized around the actual distro instead of the old custom-kernel experiment:

```text
Yumix/
├── assets/
│   └── branding/
├── profile/
│   ├── packages.x86_64
│   ├── profiledef.sh
│   ├── pacman.conf
│   └── airootfs/
├── configs/
│   ├── hypr/
│   ├── waybar/
│   ├── kitty/
│   └── zsh/
├── scripts/
├── packages/
├── tools/
├── docs/
├── tests/
├── Makefile
└── README.md
```

this will change as Yumix gets bigger.

---

## roadmap

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Share+Tech+Mono&size=22&duration=3000&pause=1000&color=FFFFFF&center=true&vCenter=true&width=700&height=50&lines=FOUNDATION;FIRST+ISO;DESKTOP;YUMIX+IDENTITY;INSTALLER;TOOLS;PACKAGES+%2B+RELEASES" alt="Yumix roadmap animation" />

</div>

### 01 — foundation

- [ ] clean up the old YummyOS stuff
- [ ] set up the Archiso profile
- [ ] get a reproducible ISO build working

### 02 — first ISO

- [ ] boot in QEMU
- [ ] live environment
- [ ] networking
- [ ] working terminal
- [ ] working Hyprland session

### 03 — desktop

- [ ] Hyprland configuration
- [ ] Waybar
- [ ] Kitty
- [ ] launcher
- [ ] notifications
- [ ] lock screen
- [ ] wallpaper
- [ ] audio

### 04 — Yumix identity

- [ ] official logo
- [ ] official wallpaper
- [ ] boot branding
- [ ] desktop branding
- [ ] theme system

### 05 — installer

- [ ] keyboard layout
- [ ] timezone
- [ ] hostname
- [ ] user setup
- [ ] disk/filesystem setup
- [ ] bootloader
- [ ] optional encryption
- [ ] safe destructive-operation warnings

### 06 — Yumix tools

- [ ] yumix-system
- [ ] yumix-update
- [ ] yumix-settings
- [ ] yumix-theme
- [ ] yumix-info
- [ ] yumix-doctor

these only get added if they actually make Yumix better.

i'm not trying to make 47 custom commands just because i can.

### 07 — packages + releases

- [ ] Yumix package repo
- [ ] reproducible release builds
- [ ] checksums
- [ ] GitHub releases
- [ ] proper versioning

---

## philosophy

Yumix should be an actual distro.

if someone downloads an ISO, boots it, and thinks:

> "oh, this is an actual Linux distro"

then we're doing it right.

i don't want Yumix to just be:

- a Hyprland config
- a dotfiles repo
- a themed Arch install
- a custom wallpaper
- a bunch of shell scripts

those things can be part of Yumix, but they aren't the whole thing.

## privacy

Yumix is meant to stay simple and privacy-conscious.

no:

- mandatory accounts
- telemetry
- ads
- subscriptions
- weird background services
- AI shoved into everything

FOSS software is preferred whenever it makes sense.

---

## development

the first versions will be tested mostly in QEMU before i start recommending them for real hardware.

if something breaks:

**that's what testing is for.**

don't install early development builds on anything you actually care about.

## status

<div align="center">

<img src="https://img.shields.io/badge/BUILDING-YUMIX-000000?style=for-the-badge&labelColor=000000&color=ffffff" alt="Building Yumix" />

<br>

**Yumix is very early and very much a work in progress.**

the goal isn't to pretend it's finished.

the goal is to actually build it.

<br>

<img src="https://capsule-render.vercel.app/api?type=waving&color=000000&height=120&section=footer" width="100%" alt="" />

### **Yumix Linux**

<sub>Arch-based · Hyprland-powered · made by YUMMYFILES</sub>

</div>
