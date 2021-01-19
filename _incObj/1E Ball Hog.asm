; ---------------------------------------------------------------------------
; Object 1E - Ball Hog enemy (SBZ)
; ---------------------------------------------------------------------------

Ballhog:
                moveq   #0,d0
                move.b  $24(a0),d0
                move.w  Ballhog_Index(pc,d0.w),d1
                jmp     Ballhog_Index(pc,d1.w)
; ---------------------------------------------------------------------------
Ballhog_Index:dc.w Ballhog_Init-*
                dc.w Ballhog_Action-Ballhog_Index
                dc.w Ballhog_Display-Ballhog_Index
                dc.w Ballhog_Delete-Ballhog_Index
; ---------------------------------------------------------------------------

Ballhog_Init:
                move.b  #$13,$16(a0)
                move.b  #8,$17(a0)
                move.l  #Map_Hog,4(a0)
                move.w  #$2400,2(a0)
                move.b  #4,1(a0)
                move.b  #4,$19(a0)
                move.b  #5,$20(a0)
                move.b  #$C,$18(a0)
                bsr.w   ObjectFall
                jsr     (ObjFloorDist).l
                tst.w   d1
                bpl.s   Ballhog_Return
                add.w   d1,$C(a0)
                move.w  #0,$12(a0)
                addq.b  #2,$24(a0)

Ballhog_Return:
                rts
; ---------------------------------------------------------------------------

Ballhog_Action:
                moveq   #0,d0
                move.b  $25(a0),d0
                move.w  Ballhog_Index2(pc,d0.w),d1
                jsr     Ballhog_Index2(pc,d1.w)
                lea     (unk_7244).l,a1
                bsr.w   AnimateSprite
                bra.w   RememberState
; ---------------------------------------------------------------------------
Ballhog_Index2:dc.w loc_6FB6-*
                dc.w loc_701C-Ballhog_Index2
; ---------------------------------------------------------------------------

loc_6FB6:
                subq.w  #1,$30(a0)
                bpl.s   loc_6FE6
                addq.b  #2,$25(a0)
                move.w  #$FF,$30(a0)
                move.w  #$40,$10(a0) ; '@'
                move.b  #1,$1C(a0)
                bchg    #0,$22(a0)
                bne.s   loc_6FDE
                neg.w   $10(a0)

loc_6FDE:
                move.b  #0,$32(a0)
                rts
; ---------------------------------------------------------------------------

loc_6FE6:
                tst.b   $32(a0)
                bne.s   locret_6FF4
                cmpi.b  #2,$1A(a0)
                beq.s   Ballhog_MakeBall

locret_6FF4:
                rts
; ---------------------------------------------------------------------------

Ballhog_MakeBall:
                move.b  #1,$32(a0)
                bsr.w   FindFreeObj
                bne.s   Ballhog_MakeFail
                move.b  #$20,0(a1) ; ' '
                move.w  8(a0),8(a1)
                move.w  $C(a0),$C(a1)
                addi.w  #$10,$C(a1)

Ballhog_MakeFail:
                rts
; ---------------------------------------------------------------------------

loc_701C:
                subq.w  #1,$30(a0)
                bmi.s   loc_7032
                bsr.w   SpeedToPos
                jsr     (ObjFloorDist).l
                add.w   d1,$C(a0)
                rts
; ---------------------------------------------------------------------------

loc_7032:
                subq.b  #2,$25(a0)
                move.w  #$3B,$30(a0) ; ';'
                move.w  #0,$10(a0)
                move.b  #0,$1C(a0)
                tst.b   1(a0)
                bpl.s   locret_7054
                move.b  #2,$1C(a0)

locret_7054:
                rts
; ---------------------------------------------------------------------------

Ballhog_Display:
                bsr.w   DisplaySprite
                rts
; ---------------------------------------------------------------------------

Ballhog_Delete:
                bsr.w   DeleteObject
                rts
unk_7244:       dc.b   0
                dc.b   6
                dc.b   0
                dc.b  $A
                dc.b   0
                dc.b $10
                dc.b  $F
                dc.b   0
                dc.b $FF
                dc.b   0
                dc.b  $B
                dc.b   1
                dc.b   0
                dc.b $21 ; !
                dc.b   0
                dc.b $FF
                dc.b $14
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $FE
                dc.b   1