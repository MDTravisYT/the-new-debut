; ---------------------------------------------------------------------------
; Animation script - Sonic
; ---------------------------------------------------------------------------
Ani_Sonic:

ptr_Walk:	dc.w SonAni_Walk-Ani_Sonic
ptr_Run:	dc.w SonAni_Run-Ani_Sonic
ptr_Roll:	dc.w SonAni_Roll-Ani_Sonic
ptr_Roll2:	dc.w SonAni_Roll2-Ani_Sonic
ptr_Push:	dc.w SonAni_Push-Ani_Sonic
ptr_Wait:	dc.w SonAni_Wait-Ani_Sonic
ptr_Balance:	dc.w SonAni_Balance-Ani_Sonic
ptr_LookUp:	dc.w SonAni_LookUp-Ani_Sonic
ptr_Duck:	dc.w SonAni_Duck-Ani_Sonic
ptr_Warp1:	dc.w SonAni_ERROR-Ani_Sonic
ptr_Warp2:	dc.w SonAni_ERROR-Ani_Sonic
ptr_Warp3:	dc.w SonAni_ERROR-Ani_Sonic
ptr_Warp4:	dc.w SonAni_ERROR-Ani_Sonic
ptr_Stop:	dc.w SonAni_Stop-Ani_Sonic
ptr_Float1:	dc.w SonAni_ERROR-Ani_Sonic
ptr_Float2:	dc.w SonAni_Float-Ani_Sonic
ptr_Spring:	dc.w SonAni_Spring-Ani_Sonic
ptr_Hang:	dc.w SonAni_ERROR-Ani_Sonic
ptr_Leap1:	dc.w SonAni_Leap1-Ani_Sonic
ptr_Leap2:	dc.w SonAni_Leap2-Ani_Sonic
ptr_Surf:	dc.w SonAni_ERROR-Ani_Sonic
ptr_GetAir:	dc.w SonAni_GetAir-Ani_Sonic
ptr_Burnt:	dc.w SonAni_Burnt-Ani_Sonic
ptr_Drown:	dc.w SonAni_Drown-Ani_Sonic
ptr_Death:	dc.w SonAni_Death-Ani_Sonic
ptr_Shrink:	dc.w SonAni_ERROR-Ani_Sonic
ptr_Hurt:	dc.w SonAni_Hurt-Ani_Sonic
ptr_WaterSlide:	dc.w SonAni_WaterSlide-Ani_Sonic
ptr_Null:	dc.w SonAni_Null-Ani_Sonic
ptr_Float3:	dc.w SonAni_ERROR-Ani_Sonic
ptr_Float4:	dc.w SonAni_ERROR-Ani_Sonic
ptr_Jump:	dc.w SonAni_Jump-Ani_Sonic
ptr_Jump2Roll:	dc.w SonAni_Jump2Roll-Ani_Sonic
ptr_Fall:	dc.w SonAni_Fall-Ani_Sonic
ptr_Dash:	dc.w SonAni_ERROR-Ani_Sonic

SonAni_Walk:	dc.b $FF, 2, 3,	4, 5,	6, 7, afEnd
		even
SonAni_Run:	dc.b $FF, $1A, $1B, $1C, $1D, afEnd, afEnd, afEnd
		even
SonAni_Roll:	dc.b $FE,  $2B,  $2A,  $2C,  $2A,  $2D,	$2A,	$2E,	afEnd, afEnd
		even
SonAni_Roll2:	dc.b $FE,  $2B,  $2A,  $2C,  $2A,  $2D,	$2A,	$2E,	afEnd, afEnd
		even
SonAni_Push:	dc.b $FD, $49, $4A, $4B, $4C, afEnd, afEnd, afEnd
		even
SonAni_Wait:	dc.b   7,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1 ; big block of frames, someone please tell me how to optimize this - MCT
		dc.b   1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1;,  afBack, 4        ; im screaming into a void
		dc.b   $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42 ; he stare
		dc.b   $43,  $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42
		dc.b   $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42
		dc.b   $43,  $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42
		dc.b   $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42,  $42,  afBack, 32
	;	dc.b   $48,  $48,  $49,  $49,  afBack, 4
		even
SonAni_Balance:	dc.b $1F, $46, $47, afEnd
		even
SonAni_LookUp:	dc.b $17, $4D, afBack, 1
		even
SonAni_Duck:	dc.b $17, $4E, afEnd
		even
SonAni_ERROR:	dc.b $3F, $48, afEnd
		even
