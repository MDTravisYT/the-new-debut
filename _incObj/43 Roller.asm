; ---------------------------------------------------------------------------
; Object 43 - Roller enemy (SYZ)
; ---------------------------------------------------------------------------

Roller:
                moveq   #0,d0
                move.b  $24(a0),d0
                move.w  index_bfb8(pc,d0.w),d1
                jmp     index_bfb8(pc,d1.w)
; ---------------------------------------------------------------------------
index_bfb8:     dc.w entry_BFBE-*
                dc.w entry_c00c-index_bfb8
                dc.w entry_c0b0-index_bfb8
; ---------------------------------------------------------------------------

entry_BFBE:
                move.b  #$E,$16(a0)
                move.b  #8,$17(a0)
                bsr.w   ObjectFall
                bsr.w   ObjFloorDist
                tst.w   d1
                bpl.s   locret_C00A
                add.w   d1,$C(a0)
                move.w  #0,$12(a0)
                addq.b  #2,$24(a0)
                move.l  #unk_C0CA,4(a0)
                move.w  #$24B8,2(a0)
                move.b  #4,1(a0)
                move.b  #4,$19(a0)
                move.b  #$10,$18(a0)
                move.b  #$8E,$20(a0)

locret_C00A:
                rts
; ---------------------------------------------------------------------------

entry_c00c:
                moveq   #0,d0
                move.b  $25(a0),d0
                move.w  index_c028(pc,d0.w),d1
                jsr     index_c028(pc,d1.w)
                lea     (unk_C0B4).l,a1
                bsr.w   AnimateSprite
                bra.w   rememberstate
; ---------------------------------------------------------------------------
index_c028:     dc.w entry_C030-*
                dc.w entry_c052-index_c028
                dc.w entry_c060-index_c028
                dc.w entry_c08e-index_c028
; ---------------------------------------------------------------------------

entry_C030:
                move.w  ($FFFFD008).w,d0
                sub.w   8(a0),d0
                bcs.s   locret_C050
                cmpi.w  #$20,d0 ; ' '
                bcc.s   locret_C050
                addq.b  #2,$25(a0)
                move.b  #1,$1C(a0)
                move.w  #$400,$10(a0)

locret_C050:
                rts
; ---------------------------------------------------------------------------

entry_c052:
                cmpi.b  #2,$1C(a0)
                bne.s   locret_C05E
                addq.b  #2,$25(a0)

locret_C05E:
                rts
; ---------------------------------------------------------------------------

entry_c060:
                bsr.w   SpeedToPos
                bsr.w   ObjFloorDist
                cmpi.w  #$FFF8,d1
                blt.s   loc_C07A
                cmpi.w  #$C,d1
                bge.s   loc_C07A
                add.w   d1,$C(a0)
                rts
; ---------------------------------------------------------------------------

loc_C07A:
                addq.b  #2,$25(a0)
                bset    #0,$32(a0)
                beq.s   locret_C08C
                move.w  #$FA00,$12(a0)

locret_C08C:
                rts
; ---------------------------------------------------------------------------

entry_c08e:
                bsr.w   ObjectFall
                tst.w   $12(a0)
                bmi.s   locret_C0AE
                bsr.w   ObjFloorDist
                tst.w   d1
                bpl.s   locret_C0AE
                add.w   d1,$C(a0)
                subq.b  #2,$25(a0)
                move.w  #0,$12(a0)

locret_C0AE:
                rts
; ---------------------------------------------------------------------------

entry_c0b0:
                bra.w   DeleteObject
; ---------------------------------------------------------------------------
unk_C0B4:       dc.b   0
                dc.b   6
                dc.b   0
                dc.b  $A
                dc.b   0
                dc.b $10
                dc.b  $F
                dc.b   0
                dc.b $FF
                dc.b   0
                dc.b  $F
                dc.b   1
                dc.b   2
                dc.b $FD
                dc.b   2
                dc.b   0
                dc.b   3
                dc.b   2
                dc.b   3
                dc.b   4
                dc.b $FF
                dc.b   0
unk_C0CA:       dc.b   0
                dc.b  $A
                dc.b   0
                dc.b $15
                dc.b   0
                dc.b $20
                dc.b   0
                dc.b $26 ; &
                dc.b   0
                dc.b $2C ; ,
                dc.b   2
                dc.b $DE
                dc.b  $E
                dc.b   0
                dc.b   0
                dc.b $F0
                dc.b $F6
                dc.b  $E
                dc.b   0
                dc.b  $C
                dc.b $F0
                dc.b   2
                dc.b $E6
                dc.b  $E
                dc.b   0
                dc.b   0
                dc.b $F0
                dc.b $FE
                dc.b  $D
                dc.b   0
                dc.b $18
                dc.b $F0
                dc.b   1
                dc.b $F0
                dc.b  $F
                dc.b   0
                dc.b $20
                dc.b $F0
                dc.b   1
                dc.b $F0
                dc.b  $F
                dc.b   0
                dc.b $30 ; 0
                dc.b $F0
                dc.b   1
                dc.b $F0
                dc.b  $F
                dc.b   0
                dc.b $40 ; @
                dc.b $F0
; ---------------------------------------------------------------------------