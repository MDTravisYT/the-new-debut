; ---------------------------------------------------------------------------
; Object 10 - You Are Welcome, Everyone!
; ---------------------------------------------------------------------------

WelcomeSign:
		rts
        move.l    #Map_Welcome,obMap(a0)
        move.w    #$0300,obGfx(a0)
        move.b    #4,obRender(a0)
        move.b    #$13,obActWid(a0)
        move.b    #4,obPriority(a0)
        bsr.w    DisplaySprite
        rts