; =============================================================================================
; Project Name:		Credits
; Created:		19th May 2021
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

Credits_Header:
;	Voice Pointer	location
	smpsHeaderVoice	Credits_Voices
;	Channel Setup	FM	PSG
	smpsHeaderChan	$07,	$03
;	Tempo Setup	divider	modifier
	smpsHeaderTempo	$01,	$00

;	DAC Pointer	location
	smpsHeaderDAC	Credits_FM3
;	FM1 Pointer	location	pitch		volume
	smpsHeaderFM	Credits_FM1,	$01,	$00
;	FM2 Pointer	location	pitch		volume
	smpsHeaderFM	Credits_FM2,	$01,	$00
;	FM3 Pointer	location	pitch		volume
	smpsHeaderFM	Credits_FM6,	$01,	$00
;	FM4 Pointer	location	pitch		volume
	smpsHeaderFM	Credits_FM4,	$01,	$00
;	FM5 Pointer	location	pitch		volume
	smpsHeaderFM	Credits_FM5,	$01,	$00
;	FM6 Pointer	location	pitch		volume
	smpsHeaderFM	Credits_FM6,	$01,	$00
;	PSG1 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	Credits_PSG1,	$01,	$00,	$00, fTone_05
;	PSG2 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	Credits_PSG2,	$01,	$00,	$00, fTone_05
;	PSG3 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	Credits_PSG3,	$01,	$00,	$00, fTone_04
	dc.b		$00,	$00,	$00,	$00

; PSG1 Data
Credits_PSG1:

; PSG2 Data
Credits_PSG2:

; PSG3 Data
Credits_PSG3:
	smpsStop

; FM1 Data
Credits_FM1:
;	Set FM Voice	#
	smpsSetvoice	$00
;	Alter Volume	value
	smpsAlterVol	$16
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nBb3,	$6B
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs4,	$69
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nEb4,	$6A,	nF4
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs4
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb4
;	Set FM Voice	#
	smpsSetvoice	$08
;	Alter Volume	value
	smpsAlterVol	$FE
	dc.b		nAb4,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE5,	$01
Credits_Jump01:
	dc.b		smpsNoAttack,	nE5,	$0A,	nRst,	$03,	nE5,	$0A,	nRst
	dc.b		$03,	nE5,	$0B,	nRst,	$02,	nCs5,	$0B,	nRst
	dc.b		$02
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD5,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE5,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb4,	$19,	nRst,	$02,	nAb4,	$16,	nRst,	$04
	dc.b		nAb4,	$0B,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs5,	$15,	nRst,	$05,	nE5,	$16,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$0C,	nRst,	$02,	nFs5,	$0B,	nRst,	$02
	dc.b		nFs5,	$0B,	nRst,	$02,	nFs5,	$0B,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD5,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE5,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb5,	$18,	nRst,	$03,	nAb5,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$16,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE5,	$16,	nRst,	$05
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD5,	$16,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE5,	$0B,	nRst,	$03,	nE5,	$0B,	nRst,	$02
	dc.b		nE5,	$0B,	nRst,	$02,	nE5,	$0B,	nRst,	$02
	dc.b		nCs5,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD5,	$0B,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE5,	$0B,	nRst,	$02,	nCs5,	$18,	nRst,	$02
	dc.b		nCs5,	$16,	nRst,	$05,	nCs5,	$0A,	nRst,	$03
	dc.b		nE5,	$16,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb5,	$16,	nRst,	$05
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$0B,	nRst,	$02,	nFs5,	$0B,	nRst,	$03
	dc.b		nFs5,	$0A,	nRst,	$03,	nFs5,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD5,	$11,	nD5,	$12
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb5,	$16,	nRst,	$1F,	nAb5,	$12
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb5
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA5,	$7F,	smpsNoAttack,	$54,	nRst,	$7F,	$55
;	Set FM Voice	#
	smpsSetvoice	$0D
;	Alter Volume	value
	smpsAlterVol	$F8
	dc.b		smpsNoAttack,	nRst,	$1B,	nA4,	$15,	nRst,	$05
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb4,	$16,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB4,	$24,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$16,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb4,	$0B,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$16,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs5,	$37,	nRst,	$0B
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD5,	$16,	nRst,	$05
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs5,	$0B,	nRst,	$02,	nCs5,	$18,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB4,	$5D,	nRst,	$1A
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$0B,	nRst,	$02,	nA4,	$0B,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb4,	$0B,	nRst,	$02,	nAb4,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$0B,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB4,	$23,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$0B,	nRst,	$03,	nA4,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb4,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$16,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$24,	nRst,	$05,	nFs5,	$15,	nRst,	$05
	dc.b		nFs5,	$16,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE5,	$0B,	nRst,	$02,	nE5,	$37,	nRst,	$26
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD5,	$0B,	nRst,	$02,	nD5,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs5,	$17,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD5,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs5,	$2C,	nRst,	$09,	nCs5,	$0B,	nRst,	$02
	dc.b		nCs5,	$16,	nRst,	$05
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD5,	$16,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs5,	$16,	nRst,	$05
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB4,	$16,	nRst,	$05,	nB4,	$1E,	nRst,	$09
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$0B,	nRst,	$02,	nA4,	$16,	nRst,	$05
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb4,	$0A,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$37,	nRst,	$19
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs4,	$15,	nRst,	$05
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs5,	$16,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB4,	$0B,	nRst,	$03,	nB4,	$23,	nRst,	$04
	dc.b		nB4,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$0B,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb4,	$0A,	nRst,	$03,	nAb4,	$16,	nRst,	$04
	dc.b		nAb4,	$0C,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs4,	$16,	nRst,	$05
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb4,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$7F,	smpsNoAttack,	$22,	nRst,	$25
;	Set FM Voice	#
	smpsSetvoice	$16
	dc.b		smpsNoAttack,	nRst,	$01,	smpsNoAttack,	nA4,	$15,	nRst,	$05
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$3F,	nRst,	$10
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA5,	$16,	nRst,	$05
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb5,	$16,	nRst,	$04,	nAb5,	$16,	nRst,	$05
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb5,	$16,	nRst,	$04,	nAb5,	$0B,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA5,	$15,	nRst,	$05,	nA5,	$16,	nRst,	$04
	dc.b		nA5,	$0B,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb5,	$16,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$0B,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs5,	$29,	nRst,	$19,	nCs5,	$0B,	nRst,	$02
	dc.b		nCs5,	$0B,	nRst,	$02,	nCs5,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB4,	$16,	nRst,	$2C
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs5,	$0B,	nRst,	$02,	nCs5,	$0B,	nRst,	$02
	dc.b		nCs5,	$0B,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB4,	$16,	nRst,	$1E
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$16,	nRst,	$05
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE5,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE5,	$7F,	smpsNoAttack,	$47
;	Set FM Voice	#
	smpsSetvoice	$08
;	Alter Volume	value
	smpsAlterVol	$08
	dc.b		nRst,	$01,	smpsNoAttack,	nE5,	$0B,	nRst,	$02
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Jump To	 	location
	smpsJump	Credits_Jump01

; FM2 Data
Credits_FM2:
;	Set FM Voice	#
	smpsSetvoice	$01
;	Alter Volume	value
	smpsAlterVol	$7F
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nRst,	$01
;	Set FM Voice	#
	smpsSetvoice	$00
;	Alter Volume	value
	smpsAlterVol	$97
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs4,	$6A
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF4,	$69
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs4,	$6A
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb4
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB4,	nRst,	$0D
;	Set FM Voice	#
	smpsSetvoice	$09
;	Alter Volume	value
	smpsAlterVol	$FE
	dc.b		smpsNoAttack,	nRst,	$01
Credits_Jump02:
;	Set FM Voice	#
	smpsSetvoice	$08
;	Alter Volume	value
	smpsAlterVol	$0C
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE5,	$0A,	nRst,	$03,	nE5,	$0A,	nRst,	$03
	dc.b		nE5,	$0B,	nRst,	$02,	nE5,	$0B,	nRst,	$02
	dc.b		nCs5,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD5,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE5,	$0C,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb4,	$18,	nRst,	$02,	nAb4,	$10,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nAb4,	$04,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb4,	$02,	nRst,	$05,	smpsNoAttack,	nAb4,	$0A,	nRst
	dc.b		$03
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs5,	$16,	nRst,	$04,	nE5,	$17,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$0B,	nRst,	$02,	nFs5,	$0B,	nRst,	$02
	dc.b		nFs5,	$0B,	nRst,	$03,	nFs5,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD5,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE5,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb5,	$19,	nRst,	$02,	nAb5,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$16,	nRst,	$05
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE5,	$16,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD5,	$16,	nRst,	$05
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE5,	$0B,	nRst,	$02,	nE5,	$0B,	nRst,	$02
	dc.b		nE5,	$0B,	nRst,	$02,	nE5,	$0B,	nRst,	$02
	dc.b		nCs5,	$0B,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD5,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE5,	$0B,	nRst,	$02,	nCs5,	$18,	nRst,	$02
	dc.b		nCs5,	$10,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nCs5,	$05,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs5,	$01,	nRst,	$05,	smpsNoAttack,	nCs5,	$0B,	nRst
	dc.b		$02,	nE5,	$16,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb5,	$17,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$0B,	nRst,	$03,	nFs5,	$0A,	nRst,	$03
	dc.b		nFs5,	$0B,	nRst,	$02,	nFs5,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD5,	$12,	nD5,	$0A,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE5,	$06,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE5,	$01
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$10,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nFs5,	$02
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb5,	$16,	nRst,	$1F,	nAb5,	$11,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nAb5,	$01
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$11,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nFs5,	$01
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb5,	$10,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nAb5,	$02
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA5,	$1B,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA5,	$04,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA5,	$07,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA5,	$09,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA5,	$0F,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA5,	$0A,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA5,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA5,	$07,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA5,	$04,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA5,	$12,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA5,	$1A,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA5,	$05,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA5,	$07,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA5,	$08,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA5,	$10,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA5,	$0A,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA5,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA5,	$06,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA5,	$05,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA5,	$11,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA5,	$02,	nRst,	$7F,	$55
;	Set FM Voice	#
	smpsSetvoice	$0D
