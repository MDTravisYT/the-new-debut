; -------------------------------------------------------
; File created using XM4SMPS v4.1-beta (Qt 3.2.1 Win32)
; Created on Mon Jun 28 2021, 04:27:42
; -------------------------------------------------------

CHAPTER_Header:
	smpsHeaderVoice	CHAPTER_Voices
	smpsHeaderChan	6,0
	smpsHeaderTempo	$3, $3
	dc.l $000900F2	; This song has no DAC or PWM
	smpsHeaderFM	CHAPTER_FM1,	$0, $10
	smpsHeaderFM	CHAPTER_FM2,	$0, $10
	smpsHeaderFM	CHAPTER_FM3,	$0, $10
	smpsHeaderFM	CHAPTER_FM4,	$0, $10
	smpsHeaderFM	CHAPTER_FM5,	$0, $10

CHAPTER_FM1:
	smpsCall	CHAPTER_FM1_p12
	smpsCall	CHAPTER_FM1_p13
	smpsCall	CHAPTER_FM1_p14
	smpsCall	CHAPTER_FM1_p12
	smpsCall	CHAPTER_FM1_p13
	smpsCall	CHAPTER_FM1_p28
	smpsCall	CHAPTER_FM1_p27
	smpsCall	CHAPTER_FM1_p29
	smpsCall	CHAPTER_FM1_p2a
	smpsJump	CHAPTER_FM1

CHAPTER_FM2:
	smpsCall	CHAPTER_FM2_p12
	smpsCall	CHAPTER_FM2_p13
	smpsCall	CHAPTER_FM2_p14
	smpsCall	CHAPTER_FM2_p12
	smpsCall	CHAPTER_FM2_p13
	smpsCall	CHAPTER_FM2_p14
	smpsCall	CHAPTER_FM2_p27
	smpsCall	CHAPTER_FM2_p29
	smpsCall	CHAPTER_FM2_p2a
	smpsJump	CHAPTER_FM2

CHAPTER_FM3:
	smpsCall	CHAPTER_FM3_p12
	smpsCall	CHAPTER_FM3_p13
	smpsCall	CHAPTER_FM3_p14
	smpsCall	CHAPTER_FM3_p12
	smpsCall	CHAPTER_FM3_p13
	smpsCall	CHAPTER_FM3_p28
	smpsCall	CHAPTER_FM3_p27
	smpsCall	CHAPTER_FM3_p29
	smpsCall	CHAPTER_FM3_p2a
	smpsJump	CHAPTER_FM3

CHAPTER_FM4:
	smpsCall	CHAPTER_FM4_p12
	smpsCall	CHAPTER_FM4_p13
	smpsCall	CHAPTER_FM4_p14
	smpsCall	CHAPTER_FM4_p12
	smpsCall	CHAPTER_FM4_p13
	smpsCall	CHAPTER_FM4_p14
	smpsCall	CHAPTER_FM4_p27
	smpsCall	CHAPTER_FM4_p29
	smpsCall	CHAPTER_FM4_p2a
	smpsJump	CHAPTER_FM4

CHAPTER_FM5:
	smpsCall	CHAPTER_FM5_p12
	smpsCall	CHAPTER_FM5_p13
	smpsCall	CHAPTER_FM5_p14
	smpsCall	CHAPTER_FM5_p12
	smpsCall	CHAPTER_FM5_p13
	smpsCall	CHAPTER_FM5_p14
	smpsCall	CHAPTER_FM5_p10
	smpsCall	CHAPTER_FM5_p10
	smpsCall	CHAPTER_FM5_p10
	smpsJump	CHAPTER_FM5


; Pattern data for FM1
CHAPTER_FM1_p12:
	smpsFMvoice	$2
	dc.b		$c8,$2
	dc.b		$cd
	dc.b		$cc
	dc.b		$cd,$4
	dc.b		$2
	dc.b		$cf
	dc.b		$cd
	dc.b		$cb
	dc.b		$c6
	dc.b		$c4
	dc.b		$c3,$8
	dc.b		$c8,$2
	dc.b		$c9
	dc.b		$c8
	dc.b		$c4
	dc.b		$c1,$4
	dc.b		$2
	dc.b		$c4
	dc.b		$c6
	dc.b		$c8
	dc.b		$ca
	dc.b		$cb
	dc.b		$cc,$4
	dc.b		$cd,$2
	dc.b		$ca
	dc.b		$c6
	smpsReturn

