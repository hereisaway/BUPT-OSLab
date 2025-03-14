# Makefile
CC = gcc
AS = nasm

CFLAGS = -ffreestanding -c

all: iso

iso: boot.bin kernel.o
	    cat boot.bin kernel.o > kernel.img

boot.bin: boot.asm
	    $(AS) boot.asm -f bin -o boot.bin
	
kernel.o: kernel.c
	    $(CC) $(CFLAGS) kernel.c -o kernel.o

clean:
	    rm -f *.o *.bin *.img