;	Alter Volume	value
	smpsAlterVol	$F8
	dc.b		smpsNoAttack,	nRst,	$1B
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$10,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA4,	$04,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$02,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb4,	$16,	nRst,	$05
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$0A,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB4,	$23,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$10,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA4,	$05,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$01,	nRst,	$05
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb4,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$10,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA4,	$04,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$02,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs5,	$28,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nCs5,	$05,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs5,	$06,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nCs5,	$04,	nRst,	$0B
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD5,	$17,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs5,	$0B,	nRst,	$02,	nCs5,	$18,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB4,	$1D,	smpsNoAttack,	nB4,	$04,	smpsNoAttack,	nB4,	$07
	dc.b		smpsNoAttack,	nB4,	$04,	smpsNoAttack,	nB4,	$07,	smpsNoAttack,	nB4
	dc.b		$09,	smpsNoAttack,	nB4,	$02,	smpsNoAttack,	nB4,	$04,	smpsNoAttack
	dc.b		nB4,	$07,	smpsNoAttack,	nB4,	$04,	smpsNoAttack,	nB4,	$0A
	dc.b		smpsNoAttack,	nB4,	$01,	smpsNoAttack,	nB4,	$04,	nRst,	$1B
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$0A,	nRst,	$03,	nA4,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb4,	$0B,	nRst,	$02,	nAb4,	$0C,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB4,	$23,	nRst,	$05
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$0B,	nRst,	$02,	nA4,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb4,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$10,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA4,	$04,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$02,	nRst,	$05
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$23,	nRst,	$05,	nFs5,	$10,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nFs5,	$04,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$02,	nRst,	$04,	smpsNoAttack,	nFs5,	$16,	nRst
	dc.b		$04
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE5,	$0B,	nRst,	$03,	nE5,	$28,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE5,	$04,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE5,	$07,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE5,	$04,	nRst,	$25
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD5,	$0B,	nRst,	$02,	nD5,	$0C,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs5,	$16,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD5,	$0B,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs5,	$2B,	nRst,	$09,	nCs5,	$0B,	nRst,	$02
	dc.b		nCs5,	$16,	nRst,	$05
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD5,	$13,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD5,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD5,	$02,	nRst,	$05
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs5,	$16,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB4,	$13,	smpsNoAttack,	nB4,	$01,	smpsNoAttack,	nB4,	$02
	dc.b		nRst,	$05,	smpsNoAttack,	nB4,	$1E,	nRst,	$09
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$0B,	nRst,	$02,	nA4,	$16,	nRst,	$05
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb4,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$33,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA4,	$04,	nRst,	$19
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs4,	$13,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs4,	$02,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs5,	$16,	nRst,	$05
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB4,	$0B,	nRst,	$02,	nB4,	$23,	nRst,	$04
	dc.b		nB4,	$0B,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb4,	$0B,	nRst,	$02,	nAb4,	$14,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nAb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb4,	$01,	nRst,	$05,	smpsNoAttack,	nAb4,	$0B,	nRst
	dc.b		$03
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs4,	$16,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb4,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$33,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA4,	$07,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$04,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA4,	$09,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA4,	$05,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$0A,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$0A,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$12,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$26,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA4,	$04,	nRst,	$26
;	Set FM Voice	#
	smpsSetvoice	$16
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$13,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$02,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$13,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nFs5,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$12,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nFs5,	$07,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$04,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nFs5,	$09,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nFs5,	$04,	nRst,	$0F
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA5,	$14,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA5,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA5,	$02,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb5,	$13,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nAb5,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb5,	$02,	nRst,	$05,	smpsNoAttack,	nAb5,	$13,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nAb5,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb5,	$01,	nRst,	$05
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb5,	$13,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nAb5,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb5,	$02,	nRst,	$05,	smpsNoAttack,	nAb5,	$0B,	nRst
	dc.b		$02
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA5,	$13,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA5,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA5,	$02,	nRst,	$04,	smpsNoAttack,	nA5,	$13,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA5,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA5,	$02,	nRst,	$05,	smpsNoAttack,	nA5,	$0B,	nRst
	dc.b		$02
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb5,	$13,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nAb5,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb5,	$02,	nRst,	$05
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$0A,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs5,	$13,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nCs5,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs5,	$12,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nCs5,	$03,	nRst,	$19
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs5,	$0B,	nRst,	$02,	nCs5,	$0B,	nRst,	$02
	dc.b		nCs5,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB4,	$16,	nRst,	$2C
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs5,	$0B,	nRst,	$02,	nCs5,	$0B,	nRst,	$03
	dc.b		nCs5,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB4,	$16,	nRst,	$1F
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$0F,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA4,	$05,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$02,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE5,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$0B,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE5,	$33,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE5,	$08,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE5,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE5,	$0F,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE5,	$0A,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE5,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE5,	$1F,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE5,	$04,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE5,	$07,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE5,	$3E,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE5,	$04,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE5,	$02
;	Set FM Voice	#
	smpsSetvoice	$09
;	Alter Volume	value
	smpsAlterVol	$FC
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Alter Notes	value
	smpsAlterNote	$00
;	Jump To	 	location
	smpsJump	Credits_Jump02

; FM3 Data
Credits_FM3:
;	Set FM Voice	#
	smpsSetvoice	$02
;	Alter Volume	value
	smpsAlterVol	$0E
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nRst,	$01,	smpsNoAttack,	nC0,	$07,	nRst,	$14,	nC0
	dc.b		$06,	nRst,	$14,	nC0,	$07,	nRst,	$06,	nC0
	dc.b		$07,	nRst,	$06,	smpsNoAttack,	nRst,	$01,	smpsNoAttack,	nC0
	dc.b		$06,	nRst,	$14,	nC0,	$07,	nRst,	$13,	nC0
	dc.b		$07,	nRst,	$14,	nC0,	$06,	nRst,	$07,	nC0
	dc.b		$06,	nRst,	$07,	nC0,	$06,	nRst,	$14,	smpsNoAttack
	dc.b		nRst,	$01,	smpsNoAttack,	nC0,	$06,	nRst,	$14,	nC0
	dc.b		$06,	nRst,	$14,	smpsNoAttack,	nRst,	$01,	smpsNoAttack,	nC0
	dc.b		$06,	nRst,	$07,	nC0,	$06,	nRst,	$07,	nC0
	dc.b		nRst,	$13,	smpsNoAttack,	nRst,	$01,	smpsNoAttack,	nC0,	$06
	dc.b		nRst,	$14,	nC0,	$06,	nRst,	$14,	smpsNoAttack,	nRst
	dc.b		$01,	smpsNoAttack,	nC0,	$06,	nRst,	$06,	smpsNoAttack,	nRst
	dc.b		$01,	smpsNoAttack,	nC0,	$06,	nRst,	$07,	nC0,	$06
	dc.b		nRst,	$14,	smpsNoAttack,	nRst,	$01,	smpsNoAttack,	nC0,	$06
	dc.b		nRst,	$14,	nC0,	$07,	nRst,	$13,	smpsNoAttack,	nRst
	dc.b		$01,	smpsNoAttack,	nC0,	$06,	nRst,	$06,	smpsNoAttack,	nRst
	dc.b		$01,	smpsNoAttack,	nC0,	$06,	nRst,	$07,	nC0,	$06
	dc.b		nRst,	$14,	nC0,	$07,	nRst,	$13,	smpsNoAttack,	nRst
	dc.b		$01,	smpsNoAttack,	nC0,	$06,	nRst,	$07
;	Set FM Voice	#
	smpsSetvoice	$07
;	Alter Volume	value
	smpsAlterVol	$FC
	dc.b		dSnare,	$06,	nRst,	$01,	smpsNoAttack,	dSnare,	$06
;	Set FM Voice	#
	smpsSetvoice	$02
;	Alter Volume	value
	smpsAlterVol	$04
	dc.b		nC0,	nRst,	$07,	nC0,	nRst,	$06
;	Set FM Voice	#
	smpsSetvoice	$07
;	Alter Volume	value
	smpsAlterVol	$FC
	dc.b		smpsNoAttack,	nRst,	$01,	smpsNoAttack,	dSnare,	$06,	dSnare,	$07
	dc.b		dSnare,	$06,	dSnare,	$07
;	Set FM Voice	#
	smpsSetvoice	$02
;	Alter Volume	value
	smpsAlterVol	$04
	dc.b		nC0,	nRst,	$07
Credits_Jump03:
	dc.b		nRst,	$0C
;	Set FM Voice	#
	smpsSetvoice	$0A
	dc.b		smpsNoAttack,	nRst,	$01
;	Set FM Voice	#
	smpsSetvoice	$02
	dc.b		nC0,	$06,	nRst,	$14,	nC0,	$07,	nRst,	$06
	dc.b		nC0,	$07,	nRst,	$06,	smpsNoAttack,	nRst,	$01,	smpsNoAttack
	dc.b		nC0,	$06,	nRst,	$14,	nC0,	$06,	nRst,	$14
	dc.b		nC0,	$07,	nRst,	$13
;	Set FM Voice	#
	smpsSetvoice	$0B
	dc.b		smpsNoAttack,	nRst,	$01
;	Set FM Voice	#
	smpsSetvoice	$02
	dc.b		nC0,	$06,	nRst,	$07,	nC0,	$06,	nRst,	$07
	dc.b		nC0,	$06,	nRst,	$14,	smpsNoAttack,	nRst,	$01,	smpsNoAttack
	dc.b		nC0,	$06,	nRst,	$14,	smpsNoAttack,	nRst,	$01,	smpsNoAttack
	dc.b		nC0,	$06,	nRst,	$14,	nC0,	$06,	nRst,	$07
	dc.b		nC0,	$06,	nRst,	$07,	nC0,	nRst,	$13,	smpsNoAttack
	dc.b		nRst,	$01,	smpsNoAttack,	nC0,	$06,	nRst,	$14,	nC0
	dc.b		$06,	nRst,	$14,	smpsNoAttack,	nRst,	$01,	smpsNoAttack,	nC0
	dc.b		$06,	nRst,	$06
;	Set FM Voice	#
	smpsSetvoice	$0A
	dc.b		smpsNoAttack,	nRst,	$01
;	Set FM Voice	#
	smpsSetvoice	$02
	dc.b		nC0,	$06,	nRst,	$07,	nC0,	nRst,	$13,	smpsNoAttack
	dc.b		nRst,	$01,	smpsNoAttack,	nC0,	$06,	nRst,	$14,	nC0
	dc.b		$07,	nRst,	$13,	smpsNoAttack,	nRst,	$01,	smpsNoAttack,	nC0
	dc.b		$06,	nRst,	$06,	smpsNoAttack,	nRst,	$01,	smpsNoAttack,	nC0
	dc.b		$06,	nRst,	$07,	nC0,	$06,	nRst,	$14,	nC0
	dc.b		$07,	nRst,	$13,	smpsNoAttack,	nRst,	$01,	smpsNoAttack,	nC0
	dc.b		$06,	nRst,	$14,	nC0,	$06,	nRst,	$07,	nC0
	dc.b		nRst,	$06,	smpsNoAttack,	nRst,	$01,	smpsNoAttack,	nC0,	$06
	dc.b		nRst,	$13
;	Set FM Voice	#
	smpsSetvoice	$0A
	dc.b		smpsNoAttack,	nRst,	$01
