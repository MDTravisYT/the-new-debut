; =============================================================================================
; Project Name:		invinc
; Created:		29th July 2021
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

invinc_Header:
smpsHeaderStartSong = 1
	smpsHeaderVoice	invinc_Voices
	smpsHeaderChan	$07,	$03
	smpsHeaderTempo	$01,	$00

	smpsHeaderDAC	invinc_DAC
	smpsHeaderFM	invinc_FM1,	$00,	$00
	smpsHeaderFM	invinc_FM2,	$00,	$00
	smpsHeaderFM	invinc_FM3,	$00,	$00
	smpsHeaderFM	invinc_FM4,	$00,	$00
	smpsHeaderFM	invinc_FM5,	$00,	$00
	smpsHeaderFM	invinc_FM6,	$00,	$00
	smpsHeaderPSG	invinc_PSG1,	$00,	$00,	$00, fTone_05
	smpsHeaderPSG	invinc_PSG2,	$00,	$00,	$00, fTone_05
	smpsHeaderPSG	invinc_PSG3,	$00,	$00,	$00, fTone_05

; PSG1 Data
invinc_PSG1:

; PSG2 Data
invinc_PSG2:

; PSG3 Data
invinc_PSG3:
	smpsStop

; FM1 Data
invinc_FM1:
	smpsSetvoice	$00
	smpsAlterVol	$11
	smpsPan		panCentre,	$00
	dc.b		nRst,	$3E
invinc_Jump01:
	dc.b		nRst,	$0F,	nC5,	$1C,	nRst,	$04,	nC5,	$07
	dc.b		nRst,	$08,	nCs5,	$13,	nRst,	$04,	nCs5,	$1E
	dc.b		nRst,	$08,	nC5,	$07,	nRst,	$08,	nC5,	nRst
	dc.b		nC5,	$07,	nRst,	$08,	nAb4,	nRst,	$07,	nFs4
	dc.b		$13,	nRst,	$04,	nFs4,	$1E,	nRst,	$17,	nC5
	dc.b		$1C,	nRst,	$03,	nC5,	$08,	nRst,	nCs5,	$12
	dc.b		nRst,	$04,	nCs5,	$1E,	nRst,	$08,	nC5,	nRst
	dc.b		$07,	nC5,	$08,	nRst,	$07,	nC5,	$08,	nRst
	dc.b		nAb4,	$07,	nRst,	$08,	nFs4,	$13,	nRst,	$04
	dc.b		nFs4,	$1E,	nRst,	$07
	smpsAlterVol	$FD
	dc.b		smpsNoAttack,	nRst,	$79,	nAb4,	$06,	nAb4,	$05,	nAb4
	dc.b		nAb4,	nEb5,	nF5,	nBb4,	$04,	nBb4,	$06,	nD5
	dc.b		$05,	nEb5,	nEb5,	nG5,	nC5,	$06,	nC5,	$04
	dc.b		nC5,	$06,	nC5,	$05,	nC5,	nC5,	nC5,	$06
	dc.b		nC5,	$05,	nC5,	nC5,	nC5,	nC5
	smpsAlterVol	$03
	smpsPan		panCentre,	$00
	smpsJump	invinc_Jump01

; FM2 Data
invinc_FM2:
	smpsSetvoice	$01
	smpsAlterVol	$7F
	smpsPan		panCentre,	$00
	dc.b		nRst,	$01
	smpsSetvoice	$04
	smpsAlterVol	$88
	dc.b		smpsNoAttack,	nRst,	$3C,	nAb2,	$01
invinc_Jump02:
	dc.b		smpsNoAttack,	nAb2,	$07,	nRst,	$08,	nAb2,	nRst,	nEb2
	dc.b		nRst,	nEb2,	$07,	nRst,	$08,	nFs2,	$17,	nFs2
	dc.b		$0F,	nFs2,	$07,	nF2,	$10,	nAb2,	$07,	nRst
	dc.b		$08,	nAb2,	nRst,	nEb2,	$07,	nRst,	$08,	nEb2
	dc.b		nRst,	$07,	nCs3,	$17,	nCs3,	$0F,	nCs3,	$08
	dc.b		nCs3,	$0F,	nAb2,	$08,	nRst,	nAb2,	$07,	nRst
	dc.b		$08,	nEb2,	nRst,	$07,	nEb2,	$08,	nRst,	nFs2
	dc.b		$16,	nFs2,	$0F,	nFs2,	$08,	nF2,	$0F,	nAb2
	dc.b		$08,	nRst,	$07,	nAb2,	$08,	nRst,	$07,	nEb2
	dc.b		$08,	nRst,	nEb2,	$07,	nRst,	$08,	nCs3,	$17
	dc.b		nCs3,	$0F,	nCs3,	$08,	nCs3,	$0E,	nBb1,	$08
	dc.b		nBb1,	$17,	nAb1,	$08,	nRst,	$07,	nBb1,	$08
	dc.b		nRst,	nBb1,	$07,	nBb1,	$17,	nAb1,	$07,	nRst
	dc.b		$08,	nBb1,	$07,	nRst,	nAb1,	$10,	nAb1,	$0F
	dc.b		nC2,	nD2,	nBb1,	$08,	nBb1,	nBb1,	$07,	nRst
	dc.b		$01,	nBb1,	$07,	nRst,	$01,	nBb1,	$07,	nBb1
	dc.b		$08,	nBb1,	$07,	nBb1,	$08
	smpsPan		panCentre,	$00
	smpsJump	invinc_Jump02

