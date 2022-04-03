		move.b	#1,(v_superpal).w
		move.b	#$F,(v_paltimer).w
		move.b	#1,(v_super).w
		move.b	#$81,(f_lockmulti).w
		move.b	#4,anim(a0)			; use transformation animation
		move.b	#1,(f_lockmulti).w	; unlock controls
		jsr	Super_and_Invincibility_Stars
		move.w	#$A00,(v_sonspeedmax).w
		move.w	#$30,(v_sonspeedacc).w
		move.w	#$100,(v_sonspeeddec).w
		btst	#6,status(a0)	; Check if underwater, return if not
		beq.s	@underwaterchk
		move.w	#$500,(v_sonspeedmax).w
		move.w	#$18,(v_sonspeedacc).w
		move.w	#$80,(v_sonspeeddec).w
	@underwaterchk:
		move.b	#id_HyperStars,(v_stars).w	; load Obj7E (super sonic stars object) at $FFFFD280
		move.b	#id_Trail,(v_trails).w
		move.w	#v_player,(v_trails+parent).w
		move.b	#0,invtime(a0)
		move.b 	#1,(v_invinc).w
;		sfx		sfx_transform
		jsr		LoadSuperMusic
		move.b	d0,mQueue+1.w	; play music

	@ret:
		rts
; End of subroutine Sonic_CheckGoSuper

LoadSuperMusic:
		moveq	#0,d0
		move.b	(v_character).w,d0
		move.b	@playsoup(pc,d0.w),d0
		rts

	@playsoup:
		dc.b	mus_SM64_WingCap_Kurk, mus_SuperS2, mus_UnknownS3P, mus_SM64_WingCap_Kurk, mus_SCDSpeed, mus_SurgingPower, mus_InvincibilityD, mus_InvincibilityK

; ---------------------------------------------------------------------------
; Subroutine doing the extra logic for Super Sonic
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||

; loc_1ABA6:
Sonic_Super:
		tst.b	(v_super).w	; Ignore all this code if not Super Sonic
		beq.w	@return
		tst.b	(f_timecount).w
		beq.s	@revert ; ?
		subq.w	#1,(Super_Sonic_frame_count).w
		bpl.w	@return
		move.w	#60,(Super_Sonic_frame_count).w	; Reset frame counter to 60
		tst.w	(v_rings).w
		beq.s	@revert
		ori.b	#1,(f_ringcount).w
		cmpi.w	#1,(v_rings).w
		beq.s	@update
		cmpi.w	#10,(v_rings).w
		beq.s	@update
		cmpi.w	#100,(v_rings).w
		bne.s	@update2
	@update:
		ori.b	#$80,(f_ringcount).w
	@update2:
		subq.w	#1,(v_rings).w
		bne.s	@return
; loc_1ABF2:, Sonic_RevertToNormal:
	@revert:
		move.b	#2,(v_superpal).w	; Remove rotating palette
		move.w	#$28,(v_palframe).w	; Unknown
		move.b	#0,(v_super).w
		move.b	#1,next_anim(a0)	; Change animation back to normal ?
		move.b	#1,invtime(a0)	; Remove invincibility
		move.w	#$600,(v_sonspeedmax).w
		move.w	#$C,(v_sonspeedacc).w
		move.w	#$80,(v_sonspeeddec).w
		btst	#6,status(a0)	; Check if underwater, return if not
		beq.s	@return
		move.w	#$300,(v_sonspeedmax).w
		move.w	#6,(v_sonspeedacc).w
		move.w	#$40,(v_sonspeeddec).w

	@return:
		rts
; End of subroutine Sonic_Super

; ---------------------------------------------------------------------------
; Subroutine to	delete the Super Stars and the Invincibility Stars
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Super_and_Invincibility_Stars:
		clr.b	(v_player+invtime).w		; clear time limit of the invincibility
		move.l	a0,-(sp)
		lea		(v_stars).w,a0	; stars object ($3801 and $8F)
		jsr		DeleteObject		; delete stars
		lea		SstLimit(a0),a0		; stars object ($3802)
		jsr		DeleteObject		; delete stars
		lea		SstLimit(a0),a0		; stars object ($3803)
		jsr		DeleteObject		; delete stars
		lea		SstLimit(a0),a0		; stars object ($3804)
		jsr		DeleteObject		; delete stars
		move.l	(sp)+,a0
		rts
; End of function Super_and_Invincibility_Stars