;	Set FM Voice	#
	smpsSetvoice	$02
	dc.b		nC0,	$07,	nRst,	$13,	smpsNoAttack,	nRst,	$01,	smpsNoAttack
	dc.b		nC0,	$06,	nRst,	$14,	nC0,	$06,	nRst,	$07
	dc.b		nC0,	nRst,	$06,	nC0,	$07,	nRst,	$14,	nC0
	dc.b		$06,	nRst,	$14
;	Set FM Voice	#
	smpsSetvoice	$07
;	Alter Volume	value
	smpsAlterVol	$FC
	dc.b		smpsNoAttack,	nRst,	$01,	smpsNoAttack,	dSnare,	$06,	dSnare,	smpsNoAttack
	dc.b		dSnare,	$01,	smpsNoAttack,	dSnare,	$08,	nRst,	$04
;	Set FM Voice	#
	smpsSetvoice	$0C
	dc.b		smpsNoAttack,	nRst,	$01
;	Set FM Voice	#
	smpsSetvoice	$02
;	Alter Volume	value
	smpsAlterVol	$04
	dc.b		nC0,	$07,	nRst,	$0B,	nC0,	$07,	nRst,	$0B
	dc.b		nC0,	$07,	nRst,	$0B,	nC0,	$06,	nRst,	$14
	dc.b		smpsNoAttack,	nRst,	$01,	smpsNoAttack,	nC0,	$06,	nRst,	$14
	dc.b		nC0,	$06,	nRst,	$07,	nC0,	$06,	nRst,	$07
	dc.b		nC0,	nRst,	$13,	smpsNoAttack,	nRst,	$01,	smpsNoAttack,	nC0
	dc.b		$06,	nRst,	$14,	nC0,	$06,	nRst,	$14,	nC0
	dc.b		$07,	nRst,	$06,	nC0,	$07,	nRst,	$06
;	Set FM Voice	#
	smpsSetvoice	$0A
	dc.b		smpsNoAttack,	nRst,	$01
;	Set FM Voice	#
	smpsSetvoice	$02
	dc.b		nC0,	$06,	nRst,	$14,	nC0,	$06,	nRst,	$14
	dc.b		smpsNoAttack,	nRst,	$01,	smpsNoAttack,	nC0,	$06,	nRst,	$14
	dc.b		nC0,	$07,	nRst,	$06,	smpsNoAttack,	nRst,	$01,	smpsNoAttack
	dc.b		nC0,	$06,	nRst,	$07,	nC0,	$06,	nRst,	$14
	dc.b		nC0,	$07,	nRst,	$13,	smpsNoAttack,	nRst,	$01,	smpsNoAttack
	dc.b		nC0,	$06,	nRst,	$14,	nC0,	$06,	nRst,	$07
	dc.b		nC0,	nC0,	$06,	nC0,	$07,	nC0,	$06
;	Set FM Voice	#
	smpsSetvoice	$07
;	Alter Volume	value
	smpsAlterVol	$FC
	dc.b		dSnare,	$09,	nRst,	$05
;	Set FM Voice	#
	smpsSetvoice	$0E
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	nRst,	$01,	smpsNoAttack,	dSnare,	$06,	nRst,	$13
;	Set FM Voice	#
	smpsSetvoice	$10
	dc.b		smpsNoAttack,	nRst,	$01
;	Set FM Voice	#
	smpsSetvoice	$02
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		nC0,	$06,	nRst,	$2E,	smpsNoAttack,	nRst,	$01,	smpsNoAttack
	dc.b		nC0,	$06,	nRst,	$06
;	Set FM Voice	#
	smpsSetvoice	$0E
;	Alter Volume	value
	smpsAlterVol	$FE
	dc.b		smpsNoAttack,	nRst,	$01,	smpsNoAttack,	dSnare,	$06,	nRst,	$07
	dc.b		dSnare,	$06,	nRst,	$14
;	Set FM Voice	#
	smpsSetvoice	$02
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		nC0,	$07,	nRst,	$2E,	nC0,	$06,	nRst,	$14
;	Set FM Voice	#
	smpsSetvoice	$0E
;	Alter Volume	value
	smpsAlterVol	$FE
	dc.b		smpsNoAttack,	nRst,	$01,	smpsNoAttack,	dSnare,	$06,	nRst,	$14
;	Set FM Voice	#
	smpsSetvoice	$02
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		nC0,	$06,	nRst,	$2E
;	Set FM Voice	#
	smpsSetvoice	$0A
	dc.b		smpsNoAttack,	nRst,	$01
;	Set FM Voice	#
	smpsSetvoice	$02
	dc.b		nC0,	$07,	nRst,	$06
;	Set FM Voice	#
	smpsSetvoice	$0E
;	Alter Volume	value
	smpsAlterVol	$FE
	dc.b		dSnare,	$07,	nRst,	$06,	smpsNoAttack,	nRst,	$01,	smpsNoAttack
	dc.b		dSnare,	$06,	nRst,	$14
;	Set FM Voice	#
	smpsSetvoice	$02
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		nC0,	$06,	nRst,	$2E
;	Set FM Voice	#
	smpsSetvoice	$0A
	dc.b		smpsNoAttack,	nRst,	$01
;	Set FM Voice	#
	smpsSetvoice	$02
	dc.b		nC0,	$06,	nRst,	$14
;	Set FM Voice	#
	smpsSetvoice	$0E
;	Alter Volume	value
	smpsAlterVol	$FE
	dc.b		dSnare,	$06,	nRst,	$14
;	Set FM Voice	#
	smpsSetvoice	$02
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	nRst,	$01,	smpsNoAttack,	nC0,	$06,	nRst,	$2E
	dc.b		smpsNoAttack,	nRst,	$01,	smpsNoAttack,	nC0,	$06,	nRst,	$07
;	Set FM Voice	#
	smpsSetvoice	$0E
;	Alter Volume	value
	smpsAlterVol	$FE
	dc.b		dSnare,	$06,	nRst,	$07,	dSnare,	$06,	nRst,	$14
;	Set FM Voice	#
	smpsSetvoice	$02
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		nC0,	$07,	nRst,	$2E,	smpsNoAttack,	nRst,	$01,	smpsNoAttack
	dc.b		nC0,	$06,	nRst,	$14
;	Set FM Voice	#
	smpsSetvoice	$0E
;	Alter Volume	value
	smpsAlterVol	$FE
	dc.b		dSnare,	$07,	nRst,	$13
;	Set FM Voice	#
	smpsSetvoice	$02
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		smpsNoAttack,	nRst,	$01,	smpsNoAttack,	nC0,	$06,	nRst,	$2E
	dc.b		smpsNoAttack,	nRst,	$01,	smpsNoAttack,	nC0,	$06,	nRst,	$06
;	Set FM Voice	#
	smpsSetvoice	$0E
;	Alter Volume	value
	smpsAlterVol	$FE
	dc.b		smpsNoAttack,	nRst,	$01,	smpsNoAttack,	dSnare,	$06,	nRst,	$07
	dc.b		dSnare,	$06,	nRst,	$14
;	Set FM Voice	#
	smpsSetvoice	$02
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		nC0,	$07,	nRst,	$2E,	nC0,	$06,	nRst,	$14
;	Set FM Voice	#
	smpsSetvoice	$11
;	Alter Volume	value
	smpsAlterVol	$F5
	dc.b		smpsNoAttack,	nRst,	$01,	smpsNoAttack,	dSnare,	$04,	nRst,	$09
	dc.b		dSnare,	$04,	nRst,	$09
;	Set FM Voice	#
	smpsSetvoice	$02
;	Alter Volume	value
	smpsAlterVol	$0B
	dc.b		nC0,	$07,	nRst,	$06
;	Set FM Voice	#
	smpsSetvoice	$11
;	Alter Volume	value
	smpsAlterVol	$F5
	dc.b		smpsNoAttack,	nRst,	$01,	smpsNoAttack,	nC0,	$04,	nRst,	$08
	dc.b		smpsNoAttack,	nRst,	$01,	smpsNoAttack,	nC0,	$04,	nRst,	$09
	dc.b		dSnare,	$04,	nRst,	$09
;	Set FM Voice	#
	smpsSetvoice	$02
;	Alter Volume	value
	smpsAlterVol	$0B
	dc.b		nC0,	$06,	nRst,	$07
;	Set FM Voice	#
	smpsSetvoice	$11
;	Alter Volume	value
	smpsAlterVol	$F5
	dc.b		dSnare,	$04,	nRst,	$09,	smpsNoAttack,	nRst,	$01,	smpsNoAttack
	dc.b		dSnare,	$04,	nRst,	$08,	smpsNoAttack,	nRst,	$01,	smpsNoAttack
	dc.b		dSnare,	$04,	nRst,	$09
;	Set FM Voice	#
	smpsSetvoice	$02
;	Alter Volume	value
	smpsAlterVol	$0B
	dc.b		nC0,	$06,	nRst,	$07
;	Set FM Voice	#
	smpsSetvoice	$11
;	Alter Volume	value
	smpsAlterVol	$F5
	dc.b		dSnare,	$04,	nRst,	$09,	dSnare,	$04,	nRst,	$09
	dc.b		smpsNoAttack,	nRst,	$01,	smpsNoAttack,	dSnare,	$04,	nRst,	$09
;	Set FM Voice	#
	smpsSetvoice	$02
;	Alter Volume	value
	smpsAlterVol	$0B
	dc.b		nC0,	$07,	nRst,	$06
;	Set FM Voice	#
	smpsSetvoice	$11
;	Alter Volume	value
	smpsAlterVol	$F5
	dc.b		dSnare,	$05,	nRst,	$08,	smpsNoAttack,	nRst,	$01,	smpsNoAttack
	dc.b		dSnare,	$04,	nRst,	$08
;	Set FM Voice	#
	smpsSetvoice	$12
	dc.b		smpsNoAttack,	nRst,	$01
;	Set FM Voice	#
	smpsSetvoice	$11
	dc.b		dSnare,	$04,	nRst,	$09
;	Set FM Voice	#
	smpsSetvoice	$02
;	Alter Volume	value
	smpsAlterVol	$0B
	dc.b		nC0,	$06,	nRst,	$07
;	Set FM Voice	#
	smpsSetvoice	$11
;	Alter Volume	value
	smpsAlterVol	$F5
	dc.b		dSnare,	$04,	nRst,	$09,	nC0,	$04,	nRst,	$09
	dc.b		dSnare,	$05,	nRst,	$08
;	Set FM Voice	#
	smpsSetvoice	$02
;	Alter Volume	value
	smpsAlterVol	$0B
	dc.b		smpsNoAttack,	nRst,	$01,	smpsNoAttack,	nC0,	$06,	nRst,	$07
;	Set FM Voice	#
	smpsSetvoice	$11
;	Alter Volume	value
	smpsAlterVol	$F5
	dc.b		dSnare,	$04,	nRst,	$09,	nC0,	$04,	nRst,	$09
	dc.b		dSnare,	$04,	nRst,	$09
