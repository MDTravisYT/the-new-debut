; ---------------------------------------------------------------------------
; Subroutine to	make Sonic walk/run
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Sonic_Move:
		move.w	(v_sonspeedmax).w,d6
		move.w	(v_sonspeedacc).w,d5
		move.w	(v_sonspeeddec).w,d4
		tst.b	(f_jumponly).w
		bne.w	Sonic_Traction
		tst.w	move_lock(a0)
		bne.w	Sonic_ResetScr

		cmpi.b	#id_Amy,(v_character).w
		bne.s	@notamy	; Amy shouldn't be able to move while ducking.
		btst	#bitDn,(v_jpadhold2).w
		bne.s	@notright
	@notamy:
		btst	#bitL,(v_jpadhold2).w ; is left being pressed?
		beq.s	@notleft	; if not, branch
		bsr.w	Sonic_MoveLeft

	@notleft:
		btst	#bitR,(v_jpadhold2).w ; is right being pressed?
		beq.s	@notright	; if not, branch
		bsr.w	Sonic_MoveRight

	@notright:
		move.b	obAngle(a0),d0
		addi.b	#$20,d0
		andi.b	#$C0,d0		; is Sonic on a	slope?
		bne.w	Sonic_ResetScr	; if yes, branch
		tst.w	obInertia(a0)	; is Sonic moving?
		bne.w	Sonic_ResetScr	; if yes, branch
		bclr	#5,obStatus(a0)
		cmpi.b	#id_Amy,(v_character).w
		bne.s	@notamy2
		cmp.b   #$2A,obAnim(a0)
		beq     @cont
		cmp.b   #$28,obAnim(a0)
		beq     @cont
		cmp.b   #$25,obAnim(a0)
		beq     @cont
		cmp.b   #$1F,obAnim(a0)
		beq     @cont
	@notamy2:
        tst.b   (v_victory).w ; Has the victory animation flag been set?
        beq.s   @normalJump ; If not, branch
        move.b  #id_Victory,obAnim(a0) ; Play the victory animation, Knuckles doesn't need to add 1 anymore.
		cmpi.b	#id_Amy,(v_character).w
		bne.s	@notamy3
		add.b	#6,obAnim(a0)
		bra.s	@cont
	@notamy3:
		cmpi.b	#id_Tails,(v_character).w
		bne.s	@cont
		add.b	#1,obAnim(a0)
        bra.s   @cont ; Continue
@normalJump:
        move.b    #id_Wait,obAnim(a0)    ; use "standing" animation
@cont:
		btst	#3,obStatus(a0)
		beq.s	Sonic_Balance

           	movea.w	obInteract(a0),a1 
           	
		tst.b	obStatus(a1)
		bmi.w	Sonic_LookUp
		moveq	#0,d1			; Clear d1
		move.b	obActWid(a1),d1	; Load interacting object's width into d1
		move.w	d1,d2			; Move to d2 for seperate calculations
		add.w	d2,d2			; Double object width, converting it to X pos' units of measurement
		subq.w	#4,d2			; Subtract 4: This is the margin for 'on edge'
		add.w	obX(a0),d1		; Add Sonic's X position to object width
		sub.w	obX(a1),d1		; Subtract object's X position from width+Sonic's X pos, giving you Sonic's distance from left edge of object
		cmpi.w	#4,d1	; was #2 for Knuckles
		blt.w	Sonic_BalanceOnObjLeft
		cmp.w	d2,d1
		bge.s	Sonic_BalanceOnObjRight
		bra.w	Sonic_LookUp
; ===========================================================================

Sonic_Balance:
		moveq	#0,d0
		move.b	(v_character).w,d0
		add.w	d0,d0
		add.w	d0,d0
		movea.l	@playerLUT(pc,d0.w),a1
		jmp		(a1)

	@playerLUT:
		dc.l	@cont,@cont,@cont,@cont,@cont,@cont,@cont,@cont

	@cont:
		jsr	(ObjFloorDist).l
		cmpi.w	#$C,d1
		blt.w	Sonic_LookUp
		cmpi.b	#3,obNextTilt(a0)
		bne.s	Sonic_BalanceLeft

