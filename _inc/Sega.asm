		pea	(a0)
		lea	loc_6EB4(pc),a0
		move.l	a0,($FFFFC832).w
		movem.l	(sp)+,a0
		jsr	(Z80Load).l				; load the Z80
		lea	loc_6442(pc),a0
		jsr	sub_8D0
		bra.s	SegaContin
; ===========================================================================
; ---------------------------------------------------------------------------
loc_6442:	dc.w $8230
		dc.w $8407
		dc.w $833C
		dc.w $855C
		dc.w $8D2F
		dc.w $8B00
		dc.w $8C81
		dc.w $9011
		dc.w $8700
		dc.w $9100
		dc.w $9200
		dc.w 0
; ---------------------------------------------------------------------------
; ===========================================================================

SegaContin:
		move.w	#$80,($FFFFD820).w
		moveq	#$3F,d0
		moveq	#$3F,d1
		moveq	#0,d2
		move.w	($FFFFD816).w,d3
		jsr	sub_86E
		moveq	#$3F,d0
		moveq	#$3F,d1
		moveq	#0,d2
		move.w	($FFFFD818).w,d3
		jsr	sub_86E
		lea	PAL_Segalogo(pc),a0		; load Sega Palette address to a0
		lea	($FFFFD3E4).w,a1
		movem.l	(a0)+,d0-d7
		movem.l	d0-d7,(a1)
		lea	$20(a1),a1
		movem.l	(a0)+,d0-d7
		movem.l	d0-d7,(a1)
		bsr.w	sub_682C
		move.l	#$F01,d0
		moveq	#1,d1
		lea	($FFFFD164).w,a0
		moveq	#6,d7

loc_64AA:
		move.l	d0,(a0)+
		move.l	d1,(a0)+
		addq.w	#1,d0
		dbf	d7,loc_64AA
		move.l	#$F00,(a0)+
		move.l	d1,(a0)
		clr.w	($FFFFFAC4).w
		move.w	#1,($FFFFFAC6).w
		move.w	($FFFFFFC4).w,d0
		andi.w	#4,d0
		move.w	d0,($FFFFFAC8).w
		ori.w	#$8124,($FFFFC9BA).w
		move.w	($FFFFC9BA).w,($C00004).l
		ori.w	#$8144,($FFFFC9BA).w
		move.w	($FFFFC9BA).w,($C00004).l
		addq.w	#4,($FFFFD824).w		; increase sega screen mode

loc_64F2:				; DATA XREF: ROM:loc_64F2o
		pea	(loc_64F2).l
		bclr	#7,($FFFFFFC9).w

loc_64FES:				; CODE XREF: ROM:00006502j
		tst.b	($FFFFFFC9).w
		bpl.s	loc_64FES
		move.w	($FFFFD824).w,d0		; load sub mode to d0
		jmp	SegaSubArray(pc,d0.w)		; jump to correct sub mode routine
; ===========================================================================
; ---------------------------------------------------------------------------
; Sega Screen Sub Modes
; ---------------------------------------------------------------------------
SegaSubArray:	bra.w	GM_Sega
; ---------------------------------------------------------------------------
		bra.w	loc_6526
; ---------------------------------------------------------------------------
		bra.w	SegaPaletteStart
; ---------------------------------------------------------------------------
		bra.w	SegaPaletteCycle
; ---------------------------------------------------------------------------
		bra.w	loc_65C6
; ---------------------------------------------------------------------------
		bra.w	loc_65F6
; ---------------------------------------------------------------------------
MultiReturn:
		rts				; return

; ===========================================================================
; ---------------------------------------------------------------------------
; 
; ---------------------------------------------------------------------------

loc_6526:				; CODE XREF: ROM:00006510j
		tst.b	($FFFFC93C).w
		bpl.s	loc_6532
		move.w	#$14,($FFFFD824).w

loc_6532:				; CODE XREF: ROM:0000652Aj
		move.w	($FFFFFAC8).w,d0
		jmp	loc_653A(pc,d0.w)

loc_653A:
		bra.w	loc_696A
		bra.w	loc_6C20

; ===========================================================================
; ---------------------------------------------------------------------------
; Sega Screen palette cycling startup routine
; ---------------------------------------------------------------------------

SegaPaletteStart:				; CODE XREF: ROM:00006514j
		tst.b	($FFFFC93C).w
		bpl.s	loc_654E
		move.w	#$14,($FFFFD824).w

