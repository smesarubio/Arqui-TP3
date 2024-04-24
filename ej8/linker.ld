ENTRY(_start)

SECTIONS {
    . = 0x08048000;   /* Specify desired starting address */
    .text :
    {
        *(.text)       /* Place all text sections (code) here */
    }

    .data :
    {
        *(.data)       /* Place all initialized data sections here */
    }

    .bss :
    {
        *(.bss)        /* Place all uninitialized data (zero-initialized) here */
    }
}