;	Set FM Voice	#
	smpsSetvoice	$02
;	Alter Volume	value
	smpsAlterVol	$0B
	dc.b		smpsNoAttack,	nRst,	$01,	smpsNoAttack,	nC0,	$06,	nRst,	$06
;	Set FM Voice	#
	smpsSetvoice	$13
;	Alter Volume	value
	smpsAlterVol	$FE
	dc.b		smpsNoAttack,	nRst,	$01
;	Set FM Voice	#
	smpsSetvoice	$11
;	Alter Volume	value
	smpsAlterVol	$F7
	dc.b		dSnare,	$04,	nRst,	$09,	dSnare,	$05,	nRst,	$08
	dc.b		smpsNoAttack,	nRst,	$01,	smpsNoAttack,	dSnare,	$04,	nRst,	$09
;	Set FM Voice	#
	smpsSetvoice	$02
;	Alter Volume	value
	smpsAlterVol	$0B
	dc.b		nC0,	$06,	nRst,	$07
;	Set FM Voice	#
	smpsSetvoice	$11
;	Alter Volume	value
	smpsAlterVol	$F5
	dc.b		dSnare,	$04,	nRst,	$09,	smpsNoAttack,	nRst,	$01,	smpsNoAttack
	dc.b		dSnare,	$03,	nRst,	$09,	dSnare,	$05,	nRst,	$08
;	Set FM Voice	#
	smpsSetvoice	$02
;	Alter Volume	value
	smpsAlterVol	$0B
	dc.b		smpsNoAttack,	nRst,	$01,	smpsNoAttack,	nC0,	$06,	nRst,	$06
;	Set FM Voice	#
	smpsSetvoice	$14
;	Alter Volume	value
	smpsAlterVol	$FE
	dc.b		smpsNoAttack,	nRst,	$01
;	Set FM Voice	#
	smpsSetvoice	$11
;	Alter Volume	value
	smpsAlterVol	$F7
	dc.b		dSnare,	$04,	nRst,	$09,	dSnare,	$04,	nRst,	$09
	dc.b		dSnare,	$04,	nRst,	$09
;	Set FM Voice	#
	smpsSetvoice	$02
;	Alter Volume	value
	smpsAlterVol	$0B
	dc.b		nC0,	$07,	nRst,	$06
;	Set FM Voice	#
	smpsSetvoice	$11
;	Alter Volume	value
	smpsAlterVol	$F5
	dc.b		smpsNoAttack,	nRst,	$01,	smpsNoAttack,	dSnare,	$04,	nRst,	$09
	dc.b		dSnare,	$04,	nRst,	$09,	dSnare,	$04,	nRst,	$09
;	Set FM Voice	#
	smpsSetvoice	$02
;	Alter Volume	value
	smpsAlterVol	$0B
	dc.b		nC0,	$06,	nRst,	$07
;	Set FM Voice	#
	smpsSetvoice	$11
;	Alter Volume	value
	smpsAlterVol	$F5
	dc.b		smpsNoAttack,	nRst,	$01,	smpsNoAttack,	dSnare,	$04,	nRst,	$09
	dc.b		dSnare,	$05,	nRst,	$09,	dSnare,	$04,	nRst,	$09
;	Set FM Voice	#
	smpsSetvoice	$02
;	Alter Volume	value
	smpsAlterVol	$0B
	dc.b		nC0,	$06,	nRst,	$07
;	Set FM Voice	#
	smpsSetvoice	$11
;	Alter Volume	value
	smpsAlterVol	$F5
	dc.b		dSnare,	$04,	nRst,	$09,	smpsNoAttack,	nRst,	$01,	smpsNoAttack
	dc.b		dSnare,	$04,	nRst,	$08,	smpsNoAttack,	nRst,	$01,	smpsNoAttack
	dc.b		dSnare,	$04,	nRst,	$09
;	Set FM Voice	#
	smpsSetvoice	$02
;	Alter Volume	value
	smpsAlterVol	$0B
	dc.b		nC0,	$06,	nRst,	$07
;	Set FM Voice	#
	smpsSetvoice	$11
;	Alter Volume	value
	smpsAlterVol	$F5
	dc.b		dSnare,	$04,	nRst,	$09,	dSnare,	$04,	nRst,	$09
	dc.b		dSnare,	$04,	nRst,	$09
;	Set FM Voice	#
	smpsSetvoice	$15
	dc.b		smpsNoAttack,	nRst,	$01
;	Set FM Voice	#
	smpsSetvoice	$02
;	Alter Volume	value
	smpsAlterVol	$0B
	dc.b		nC0,	$06,	nRst,	$07
;	Set FM Voice	#
	smpsSetvoice	$11
;	Alter Volume	value
	smpsAlterVol	$F5
	dc.b		dSnare,	$04,	nRst,	$09,	smpsNoAttack,	nRst,	$01,	smpsNoAttack
	dc.b		dSnare,	$04,	nRst,	$08,	smpsNoAttack,	nRst,	$01,	smpsNoAttack
	dc.b		dSnare,	$04,	nRst,	$09
;	Set FM Voice	#
	smpsSetvoice	$02
;	Alter Volume	value
	smpsAlterVol	$0B
	dc.b		nC0,	$06,	nRst,	$07
;	Set FM Voice	#
	smpsSetvoice	$11
;	Alter Volume	value
	smpsAlterVol	$F5
	dc.b		dSnare,	$04,	nRst,	$09,	nC0,	$04,	nRst,	$09
	dc.b		dSnare,	$05,	nRst,	$08
;	Set FM Voice	#
	smpsSetvoice	$02
;	Alter Volume	value
	smpsAlterVol	$0B
	dc.b		smpsNoAttack,	nRst,	$01,	smpsNoAttack,	nC0,	$06,	nRst,	$07
;	Set FM Voice	#
	smpsSetvoice	$11
;	Alter Volume	value
	smpsAlterVol	$F5
	dc.b		dSnare,	$04,	nRst,	$09,	dSnare,	$04,	nRst,	$09
	dc.b		dSnare,	$04,	nRst,	$09,	dSnare,	$05,	nRst,	$08
	dc.b		smpsNoAttack,	nRst,	$01,	smpsNoAttack,	dSnare,	$04,	nRst,	$09
	dc.b		dSnare,	$04,	nRst,	$09,	dSnare,	$04,	nRst,	$09
	dc.b		dSnare,	$04,	nRst,	$09,	smpsNoAttack,	nRst,	$01,	smpsNoAttack
	dc.b		dSnare,	$04,	nRst,	$09,	dSnare,	$04,	nRst,	$09
	dc.b		dSnare,	$04,	nRst,	$09,	smpsNoAttack,	nRst,	$01,	smpsNoAttack
	dc.b		dSnare,	$04,	nRst,	$08,	smpsNoAttack,	nRst,	$01,	smpsNoAttack
	dc.b		dSnare,	$04,	nRst,	$09,	dSnare,	$04,	nRst,	$09
	dc.b		dSnare,	$04,	nRst,	$09
;	Set FM Voice	#
	smpsSetvoice	$02
;	Alter Volume	value
	smpsAlterVol	$0B
	dc.b		nC0,	$07,	nRst,	$06
;	Set FM Voice	#
	smpsSetvoice	$11
;	Alter Volume	value
	smpsAlterVol	$F5
	dc.b		smpsNoAttack,	nRst,	$01,	smpsNoAttack,	dSnare,	$04,	nRst,	$08
	dc.b		smpsNoAttack,	nRst,	$01,	smpsNoAttack,	dSnare,	$04,	nRst,	$09
	dc.b		dSnare,	$04,	nRst,	$09,	dSnare,	$04,	nRst,	$09
	dc.b		dSnare,	$04,	nRst,	$09,	smpsNoAttack,	nRst,	$01,	smpsNoAttack
	dc.b		dSnare,	$04,	nRst,	$08
;	Set FM Voice	#
	smpsSetvoice	$17
	dc.b		smpsNoAttack,	nRst,	$01
;	Set FM Voice	#
	smpsSetvoice	$11
	dc.b		dSnare,	$04,	nRst,	$09,	dSnare,	$05,	nRst,	$08
	dc.b		smpsNoAttack,	nRst,	$01,	smpsNoAttack,	dSnare,	$04,	nRst,	$08
;	Set FM Voice	#
	smpsSetvoice	$12
	dc.b		smpsNoAttack,	nRst,	$01
;	Set FM Voice	#
	smpsSetvoice	$11
	dc.b		dSnare,	$04,	nRst,	$09,	dSnare,	$04,	nRst,	$09
	dc.b		dSnare,	$04,	nRst,	$09,	dSnare,	$04,	nRst,	$09
	dc.b		dSnare,	$05,	nRst,	$08
;	Set FM Voice	#
	smpsSetvoice	$12
	dc.b		smpsNoAttack,	nRst,	$01
;	Set FM Voice	#
	smpsSetvoice	$11
	dc.b		dSnare,	$04,	nRst,	$09
;	Set FM Voice	#
	smpsSetvoice	$02
;	Alter Volume	value
	smpsAlterVol	$0B
	dc.b		nC0,	$06,	nRst,	$07
;	Set FM Voice	#
	smpsSetvoice	$11
;	Alter Volume	value
	smpsAlterVol	$F5
	dc.b		dSnare,	$04,	nRst,	$16
;	Set FM Voice	#
	smpsSetvoice	$02
;	Alter Volume	value
	smpsAlterVol	$0B
	dc.b		smpsNoAttack,	nRst,	$01,	smpsNoAttack,	nC0,	$06,	nRst,	$07
	dc.b		nC0,	$06,	nRst,	$07,	nC0,	$06,	nRst,	$07
	dc.b		nC0,	$06,	nRst,	$3C,	nC0,	$06,	nRst,	$07
	dc.b		nC0,	nRst,	$06,	smpsNoAttack,	nRst,	$01,	smpsNoAttack,	nC0
	dc.b		$06,	nRst,	$06,	smpsNoAttack,	nRst,	$01,	smpsNoAttack,	nC0
	dc.b		$06,	nRst,	$2E,	smpsNoAttack,	nRst,	$01,	smpsNoAttack,	nC0
	dc.b		$06,	nRst,	$14,	nC0,	$06,	nRst,	$14,	nC0
	dc.b		$06,	nRst,	$07,	smpsNoAttack,	nRst,	$01,	smpsNoAttack,	nC0
	dc.b		$06,	nRst,	$06
;	Set FM Voice	#
	smpsSetvoice	$0A
	dc.b		smpsNoAttack,	nRst,	$01
;	Set FM Voice	#
	smpsSetvoice	$02
	dc.b		nC0,	$06,	nRst
;	Set FM Voice	#
	smpsSetvoice	$0A
	dc.b		smpsNoAttack,	nRst,	$01