loc_654E:				; CODE XREF: ROM:00006546j
		subq.w	#1,($FFFFFAC4).w
		bne.s	MultiReturn
		moveq	#$3F,d0	; '?'
		moveq	#$3F,d1	; '?'
		moveq	#0,d2
		move.w	($FFFFD816).w,d3
		jsr	sub_86E
		moveq	#$3F,d0	; '?'
		moveq	#$3F,d1	; '?'
		moveq	#0,d2
		move.w	($FFFFD818).w,d3
		jsr	sub_86E
		move.w	#0,($FFFFFAC4).w			; clear colour number
		move.w	($FFFFD3E8).w,($FFFFFAC6).w		; save first colour to storage
		move.w	#$EEE,($FFFFD3E8).w			; save white to colour palette
		addq.w	#4,($FFFFD824).w			; increase sub mode
		rts						; return
; ===========================================================================
; ---------------------------------------------------------------------------
; Sega Screen palette cycling routine
; ---------------------------------------------------------------------------

SegaPaletteCycle:
		tst.b	($FFFFC93C).w
		bpl.s	loc_6594
		move.w	#$14,($FFFFD824).w

loc_6594:
		lea	($FFFFD3E8).w,a0			; load palette address to a0
		move.w	($FFFFFAC4).w,d0			; load current colour number to d0
		add.w	d0,d0					; double it
		adda.w	d0,a0					; add to colour palette location
		move.w	($FFFFFAC6).w,(a0)+			; reload original colour from storage
		move.w	(a0),($FFFFFAC6).w			; save next current colour to storage
		move.w	#$EEE,(a0)				; save white to colour palette
		addq.w	#1,($FFFFFAC4).w			; increase colour number to next colour
		cmpi.w	#$C,($FFFFFAC4).w			; has colour number finished at C?
		bne.w	MultiReturn				; if not, branch to return
		move.w	#$40,($FFFFFAC4).w			; set colour number to 40
		addq.w	#4,($FFFFD824).w			; increase sub mode
		rts						; return
; ===========================================================================
; ---------------------------------------------------------------------------
; 
; ---------------------------------------------------------------------------

loc_65C6:
		tst.b	($FFFFC93C).w
		bpl.s	loc_65D2
		move.w	#$14,($FFFFD824).w

loc_65D2:
		subq.w	#1,($FFFFFAC4).w			; minus 1 from colour number
		bpl.w	MultiReturn				; if still positive, branch
		moveq	#1,d0
		jsr	sub_6CC
		bne.w	MultiReturn
		move.w	#8,($FFFFD822).w			; set screen mode to title screen
		clr.l	($FFFFD824).w				; clear sub mode
		movea.l	(RomStart).w,sp
		jmp	MAINPROG				; jump to Main game array
; ===========================================================================
; ---------------------------------------------------------------------------
; 
; ---------------------------------------------------------------------------

loc_65F6:
		moveq	#1,d0
		jsr	sub_6CC
		bne.w	MultiReturn
		move.w	#8,($FFFFD822).w
		clr.l	($FFFFD824).w
		movea.l	(RomStart).w,sp
		jmp	MAINPROG
		
loc_6EB4:				; DATA XREF: ROM:00006426o
		movem.l	d0-a6,-(sp)
		jsr	sub_96E
		move.l	#$FFFFD164,d0
		move.w	($FFFFD81A).w,d1
		move.w	#$140,d2
		jsr	sub_5E8
		jsr	VDPSetup_01
		move.w	($FFFFD81C).w,d0
		lsl.l	#2,d0
		lsr.w	#2,d0
		ori.w	#$4000,d0
		swap	d0
		andi.w	#3,d0
		move.l	d0,($C00004).l
		move.l	($FFFFCA5E).w,($C00000).l
		move.l	#$40000010,($C00004).l
		move.l	($FFFFCDDE).w,($C00000).l
		move.w	($FFFFFFC4).w,d0
		add.w	d0,d0
		add.w	d0,d0
		add.w	($FFFFFFC4).w,d0
		addq.w	#1,d0
		move.w	d0,($FFFFFFC4).w
		ori.b	#$80,($FFFFFFC9).w
		addq.w	#1,($FFFFF000).w
		movem.l	(sp)+,d0-a6
		rte