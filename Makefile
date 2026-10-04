CC ?= gcc
LD ?= ld
AS ?= as
GRUB_MKRESCUE ?= grub-mkrescue

CFLAGS := -m32 -ffreestanding -fno-pie -fno-stack-protector -Wall -Wextra -O2
LDFLAGS := -m elf_i386 -T linker.ld

BUILD := build
ISO_ROOT := $(BUILD)/isodir
KERNEL := $(BUILD)/yummyos.bin
ISO := $(BUILD)/yummyos.iso

.PHONY: all clean run

all: $(ISO)

$(BUILD):
	mkdir -p $(BUILD)

$(BUILD)/boot.o: src/boot.s | $(BUILD)
	$(AS) --32 $< -o $@

$(BUILD)/kernel.o: src/kernel.c | $(BUILD)
	$(CC) $(CFLAGS) -c $< -o $@

$(KERNEL): $(BUILD)/boot.o $(BUILD)/kernel.o linker.ld
	$(LD) $(LDFLAGS) -o $@ $(BUILD)/boot.o $(BUILD)/kernel.o

$(ISO): $(KERNEL) grub/grub.cfg
	mkdir -p $(ISO_ROOT)/boot/grub
	cp $(KERNEL) $(ISO_ROOT)/boot/yummyos.bin
	cp grub/grub.cfg $(ISO_ROOT)/boot/grub/grub.cfg
	$(GRUB_MKRESCUE) -o $@ $(ISO_ROOT)

run: $(ISO)
	qemu-system-i386 -cdrom $(ISO)

clean:
	rm -rf $(BUILD)