; FM3 Data
invinc_FM3:
	smpsSetvoice	$02
	smpsAlterVol	$0E
	smpsPan		panCentre,	$00
	dc.b		nRst,	$01,	smpsNoAttack,	nC0,	$07,	nRst,	$01,	smpsNoAttack
	dc.b		nC0,	$07,	nC0,	$08,	nC0,	$07,	nC0,	$03
	dc.b		nC0,	$05
	smpsSetvoice	$05
	smpsAlterVol	$FE
	dc.b		nC0,	$07,	nRst,	$0F,	smpsNoAttack,	nRst,	$01
invinc_Jump03:
	dc.b		smpsNoAttack,	nC0,	$07,	nRst,	$08
	smpsSetvoice	$02
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	nRst,	$01,	smpsNoAttack,	nC0,	$07,	nRst,	$07
	smpsSetvoice	$06
	dc.b		smpsNoAttack,	nRst,	$01
	smpsSetvoice	$05
	smpsAlterVol	$FE
	dc.b		nC0,	$08,	nRst,	$07
	smpsSetvoice	$07
	dc.b		smpsNoAttack,	nRst,	$01
	smpsSetvoice	$02
	smpsAlterVol	$02
	dc.b		nC0,	$07,	nRst,	$08
	smpsSetvoice	$05
	smpsAlterVol	$FE
	dc.b		nC0,	nRst,	$07
	smpsSetvoice	$02
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	nRst,	$01,	smpsNoAttack,	nC0,	$07,	nRst,	$08
	smpsSetvoice	$05
	smpsAlterVol	$FE
	dc.b		nC0,	$07,	nRst
	smpsSetvoice	$02
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	nRst,	$01,	smpsNoAttack,	nC0,	$07,	nRst,	$08
	smpsSetvoice	$05
	smpsAlterVol	$FE
	dc.b		nC0,	$07,	nRst,	$08
	smpsSetvoice	$02
	smpsAlterVol	$02
	dc.b		nC0,	nRst
	smpsSetvoice	$05
	smpsAlterVol	$FE
	dc.b		nC0,	$07,	nRst,	$08
	smpsSetvoice	$02
	smpsAlterVol	$02
	dc.b		nC0,	nRst,	$07
	smpsSetvoice	$05
	smpsAlterVol	$FE
	dc.b		nC0,	$08,	nRst,	$07
	smpsSetvoice	$02
	smpsAlterVol	$02
	dc.b		nC0,	$08,	nRst,	$07
	smpsSetvoice	$05
	smpsAlterVol	$FE
	dc.b		nC0,	$08,	nRst,	$02
	smpsSetvoice	$08
	dc.b		smpsNoAttack,	nRst,	$01
	smpsSetvoice	$02
	smpsAlterVol	$02
	dc.b		nC0,	$04,	smpsNoAttack,	nC0,	$01,	smpsNoAttack,	nC0,	$07
	dc.b		nRst,	$07
	smpsSetvoice	$09
	dc.b		smpsNoAttack,	nRst,	$01
	smpsSetvoice	$05
	smpsAlterVol	$FE
	dc.b		nC0,	$08,	nRst,	$07
	smpsSetvoice	$02
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	nRst,	$01,	smpsNoAttack,	nC0,	$07,	nRst,	$08
	smpsSetvoice	$05
	smpsAlterVol	$FE
	dc.b		nC0,	nRst,	$07
	smpsSetvoice	$02
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	nRst,	$01,	smpsNoAttack,	nC0,	$07,	nRst,	$07
	smpsSetvoice	$0A
	dc.b		smpsNoAttack,	nRst,	$01
	smpsSetvoice	$05
	smpsAlterVol	$FE
	dc.b		nC0,	$07,	nRst
	smpsSetvoice	$02
	smpsAlterVol	$02
	dc.b		nC0,	$08,	nRst
	smpsSetvoice	$05
	smpsAlterVol	$FE
	dc.b		nC0,	$07,	nRst
	smpsSetvoice	$0B
	dc.b		smpsNoAttack,	nRst,	$01
	smpsSetvoice	$02
	smpsAlterVol	$02
	dc.b		nC0,	$07,	nRst,	$08
	smpsSetvoice	$05
	smpsAlterVol	$FE
	dc.b		smpsNoAttack,	nRst,	$01,	smpsNoAttack,	nC0,	$07,	nRst,	$07
	smpsSetvoice	$02
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	nRst,	$01,	smpsNoAttack,	nC0,	$07,	nRst,	$07
	smpsSetvoice	$05
	smpsAlterVol	$FE
	dc.b		smpsNoAttack,	nRst,	$01,	smpsNoAttack,	nC0,	$07,	nRst,	$07
	smpsSetvoice	$08
	dc.b		smpsNoAttack,	nRst,	$01
	smpsSetvoice	$02
	smpsAlterVol	$02
	dc.b		nC0,	$07,	nRst
	smpsSetvoice	$09
	dc.b		smpsNoAttack,	nRst,	$01
	smpsSetvoice	$05
	smpsAlterVol	$FE
	dc.b		nC0,	$08,	nRst,	$07
	smpsSetvoice	$0C
	dc.b		smpsNoAttack,	nRst,	$01
	smpsSetvoice	$02
	smpsAlterVol	$02
	dc.b		nC0,	$07,	nRst
	smpsSetvoice	$05
	smpsAlterVol	$FE
	dc.b		nC0,	$08,	nRst,	$02
	smpsSetvoice	$02
	smpsAlterVol	$02
	dc.b		nC0,	$06,	nC0,	$07,	nRst
	smpsSetvoice	$05
	smpsAlterVol	$FE
	dc.b		smpsNoAttack,	nRst,	$01,	smpsNoAttack,	nC0,	$07
	smpsSetvoice	$02
	smpsAlterVol	$02
	dc.b		nC0,	nRst,	$10
	smpsSetvoice	$05
	smpsAlterVol	$FE
	dc.b		nC0,	$08,	nRst,	$07
	smpsSetvoice	$02
	smpsAlterVol	$02
	dc.b		nC0,	$08,	nRst,	$07,	smpsNoAttack,	nRst,	$01,	smpsNoAttack
	dc.b		nC0,	$07
	smpsSetvoice	$05
	smpsAlterVol	$FE
	dc.b		nC0,	nRst,	$10,	nC0,	$07,	nRst
	smpsSetvoice	$0D
	dc.b		smpsNoAttack,	nRst,	$01
	smpsSetvoice	$02
	smpsAlterVol	$02
	dc.b		nC0,	$07,	nRst,	smpsNoAttack,	nRst,	$01,	smpsNoAttack,	nC0
	dc.b		$07
	smpsSetvoice	$05
	smpsAlterVol	$FE
	dc.b		nC0,	$08,	nRst,	$0F,	nC0,	$07,	nRst,	$08
	smpsSetvoice	$02
	smpsAlterVol	$02
	dc.b		nC0,	$07,	nRst,	$08,	nC0,	$05,	smpsNoAttack,	nC0
	dc.b		$01,	smpsNoAttack,	nC0,	$04,	smpsNoAttack,	nC0,	$01,	smpsNoAttack
	dc.b		nC0,	$05,	nC0,	smpsNoAttack,	nC0,	$01,	smpsNoAttack,	nC0
	dc.b		$04,	nRst,	$01,	smpsNoAttack,	nC0,	$04,	smpsNoAttack,	nC0
	dc.b		$01,	smpsNoAttack,	nC0,	$05,	nC0,	nC0,	nC0,	nRst
	dc.b		$01,	smpsNoAttack,	nC0,	$04,	nC0,	$05
	smpsSetvoice	$05
	smpsAlterVol	$FE
	smpsPan		panCentre,	$00
	smpsJump	invinc_Jump03