CHAPTER_FM1_p13:
	dc.b		$c5,$2
	dc.b		$cd
	dc.b		$cc
	dc.b		$cd,$4
	dc.b		$2
	dc.b		$cf
	dc.b		$cd
	dc.b		$cb
	dc.b		$c6
	dc.b		$c4
	dc.b		$c3,$8
	dc.b		$c8,$2
	dc.b		$c9
	dc.b		$c4
	dc.b		$c1
	dc.b		$c8
	dc.b		$c3
	dc.b		$c0
	dc.b		$bc
	dc.b		$c0
	dc.b		$c4
	dc.b		$c1
	dc.b		$bd
	dc.b		$c3
	dc.b		$c0
	dc.b		$bc
	dc.b		$ba
	dc.b		$bc
	smpsReturn

CHAPTER_FM1_p14:
	dc.b		$b9,$1e
	dc.b		$c5,$22
	smpsReturn

CHAPTER_FM1_p28:
	dc.b		$b9,$40
	smpsReturn

CHAPTER_FM1_p27:
	dc.b		$b5,$2
	dc.b		$bc,$4
	dc.b		$b0,$2
	dc.b		$b6
	dc.b		$ba
	dc.b		$ba,$4
	dc.b		$b5,$2
	dc.b		$bc,$4
	dc.b		$b0,$2
	dc.b		$b6
	dc.b		$ba
	dc.b		$ba,$4
	dc.b		$ac,$2
	dc.b		$bc,$4
	dc.b		$a5,$2
	dc.b		$a6
	dc.b		$b9
	dc.b		$b9,$4
	dc.b		$ac,$2
	dc.b		$bc,$4
	dc.b		$a5,$2
	dc.b		$a6
	dc.b		$b9
	dc.b		$b9,$4
	smpsReturn

CHAPTER_FM1_p29:
	dc.b		$ac,$2
	dc.b		$bc,$4
	dc.b		$a7,$2
	dc.b		$ac
	dc.b		$bc
	dc.b		$bc,$34
	smpsReturn

CHAPTER_FM1_p2a:
	dc.b		$ba,$2
	dc.b		$c1,$4
	dc.b		$b5,$2
	dc.b		$bb
	dc.b		$bf
	dc.b		$bf,$4
	dc.b		$ba,$2
	dc.b		$c1,$4
	dc.b		$b5,$2
	dc.b		$bb
	dc.b		$bf
	dc.b		$bf,$4
	dc.b		$b1,$2
	dc.b		$c1,$4
	dc.b		$aa,$2
	dc.b		$ab
	dc.b		$be
	dc.b		$be,$4
	dc.b		$b1,$2
	dc.b		$c1,$4
	dc.b		$aa,$2
	dc.b		$ab
	dc.b		$be
	dc.b		$be,$4
	smpsReturn

; Pattern data for FM2
CHAPTER_FM2_p12:
	dc.b		$e7,$3
	smpsFMvoice	$2
	dc.b		$c8,$2
	dc.b		$cd
	dc.b		$cc
	dc.b		$cd,$4
	dc.b		$2
	dc.b		$cf
	dc.b		$cd
	dc.b		$cb
	dc.b		$c6
	dc.b		$c4
	dc.b		$c3,$8
	dc.b		$c8,$2
	dc.b		$c9
	dc.b		$c8
	dc.b		$c4
	dc.b		$c1,$4
	dc.b		$2
	dc.b		$c4
	dc.b		$c6
	dc.b		$c8
	dc.b		$ca
	dc.b		$cb
	dc.b		$cc,$4
	dc.b		$cd,$2
	dc.b		$ca,$1
	smpsReturn