SonAni_Stop:	dc.b 5,	$3B, afEnd;, $53, afBack, 1
		even
SonAni_Float:	dc.b 7,	$3C, $3D, $3E, $3F, $40, afEnd
		even
SonAni_Leap1:	dc.b $F, $33, $33, $33,	afBack, 1
		even
SonAni_Leap2:	dc.b $F, $33, $34, afBack, 1
		even
SonAni_GetAir:	dc.b $B, $41, $41, 5, 6, 7, afChange, id_Walk
		even
SonAni_Burnt:	dc.b $20, $30, afEnd
		even
SonAni_Drown:	dc.b $17, $31, afEnd
		even
SonAni_Death:	dc.b $F,	$2F, afBack, 1
		even
SonAni_Hurt:	dc.b 4, $3A, $38, $32, afBack, 1
		even
SonAni_WaterSlide:
		dc.b 7, $32, $50, afEnd
		even
SonAni_Null:	dc.b $77, fr_null, afChange, id_Walk
		even
SonAni_Jump:	dc.b 4, $35, $35, $35, $35, afChange, id_Fall
		even
SonAni_Jump2Roll:	dc.b $2, $39, afChange, id_Roll
		even
SonAni_Fall:	dc.b $7, $36, $37, $38, afBack, 1
		even
SonAni_Spring:	dc.b $2F, $51, afChange, id_Walk
		even

id_Walk:	equ (ptr_Walk-Ani_Sonic)/2	; 0
id_Run:		equ (ptr_Run-Ani_Sonic)/2	; 1
id_Roll:	equ (ptr_Roll-Ani_Sonic)/2	; 2
id_Roll2:	equ (ptr_Roll2-Ani_Sonic)/2	; 3
id_Push:	equ (ptr_Push-Ani_Sonic)/2	; 4
id_Wait:	equ (ptr_Wait-Ani_Sonic)/2	; 5
id_Balance:	equ (ptr_Balance-Ani_Sonic)/2	; 6
id_LookUp:	equ (ptr_LookUp-Ani_Sonic)/2	; 7
id_Duck:	equ (ptr_Duck-Ani_Sonic)/2	; 8
id_Warp1:	equ (ptr_Warp1-Ani_Sonic)/2	; 9
id_Warp2:	equ (ptr_Warp2-Ani_Sonic)/2	; $A
id_Warp3:	equ (ptr_Warp3-Ani_Sonic)/2	; $B
id_Warp4:	equ (ptr_Warp4-Ani_Sonic)/2	; $C
id_Stop:	equ (ptr_Stop-Ani_Sonic)/2	; $D
id_Float1:	equ (ptr_Float1-Ani_Sonic)/2	; $E
id_Float2:	equ (ptr_Float2-Ani_Sonic)/2	; $F
id_Spring:	equ (ptr_Spring-Ani_Sonic)/2	; $10
id_Hang:	equ (ptr_Hang-Ani_Sonic)/2	; $11
id_Leap1:	equ (ptr_Leap1-Ani_Sonic)/2	; $12
id_Leap2:	equ (ptr_Leap2-Ani_Sonic)/2	; $13
id_Surf:	equ (ptr_Surf-Ani_Sonic)/2	; $14
id_GetAir:	equ (ptr_GetAir-Ani_Sonic)/2	; $15
id_Burnt:	equ (ptr_Burnt-Ani_Sonic)/2	; $16
id_Drown:	equ (ptr_Drown-Ani_Sonic)/2	; $17
id_Death:	equ (ptr_Death-Ani_Sonic)/2	; $18
id_Shrink:	equ (ptr_Shrink-Ani_Sonic)/2	; $19
id_Hurt:	equ (ptr_Hurt-Ani_Sonic)/2	; $1A
id_WaterSlide:	equ (ptr_WaterSlide-Ani_Sonic)/2 ; $1B
id_Null:	equ (ptr_Null-Ani_Sonic)/2	; $3A
id_Float3:	equ (ptr_Float3-Ani_Sonic)/2	; $1D
id_Float4:	equ (ptr_Float4-Ani_Sonic)/2	; $1E
id_Jump:	equ	(ptr_Jump-Ani_Sonic)/2	;1F
id_Jump2Roll:	equ	(ptr_Jump2Roll-Ani_Sonic)/2	;20
id_Fall:	equ	(ptr_Fall-Ani_Sonic)/2	;21
id_Dash:	equ	(ptr_Dash-Ani_Sonic)/2	;22