OUTPUT_FORMAT("binary")
SECTIONS
{
    . = 0x1000; /* 内核加载地址 */
    .text : { *(.text) }
    .data : { *(.data) }
    .bss : { *(.bss) }
}
