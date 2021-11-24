; ---------------------------------------------------------------------------
; Object 10 - You Are Welcome, Everyone!
; ---------------------------------------------------------------------------

WelcomeSign:

		cmpi.b #1,obSubtype(a0)
		bge.w  @warning
		
		cmpi.b #0,obSubtype(a0)
		bge.w  @welcome
		
	@welcome:
        move.l    #Map_Welcome,obMap(a0)
        move.w    #$0300,obGfx(a0)
        move.b    #4,obRender(a0)
        move.b    #$13,obActWid(a0)
        move.b    #4,obPriority(a0)
        bsr.w    DisplaySprite
        rts
		
	@warning: 
		move.l    #Map_Warning,obMap(a0)
        move.w    #$23E8,obGfx(a0)
        move.b    #4,obRender(a0)
        move.b    #$13,obActWid(a0)
        move.b    #4,obPriority(a0)
        bsr.w    DisplaySprite
        rts