; ---------------------------------------------------------------------------
; Animation script - Imp enemy
; ---------------------------------------------------------------------------
Ani_Imp:	dc.w @walk1-Ani_Imp
		dc.w @walk2-Ani_Imp
		dc.w @digging-Ani_Imp
		dc.w @fall-Ani_Imp
@walk1:		dc.b 8,	0, afEnd
@walk2:		dc.b 15, 1, 0, 2, 0, afEnd
@digging:	dc.b 8, 3, afEnd
@fall:		dc.b 8, 3, afEnd
@dead:		dc.b 4,	4, 5, afEnd
		even