CHAPTER_FM2_p13:
	dc.b		$e7,$1
	dc.b		$c6,$2
	dc.b		$c5
	dc.b		$cd
	dc.b		$cc
	dc.b		$cd,$4
	dc.b		$2
	dc.b		$cf
	dc.b		$cd
	dc.b		$cb
	dc.b		$c6
	dc.b		$c4
	dc.b		$c3,$8
	dc.b		$c8,$2
	dc.b		$c9
	dc.b		$c4
	dc.b		$c1
	dc.b		$c8
	dc.b		$c3
	dc.b		$c0
	dc.b		$bc
	dc.b		$c0
	dc.b		$c4
	dc.b		$c1
	dc.b		$bd
	dc.b		$c3
	dc.b		$c0
	dc.b		$bc
	dc.b		$ba,$1
	smpsReturn

CHAPTER_FM2_p14:
	dc.b		$e7,$1
	dc.b		$bc,$2
	dc.b		$b9,$3d
	smpsReturn

CHAPTER_FM2_p27:
	dc.b		$e7,$2
	dc.b		$b9,$8
	dc.b		$b6,$2
	dc.b		$6
	dc.b		$b9,$8
	dc.b		$b6,$2
	dc.b		$6
	dc.b		$b8,$8
	dc.b		$b6,$2
	dc.b		$6
	dc.b		$b8,$8
	dc.b		$b6,$2
	dc.b		$4
	smpsReturn

CHAPTER_FM2_p29:
	dc.b		$e7,$2
	dc.b		$b8,$8
	dc.b		$2
	dc.b		$34
	smpsReturn

CHAPTER_FM2_p2a:
	dc.b		$e7,$2
	dc.b		$be,$8
	dc.b		$bb,$2
	dc.b		$6
	dc.b		$be,$8
	dc.b		$bb,$2
	dc.b		$6
	dc.b		$bd,$8
	dc.b		$bb,$2
	dc.b		$6
	dc.b		$bd,$8
	dc.b		$bb,$2
	dc.b		$4
	smpsReturn

; Pattern data for FM3
CHAPTER_FM3_p12:
	smpsFMvoice	$2
	dc.b		$b5,$4
	dc.b		$b0
	dc.b		$b5
	dc.b		$b0,$2
	dc.b		$b2
	dc.b		$b3,$4
	dc.b		$b7
	dc.b		$bc
	dc.b		$ba
	dc.b		$b1
	dc.b		$b5
	dc.b		$bc
	dc.b		$ba,$2
	dc.b		$b5
	dc.b		$b0,$4
	dc.b		$b4
	dc.b		$b7
	dc.b		$ba,$2
	dc.b		$b4
	smpsReturn

CHAPTER_FM3_p13:
	dc.b		$b5,$4
	dc.b		$b0
	dc.b		$b5
	dc.b		$b0,$2
	dc.b		$b2
	dc.b		$b3,$4
	dc.b		$b7
	dc.b		$bc
	dc.b		$ba
	dc.b		$b1,$8
	dc.b		$b4,$6
	dc.b		$b0,$2
	dc.b		$b5,$8
	dc.b		$b0,$6
	dc.b		$b4,$2
	smpsReturn

CHAPTER_FM3_p14:
	dc.b		$b5,$4
	dc.b		$b0
	dc.b		$b5
	dc.b		$b0,$2
	dc.b		$b2
	dc.b		$b5,$4
	dc.b		$b0,$2
	dc.b		$b2
	dc.b		$b5
	dc.b		$b7
	dc.b		$b9,$24
	smpsReturn

CHAPTER_FM3_p28:
	dc.b		$b5,$4
	dc.b		$b0
	dc.b		$b5
	dc.b		$b0,$2
	dc.b		$b2
	dc.b		$b5,$4
	dc.b		$b0
	dc.b		$b5,$28
	smpsReturn

CHAPTER_FM3_p27:
	dc.b		$e7,$2
	dc.b		$cc,$1
	dc.b		$cd
	dc.b		$cf,$2
	dc.b		$cd,$1
	dc.b		$cc
	dc.b		$cb,$2
	dc.b		$c9
	dc.b		$c8
	dc.b		$c6
	dc.b		$c5
	dc.b		$c3
	dc.b		$c1,$4
	dc.b		$bf
	dc.b		$bd
	dc.b		$bc,$6
	dc.b		$b8,$2
	dc.b		$bb,$4
	dc.b		$b9,$2
	dc.b		$bb,$1
	dc.b		$b9
	dc.b		$b8,$4
	dc.b		$bf
	dc.b		$c2
	dc.b		$c5
	smpsReturn

