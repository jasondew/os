run : os.bin
	qemu-system-x86_64 -curses -drive format=raw,file=os.bin

os.bin : os.asm
	/usr/local/bin/nasm -f bin -o os.bin os.asm