;	Set FM Voice	#
	smpsSetvoice	$02
	dc.b		nC0,	$06,	nRst,	$07,	nC0,	$06,	nRst,	$07
	dc.b		nC0,	$06,	nRst,	$07,	nC0,	nRst,	$13,	smpsNoAttack
	dc.b		nRst,	$01,	smpsNoAttack,	nC0,	$06,	nC0,	$07
;	Set FM Voice	#
	smpsSetvoice	$07
;	Alter Volume	value
	smpsAlterVol	$FC
	dc.b		dSnare,	$06,	nC0,	$07
;	Set FM Voice	#
	smpsSetvoice	$02
;	Alter Volume	value
	smpsAlterVol	$04
	dc.b		nC0,	nC0,	$06
;	Set FM Voice	#
	smpsSetvoice	$07
;	Alter Volume	value
	smpsAlterVol	$FC
	dc.b		dSnare,	$07,	nC0,	$06
;	Set FM Voice	#
	smpsSetvoice	$02
;	Alter Volume	value
	smpsAlterVol	$04
	dc.b		smpsNoAttack,	nC0,	$01,	smpsNoAttack,	nC0,	$06,	nRst,	$07
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Jump To	 	location
	smpsJump	Credits_Jump03

; FM4 Data
Credits_FM4:
;	Set FM Voice	#
	smpsSetvoice	$03
;	Alter Volume	value
	smpsAlterVol	$7F
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nRst,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
;	Alter Volume	value
	smpsAlterVol	$91
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs5,	$1B,	nCs5,	$06,	nCs5,	$07
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nBb4,	$06,	nB4,	$07
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs5,	$4F
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF5,	$07,	nF5,	$06
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs5,	$07
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nEb5,	nF5,	$34
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$35
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB4,	$1B
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$1A,	nRst,	$01,	nFs5,	$1A
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF5,	nEb5,	$1B
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs5,	$1A
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$1B
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD5,	$1A
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$1B
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA5,	$1A
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb5,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE5,	$1A,	nE5
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB5,	$0A,	nB5,	$04,	nB5,	$03,	nB5,	nB5
	dc.b		nB5,	$04,	nB5,	$0E
Credits_Jump04:
	dc.b		smpsNoAttack,	nB5,	$5C
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb5,	$69,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$69
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb5,	$1B
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$1A
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb5,	$1B
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB5
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA5,	$69
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb5,	$6A
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$35
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD5,	$11,	nD5,	$12
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb5,	$35,	nAb5,	$12
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb5
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA5,	$6A
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$69
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF5,	$1A
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE5,	$1B
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD5
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC5,	$1A,	nB4,	$35
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE5
;	Set FM Voice	#
	smpsSetvoice	$0F
;	Alter Volume	value
	smpsAlterVol	$0A
	dc.b		nCs4,	$0E,	nCs4,	$0D,	nRst,	nCs4,	$21,	nRst
	dc.b		$07,	nCs4,	$13,	nRst,	$07,	nCs4,	$0D,	nCs4
	dc.b		nRst,	nCs4,	$21,	nRst,	$07,	nCs4,	$14,	nRst
	dc.b		$06
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs4,	$0D,	nFs4,	$0E,	nRst,	$0D,	nFs4,	$21
	dc.b		nRst,	$07,	nFs4,	$14,	nRst,	$06
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB4,	$0D,	nB4,	$0E,	nRst,	$0D,	nB4,	$21
	dc.b		nRst,	$07,	nB4,	$13,	nRst,	$07
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs4,	$0D,	nCs4,	nRst,	$0E,	nCs4,	$20,	nRst
	dc.b		$07,	nCs4,	$14,	nRst,	$07,	nCs4,	$0D,	nCs4
	dc.b		nRst,	$0E,	nCs4,	$20,	nRst,	$07,	nCs4,	$14
	dc.b		nRst,	$07
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs4,	$0D,	nFs4,	$0E,	nRst,	$0D,	nFs4,	$21
	dc.b		nRst,	$06,	nFs4,	$14,	nRst,	$07
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB4,	$0D,	nB4,	nRst,	nB4,	$21,	nRst,	$07
	dc.b		nB4,	$13,	nRst,	$08
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb4,	$0D,	nAb4,	nAb4,	nRst,	$01,	nAb4,	$20
	dc.b		nRst,	$07,	nAb4,	$14,	nRst,	$06,	nAb4,	$0D
	dc.b		nRst,	$01,	nAb4,	$0D,	nAb4,	nAb4,	$21,	nRst
	dc.b		$07,	nAb4,	$14,	nRst,	$07
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$0D,	nA4,	nA4,	nA4,	$21,	nRst,	$07
	dc.b		nA4,	$13,	nRst,	$07,	nA4,	$0D,	nA4,	nA4
	dc.b		$0E,	nA4,	$21,	nRst,	$07,	nA4,	$13,	nRst
	dc.b		$07,	nA4,	$0D,	nA4,	nA4,	$0E,	nA4,	$20
	dc.b		nRst,	$07,	nA4,	$14,	nRst,	$07
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE5,	$0D,	nE5,	nE5,	$0E,	nE5,	$21,	nRst
	dc.b		$07,	nE5,	$13,	nRst,	$07,	nE5,	$0D,	nE5
	dc.b		$0E,	nE5,	$0D,	nE5,	$21,	nRst,	$07,	nE5
	dc.b		$14,	nRst,	$06,	nE5,	$0D,	nRst,	$01,	nE5
	dc.b		$0D,	nE5,	nE5,	$35,	nRst,	$7F,	$7F,	$7F
	dc.b		$44
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs4,	$07,	nRst,	nFs4,	$06,	nRst,	$07,	nFs4
	dc.b		$06,	nRst,	$07,	nFs4,	$06,	nRst,	$3C,	nFs4
	dc.b		$06,	nRst,	$07,	nFs4,	nRst,	$06,	nFs4,	$07
	dc.b		nRst,	$06,	nFs4,	$07,	nRst,	$14
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA5,	$0D
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb5,	nRst,	$7F,	$55
;	Set FM Voice	#
	smpsSetvoice	$04
;	Alter Volume	value
	smpsAlterVol	$F6
	dc.b		nAb5,	$0D
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Alter Notes	value
	smpsAlterNote	$00
;	Jump To	 	location
	smpsJump	Credits_Jump04

; FM5 Data
Credits_FM5:
;	Set FM Voice	#
	smpsSetvoice	$03
;	Alter Volume	value
	smpsAlterVol	$7F
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nRst,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
;	Alter Volume	value
	smpsAlterVol	$97
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs6,	$7F,	smpsNoAttack,	$01,	nRst,	$1F
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$15,	nRst,	$05
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nBb5,	$16,	nRst,	$05,	nEb5,	$29,	nRst,	$0B
	dc.b		nB4,	$2A,	nRst,	$0C
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs5,	$29,	nRst,	$0B
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nEb5,	$16,	nRst,	$05
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs5,	$16,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$16,	nRst,	$05
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD5,	$16,	nRst,	$05
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$15,	nRst,	$05
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA5,	$16,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb5,	$16,	nRst,	$05
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE5,	$15,	nRst,	$05,	nE5,	$16,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB5,	$16,	nRst,	$05,	nB5,	$0E
Credits_Jump05:
	dc.b		smpsNoAttack,	nB5,	$46,	nRst,	$16
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb5,	$53,	nRst,	$17
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$53,	nRst,	$16
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb5,	nRst,	$05
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$16,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE5,	$16,	nRst,	$05
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB5,	$16,	nRst,	$05
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA5,	$53,	nRst,	$16
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb5,	$54,	nRst,	$16
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$2A,	nRst,	$0B
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD5,	$11,	nD5,	$12
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb5,	$29,	nRst,	$0C,	nAb5,	$12
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb5
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA5,	$53,	nRst,	$17
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$53,	nRst,	$16
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF5,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE5,	$16,	nRst,	$05
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD5,	$16,	nRst,	$05
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC5,	$16,	nRst,	$04,	nB4,	$2A,	nRst,	$0B
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE5,	$2A,	nRst,	$0B
;	Set FM Voice	#
	smpsSetvoice	$0F
;	Alter Volume	value
	smpsAlterVol	$04
	dc.b		nE4,	$0E,	nE4,	$0D,	nRst,	nE4,	$21,	nRst
	dc.b		$07,	nE4,	$13,	nRst,	$07
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs4,	$0D,	nFs4,	nRst,	nFs4,	$21,	nRst,	$07
	dc.b		nFs4,	$14,	nRst,	$06
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB4,	$0D,	nB4,	$0E,	nRst,	$0D,	nB4,	$21
	dc.b		nRst,	$07,	nB4,	$14,	nRst,	$07
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE5,	$0C,	nRst,	$01,	nE5,	$0D,	nRst,	nE5
	dc.b		$21,	nRst,	$07,	nE5,	$13,	nRst,	$07,	nE4
	dc.b		$0D,	nE4,	nRst,	$0E,	nE4,	$20,	nRst,	$07
	dc.b		nE4,	$14,	nRst,	$07
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs4,	$0D,	nFs4,	nRst,	$0E,	nFs4,	$20,	nRst
	dc.b		$07,	nFs4,	$14,	nRst,	$07
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB4,	$0D,	nB4,	$0E,	nRst,	$0D,	nB4,	$21
	dc.b		nRst,	$06,	nB4,	$14,	nRst,	$07
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE5,	$0D,	nE5,	nRst,	nE5,	$21,	nRst,	$07
	dc.b		nE5,	$13,	nRst,	$08,	nCs5,	$0D,	nCs5,	nCs5
	dc.b		$0E,	nCs5,	$20,	nRst,	$07,	nCs5,	$14,	nRst
	dc.b		$06,	nCs5,	$0E,	nCs5,	$0D,	nCs5,	nCs5,	$21
	dc.b		nRst,	$07,	nCs5,	$14,	nRst,	$07,	nCs5,	$0D
	dc.b		nCs5,	nCs5,	nCs5,	$21,	nRst,	$07,	nCs5,	$13
	dc.b		nRst,	$07,	nCs5,	$0D,	nCs5,	nCs5,	$0E,	nCs5
	dc.b		$21,	nRst,	$07,	nCs5,	$13,	nRst,	$07
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD5,	$0D,	nD5,	nD5,	$0E,	nD5,	$20,	nRst
	dc.b		$07,	nD5,	$14,	nRst,	$07,	nAb5,	$0D,	nAb5
	dc.b		nAb5,	$0E,	nAb5,	$21,	nRst,	$07,	nAb5,	$14
	dc.b		nRst,	$06
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA5,	$0D,	nA5,	$0E,	nA5,	$0D,	nA5,	$21
	dc.b		nRst,	$07,	nA5,	$14,	nRst,	$07,	nA5,	$0D
	dc.b		nA5,	nA5,	nA5,	$35,	nRst,	$0D