CHAPTER_FM3_p29:
	dc.b		$c4,$40
	smpsReturn

CHAPTER_FM3_p2a:
	dc.b		$e7,$2
	dc.b		$d1,$1
	dc.b		$d2
	dc.b		$d4,$2
	dc.b		$d2,$1
	dc.b		$d1
	dc.b		$d0,$2
	dc.b		$ce
	dc.b		$cd
	dc.b		$cb
	dc.b		$ca
	dc.b		$c8
	dc.b		$c6,$4
	dc.b		$c4
	dc.b		$c2
	dc.b		$c1,$6
	dc.b		$c0,$1a
	smpsReturn

; Pattern data for FM4
CHAPTER_FM4_p12:
	dc.b		$e7,$2
	smpsFMvoice	$2
	dc.b		$c5,$4
	dc.b		$c5
	dc.b		$c5
	dc.b		$c5
	dc.b		$c3
	dc.b		$c3
	dc.b		$c3
	dc.b		$c3
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c1
	dc.b		$c0
	dc.b		$c0
	dc.b		$c0
	dc.b		$c0,$2
	smpsReturn

CHAPTER_FM4_p13:
	dc.b		$e7,$2
	dc.b		$c5,$4
	dc.b		$c5
	dc.b		$c5
	dc.b		$c5
	dc.b		$c3
	dc.b		$c3
	dc.b		$c3
	dc.b		$c3
	dc.b		$c1,$1
	dc.b		$c1
	dc.b		$c1,$2
	dc.b		$c1
	dc.b		$c3,$3
	dc.b		$1
	dc.b		$2
	dc.b		$4
	dc.b		$c4,$1
	dc.b		$c4
	dc.b		$c4,$2
	dc.b		$c4
	dc.b		$c6,$3
	dc.b		$1
	dc.b		$2
	dc.b		$c6
	smpsReturn

CHAPTER_FM4_p14:
	dc.b		$e7,$2
	dc.b		$c5,$4
	dc.b		$c5
	dc.b		$c5
	dc.b		$c5
	dc.b		$c5
	dc.b		$c5
	dc.b		$c5,$1
	dc.b		$c5
	dc.b		$c5,$24
	smpsReturn

CHAPTER_FM4_p27:
	dc.b		$e7,$5
	dc.b		$cc,$1
	dc.b		$cd
	dc.b		$cf,$2
	dc.b		$cd,$1
	dc.b		$cc
	dc.b		$cb,$2
	dc.b		$c9
	dc.b		$c8
	dc.b		$c6
	dc.b		$c5
	dc.b		$c3
	dc.b		$c1,$4
	dc.b		$bf
	dc.b		$bd
	dc.b		$bc,$6
	dc.b		$b8,$2
	dc.b		$bb,$4
	dc.b		$b9,$2
	dc.b		$bb,$1
	dc.b		$b9
	dc.b		$b8,$4
	dc.b		$bf
	dc.b		$c2
	dc.b		$c5,$1
	smpsReturn

CHAPTER_FM4_p29:
	dc.b		$e7,$3
	dc.b		$c4,$3d
	smpsReturn

CHAPTER_FM4_p2a:
	dc.b		$e7,$5
	dc.b		$d1,$1
	dc.b		$d2
	dc.b		$d4,$2
	dc.b		$d2,$1
	dc.b		$d1
	dc.b		$d0,$2
	dc.b		$ce
	dc.b		$cd
	dc.b		$cb
	dc.b		$ca
	dc.b		$c8
	dc.b		$c6,$4
	dc.b		$c4
	dc.b		$c2
	dc.b		$c1,$1d
	smpsReturn

; Pattern data for FM5
CHAPTER_FM5_p12:
	dc.b		$e7,$2
	smpsFMvoice	$2
	dc.b		$c8,$4
	dc.b		$c8
	dc.b		$c8
	dc.b		$c8
	dc.b		$c6
	dc.b		$c6
	dc.b		$c6
	dc.b		$c6
	dc.b		$c4
	dc.b		$c4
	dc.b		$c4
	dc.b		$c4
	dc.b		$c6
	dc.b		$c6
	dc.b		$c6
	dc.b		$c6,$2
	smpsReturn