Sonic_BalanceOnObjRight:
		moveq	#0,d0
		move.b	(v_character).w,d0
		add.w	d0,d0
		add.w	d0,d0
		movea.l	@playerLUT(pc,d0.w),a1
		jmp		(a1)

	@playerLUT:
		dc.l	@cont,@cont,@cont,@cont,@cont,@cont,@cont,@cont

	@cont:
		btst	#0,obStatus(a0)
		bne.s	@bal2
		move.b	#id_Balance,obAnim(a0)
		bra.w	Sonic_ResetScr
	@bal2:
		move.b	#id_Balance2,obAnim(a0)
		bra.w	Sonic_ResetScr
; ===========================================================================

Sonic_BalanceLeft:
		moveq	#0,d0
		move.b	(v_character).w,d0
		add.w	d0,d0
		add.w	d0,d0
		movea.l	@playerLUT(pc,d0.w),a1
		jmp		(a1)

	@playerLUT:
		dc.l	@cont,@cont,@cont,@cont,@cont,@cont,@cont,@cont

	@cont:
		cmpi.b	#3,obTilt(a0)
		bne.s	Sonic_LookUp

Sonic_BalanceOnObjLeft:
		moveq	#0,d0
		move.b	(v_character).w,d0
		add.w	d0,d0
		add.w	d0,d0
		movea.l	@playerLUT(pc,d0.w),a1
		jmp		(a1)

	@playerLUT:
		dc.l	@cont,@cont,@cont,@cont,@cont,@cont,@cont,@cont

	@cont:
		btst	#0,obStatus(a0)
		beq.s	@bal2
		move.b	#id_Balance,obAnim(a0)
		bra.w	Sonic_ResetScr
	@bal2:
		move.b	#id_Balance2,obAnim(a0)
		bra.w	Sonic_ResetScr
; ===========================================================================

Sonic_LookUp:
		cmpi.b	#id_Amy,(v_character).w
		bne.s	@cont
		cmp.b	#$25,obAnim(a0)
		beq		Sonic_Duck
		cmp.b	#$1F,obAnim(a0)
		beq		Sonic_Duck
	@cont:
		btst	#bitUp,(v_jpadhold2).w ; is up being pressed?
		beq.s	Sonic_Duck	; if not, branch
		move.b	#id_LookUp,obAnim(a0) ; use "looking up" animation
		addq.b	#1,(v_scrolldelay).w			; add 1 to the scroll timer
		cmpi.b	#ScrollDelayTime,(v_scrolldelay).w	; is it equal to or greater than the scroll delay?
		bcs.s	Sonic_LookReset				; if not, skip ahead without looking up
		move.b	#ScrollDelayTime,(v_scrolldelay).w 	; move the scroll delay value into the scroll timer so it won't continue to count higher
		move.w	(v_screenposy).w,d0	; get camera top coordinate
		sub.w	(v_limittop2).w,d0	; subtract zone's top bound from it
		add.w	(v_lookshift).w,d0	; add default offset
		cmpi.w	#$C8,d0			; is offset <= $C8?
		ble.s	@skip			; if so, branch
		move.w	#$C8,d0			; set offset to $C8

	@skip:
		cmp.w	(v_lookshift).w,d0
		ble.s	Sonic_UpdateSpeedOnGround
		addq.w	#2,(v_lookshift).w
		bra.s	Sonic_UpdateSpeedOnGround
; ===========================================================================

Sonic_Duck:
		btst	#bitDn,(v_jpadhold2).w ; is down being pressed?
		beq.s	Sonic_ResetScr	; if not, branch
		move.b	#id_Duck,obAnim(a0) ; use "ducking" animation
		addq.b	#1,(v_scrolldelay).w			; add 1 to the scroll timer
		cmpi.b	#ScrollDelayTime,(v_scrolldelay).w	; is it equal to or greater than the scroll delay?
		bcs.s	Sonic_LookReset				; if not, skip ahead without looking up
		move.b	#ScrollDelayTime,(v_scrolldelay).w 	; move the scroll delay value into the scroll timer so it won't continue to count higher
		move.w	(v_screenposy).w,d0	; get camera top coordinate
		sub.w	(v_limitbtm2).w,d0	; subtract zone's bottom bound from it (creating a negative number)
		add.w	(v_lookshift).w,d0	; add default offset
		cmpi.w	#8,d0			; is offset < 8?
		blt.s	@set			; if so, branch
		bgt.s	@skip			; if greater than 8, branch

	@set:
		move.w	#8,d0	; set offset to 8

	@skip:
		cmp.w	(v_lookshift).w,d0
		bge.s	Sonic_UpdateSpeedOnGround
		subq.w	#2,(v_lookshift).w
		bra.s	Sonic_UpdateSpeedOnGround