;	Set FM Voice	#
	smpsSetvoice	$05
;	Alter Volume	value
	smpsAlterVol	$FC
	dc.b		smpsNoAttack,	nRst,	$06
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD5,	$05,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$04,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA5,	$04,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD6,	$05,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA5,	$04,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$05,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD5,	$04,	nRst,	$09,	nD5,	$05,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$04,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA5,	$05,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD6,	$04,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA5,	$04,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$05,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD5,	$05,	nRst,	$09
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE5,	$04,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb5,	$04,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB5,	$04,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE6,	$05,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB5,	$04,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb5,	$04,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE5,	$04,	nRst,	$09,	nE5,	$05,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb5,	$04,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB5,	$05,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE6,	$04,	nRst,	$03,	nE6,	$04,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb5,	$05,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE5,	$04,	nRst,	$09
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA5,	$05,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs6,	$04,	nRst,	$02,	nE6,	$05,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA6,	$04,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE6,	$05,	nRst,	$02,	nCs6,	$04,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA5,	$04,	nRst,	$09,	nA5,	$04,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs6,	$04,	nRst,	$03,	nE6,	$04,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA6,	$05,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE6,	$04,	nRst,	$03,	nCs6,	$04,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA5,	$04,	nRst,	$09
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs5,	$04,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$04,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA5,	$05,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs6,	$04,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA5,	$04,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$04,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs5,	$04,	nRst,	$09,	nCs5,	$04,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$04,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA5,	$05,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs6,	$04,	nRst,	$02,	nCs6,	$05,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs5,	$04,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs5,	$05,	nRst,	$02
;	Set FM Voice	#
	smpsSetvoice	$0F
;	Alter Volume	value
	smpsAlterVol	$04
	dc.b		smpsNoAttack,	nRst,	$0D
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA4,	$07,	nRst,	nA4,	$06,	nRst,	$07,	nA4
	dc.b		$06,	nRst,	$07,	nA4,	$06,	nRst,	$3C,	nA4
	dc.b		$06,	nRst,	$07,	nA4,	nRst,	$06,	nA4,	$07
	dc.b		nRst,	$06,	nA4,	$07,	nRst,	$7F,	$7F,	$04
;	Set FM Voice	#
	smpsSetvoice	$05
;	Alter Volume	value
	smpsAlterVol	$FC
	dc.b		nA4,	$0D
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Alter Notes	value
	smpsAlterNote	$00
;	Jump To	 	location
	smpsJump	Credits_Jump05

; FM6 Data
Credits_FM6:
;	Set FM Voice	#
	smpsSetvoice	$03
;	Alter Volume	value
	smpsAlterVol	$7F
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nRst,	$01
;	Set FM Voice	#
	smpsSetvoice	$06
;	Alter Volume	value
	smpsAlterVol	$93
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs3,	$0B,	nRst,	$02,	nFs3,	$07,	nRst,	nFs3
	dc.b		$0B,	nRst,	$02,	nFs3,	$06,	nRst,	$07,	nFs3
	dc.b		$0B,	nRst,	$02,	nFs3,	$07,	nRst,	$06,	nFs3
	dc.b		$0B,	nRst,	$03,	nFs3,	$06,	nRst,	$07
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nBb3,	$0B,	nRst,	$02,	nBb3,	$07,	nRst,	$06
	dc.b		nBb3,	$0B,	nRst,	$02,	nBb3,	$07,	nRst,	nBb3
	dc.b		$0B,	nRst,	$02,	nBb3,	$06,	nRst,	$07,	nBb3
	dc.b		$0B,	nRst,	$02,	nBb3,	$07,	nRst,	nB3,	$0A
	dc.b		nRst,	$03,	nB3,	$06,	nRst,	$07,	nB3,	$0B
	dc.b		nRst,	$02,	nB3,	$06,	nRst,	$07,	nB3,	$0C
	dc.b		nRst,	$02,	nB3,	$06,	nRst,	$07,	nB3,	$0B
	dc.b		nRst,	$02,	nB3,	$07,	nRst
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs4,	$0A,	nRst,	$03,	nCs4,	$06,	nRst,	$07
	dc.b		nCs4,	$0B,	nRst,	$02,	nCs4,	$07,	nRst,	$06
	dc.b		nCs4,	$0B,	nRst,	$02,	nCs4,	$07,	nRst,	nCs4
	dc.b		$0B,	nRst,	$02,	nCs4,	$06,	nRst,	$07
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD4,	$0B,	nRst,	$03,	nD4,	$06,	nRst,	$07
	dc.b		nD4,	$0B,	nRst,	$02,	nD4,	$07,	nRst,	nD4
	dc.b		$0A,	nRst,	$03,	nD4,	$06,	nRst,	$07,	nD4
	dc.b		$0B,	nRst,	$02,	nD4,	$06,	nRst,	$07
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE4,	$0B,	nRst,	$02,	nE4,	$07,	nRst,	nE4
	dc.b		$0A,	nRst,	$03,	nE4,	$06,	nRst,	$07,	nE4
	dc.b		$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB3,	$07,	nRst,	$06
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs4,	$0B,	nRst,	$03,	nCs4,	$06,	nRst,	$07
	dc.b		nCs4,	$0B,	nRst,	$03
Credits_Jump06:
	dc.b		nE3,	$0A,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA3,	$16,	nRst,	$11
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE3,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs3,	$0B,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE3,	$06,	nRst,	$07,	nCs4,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb3,	$06,	nRst,	$07
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB3,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs4,	$07,	nRst,	$14
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb3,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB3,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb3,	$07,	nRst,	nD4,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA3,	$07,	nRst,	$06
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB3,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD4,	$07,	nRst,	$14
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA3,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB3,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA3,	$07,	nRst,	$06
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE4,	$0B,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB3,	$06,	nRst,	$07
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs4,	$0B,	nRst,	$02,	nE4,	$06,	nRst,	$15
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB3,	$0A,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD4,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB3,	$07,	nRst
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA3,	$0A,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE3,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA3,	$16,	nRst,	$11
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE3,	$0B,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs3,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE3,	$06,	nRst,	$07,	nCs4,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb3,	$07,	nRst
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB3,	$0A,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs4,	$06,	nRst,	$14
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb3,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB3,	$0B,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb3,	$06,	nRst,	$07
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB3,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs3,	$07,	nRst
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA3,	$0A,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB3,	$06,	nRst,	$14
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs3,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA3,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs3,	$07,	nRst
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE4,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB3,	$06,	nRst,	$07
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs4,	$0B,	nRst,	$02,	nCs4,	$07,	nRst,	nE4
	dc.b		$12,	nE4,	nE4
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA3,	$0B,	nRst,	$02,	nA3,	$07,	nRst,	$06
	dc.b		nA3,	$0B,	nRst,	$03,	nA3,	$06,	nRst,	$07
	dc.b		nA3,	$0B,	nRst,	$02,	nA3,	$06,	nRst,	$07
	dc.b		nA3,	$0B,	nRst,	$02,	nA3,	$07,	nRst
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs3,	$0A,	nRst,	$03,	nFs3,	$06,	nRst,	$07
	dc.b		nFs3,	$0B,	nRst,	$02,	nFs3,	$07,	nRst,	$06
	dc.b		nFs3,	$0B,	nRst,	$02,	nFs3,	$07,	nRst,	nFs3
	dc.b		$0B,	nRst,	$02,	nFs3,	$06,	nRst,	$07
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF3,	$0B,	nRst,	$02,	nF3,	$07,	nRst,	$06
	dc.b		nF3,	$0B,	nRst,	$03,	nF3,	$06,	nRst,	$07
	dc.b		nF3,	$0B,	nRst,	$03,	nF3,	$06,	nRst,	$07
	dc.b		nF3,	$0B,	nRst,	$02,	nF3,	$06,	nRst,	$07
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE3,	$0B,	nRst,	$02,	nE3,	$07,	nRst,	$06
	dc.b		nE3,	$0B,	nRst,	$03,	nE3,	$06,	nRst,	$07
	dc.b		nE3,	$0B,	nRst,	$02,	nE3,	$07,	nRst,	$06
	dc.b		nE3,	$0B,	nRst,	$02,	nE3,	$07,	nRst
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA3,	$16,	nRst,	$05,	nA3,	$15,	nRst,	$05
	dc.b		nA3,	$16,	nRst,	$05,	nA3,	$0A,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE3,	$06,	nRst,	$07
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs3,	$16,	nRst,	$04,	nFs3,	$16,	nRst,	$04
	dc.b		nFs3,	$16,	nRst,	$05,	nFs3,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA3,	$07,	nRst,	$06
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB3,	$16,	nRst,	$05,	nB3,	$16,	nRst,	$04
	dc.b		nB3,	$16,	nRst,	$05,	nB3,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs3,	$07,	nRst
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE3,	$15,	nRst,	$05,	nE3,	$16,	nRst,	$04
	dc.b		nE3,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb3,	$07,	nRst
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB3,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE3,	$06,	nRst,	$07
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA3,	$16,	nRst,	$05,	nA3,	$15,	nRst,	$05
	dc.b		nA3,	$16,	nRst,	$04,	nA3,	$0C,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE3,	$06,	nRst,	$07
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs3,	$16,	nRst,	$04,	nFs3,	$16,	nRst,	$05
	dc.b		nFs3,	$16,	nRst,	$04,	nFs3,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA3,	$07,	nRst
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB3,	$16,	nRst,	$05,	nB3,	$15,	nRst,	$05
	dc.b		nB3,	$16,	nRst,	$04,	nB3,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs3,	$07,	nRst
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE3,	$16,	nRst,	$04,	nE3,	$16,	nRst,	$04
	dc.b		nE3,	$0B,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb3,	$06,	nRst,	$07
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB3,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE3,	$06,	nRst,	$08,	nCs4,	$16,	nRst,	$04
	dc.b		nCs4,	$16,	nRst,	$05,	nCs4,	$15,	nRst,	$05
	dc.b		nCs4,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb3,	$07,	nRst,	$06
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs4,	$16,	nRst,	$05,	nCs4,	$16,	nRst,	$04
	dc.b		nCs4,	$16,	nRst,	$05,	nCs4,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nAb3,	$07,	nRst
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs3,	$15,	nRst,	$05,	nFs3,	$16,	nRst,	$04
	dc.b		nFs3,	$16,	nRst,	$05,	nFs3,	$0A,	nRst,	$03
	dc.b		nFs3,	$06,	nRst,	$07
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE3,	$16,	nRst,	$04,	nE3,	$16,	nRst,	$05
	dc.b		nE3,	$16,	nRst,	$05,	nE3,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA3,	$06,	nRst,	$07
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB3,	$16,	nRst,	$05,	nB3,	$15,	nRst,	$05
	dc.b		nB3,	$16,	nRst,	$04,	nB3,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs3,	$07,	nRst
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE3,	$15,	nRst,	$05,	nE3,	$16,	nRst,	$05
	dc.b		nE3,	$16,	nRst,	$05,	nE3,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB2,	$07,	nRst,	$06
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA2,	$16,	nRst,	$05,	nA2,	$15,	nRst,	$05
	dc.b		nA2,	$16,	nRst,	$05,	nA2,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE2,	$07,	nRst
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA2,	$15,	nRst,	$05,	nA2,	$16,	nRst,	$04
	dc.b		nA2,	$16,	nRst,	$05,	nA2,	$0A,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE2,	$06,	nRst,	$07
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD3,	$16,	nRst,	$47
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA2,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE3,	$16,	nRst,	$12,	nE3,	$04,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs3,	$04,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE3,	$0B,	nRst,	$02,	nCs3,	$06,	nRst,	$07
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB2,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE3,	$07,	nRst
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA2,	$15,	nRst,	$12,	nA2,	$37,	nRst,	$0C
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs3,	$16,	nRst,	$11,	nFs3,	$0B,	nRst,	$10
	dc.b		nFs3,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA3,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nBb3,	$06,	nRst,	$07,	nB3,	$16,	nRst,	$2C
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nFs3,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nA3,	$0B,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nBb3,	$06,	nRst,	$07,	nB3,	$16,	nRst,	$1F
	dc.b		nB3,	$0A,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nCs4,	$06,	nRst,	$07
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD4,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nEb4,	$07,	nRst,	$06
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE4,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB3,	$07,	nRst
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE4,	$15,	nRst,	$05,	nE4,	$0B,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB3,	$06,	nRst,	$07
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE4,	$0A,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB3,	$06,	nRst,	$07
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE4,	$0B,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB3,	$06,	nRst,	$07
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE4,	$16,	nRst,	$05,	nE4,	$0A,	nRst,	$03
	dc.b		nE4,	$06,	nRst,	$07,	nE4,	$0B,	nRst,	$02
	dc.b		nE4,	$07,	nRst,	nE4,	$0B,	nRst,	$02
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Jump To	 	location
	smpsJump	Credits_Jump06
	
