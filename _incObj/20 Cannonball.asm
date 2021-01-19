; ---------------------------------------------------------------------------
; Object 20 - cannonball that Ball Hog throws (SBZ)
; ---------------------------------------------------------------------------

Cannonball:
                moveq   #0,d0
                move.b  $24(a0),d0
                move.w  Cannonball_Index(pc,d0.w),d1
                jmp     Cannonball_Index(pc,d1.w)
; End of function Cannonball

; ---------------------------------------------------------------------------
Cannonball_Index:dc.w Cannonball_Init-*
                dc.w Cannonball_ChkFloor-Cannonball_Index
                dc.w Cannonball_Delete-Cannonball_Index
; ---------------------------------------------------------------------------

Cannonball_Init:
                addq.b  #2,$24(a0)
                move.l  #unk_729A,4(a0)
                move.w  #$2418,2(a0)
                move.b  #4,1(a0)
                move.b  #3,$19(a0)
                move.b  #$87,$20(a0)
                move.b  #8,$18(a0)
                move.w  #$18,$30(a0)

Cannonball_ChkFloor:
                btst    #7,$22(a0)
                bne.s   Cannonball_Explode
                tst.w   $30(a0)
                bne.s   loc_70D2
                jsr     (ObjFloorDist).l
                tst.w   d1
                bpl.s   loc_70D6
                add.w   d1,$C(a0)

Cannonball_Explode:
                move.b  #$24,0(a0) ; '$'
                move.b  #0,$24(a0)
                bra.w   MissileDissolve
; ---------------------------------------------------------------------------

loc_70D2:
                subq.w  #1,$30(a0)

loc_70D6:
                bsr.w   ObjectFall
                bsr.w   DisplaySprite
                move.w  ($FFFFF72E).w,d0
                addi.w  #$E0,d0
                cmp.w   $C(a0),d0
                bcs.s   Cannonball_Delete
                rts
; ---------------------------------------------------------------------------

Cannonball_Delete:
                bsr.w   DeleteObject
                rts
; ---------------------------------------------------------------------------

