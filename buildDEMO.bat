@echo off

IF EXIST s1DebuiltDemo.bin move /Y s1DebuiltDemo.bin s1DebuiltDemo.prev.bin >NUL
asm68k /k /p /o ae- BuildDemo.asm, s1DebuiltDemo.bin >errors.txt, sonic.sym, sonic.lst

convsym sonic.sym s1DebuiltDemo.bin -input asm68k_sym -a
fixheadr.exe s1DebuiltDemo.bin