CHAPTER_FM5_p13:
	dc.b		$e7,$2
	dc.b		$c8,$4
	dc.b		$c8
	dc.b		$c8
	dc.b		$c8
	dc.b		$c6
	dc.b		$c6
	dc.b		$c6
	dc.b		$c6
	dc.b		$c4,$1
	dc.b		$c4
	dc.b		$c4,$2
	dc.b		$c4
	dc.b		$c6,$3
	dc.b		$1
	dc.b		$2
	dc.b		$4
	dc.b		$c1,$1
	dc.b		$c1
	dc.b		$c1,$2
	dc.b		$c1
	dc.b		$c3,$3
	dc.b		$1
	dc.b		$2
	dc.b		$c3
	smpsReturn

CHAPTER_FM5_p14:
	dc.b		$e7,$2
	dc.b		$c8,$4
	dc.b		$c8
	dc.b		$c8
	dc.b		$c8
	dc.b		$c8
	dc.b		$c8
	dc.b		$c8,$1
	dc.b		$c8
	dc.b		$c8,$24
	smpsReturn

CHAPTER_FM5_p10:
	dc.b		$e7,$40
	smpsReturn

CHAPTER_Voices:
	dc.b	$8,$a,$70,$30,$0,$1f,$1f,$5f,$5f,$12,$e,$a,$a,$0,$4,$4
	dc.b	$3,$2f,$2f,$2f,$2f,$24,$2d,$13,$80	; Voice 0 (Voice 0 ripped from Mus81 - GHZ.bin)
	dc.b	$20,$36,$35,$30,$31,$df,$df,$9f,$9f,$7,$6,$9,$6,$7,$6,$6
	dc.b	$8,$20,$10,$10,$f8,$19,$37,$13,$80	; Voice 1 (Voice 1 ripped from Mus81 - GHZ.bin)
	dc.b	$36,$f,$1,$1,$1,$1f,$1f,$1f,$1f,$12,$11,$e,$0,$0,$a,$7
	dc.b	$9,$ff,$f,$1f,$f,$18,$80,$80,$80	; Voice 2 (Voice 2 ripped from Mus81 - GHZ.bin)
	dc.b	$3d,$1,$2,$2,$2,$14,$e,$8c,$e,$8,$5,$2,$5,$0,$d,$d
	dc.b	$d,$1f,$1f,$1f,$1f,$1a,$80,$80,$80	; Voice 3 (Voice 3 ripped from Mus81 - GHZ.bin)
	dc.b	$2c,$72,$78,$34,$34,$1f,$12,$1f,$12,$0,$a,$0,$a,$0,$0,$0
	dc.b	$0,$f,$1f,$f,$1f,$16,$80,$17,$80	; Voice 4 (Voice 4 ripped from Mus81 - GHZ.bin)
	dc.b	$2c,$74,$74,$34,$34,$1f,$12,$1f,$1f,$0,$0,$0,$0,$0,$1,$0
	dc.b	$1,$f,$3f,$f,$3f,$16,$80,$17,$80	; Voice 5 (Voice 5 ripped from Mus81 - GHZ.bin)
	dc.b	$4,$72,$42,$32,$32,$12,$12,$12,$12,$0,$8,$0,$8,$0,$8,$0
	dc.b	$8,$f,$1f,$f,$1f,$23,$80,$23,$80	; Voice 6 (Voice 6 ripped from Mus81 - GHZ.bin)
	dc.b	$3d,$1,$2,$2,$2,$10,$50,$50,$50,$7,$8,$8,$8,$1,$0,$0
	dc.b	$0,$20,$17,$17,$17,$1c,$80,$80,$80	; Voice 7 (Voice 7 ripped from Mus81 - GHZ.bin)
	dc.b	$2c,$74,$74,$34,$34,$1f,$12,$1f,$1f,$0,$7,$0,$7,$0,$7,$0
	dc.b	$7,$0,$38,$0,$38,$16,$80,$17,$80	; Voice 8 (Voice 8 ripped from Mus81 - GHZ.bin)
	even
