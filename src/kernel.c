#include <stddef.h>
#include <stdint.h>

static volatile uint16_t *const VGA = (uint16_t *)0xB8000;
static size_t row = 0;
static size_t column = 0;
static const uint8_t color = 0x0F;

static void clear_screen(void)
{
    for (size_t i = 0; i < 80 * 25; ++i) {
        VGA[i] = ((uint16_t)color << 8) | ' ';
    }
}

static void put_char(char c)
{
    if (c == '\n') {
        column = 0;
        ++row;
        return;
    }

    VGA[row * 80 + column] = ((uint16_t)color << 8) | (uint8_t)c;

    ++column;
    if (column >= 80) {
        column = 0;
        ++row;
    }
}

static void print(const char *text)
{
    while (*text) {
        put_char(*text++);
    }
}

void kernel_main(uint32_t magic, uint32_t multiboot_info)
{
    (void)multiboot_info;

    clear_screen();

    print("YummyOS\n");
    print("--------\n\n");

    if (magic == 0x2BADB002) {
        print("kernel started successfully.\n");
        print("multiboot detected.\n\n");
        print("this is the beginning.\n");
    } else {
        print("warning: invalid multiboot magic.\n");
    }

    for (;;) {
        __asm__ volatile ("hlt");
    }
}
