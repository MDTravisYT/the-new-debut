; ---------------------------------------------------------------------------
; Hacker! (this now crashes the game which is a good result)
; ---------------------------------------------------------------------------

GM_Hacker:
		sfx	$8F,0,1,1	; play "SEGA" sound
		lea	VDP,a0				; load VDP register data
		move.w	#$8000,d2				; prepare starting register
		moveq	#$12-1,d3				; set to write 12 registers (80 - 92)

BMD_WriteVDP:
		move.b	(a0)+,d2				; load VDP register data
		move.w	d2,(a6)					; save register value to VDP
		add.w	d1,d2					; advance to next register
		dbf	d3,BMD_WriteVDP				; repeat for 12 registers

	; --- Loading VRAM data into VRAM ---

		lea	VRAM,a0				; load VRAM palette data
		move.l	#$40000000,(a6)				; set VDP to VRAM write mode
		move.w	#(($10000/$04)/$04)-1,d3		; size of VRAM data to copy

BMD_WriteVRAM:
		move.l	(a0)+,(a5)				; copy data into VRAM
		move.l	(a0)+,(a5)				; ''
		move.l	(a0)+,(a5)				; ''
		move.l	(a0)+,(a5)				; ''
		dbf	d3,BMD_WriteVRAM			; repeat until all data has been copied

	; --- Loading palette data into CRAM ---

		lea	CRAM,a0				; load CRAM palette data
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
VDP:		incbin	"misc\VDP.bin"
		even
CRAM:		incbin	"misc\CRAM.bin"
		even
VRAM:		incbin	"misc\CRAM.bin"
		even
; ===========================================================================