; FM4 Data
invinc_FM4:
	smpsSetvoice	$03
	smpsAlterVol	$7F
	smpsPan		panCentre,	$00
	dc.b		nRst,	$01
	smpsSetvoice	$00
	smpsAlterVol	$90
	dc.b		smpsNoAttack,	nRst,	$3C,	nEb4,	$01
invinc_Jump04:
	dc.b		smpsNoAttack,	nEb4,	$07,	nRst,	$08,	nEb4,	nRst,	nC4
	dc.b		nRst,	nC4,	$07,	nRst,	$08,	nCs4,	$17,	nCs4
	dc.b		$26,	nEb4,	$07,	nRst,	$08,	nEb4,	nRst,	nC4
	dc.b		$07,	nRst,	$08,	nC4,	nRst,	$07,	nFs4,	$17
	dc.b		nFs4,	$26,	nEb4,	$08,	nRst,	nEb4,	$07,	nRst
	dc.b		$08,	nC4,	nRst,	$07,	nC4,	$08,	nRst,	nCs4
	dc.b		$16,	nCs4,	$26,	nEb4,	$08,	nRst,	$07,	nEb4
	dc.b		$08,	nRst,	$07,	nC4,	$08,	nRst,	nC4,	$07
	dc.b		nRst,	$08,	nFs4,	$17,	nFs4,	$25,	nRst,	$08
	dc.b		nFs4,	$17,	nAb3,	$08,	nRst,	$1E,	nAb3,	$17
	dc.b		nAb3,	$07,	nRst,	$1E,	nAb3,	$17,	nAb3,	$07
	dc.b		nRst,	$1F,	nAb3,	$18,	nAb3,	$07,	nRst,	$17
	smpsPan		panCentre,	$00
	smpsJump	invinc_Jump04

