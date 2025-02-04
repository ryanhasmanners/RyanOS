@echo off
set file=boot
nasm -f bin %file%.asm -o %file%.bin
copy %file%.bin %file%.img
"C:\Program Files\qemu\qemu-system-x86_64" %file%.bin