; ===========================================================================

Sonic_ResetScr:
		move.b	#0,(v_scrolldelay).w	; clear the scroll timer, because up/down are not being held

Sonic_LookReset:	; added branch point that the new scroll delay code skips ahead to
		cmpi.w	#$60,(v_lookshift).w ; is screen in its default position?
		beq.s	Sonic_UpdateSpeedOnGround	; if yes, branch
		bcc.s	@cont
		addq.w	#4,(v_lookshift).w ; move screen back to default

	@cont:
		subq.w	#2,(v_lookshift).w ; move screen back to default

Sonic_UpdateSpeedOnGround:
		tst.b	(v_super).w
		beq.s	@notsuper
		move.w	#$C,d5

	@notsuper:
		move.b	(v_jpadhold2).w,d0
		andi.b	#btnL+btnR,d0	; is left/right	pressed?
		bne.s	Sonic_Traction	; if yes, branch
		move.w	obInertia(a0),d0
		beq.s	Sonic_Traction
		bmi.s	Sonic_SettleLeft
		sub.w	d5,d0
		bcc.s	@cont
		move.w	#0,d0

	@cont:
		move.w	d0,obInertia(a0)
		bra.s	Sonic_Traction
; ===========================================================================

Sonic_SettleLeft:
		add.w	d5,d0
		bcc.s	@cont
		move.w	#0,d0
	@cont:
		move.w	d0,obInertia(a0)

Sonic_Traction:
		move.b	obAngle(a0),d0
		jsr	(CalcSine).l
		muls.w	obInertia(a0),d1
		asr.l	#8,d1
		move.w	d1,obVelX(a0)
		muls.w	obInertia(a0),d0
		asr.l	#8,d0
		move.w	d0,obVelY(a0)

Sonic_CheckWallsOnGround:
		move.b	obAngle(a0),d0
		addi.b	#$40,d0
		bmi.s	locret_1307C
		move.b	#$40,d1
		tst.w	obInertia(a0)
		beq.s	locret_1307C
		bmi.s	loc_13024
		neg.w	d1

loc_13024:
		move.b	obAngle(a0),d0
		add.b	d1,d0
		move.w	d0,-(sp)
		jsr 	Sonic_WalkSpeed
		move.w	(sp)+,d0
		tst.w	d1
		bpl.s	locret_1307C
		asl.w	#8,d1
		addi.b	#$20,d0
		andi.b	#$C0,d0
		beq.s	loc_13078
		cmpi.b	#$40,d0
		beq.s	loc_13066
		cmpi.b	#$80,d0
		beq.s	loc_13060
		add.w	d1,obVelX(a0)
		move.w	#0,obInertia(a0)
		btst	#0,obStatus(a0)
		bne.s	@ret
		bset	#5,obStatus(a0)

	@ret:
		rts
; ===========================================================================

loc_13060:
		sub.w	d1,obVelY(a0)
		rts
; ===========================================================================

loc_13066:
		sub.w	d1,obVelX(a0)
		move.w	#0,obInertia(a0)
		btst	#0,obStatus(a0)
		beq.s	@ret
		bset	#5,obStatus(a0)
	@ret:
		rts
; ===========================================================================

loc_13078:
		add.w	d1,obVelY(a0)

locret_1307C:
		rts
; End of function Sonic_Move


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Sonic_MoveLeft:
		move.w	obInertia(a0),d0
		beq.s	@cont
		bpl.s	Sonic_TurnLeft

@cont:
		bset	#0,obStatus(a0)
		bne.s	@cont2
		bclr	#5,obStatus(a0)
		move.b	#id_Run,obNextAni(a0)

