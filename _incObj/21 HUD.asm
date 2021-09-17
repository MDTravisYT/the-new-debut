; ---------------------------------------------------------------------------
; Object 21 - SCORE, TIME, RINGS
; ---------------------------------------------------------------------------

HUD:
		moveq	#0,d0
		move.b	obRoutine(a0),d0
		move.w	HUD_Index(pc,d0.w),d1
		jmp	HUD_Index(pc,d1.w)
; ===========================================================================
HUD_Index:	dc.w HUD_Main-HUD_Index
		dc.w HUD_Flash-HUD_Index
; ===========================================================================

HUD_Main:	; Routine 0
		addq.b	#2,obRoutine(a0)
		move.w	#$90,obX(a0)
		move.w	#$108,obScreenY(a0)
		move.l	#Map_HUD,obMap(a0)
		move.w	#$6CA,obGfx(a0)
		move.b	#0,obRender(a0)
		move.b	#0,obPriority(a0)

HUD_Flash:	; Routine 2
		clr.b	obFrame(a0)	; make all counters yellow
		jmp	(DisplaySprite).l
; ===========================================================================

	@display:
		move.b	d0,obFrame(a0)
		jmp	DisplaySprite