; FM5 Data
invinc_FM5:
	smpsSetvoice	$03
	smpsAlterVol	$7F
	smpsPan		panCentre,	$00
	dc.b		nRst,	$01
	smpsSetvoice	$00
	smpsAlterVol	$90
	dc.b		smpsNoAttack,	nRst,	$3C,	nC4,	$01
invinc_Jump05:
	dc.b		smpsNoAttack,	nC4,	$07,	nRst,	$08,	nC4,	nRst,	nAb3
	dc.b		nRst,	nAb3,	$07,	nRst,	$08,	nBb3,	$17,	nBb3
	dc.b		$26,	nC4,	$07,	nRst,	$08,	nC4,	nRst,	nAb3
	dc.b		$07,	nRst,	$08,	nAb3,	nRst,	$07,	nCs4,	$17
	dc.b		nCs4,	$26,	nC4,	$08,	nRst,	nC4,	$07,	nRst
	dc.b		$08,	nAb3,	nRst,	$07,	nAb3,	$08,	nRst,	nBb3
	dc.b		$16,	nBb3,	$26,	nC4,	$08,	nRst,	$07,	nC4
	dc.b		$08,	nRst,	$07,	nAb3,	$08,	nRst,	nAb3,	$07
	dc.b		nRst,	$08,	nCs4,	$17,	nCs4,	$25,	nRst,	$08
	dc.b		nCs4,	$17,	nC4,	$08,	nRst,	$1E,	nC4,	$17
	dc.b		nC4,	$07,	nRst,	$1E,	nC4,	$17,	nC4,	$07
	dc.b		nRst,	$1F,	nC4,	$18,	nC4,	$07,	nRst,	$17
	smpsPan		panCentre,	$00
	smpsJump	invinc_Jump05

; FM6 Data
invinc_FM6:
	smpsSetvoice	$03
	smpsAlterVol	$7F
	smpsPan		panCentre,	$00
	dc.b		nRst,	$01
	smpsSetvoice	$00
	smpsAlterVol	$92
	dc.b		smpsNoAttack,	nRst,	$3D
invinc_Jump06:
	dc.b		nRst,	$0F,	nC5,	$1C,	nRst,	$04,	nC5,	$07
	dc.b		nRst,	$08,	nCs5,	$13,	nRst,	$04,	nCs5,	$1E
	dc.b		nRst,	$08,	nC5,	$07,	nRst,	$08,	nC5,	nRst
	dc.b		nC5,	$07,	nRst,	$08,	nAb4,	nRst,	$07,	nFs4
	dc.b		$13,	nRst,	$04,	nFs4,	$1E,	nRst,	$18,	nC5
	dc.b		$1B,	nRst,	$03,	nC5,	$08,	nRst,	nCs5,	$12
	dc.b		nRst,	$04,	nCs5,	$1E,	nRst,	$08,	nC5,	nRst
	dc.b		$07,	nC5,	$08,	nRst,	$07,	nC5,	$08,	nRst
	dc.b		nAb4,	$07,	nRst,	$08,	nFs4,	$13,	nRst,	$04
	dc.b		nFs4,	$1E,	nRst,	$07
	smpsAlterVol	$FD
	dc.b		smpsNoAttack,	nRst,	$79,	nAb4,	$06,	nAb4,	$05,	nAb4
	dc.b		nAb4,	nEb5,	nF5,	nBb4,	$04,	nRst,	$01,	nBb4
	dc.b		$05,	nD5,	nEb5,	nEb5,	nG5,	nC5,	$06,	nC5
	dc.b		$05,	nC5,	nC5,	nRst,	$01,	nC5,	$04,	nC5
	dc.b		$06,	nC5,	$05,	nC5,	nC5,	nC5,	nC5,	nC5
	smpsAlterVol	$03
	smpsPan		panCentre,	$00
	smpsJump	invinc_Jump06
	
