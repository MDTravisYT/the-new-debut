; ===========================================================================
; ---------------------------------------------------------------------------
; Bitmap MD Display ROM (Test ROM)
; ---------------------------------------------------------------------------

StartROM:	dc.l	$00000000, StartGame, $00000000, $00000000
		dc.l	$00000000, $00000000, $00000000, $00000000
		dc.l	$00000000, $00000000, $00000000, $00000000
		dc.l	$00000000, $00000000, $00000000, $00000000
		dc.l	$00000000, $00000000, $00000000, $00000000
		dc.l	$00000000, $00000000, $00000000, $00000000
		dc.l	$00000000, $00000000, $00000000, $00000000
		dc.l	$00000000, $00000000, $00000000, $00000000
		dc.l	$00000000, $00000000, $00000000, $00000000
		dc.l	$00000000, $00000000, $00000000, $00000000
		dc.l	$00000000, $00000000, $00000000, $00000000
		dc.l	$00000000, $00000000, $00000000, $00000000
		dc.l	$00000000, $00000000, $00000000, $00000000
		dc.l	$00000000, $00000000, $00000000, $00000000
		dc.l	$00000000, $00000000, $00000000, $00000000
		dc.l	$00000000, $00000000, $00000000, $00000000

ConsoleName:	dc.b	"SEGA MEGA DRIVE "
ProductDate:	dc.b	"(C)NAME YYYY.MMM"
TitleLocal:	dc.b	"Local Name                                      "
TitleInter:	dc.b	"International Name                              "
SerialNumber:	dc.b	"GM XXXXXXXXXXX"
Checksum:	dc.w	$0000
IOSupport:	dc.b	"J               "
ROMStart:	dc.l	StartROM
ROMFinish:	dc.l	FinishROM-$01
RAMStart:	dc.l	$00FF0000
RAMFinish:	dc.l	$00FFFFFF
SupportRAM:	dc.l	$20202020	; dc.b	'RA',%11111000,%00100000
SRAMStart:	dc.l	$20202020	; $00200000
SRAMFinish:	dc.l	$20202020	; $002003FF
ModemInfo:	dc.b	"                                                    "
ProductRegion:	dc.b	"JUE             "

; ---------------------------------------------------------------------------
; Start of code (Setup)
; ---------------------------------------------------------------------------

StartGame:
		move.b	($A10001).l,d0				; load hardware version/region
		andi.w	#$000F,d0				; get only the version number
		beq.s	SG_NoTMSS				; if the version is 0, branch (no TMSS in this machine)
		move.l	(ConsoleName).w,($A14000).l		; give TMSS the string "SEGA" so it unlocks the VDP
		moveq	#$00,d0					; clear d0

SG_NoTMSS:
		move.w	d0,($A11100).l				; request Z80 to stop
		move.w	d0,($A11200).l				; request Z80 reset on (resets YM2612)
		lea	($C00000).l,a5				; load VDP data port
		lea	$04(a5),a6				; load VDP control port
		move.l	#$40000010,(a6)				; set VDP to VSRAM write mode
		moveq	#($80/$04)-1,d2				; set size to clear

SG_ClearVSRAM:
		move.l	d0,(a5)					; clear VSRAM (VSRAM isn't used by Bitmap MD in any meaningful way and assumes Y position is 0)
		dbf	d2,SG_ClearVSRAM			; repeat until all of VSRAM is clear
		lea	$11(a5),a4				; load PSG port
		move.b	#$9F,(a4)				; mute all PSG channels
		move.b	#$BF,(a4)				; ''
		move.b	#$DF,(a4)				; ''
		move.b	#$FF,(a4)				; ''
		move.w	#$0100,d1				; prepare Z80 value/VDP register increment
		move.w	d1,($A11200).l				; request Z80 reset off

; ---------------------------------------------------------------------------
; The actual loading of the data from Bitmap MD here...
; ---------------------------------------------------------------------------

	; --- Loading VDP registers ---

		lea	(VDP).w,a0				; load VDP register data
		move.w	#$8000,d2				; prepare starting register
		moveq	#$12-1,d3				; set to write 12 registers (80 - 92)

BMD_WriteVDP:
		move.b	(a0)+,d2				; load VDP register data
		move.w	d2,(a6)					; save register value to VDP
		add.w	d1,d2					; advance to next register
		dbf	d3,BMD_WriteVDP				; repeat for 12 registers

	; --- Loading VRAM data into VRAM ---

		lea	(VRAM).w,a0				; load VRAM palette data
		move.l	#$40000000,(a6)				; set VDP to VRAM write mode
		move.w	#(($10000/$04)/$04)-1,d3		; size of VRAM data to copy

BMD_WriteVRAM:
		move.l	(a0)+,(a5)				; copy data into VRAM
		move.l	(a0)+,(a5)				; ''
		move.l	(a0)+,(a5)				; ''
		move.l	(a0)+,(a5)				; ''
		dbf	d3,BMD_WriteVRAM			; repeat until all data has been copied

	; --- Loading palette data into CRAM ---

		lea	(CRAM).w,a0				; load CRAM palette data
		move.l	#$C0000000,(a6)				; set VDP to CRAM write mode
		moveq	#(($80/$04)/$04)-1,d3			; size of palette to copy

BMD_WriteCRAM:
		move.l	(a0)+,(a5)				; copy colours into CRAM
		move.l	(a0)+,(a5)				; ''
		move.l	(a0)+,(a5)				; ''
		move.l	(a0)+,(a5)				; ''
		dbf	d3,BMD_WriteCRAM			; repeat until all colours have been copied

	; --- Finish (loop endlessly) ---

BMD_Loop:
		bra.w	BMD_Loop				; loop endlessly (VDP has data and will display endlessly)

; ===========================================================================
; ---------------------------------------------------------------------------
; Including Bitmap MD data
; ---------------------------------------------------------------------------

VDP:		incbin	"VDP.bin"
		even
CRAM:		incbin	"CRAM.bin"
		even
VRAM:		incbin	"VRAM.bin"
		even

FinishROM:	END

; ===========================================================================