Credits_DAC:
		rts

Credits_Voices:
;	Voice 00
;	$3A,$01,$24,$71,$03,$0C,$09,$0B,$0D,$0A,$13,$08,$03,$03,$00,$02,$08,$18,$1A,$1B,$1C,$16,$2D,$30,$00
;				#
	smpsVcAlgorithm		$02
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$07,	$02,	$00
	smpsVcCoarseFreq	$03,	$01,	$04,	$01
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$0D,	$0B,	$09,	$0C
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$03,	$08,	$13,	$0A
	smpsVcDecayRate2	$08,	$02,	$00,	$03
	smpsVcDecayLevel	$01,	$01,	$01,	$01
	smpsVcReleaseRate	$0C,	$0B,	$0A,	$08
	smpsVcTotalLevel	$00,	$30,	$2D,	$16

;	Voice 01
;	$3A,$01,$24,$71,$03,$0C,$09,$0B,$0D,$0A,$13,$08,$03,$03,$00,$02,$08,$18,$1A,$1B,$1C,$7F,$7F,$7F,$00
;				#
	smpsVcAlgorithm		$02
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$07,	$02,	$00
	smpsVcCoarseFreq	$03,	$01,	$04,	$01
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$0D,	$0B,	$09,	$0C
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$03,	$08,	$13,	$0A
	smpsVcDecayRate2	$08,	$02,	$00,	$03
	smpsVcDecayLevel	$01,	$01,	$01,	$01
	smpsVcReleaseRate	$0C,	$0B,	$0A,	$08
	smpsVcTotalLevel	$00,	$7F,	$7F,	$7F

;	Voice 02
;	$3C,$0F,$00,$00,$00,$1F,$1A,$18,$1C,$17,$11,$1A,$0E,$00,$0F,$14,$10,$1F,$EC,$FF,$FF,$05,$00,$0C,$00
;				#
	smpsVcAlgorithm		$04
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$00,	$00,	$00
	smpsVcCoarseFreq	$00,	$00,	$00,	$0F
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$1C,	$18,	$1A,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$0E,	$1A,	$11,	$17
	smpsVcDecayRate2	$10,	$14,	$0F,	$00
	smpsVcDecayLevel	$0F,	$0F,	$0E,	$01
	smpsVcReleaseRate	$0F,	$0F,	$0C,	$0F
	smpsVcTotalLevel	$00,	$0C,	$00,	$05

;	Voice 03
;	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$FF,$FF,$7F,$7F,$7F,$00
;				#
	smpsVcAlgorithm		$00
	smpsVcFeedback		$00
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$00,	$00,	$00
	smpsVcCoarseFreq	$00,	$00,	$00,	$00
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$00,	$00,	$00,	$00
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$00,	$00,	$00,	$00
	smpsVcDecayRate2	$00,	$00,	$00,	$00
	smpsVcDecayLevel	$0F,	$0F,	$0F,	$0F
	smpsVcReleaseRate	$0F,	$0F,	$0F,	$0F
	smpsVcTotalLevel	$00,	$7F,	$7F,	$7F

;	Voice 04
;	$3A,$11,$22,$70,$01,$18,$99,$56,$4B,$04,$0C,$01,$06,$02,$02,$02,$02,$14,$18,$18,$18,$1D,$32,$30,$00
;				#
	smpsVcAlgorithm		$02
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$07,	$02,	$01
	smpsVcCoarseFreq	$01,	$00,	$02,	$01
	smpsVcRateScale		$01,	$01,	$02,	$00
	smpsVcAttackRate	$0B,	$16,	$19,	$18
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$06,	$01,	$0C,	$04
	smpsVcDecayRate2	$02,	$02,	$02,	$02
	smpsVcDecayLevel	$01,	$01,	$01,	$01
	smpsVcReleaseRate	$08,	$08,	$08,	$04
	smpsVcTotalLevel	$00,	$30,	$32,	$1D

;	Voice 05
;	$24,$31,$31,$65,$61,$1F,$18,$1F,$1F,$13,$11,$0E,$11,$0E,$08,$0C,$08,$04,$16,$04,$16,$16,$00,$12,$00
;				#
	smpsVcAlgorithm		$04
	smpsVcFeedback		$04
;				op1	op2	op3	op4
	smpsVcDetune		$06,	$06,	$03,	$03
	smpsVcCoarseFreq	$01,	$05,	$01,	$01
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$1F,	$1F,	$18,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$11,	$0E,	$11,	$13
	smpsVcDecayRate2	$08,	$0C,	$08,	$0E
	smpsVcDecayLevel	$01,	$00,	$01,	$00
	smpsVcReleaseRate	$06,	$04,	$06,	$04
	smpsVcTotalLevel	$00,	$12,	$00,	$16

;	Voice 06
;	$38,$35,$30,$30,$31,$14,$9C,$1C,$9C,$11,$06,$04,$01,$0C,$0A,$03,$04,$B8,$B8,$3C,$2C,$20,$28,$1C,$00
;				#
	smpsVcAlgorithm		$00
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$03,	$03,	$03,	$03
	smpsVcCoarseFreq	$01,	$00,	$00,	$05
	smpsVcRateScale		$02,	$00,	$02,	$00
	smpsVcAttackRate	$1C,	$1C,	$1C,	$14
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$01,	$04,	$06,	$11
	smpsVcDecayRate2	$04,	$03,	$0A,	$0C
	smpsVcDecayLevel	$02,	$03,	$0B,	$0B
	smpsVcReleaseRate	$0C,	$0C,	$08,	$08
	smpsVcTotalLevel	$00,	$1C,	$28,	$20

;	Voice 07
;	$3B,$08,$30,$31,$60,$1F,$1F,$15,$13,$1F,$1F,$1F,$16,$00,$00,$18,$0D,$00,$00,$00,$37,$00,$30,$05,$00
;				#
	smpsVcAlgorithm		$03
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$06,	$03,	$03,	$00
	smpsVcCoarseFreq	$00,	$01,	$00,	$08
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$13,	$15,	$1F,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$16,	$1F,	$1F,	$1F
	smpsVcDecayRate2	$0D,	$18,	$00,	$00
	smpsVcDecayLevel	$03,	$00,	$00,	$00
	smpsVcReleaseRate	$07,	$00,	$00,	$00
	smpsVcTotalLevel	$00,	$05,	$30,	$00

;	Voice 08
;	$3C,$47,$62,$60,$31,$16,$8F,$98,$10,$08,$04,$04,$04,$04,$06,$00,$04,$16,$18,$14,$17,$22,$00,$12,$00
;				#
	smpsVcAlgorithm		$04
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$03,	$06,	$06,	$04
	smpsVcCoarseFreq	$01,	$00,	$02,	$07
	smpsVcRateScale		$00,	$02,	$02,	$00
	smpsVcAttackRate	$10,	$18,	$0F,	$16
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$04,	$04,	$04,	$08
	smpsVcDecayRate2	$04,	$00,	$06,	$04
	smpsVcDecayLevel	$01,	$01,	$01,	$01
	smpsVcReleaseRate	$07,	$04,	$08,	$06
	smpsVcTotalLevel	$00,	$12,	$00,	$22

;	Voice 09
;	$3C,$47,$62,$60,$31,$16,$8F,$98,$10,$08,$04,$04,$04,$04,$06,$00,$04,$16,$18,$14,$17,$22,$00,$30,$02
;				#
	smpsVcAlgorithm		$04
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$03,	$06,	$06,	$04
	smpsVcCoarseFreq	$01,	$00,	$02,	$07
	smpsVcRateScale		$00,	$02,	$02,	$00
	smpsVcAttackRate	$10,	$18,	$0F,	$16
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$04,	$04,	$04,	$08
	smpsVcDecayRate2	$04,	$00,	$06,	$04
	smpsVcDecayLevel	$01,	$01,	$01,	$01
	smpsVcReleaseRate	$07,	$04,	$08,	$06
	smpsVcTotalLevel	$02,	$30,	$00,	$22

;	Voice 0A
;	$3C,$0F,$00,$00,$00,$1F,$1A,$18,$1C,$17,$11,$1A,$0E,$00,$0F,$14,$10,$FF,$FF,$FF,$FF,$05,$00,$0C,$00
;				#
	smpsVcAlgorithm		$04
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$00,	$00,	$00
	smpsVcCoarseFreq	$00,	$00,	$00,	$0F
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$1C,	$18,	$1A,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$0E,	$1A,	$11,	$17
	smpsVcDecayRate2	$10,	$14,	$0F,	$00
	smpsVcDecayLevel	$0F,	$0F,	$0F,	$0F
	smpsVcReleaseRate	$0F,	$0F,	$0F,	$0F
	smpsVcTotalLevel	$00,	$0C,	$00,	$05

