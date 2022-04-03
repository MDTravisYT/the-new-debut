; ---------------------------------------------------------------------------
; Subroutine to	change Sonic's speed as he rolls
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Sonic_RollSpeed:
		move.w	(v_sonspeedmax).w,d6
		asl.w	#1,d6
		moveq	#6,d5	; natural roll deceleration = 1/2 normal acceleration
		move.w	(v_sonspeeddec).w,d4	; It was either this or outright
		asr.w	#2,d4	; moving $20 to d4. This seems more versatile.
		tst.b	(f_jumponly).w
		bne.w	Sonic_Roll_ResetScreen

		btst	#bitL,(v_jpadhold2).w ; is left being pressed?
		beq.s	@notleft	; if not, branch
		bsr.w	Sonic_RollLeft

	@notleft:
		btst	#bitR,(v_jpadhold2).w ; is right being pressed?
		beq.s	@notright	; if not, branch
		bsr.w	Sonic_RollRight

	@notright:
		move.w	obInertia(a0),d0
		beq.s	Sonic_CheckRollStop
		bmi.s	Sonic_ApplyRollSpeedLeft
		sub.w	d5,d0
		bcc.s	@cont
		move.w	#0,d0
	@cont:
		move.w	d0,obInertia(a0)
		bra.s	Sonic_CheckRollStop
; ===========================================================================

Sonic_ApplyRollSpeedLeft:
		add.w	d5,d0
		bcc.s	@cont
		move.w	#0,d0
	@cont:
		move.w	d0,obInertia(a0)

Sonic_CheckRollStop:
		tst.w	obInertia(a0)	; is Sonic moving?
		bne.s	Sonic_Roll_ResetScreen	; if yes, branch
		tst.b	obPinball(a0)
		bne.s	Sonic_KeepRolling
		bclr	#2,obStatus(a0)
		jsr		ResetHeight
		subq.w	#5,obY(a0)
		cmpi.b	#id_Tails,(v_character).w
		bne.s	@tallbois
		addq.w	#4,obY(a0)
	@tallbois:
		bra.s	Sonic_Roll_ResetScreen
; ---------------------------------------------------------------------------
; magically gives Sonic* an extra push if he's going to stop rolling where it's not allowed
; (such	as in an S-curve in BGZ* or a stopper chamber in ??? if we even have them)

Sonic_KeepRolling:
		move.w	#$400,obInertia(a0)
		btst	#0,obStatus(a0)
		beq.s	Sonic_Roll_ResetScreen
		neg.w	obInertia(a0)

Sonic_Roll_ResetScreen:
		cmp.w	#$60,(v_lookshift).w
		beq.s	@setrollspeed
		bcc.s	@cont
		addq.w	#4,(v_lookshift).w
	@cont:
		subq.w	#2,(v_lookshift).w

	@setrollspeed:
		move.b	obAngle(a0),d0
		jsr	(CalcSine).l
		muls.w	obInertia(a0),d0
		asr.l	#8,d0
		move.w	d0,obVelY(a0)
		muls.w	obInertia(a0),d1
		asr.l	#8,d1
		cmpi.w	#$1000,d1
		ble.s	@cont2
		move.w	#$1000,d1
	@cont2:
		cmpi.w	#-$1000,d1
		bge.s	@cont3
		move.w	#-$1000,d1
	@cont3:
		move.w	d1,obVelX(a0)
		jmp		Sonic_CheckWallsOnGround
; End of function Sonic_RollSpeed


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Sonic_RollLeft:
		move.w	obInertia(a0),d0
		beq.s	@cont
		bpl.s	Sonic_BrakeRollingRight
	@cont:
		bset	#0,obStatus(a0)
		move.b	#id_Roll,obAnim(a0) ; use "rolling" animation
		rts
; ===========================================================================

Sonic_BrakeRollingRight:
		sub.w	d4,d0
		bcc.s	@cont
		move.w	#0,d0
	@cont:
		move.w	d0,obInertia(a0)
		rts
; End of function Sonic_RollLeft


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Sonic_RollRight:
		move.w	obInertia(a0),d0
		bmi.s	Sonic_BrakeRollingLeft
		bclr	#0,obStatus(a0)
		move.b	#id_Roll,obAnim(a0) ; use "rolling" animation
		rts
; ===========================================================================

Sonic_BrakeRollingLeft:
		add.w	d4,d0
		bcc.s	@cont
		move.w	#0,d0
	@cont:
		move.w	d0,obInertia(a0)
		rts
; End of function Sonic_RollRight
