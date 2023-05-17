; ---------------------------------------------------------------------------
; Object 19 - GHZ Boulder
; ---------------------------------------------------------------------------

Ball_JumpWith = 0
Ball_ReverseDirection = 0

ghzboulder:
        moveq   #0,d0
        move.b  obRoutine(a0),d0
        move.w  ObjRollingBall_Index(pc,d0.w),d1
        jmp     ObjRollingBall_Index(pc,d1.w)
; ---------------------------------------------------------------------------
ObjRollingBall_Index:	
		dc.w ObjRollingBall_Init-ObjRollingBall_Index
		dc.w ObjRollingBall_Main-ObjRollingBall_Index
		dc.w loc_5D86-ObjRollingBall_Index
		dc.w ObjRollingBall_Delete-ObjRollingBall_Index
		dc.w sub_5CEE-ObjRollingBall_Index
; ---------------------------------------------------------------------------

ObjRollingBall_Init:
        move.b  #$18,obHeight(a0)
        move.b  #$C,obWidth(a0)
        jsr   ObjectFall
        jsr     (ObjFloorDist).l
        tst.w   d1
        bpl.s   ObjRollingBall_Return
        add.w   d1,obY(a0)
        move.w  #0,obVelY(a0)
        move.b  #8,obRoutine(a0)
        move.l  #Map_GBall,obMap(a0)
        move.w  #$43AA,obGfx(a0)
        move.b  #4,obRender(a0)
        move.b  #3,obPriority(a0)
        move.b  #$18,obActWid(a0)
        move.b  #1,$27(a0)
        bsr.w   sub_5DC8

ObjRollingBall_Return:
        rts

; =============== S U B R O U T I N E =======================================


sub_5CEE:
        move.w  #$23,d1 ; '#'
        move.w  #$18,d2
        move.w  #$18,d3
        move.w  obX(a0),d4
        jsr   SolidObject
        btst    #5,obStatus(a0)
        bne.s   loc_5D14
        move.w  (v_objspace+obX).w,d0
        sub.w   obX(a0),d0
        bcs.s   loc_5D20

loc_5D14:
        move.b  #2,obRoutine(a0)
        move.w  #$80,$2C(a0)

loc_5D20:
        bsr.w   sub_5DC8
        jsr   RememberState
        bra.w   loc_5E2A
; End of function sub_5CEE

; ---------------------------------------------------------------------------

ObjRollingBall_Main:
        btst    #1,obStatus(a0)
        bne.w   loc_5D86
        bsr.w   sub_5DC8
        bsr.w   sub_5E50
		btst    #3,obStatus(a0)
		beq.s   @noneed
		move.b  #1,$3C(a0)
		
	@noneed:
        jsr   SpeedToPos
        move.w  #$23,d1 ; '#'
        move.w  #$18,d2
        move.w  #$18,d3
        move.w  obX(a0),d4
        jsr   SolidObject
        jsr     (loc_14602).l
        cmpi.w  #$20,obX(a0) ; ' '
        bcc.s   loc_5D7E
        move.w  #$20,obX(a0) ; ' '
        move.w  #$400,$2C(a0)

;loc_5D70:
;        btst    #1,obStatus(a0)
;        beq.s   loc_5D7E
;        move.w  #-$3FF,obVelY(a0)

loc_5D7E:
		tst.b   $3C(a0)
		bne.s   @nowall
		moveq   #0,d3
		move.b  obActWid(a0),d3
		tst.w   obVelX(a0)
		bpl.s   @negative
		not.w	d3
		jsr   ObjHitWallLeft
		tst.w   d1
		bpl.s   @nowall
		move.w  #0,obVelX(a0)
		move.w  #0,$2C(a0)
		bra.s   @nowall
		
	@negative:
		jsr   ObjHitWallRight
		tst.w   d1
		bpl.s   @nowall
		move.w  #0,obVelX(a0)
		move.w  #0,$2C(a0)
	
	@nowall:
        jsr   RememberState
        bra.w   loc_5E2A
; ---------------------------------------------------------------------------

loc_5D86:
        bsr.w   sub_5DC8
		jsr	SpeedToPos
        move.w  #$23,d1 ; '#'
        move.w  #$18,d2
        move.w  #$18,d3
        move.w  obX(a0),d4
        jsr   SolidObject
        jsr     (Sonic_Floor).l
        btst    #1,obStatus(a0)
        beq.s   loc_5DBE
        move.w  obVelY(a0),d0
        addi.w  #$28,d0 ; '('
        move.w  d0,obVelY(a0)
        bra.w   loc_5D7E
; ---------------------------------------------------------------------------

loc_5DBE:
        nop
		bra.w  loc_5D7E

; =============== S U B R O U T I N E =======================================


sub_5DC8:
        move.b  $2C(a0),d0
        beq.s   loc_5E02
        bmi.s   loc_5E0A
        subq.b  #1,obTimeFrame(a0)
        bpl.s   loc_5E02
        neg.b   d0
        addq.b  #8,d0
        bcs.s   loc_5DEC
        moveq   #0,d0

loc_5DEC:
        move.b  d0,obTimeFrame(a0)
        move.b  $27(a0),d0
        addq.b  #1,d0
        cmpi.b  #4,d0
        bne.s   loc_5DFE
        moveq   #1,d0

loc_5DFE:
        move.b  d0,$27(a0)

loc_5E02:
        move.b  $27(a0),obFrame(a0)
        rts
; ---------------------------------------------------------------------------

loc_5E0A:
        subq.b  #1,obTimeFrame(a0)
        bpl.s   loc_5E02
        addq.b  #8,d0
        bcs.s   loc_5E16
        moveq   #0,d0

loc_5E16:
        move.b  d0,obTimeFrame(a0)
        move.b  $27(a0),d0
        subq.b  #1,d0
        bne.s   loc_5E24
        moveq   #3,d0

loc_5E24:
        move.b  d0,$27(a0)
        bra.s   loc_5E02
; End of function sub_5DC8

; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_5CEE

loc_5E2A:
	;	out_of_range_s3	DeleteObject,@nodel
		
@nodel:
	;	jsr  ReactToItemBall
		rts
		
; ---------------------------------------------------------------------------
	
; END OF FUNCTION CHUNK FOR sub_5CEE
; ---------------------------------------------------------------------------

ObjRollingBall_Delete:
        bsr.w   DeleteObject
        rts

; =============== S U B R O U T I N E =======================================


sub_5E50:
		move.b  obAngle(a0),d0
		jsr		CalcSine
		move.w  d0,d2
		muls.w  #$38,d2 ; '8'
		asr.l   #8,d2
		add.w   d2,$2C(a0)
		muls.w  $2C(a0),d1
		asr.l   #8,d1
		move.w  d1,obVelX(a0)
		muls.w  $2C(a0),d0
		asr.l   #8,d0
		move.w  d0,obVelY(a0)
		rts
; End of function sub_5E50

	;	include "_incObj/sub_ReactToItemBall.asm"