;	Voice 0B
;	$3C,$0F,$00,$00,$00,$1F,$1A,$18,$1C,$17,$11,$1A,$0E,$00,$0F,$14,$10,$FF,$EC,$FF,$FF,$05,$00,$0C,$00
;				#
	smpsVcAlgorithm		$04
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$00,	$00,	$00
	smpsVcCoarseFreq	$00,	$00,	$00,	$0F
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$1C,	$18,	$1A,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$0E,	$1A,	$11,	$17
	smpsVcDecayRate2	$10,	$14,	$0F,	$00
	smpsVcDecayLevel	$0F,	$0F,	$0E,	$0F
	smpsVcReleaseRate	$0F,	$0F,	$0C,	$0F
	smpsVcTotalLevel	$00,	$0C,	$00,	$05

;	Voice 0C
;	$3B,$08,$30,$31,$60,$1F,$1F,$15,$13,$1F,$1F,$1F,$16,$00,$00,$18,$0D,$FF,$FF,$FF,$37,$00,$30,$05,$00
;				#
	smpsVcAlgorithm		$03
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$06,	$03,	$03,	$00
	smpsVcCoarseFreq	$00,	$01,	$00,	$08
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$13,	$15,	$1F,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$16,	$1F,	$1F,	$1F
	smpsVcDecayRate2	$0D,	$18,	$00,	$00
	smpsVcDecayLevel	$03,	$0F,	$0F,	$0F
	smpsVcReleaseRate	$07,	$0F,	$0F,	$0F
	smpsVcTotalLevel	$00,	$05,	$30,	$00

;	Voice 0D
;	$3B,$73,$30,$10,$01,$1F,$18,$18,$12,$07,$1F,$07,$1F,$0A,$0A,$09,$0A,$17,$17,$19,$1F,$1E,$1A,$15,$00
;				#
	smpsVcAlgorithm		$03
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$01,	$03,	$07
	smpsVcCoarseFreq	$01,	$00,	$00,	$03
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$12,	$18,	$18,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$1F,	$07,	$1F,	$07
	smpsVcDecayRate2	$0A,	$09,	$0A,	$0A
	smpsVcDecayLevel	$01,	$01,	$01,	$01
	smpsVcReleaseRate	$0F,	$09,	$07,	$07
	smpsVcTotalLevel	$00,	$15,	$1A,	$1E

;	Voice 0E
;	$3C,$01,$00,$00,$00,$1F,$9F,$9F,$1F,$15,$13,$1F,$11,$00,$00,$0E,$0D,$F5,$FF,$09,$F6,$0A,$04,$20,$00
;				#
	smpsVcAlgorithm		$04
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$00,	$00,	$00
	smpsVcCoarseFreq	$00,	$00,	$00,	$01
	smpsVcRateScale		$00,	$02,	$02,	$00
	smpsVcAttackRate	$1F,	$1F,	$1F,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$11,	$1F,	$13,	$15
	smpsVcDecayRate2	$0D,	$0E,	$00,	$00
	smpsVcDecayLevel	$0F,	$00,	$0F,	$0F
	smpsVcReleaseRate	$06,	$09,	$0F,	$05
	smpsVcTotalLevel	$00,	$20,	$04,	$0A

;	Voice 0F
;	$24,$31,$31,$63,$61,$1F,$18,$1F,$1C,$13,$0C,$0E,$0C,$0E,$04,$0C,$06,$04,$18,$04,$18,$1C,$00,$2F,$00
;				#
	smpsVcAlgorithm		$04
	smpsVcFeedback		$04
;				op1	op2	op3	op4
	smpsVcDetune		$06,	$06,	$03,	$03
	smpsVcCoarseFreq	$01,	$03,	$01,	$01
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$1C,	$1F,	$18,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$0C,	$0E,	$0C,	$13
	smpsVcDecayRate2	$06,	$0C,	$04,	$0E
	smpsVcDecayLevel	$01,	$00,	$01,	$00
	smpsVcReleaseRate	$08,	$04,	$08,	$04
	smpsVcTotalLevel	$00,	$2F,	$00,	$1C

;	Voice 10
;	$3C,$0F,$00,$00,$00,$1F,$1A,$9F,$1F,$15,$13,$1F,$11,$00,$00,$0E,$0D,$FF,$FF,$FF,$FF,$0A,$04,$20,$00
;				#
	smpsVcAlgorithm		$04
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$00,	$00,	$00
	smpsVcCoarseFreq	$00,	$00,	$00,	$0F
	smpsVcRateScale		$00,	$02,	$00,	$00
	smpsVcAttackRate	$1F,	$1F,	$1A,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$11,	$1F,	$13,	$15
	smpsVcDecayRate2	$0D,	$0E,	$00,	$00
	smpsVcDecayLevel	$0F,	$0F,	$0F,	$0F
	smpsVcReleaseRate	$0F,	$0F,	$0F,	$0F
	smpsVcTotalLevel	$00,	$20,	$04,	$0A

;	Voice 11
;	$3D,$00,$0F,$0F,$0F,$1F,$9F,$9F,$9F,$1F,$1F,$1F,$1F,$00,$0B,$0D,$0C,$0F,$4C,$4C,$4C,$00,$0B,$0B,$00
;				#
	smpsVcAlgorithm		$05
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$00,	$00,	$00
	smpsVcCoarseFreq	$0F,	$0F,	$0F,	$00
	smpsVcRateScale		$02,	$02,	$02,	$00
	smpsVcAttackRate	$1F,	$1F,	$1F,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$1F,	$1F,	$1F,	$1F
	smpsVcDecayRate2	$0C,	$0D,	$0B,	$00
	smpsVcDecayLevel	$04,	$04,	$04,	$00
	smpsVcReleaseRate	$0C,	$0C,	$0C,	$0F
	smpsVcTotalLevel	$00,	$0B,	$0B,	$00

;	Voice 12
;	$3D,$00,$0F,$0F,$0F,$1F,$9F,$9F,$9F,$1F,$1F,$1F,$1F,$00,$0B,$0D,$0C,$FF,$FF,$FF,$FF,$00,$0B,$0B,$00
;				#
	smpsVcAlgorithm		$05
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$00,	$00,	$00
	smpsVcCoarseFreq	$0F,	$0F,	$0F,	$00
	smpsVcRateScale		$02,	$02,	$02,	$00
	smpsVcAttackRate	$1F,	$1F,	$1F,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$1F,	$1F,	$1F,	$1F
	smpsVcDecayRate2	$0C,	$0D,	$0B,	$00
	smpsVcDecayLevel	$0F,	$0F,	$0F,	$0F
	smpsVcReleaseRate	$0F,	$0F,	$0F,	$0F
	smpsVcTotalLevel	$00,	$0B,	$0B,	$00

;	Voice 13
;	$3D,$00,$0F,$0F,$0F,$1F,$1A,$18,$1C,$17,$11,$1A,$0E,$00,$0F,$14,$10,$FF,$FF,$FF,$FF,$05,$02,$00,$02
;				#
	smpsVcAlgorithm		$05
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$00,	$00,	$00
	smpsVcCoarseFreq	$0F,	$0F,	$0F,	$00
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$1C,	$18,	$1A,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$0E,	$1A,	$11,	$17
	smpsVcDecayRate2	$10,	$14,	$0F,	$00
	smpsVcDecayLevel	$0F,	$0F,	$0F,	$0F
	smpsVcReleaseRate	$0F,	$0F,	$0F,	$0F
	smpsVcTotalLevel	$02,	$00,	$02,	$05

;	Voice 14
;	$3D,$0F,$00,$00,$00,$1F,$1A,$18,$1C,$17,$11,$1A,$0E,$00,$0F,$14,$10,$FF,$FF,$FF,$FF,$05,$02,$00,$02
;				#
	smpsVcAlgorithm		$05
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$00,	$00,	$00
	smpsVcCoarseFreq	$00,	$00,	$00,	$0F
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$1C,	$18,	$1A,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$0E,	$1A,	$11,	$17
	smpsVcDecayRate2	$10,	$14,	$0F,	$00
	smpsVcDecayLevel	$0F,	$0F,	$0F,	$0F
	smpsVcReleaseRate	$0F,	$0F,	$0F,	$0F
	smpsVcTotalLevel	$02,	$00,	$02,	$05

;	Voice 15
;	$3C,$0F,$00,$00,$00,$1F,$1A,$18,$1C,$17,$11,$1A,$0E,$00,$0F,$14,$0C,$FF,$FF,$FF,$FF,$00,$0B,$0E,$00
;				#
	smpsVcAlgorithm		$04
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$00,	$00,	$00
	smpsVcCoarseFreq	$00,	$00,	$00,	$0F
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$1C,	$18,	$1A,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$0E,	$1A,	$11,	$17
	smpsVcDecayRate2	$0C,	$14,	$0F,	$00
	smpsVcDecayLevel	$0F,	$0F,	$0F,	$0F
	smpsVcReleaseRate	$0F,	$0F,	$0F,	$0F
	smpsVcTotalLevel	$00,	$0E,	$0B,	$00

;	Voice 16
;	$3B,$47,$63,$61,$31,$16,$8F,$98,$10,$08,$02,$04,$0C,$08,$06,$02,$05,$16,$14,$14,$16,$1C,$22,$32,$00
;				#
	smpsVcAlgorithm		$03
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$03,	$06,	$06,	$04
	smpsVcCoarseFreq	$01,	$01,	$03,	$07
	smpsVcRateScale		$00,	$02,	$02,	$00
	smpsVcAttackRate	$10,	$18,	$0F,	$16
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$0C,	$04,	$02,	$08
	smpsVcDecayRate2	$05,	$02,	$06,	$08
	smpsVcDecayLevel	$01,	$01,	$01,	$01
	smpsVcReleaseRate	$06,	$04,	$04,	$06
	smpsVcTotalLevel	$00,	$32,	$22,	$1C

;	Voice 17
;	$3D,$00,$0F,$0F,$0F,$1F,$9F,$9F,$9F,$1F,$1F,$1F,$1F,$00,$0B,$0D,$0C,$FF,$4C,$4C,$4C,$00,$0B,$0B,$00
;				#
	smpsVcAlgorithm		$05
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$00,	$00,	$00
	smpsVcCoarseFreq	$0F,	$0F,	$0F,	$00
	smpsVcRateScale		$02,	$02,	$02,	$00
	smpsVcAttackRate	$1F,	$1F,	$1F,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$1F,	$1F,	$1F,	$1F
	smpsVcDecayRate2	$0C,	$0D,	$0B,	$00
	smpsVcDecayLevel	$04,	$04,	$04,	$0F
	smpsVcReleaseRate	$0C,	$0C,	$0C,	$0F
	smpsVcTotalLevel	$00,	$0B,	$0B,	$00
	even
