; ---------------------------------------------------------------------------
; DynPaletteTransition Lite - by Giovanni.
; Subroutine that shifts each individual entry of a palette ever so slightly
; every time it is ran.
; ---------------------------------------------------------------------------

DynPaletteTransition:
		tst.b	(v_palflags).w			; check	if any of the flags are set
		beq.s	DynPalette_Return		; if not, return

		bsr.s	DynPalette_Do

	DynPalette_Return:
		rts

; ---------------------------------------------------------------------------
; Go through the above water palette array
; ---------------------------------------------------------------------------

DynPalette_Do:
		tst.b	(v_palcount).w			; check that the amount of colors to be changed has actually been set
		beq.s	DynPal_Nochange			; if it was not, branch

		moveq	#0,d0					; initialize d0. it will be used for the cycle ignore setup
		moveq	#0,d1					; initialize d1. it will be used for the cycle ignore setup
		moveq	#0,d2					; initialize d2. it will be used for comparisons.
		moveq	#0,d3					; initialize d3. it will be used for comparisons.
		moveq	#0,d4					; initialize d4. it will be used for comparisons.
		moveq	#0,d5					; initialize d5. it will be used for comparisons.
		moveq	#0,d0					; reinitialize d0. it will be used as a flag.
		moveq	#0,d1					; reinitialize d1. it will be used for a loop.
		movea.l	(p_palreplace).w,a0		; get the RAM pointer. this is the palette the game is using at the moment.
		movea.l	(p_paltarget).w,a1		; get the ROM pointer. this will be the palette once the replacements are done.
		move.b	(v_palcount).w,d1		; get the above water counter. it will be used for loops.
		subq.b	#1,d1					; subtract 1 from the counter.
		bsr.w	DynPalette_ColorCheck	; run the code that checks through the arrays.

		tst.b	d0						; check if d0 is set
		bne.s	DynPal_Return			; if it is, return

	DynPal_Nochange:
		bclr	#0,(v_palflags).w		; mark the above water palette as no longer in need of changes

	DynPal_Return:
		rts


; ---------------------------------------------------------------------------
; Go through the array using instructions given by either of the three leading subroutines
; ---------------------------------------------------------------------------

DynPalette_ColorCheck:
		move.w	(a0),d2					; move the palette entry from the current palette in d2
		move.w	(a1),d3					; move the palette entry from the target palette in d3
		cmp.w	d2,d3					; compare the two values
		beq.w	@nextpalette			; if they are not equal, branch

		moveq	#1,d0					; set the flag that marks that a change has occured.

	; check for blue
		move.w	d2,d4					; move the palette entry from the current palette in d4
		move.w  d3,d5					; move the palette entry from the target palette in d5
		andi.w  #$E00,d4				; get only blue
		andi.w	#$E00,d5				; get only blue
		cmp.w	d5,d4					; compare the two colors
		beq.s	@chkgreen					; if blue is equal, skip
		bhi.s	@decblue				; if blue is higher, branch

	; blue is lower
		addi.w	#$200,(a0)				; add some blue to the current color entry
		bra.s   @chkgreen					; go to the next color

	; blue is higher
	@decblue:
		subi.w	#$200,(a0)				; subtract some blue from the current color entry

	@chkgreen:
		move.w	d2,d4					; move the palette entry from the current palette in d4
		move.w  d3,d5					; move the palette entry from the target palette in d5
		andi.w  #$E0,d4					; get only green
		andi.w	#$E0,d5					; get only green
		cmp.w	d5,d4					; compare the two colors
		beq.s	@chkred					; if green is equal, skip
		bhi.s	@decgreen				; if green is higher, branch

	; green is lower
		addi.w	#$20,(a0)				; add some green to the current color entry
		bra.s   @chkred					; go to the next color

	@decgreen:
		subi.w	#$20,(a0)				; subtract some green from the current color entry

	@chkred:
		move.w	d2,d4					; move the palette entry from the current palette in d4
		move.w  d3,d5					; move the palette entry from the target palette in d5
		andi.w  #$E,d4					; get only red
		andi.w	#$E,d5					; get only red
		cmp.w	d5,d4					; compare the two colors
		beq.s	@nextpalette			; if red is equal, skip
		bhi.s	@decred					; if red is higher, branch

	; red is lower
		addq.w	#$2,(a0)				; add some red to the current color entry
		bra.s   @nextpalette			; go to the next color
		
	@decred:
		subq.w	#$2,(a0)				; subtract some red from the current color entry
		
	@nextpalette:
		adda.l	#2,a0					; next palette entry
		adda.l	#2,a1					; next palette entry
		dbf		d1,DynPalette_ColorCheck; repeat
		rts								; if no colors are left to be checked, return