invinc_dac:
	smpsstop

invinc_Voices:
	dc.b		$3A,$01,$07,$01,$01,$8E,$8E,$8D,$53,$0E,$0E,$0E,$03,$00,$00,$00
	dc.b		$00,$1F,$FF,$1F,$0F,$18,$28,$27,$00;			Voice 00
	dc.b		$3A,$61,$3C,$14,$31,$9C,$DB,$9C,$DA,$04,$09,$04,$03,$00,$00,$00
	dc.b		$00,$FF,$FF,$FF,$FF,$7F,$7F,$7F,$00;			Voice 01
	dc.b		$3C,$0F,$00,$00,$00,$1F,$1A,$18,$1C,$17,$11,$1A,$0E,$00,$0F,$14
	dc.b		$10,$1F,$EC,$FF,$FF,$05,$00,$0C,$00;			Voice 02
	dc.b		$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	dc.b		$00,$FF,$FF,$FF,$FF,$7F,$7F,$7F,$00;			Voice 03
	dc.b		$3A,$61,$3C,$14,$31,$9C,$DB,$9C,$DA,$04,$09,$04,$03,$03,$01,$03
	dc.b		$00,$1F,$0F,$0F,$AF,$21,$47,$31,$00;			Voice 04
	dc.b		$3C,$01,$00,$00,$00,$1F,$9F,$9F,$1F,$15,$13,$1F,$11,$00,$00,$0E
	dc.b		$0D,$F5,$FF,$09,$F6,$0A,$04,$20,$00;			Voice 05
	dc.b		$3C,$01,$00,$00,$00,$1F,$9F,$18,$1C,$17,$11,$1A,$0E,$00,$0F,$14
	dc.b		$10,$FF,$FF,$FF,$FF,$05,$00,$0C,$00;			Voice 06
	dc.b		$3C,$0F,$00,$00,$00,$1F,$1A,$18,$1C,$17,$11,$1A,$0E,$00,$0F,$14
	dc.b		$10,$1F,$EC,$FF,$FF,$0A,$04,$20,$00;			Voice 07
	dc.b		$3C,$0F,$00,$00,$00,$1F,$9F,$9F,$1F,$15,$13,$1F,$11,$00,$00,$0E
	dc.b		$0D,$FF,$FF,$FF,$FF,$0A,$04,$20,$00;			Voice 08
	dc.b		$3C,$01,$00,$00,$00,$1F,$9F,$9F,$1F,$17,$11,$1A,$0E,$00,$0F,$14
	dc.b		$10,$FF,$FF,$FF,$FF,$05,$00,$0C,$00;			Voice 09
	dc.b		$3C,$01,$00,$00,$00,$1F,$9F,$9F,$1F,$15,$13,$1F,$11,$00,$00,$0E
	dc.b		$0D,$F5,$FF,$FF,$FF,$05,$00,$0C,$00;			Voice 0A
	dc.b		$3C,$01,$00,$00,$00,$1F,$9F,$9F,$1F,$15,$13,$1F,$11,$00,$00,$0E
	dc.b		$0D,$FF,$FF,$FF,$FF,$0A,$04,$20,$00;			Voice 0B
	dc.b		$3C,$0F,$00,$00,$00,$1F,$1A,$18,$1C,$17,$11,$1A,$0E,$00,$0F,$14
	dc.b		$10,$1F,$EC,$FF,$FF,$05,$02,$20,$00;			Voice 0C
	dc.b		$3C,$0F,$00,$00,$00,$1F,$1A,$18,$1C,$17,$13,$1F,$11,$00,$00,$0E
	dc.b		$0D,$FF,$FF,$FF,$FF,$0A,$04,$20,$00;			Voice 0D
	even
