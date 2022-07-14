EnableSRAM:	equ 0	; change to 1 to enable SRAM
BackupSRAM:	equ 1
AddressSRAM:	equ 3	; 0 = odd+even; 2 = even only; 3 = odd only

; Change to 0 to build the original version of the game, dubbed REV00
; Change to 1 to build the later vesion, dubbed REV01, which includes various bugfixes and enhancements
; Change to 2 to build the version from Sonic Mega Collection, dubbed REVXB, which fixes the infamous "spike bug"
Revision:	equ 0

; ZoneCount:	  equ 6	  ; discrete zones are: GHZ, MZ, SYZ, LZ, SLZ, and SBZ
; Note: this variable is obsolete. used for the now unused zonewarning macro and nothing else.

OptimiseSound:	equ 0	; change to 1 to optimise sound queuing

; 0 is full game
; 1 is demo mode
IsDemo:	equ 1

    include "sonic.asm"