# YummyOS

**a custom operating system project**

ok so...

this repo has existed for a while, but i never really got around to actually building YummyOS.

so i'm starting over properly.

YummyOS is an experimental operating system project where i can learn how the pieces of an OS actually work instead of just making a themed Linux distro.

## current status

**very early.**

right now the goal is simple:

> boot something that i actually wrote.

The first milestone is a tiny x86 kernel that can boot through GRUB and write to the screen.

From there, YummyOS will grow piece by piece.

## roadmap

### phase 1 — boot

- [x] bootable kernel
- [x] GRUB multiboot entry
- [x] basic screen output
- [ ] keyboard input
- [ ] interrupts
- [ ] timer
- [ ] memory management

### phase 2 — kernel

- [ ] physical memory manager
- [ ] virtual memory
- [ ] heap allocator
- [ ] processes
- [ ] basic scheduler
- [ ] system calls

### phase 3 — userspace

- [ ] filesystem
- [ ] shell
- [ ] basic commands
- [ ] user programs
- [ ] program loader

### phase 4 — hardware

- [ ] disk I/O
- [ ] framebuffer
- [ ] networking
- [ ] USB/input
- [ ] hardware detection

### phase 5 — desktop

- [ ] window system
- [ ] compositor
- [ ] graphical shell
- [ ] applications

none of these are promises that they're already implemented. they're just where i'd like to take the project.

## building

YummyOS currently targets **x86** and uses GRUB to load the kernel.

### dependencies

On an Arch-based system:

```bash
sudo pacman -S --needed base-devel grub xorriso
```

You'll also need a C compiler capable of producing 32-bit freestanding binaries.

### build

```bash
make
```

This creates:

```text
build/yummyos.iso
```

### run in QEMU

```bash
make run
```

or:

```bash
qemu-system-i386 -cdrom build/yummyos.iso
```

No real hardware is required.

## project structure

```text
YummyOS/
├── src/
│   ├── boot.s
│   └── kernel.c
├── grub/
│   └── grub.cfg
├── Makefile
├── linker.ld
├── .gitignore
└── README.md
```

The project is intentionally tiny right now.

As the kernel grows, the structure will be split into proper subsystems instead of turning into one giant pile of files.

## philosophy

YummyOS isn't supposed to be:

- a KDE theme
- an Arch installer with a different wallpaper
- a Linux distribution with a bunch of preinstalled apps

It might eventually have userspace tools and even a graphical desktop, but the interesting part is building the underlying system myself.

The goal is to understand what is actually happening underneath the desktop.

## development

For now, development happens primarily in QEMU.

I don't recommend testing experimental kernel code on your main machine.

If something breaks:

**good.**

that's kind of the point.

## status

YummyOS is experimental, incomplete, and very much a work in progress.

don't install it on anything important.

---

**YummyOS — let's see how far this thing can go.**
