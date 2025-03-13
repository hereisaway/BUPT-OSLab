// kernel.c
void kernel_main() {
    const char *str = "Hello, World!";
    char *video_memory = (char *) 0xb8000;

    for (int i = 0; str[i] != '\0'; i++) {
        video_memory[i * 2] = str[i];      // 字符
        video_memory[i * 2 + 1] = 0x07;    // 属性字节 (白底黑字)
    }
}
