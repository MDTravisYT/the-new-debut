Mus91_Sonic_Got_Through_Header:
smpsHeaderStartSong = 1
	smpsHeaderVoice     Mus91_Sonic_Got_Through_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $02

	smpsHeaderDAC       Mus91_Sonic_Got_Through_DAC
	smpsHeaderFM        Mus91_Stop,	$00, $0A
	smpsHeaderFM        Mus91_Stop,	$00, $0A
	smpsHeaderFM        Mus91_Stop,	$00, $0A
	smpsHeaderFM        Mus91_Stop,	$00, $0A
	smpsHeaderFM        Mus91_Stop,	$00, $0A
	smpsHeaderPSG       Mus91_Sonic_Got_Through_PSG1,	$F4, $02, $00, fTone_07
	smpsHeaderPSG       Mus91_Sonic_Got_Through_PSG2,	$F2, $02, $00, fTone_07
	smpsHeaderPSG       Mus91_Stop,	$00, $0A, $00, fTone_04

; FM1 Data
Mus91_Sonic_Got_Through_FM1:
	smpsSetvoice        $00
	smpsNoteFill        $10
	dc.b	nRst, $08, nCs4, nA3, nCs4, nCs4, nD4, $05, nD4, $03, nB3, 24
	smpsStop
; FM2 Data
Mus91_Sonic_Got_Through_FM2:
	smpsSetvoice        $00
	dc.b	nCs5, $05, nD5, $01, nRst, $02, nE5, $08, nCs5, $05, nA4, $03, nE5, $08, nA5, nG5, $02, nFs5, $03, nD5, nA5, 24
	smpsStop
; FM3 Data
Mus91_Sonic_Got_Through_FM3:
	smpsSetvoice        $00
	dc.b	nRst, $08, nCs5, nA4, nCs5, nE5, nD5, nE5, 24
	smpsStop
; FM4 Data
Mus91_Sonic_Got_Through_FM4:
	smpsSetvoice        $00
	dc.b	nRst, $08, nA1, nE1, $05, nE1, $03, nA1, $08, nA1, nG1, nE1, 24
	smpsStop
; PSG2 Data
Mus91_Sonic_Got_Through_PSG2:
	dc.b		nRst, $05, nE2, $05
	smpsJump	PreludePSGJump
; PSG1 Data
Mus91_Sonic_Got_Through_PSG1:
	dc.b		nRst, $08
	
PreludePSGJump:
	dc.b		nE4, $04, nC4, nE4, nC4, nE4, nC4, nE4, nC4, nE4, nC4, nD4, nB3, nE4, nCs4, nFs4, nD4, $08
	smpsStop
; DAC Data
Mus91_Sonic_Got_Through_DAC:
	dc.b	dKick, $08, dKick, dSnare, $02, dSnare, dSnare, dSnare, dSnare, $04, dSnare, dKick, $08, dKick, dHiTimpani, $04, dVLowTimpani, dHiTimpani, dVLowTimpani, dHiTimpani, dVLowTimpani

; PSG1 Data
Mus91_Stop:
	smpsStop


Mus91_Sonic_Got_Through_Voices:
;	Voice $00
;	$3D
;	$01, $02, $00, $01, 	$1F, $0E, $0E, $0E, 	$07, $1F, $1F, $1F
;	$00, $00, $00, $00, 	$1F, $0F, $0F, $0F, 	$17, $8D, $8C, $8C
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $07, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $28, $18


