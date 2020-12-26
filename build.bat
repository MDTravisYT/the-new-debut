@echo off

IF EXIST s1built.bin move /Y s1built.bin s1built.prev.bin >NUL
asm68k /k /p /o ae- sonic.asm, s1built.bin >errors.txt, sonic.sym, sonic.lst

convsym sonic.sym s1built.bin -input asm68k_sym -a
fixheadr.exe s1built.bin