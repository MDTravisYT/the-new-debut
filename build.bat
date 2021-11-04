@echo off

IF EXIST s1Debuilt.bin move /Y s1Debuilt.bin s1Debuilt.prev.bin >NUL
asm68k /k /p /o ae- BuildFull.asm, s1Debuilt.bin >errors.txt, sonic.sym, sonic.lst

convsym sonic.sym s1Debuilt.bin -input asm68k_sym -a
fixheadr.exe s1Debuilt.bin