@cont2:
		sub.w	d5,d0
		move.w	d6,d1
		neg.w	d1
		cmp.w	d1,d0
		bgt.s	loc_130A6
		add.w	d5,d0		; Speed Cap
		cmp.w	d1,d0		; Speed Cap
		ble.s	loc_130A6	; Speed Cap
		move.w	d1,d0

loc_130A6:
		move.w	d0,obInertia(a0)
		cmpi.b	#id_Amy,(v_character).w
		bne.s	@cont
		cmp.b	#$2A,obAnim(a0) 	; Amy Hammering
		beq	@ret
		cmp.b	#$28,obAnim(a0) 	; Amy Hammering
		beq	@ret
		cmp.b	#$25,obAnim(a0) 	; Amy Hammering
		beq	@ret
		cmp.b	#$1F,obAnim(a0) 	; Amy Hammering
		beq	@ret
	@cont:
		move.b	#id_Walk,obAnim(a0) ; use walking animation
	@ret:
		rts
; ===========================================================================

Sonic_TurnLeft:
		sub.w	d4,d0
		bcc.s	@cont
		move.w	#-$80,d0
	@cont:
		move.w	d0,obInertia(a0)
		move.b	obAngle(a0),d0
		addi.b	#$20,d0
		andi.b	#$C0,d0
		bne.s	@ret
		cmpi.w	#$400,d0
		blt.s	@ret
		move.b	#id_Stop,obAnim(a0) ; use "stopping" animation
		bclr	#0,obStatus(a0)
        cmpi.b  #id_Metal,(v_character).w
        bne.s   @normalsfx
		sfx	sfx_Skid,0,0,0	; play stopping sound
        bra.s   @sndcnt
    @normalsfx:
		sfx	sfx_Skid,0,0,0	; play stopping sound
    @sndcnt:
	    move.b	#6,(v_dust+routine).w
	    move.b	#$15,(v_dust+mapping_frame).w

	@ret:
		rts
; End of function Sonic_MoveLeft


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Sonic_MoveRight:
		move.w	obInertia(a0),d0
		bmi.s	Sonic_TurnRight
		bclr	#0,obStatus(a0)
		beq.s	@cont
		bclr	#5,obStatus(a0)
		move.b	#id_Run,obNextAni(a0)
	@cont:
		add.w	d5,d0
		cmp.w	d6,d0
		blt.s	@cont2
		sub.w	d5,d0		; Speed Cap
		cmp.w	d6,d0		; Speed Cap
		bge.s	@cont2	; Speed Cap
		move.w	d6,d0
	@cont2:
		move.w	d0,obInertia(a0)
		cmpi.b	#id_Amy,(v_character).w
		bne.s	@cont3
		cmp.b	#$2A,obAnim(a0) 	; Amy Hammering
		beq	@ret
		cmp.b	#$28,obAnim(a0) 	; Amy Hammering
		beq	@ret
		cmp.b	#$25,obAnim(a0) 	; Amy Hammering
		beq	@ret
		cmp.b	#$1F,obAnim(a0) 	; Amy Hammering
		beq	@ret
	@cont3:
		move.b	#id_Walk,obAnim(a0) ; use walking animation
	@ret:
		rts
; ===========================================================================

Sonic_TurnRight:
		add.w	d4,d0
		bcc.s	@cont
		move.w	#$80,d0
	@cont:
		move.w	d0,obInertia(a0)
		move.b	obAngle(a0),d0
		addi.b	#$20,d0
		andi.b	#$C0,d0
		bne.s	locret_1314E
		cmpi.w	#-$400,d0
		bgt.s	locret_1314E
		move.b	#id_Stop,obAnim(a0) ; use "stopping" animation
		bset	#0,obStatus(a0)
        cmpi.b  #4,(v_character).w
        bne.s   @normalsfx
		sfx	sfx_Skid,0,0,0	; play stopping sound
        bra.s   @sndcnt
    @normalsfx:
		sfx	sfx_Skid,0,0,0	; play stopping sound
    @sndcnt:
    	move.b	#6,(v_dust+routine).w
	    move.b	#$15,(v_dust+mapping_frame).w

locret_1314E:
		rts