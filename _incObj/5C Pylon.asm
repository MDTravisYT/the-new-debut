; ---------------------------------------------------------------------------
; Object 5C - metal pylons in foreground (SLZ)
; ---------------------------------------------------------------------------

Parallax_Object:
		moveq	#0,d0
		move.b	obRoutine(a0),d0
		move.w	GHZ2TreeFG_Index(pc,d0.w),d1
		jmp	GHZ2TreeFG_Index(pc,d1.w)
; ===========================================================================
GHZ2TreeFG_Index:	dc.w GHZ2TreeFG_Main-GHZ2TreeFG_Index
		dc.w GHZ2TreeFG_Display-GHZ2TreeFG_Index
; ===========================================================================

GHZ2TreeFG_Main:
		addq.b	#2,obRoutine(a0)
		move.l	#Map_Pylon,obMap(a0)
		move.b obSubtype(a0),obFrame(a0)
		move.w	#$C000,obGfx(a0)
		move.b	#$14,obRender(a0)
		move.b	#32,obActWid(a0)
		move.b	#1,obPriority(a0)
		move.b  #$40,obHeight(a0)
		move.w	obX(a0), $30(a0)

GHZ2TreeFG_Display:
	;-- Thank you based pylon --
;		move.l	(v_screenposx).w, d1
		move.w	$30(a0), d1 ; Store the original X position in d1....
		move.w  d1,d2 ; ... and make sure to allow us to readd it in d2 so we don't assume we are at X = 0.
		subi.w  #$A0,d1 ; Subtract A0 from d1.
		sub.w   (v_screenposx).w,d1 ; Subtract the current screen position from d1.
		asr.w	#1,d1 ; Divide d1 by 2.
		add.w	d2, d1 ; Add the base X position to our offset.
		move.w	d1, obX(a0) ; Here's our new X position!
		
	@displaydelete:
		jsr	DisplaySprite

		out_of_range	@delete,$30(a0)
		rts	
		
@delete:
		jmp DeleteObject