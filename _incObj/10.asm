; ---------------------------------------------------------------------------
; Object 10 - blank
; ---------------------------------------------------------------------------

Obj10:
        move.l    #Map_Welcome,obMap(a0)
        move.w    #$4442,obGfx(a0)
        move.b    #4,obRender(a0)
        move.b    #$13,obActWid(a0)
        move.b    #4,obPriority(a0)
        bsr.w    DisplaySprite
        rts