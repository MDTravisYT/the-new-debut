Mus91_Sonic_Got_Through_Header:
smpsHeaderStartSong = 1
	smpsHeaderVoice     Mus91_Sonic_Got_Through_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $02

	smpsHeaderDAC       Mus91_Sonic_Got_Through_DAC
	smpsHeaderFM        Mus91_Sonic_Got_Through_FM1,	$00, $0F
	smpsHeaderFM        Mus91_Sonic_Got_Through_FM2,	$00, $0F
	smpsHeaderFM        Mus91_Sonic_Got_Through_FM3,	$00, $0F
	smpsHeaderFM        Mus91_Sonic_Got_Through_FM4,	$00, $0F
	smpsHeaderFM        Mus91_Stop,	$00, $0A
	smpsHeaderPSG       prelude_PSG1,	$00, $02, $00, fTone_08
	smpsHeaderPSG       prelude_PSG2,	$00, $02, $00, fTone_08
	smpsHeaderPSG       prelude_PSG3,	$00, $00, $00, fTone_04

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
	smpsNoteFill        $08
	dc.b		nRst, $05, nD3, nD4, $04, nB3, nD4, nB3, nD4, nB3, nD4, nB3, nD4, nB3, nCs4, nA3, nD4, nB3, nE4, nCs4, $04
	smpsStop
; PSG1 Data
; PSG1 Data
prelude_PSG1:
	dc.b	nRst, $20
	smpsPSGAlterVol     $02
	dc.b	nE3, $03
	smpsPSGAlterVol     $01
	dc.b	nE3
	smpsPSGAlterVol     $01
	dc.b	nE3
	smpsPSGAlterVol     $01
	dc.b	nE3
	smpsPSGAlterVol     $01
	dc.b	nE3
	smpsPSGAlterVol     $01
	dc.b	nE3, $01
	smpsPSGAlterVol     $FB
	dc.b	nCs3, $03
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3, $01
	smpsPSGAlterVol     $FB
	dc.b	nE3, $03
	smpsPSGAlterVol     $01
	dc.b	nE3
	smpsPSGAlterVol     $01
	dc.b	nE3
	smpsPSGAlterVol     $01
	dc.b	nE3
	smpsPSGAlterVol     $01
	dc.b	nE3
	smpsPSGAlterVol     $01
	dc.b	nE3, $01
	smpsPSGAlterVol     $FB
	dc.b	nCs3, $03
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3, $01
	smpsPSGAlterVol     $FB
	dc.b	nE3, $03
	smpsPSGAlterVol     $01
	dc.b	nE3
	smpsPSGAlterVol     $01
	dc.b	nE3
	smpsPSGAlterVol     $01
	dc.b	nE3
	smpsPSGAlterVol     $01
	dc.b	nE3
	smpsPSGAlterVol     $01
	dc.b	nE3, $01
	smpsPSGAlterVol     $FB
	dc.b	nCs3, $03
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3, $01
	smpsPSGAlterVol     $FB
	dc.b	nE3, $03
	smpsPSGAlterVol     $01
	dc.b	nE3
	smpsPSGAlterVol     $01
	dc.b	nE3
	smpsPSGAlterVol     $01
	dc.b	nE3
	smpsPSGAlterVol     $01
	dc.b	nE3
	smpsPSGAlterVol     $01
	dc.b	nE3, $01
	smpsPSGAlterVol     $FB
	dc.b	nCs3, $03
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3, $01
	smpsPSGAlterVol     $FB
	dc.b	nE3, $03
	smpsPSGAlterVol     $01
	dc.b	nE3
	smpsPSGAlterVol     $01
	dc.b	nE3
	smpsPSGAlterVol     $01
	dc.b	nE3
	smpsPSGAlterVol     $01
	dc.b	nE3
	smpsPSGAlterVol     $01
	dc.b	nE3, $01
	smpsPSGAlterVol     $FB
	dc.b	nCs3, $03
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3, $01
	smpsPSGAlterVol     $FB
	dc.b	nD3, $03
	smpsPSGAlterVol     $01
	dc.b	nD3
	smpsPSGAlterVol     $01
	dc.b	nD3
	smpsPSGAlterVol     $01
	dc.b	nD3
	smpsPSGAlterVol     $01
	dc.b	nD3
	smpsPSGAlterVol     $01
	dc.b	nD3, $01
	smpsPSGAlterVol     $FB
	dc.b	nB2, $03
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	nB2, $01
	smpsPSGAlterVol     $FB
	dc.b	nE3, $03
	smpsPSGAlterVol     $01
	dc.b	nE3
	smpsPSGAlterVol     $01
	dc.b	nE3
	smpsPSGAlterVol     $01
	dc.b	nE3
	smpsPSGAlterVol     $01
	dc.b	nE3
	smpsPSGAlterVol     $01
	dc.b	nE3, $01
	smpsPSGAlterVol     $FB
	dc.b	nCs3, $03
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3, $01
	smpsPSGAlterVol     $FB
	smpsAlterNote       $01
	dc.b	nFs3, $03
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nFs3
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nFs3
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nFs3
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nFs3
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nFs3, $01
	smpsPSGAlterVol     $FB
	smpsAlterNote       $00
	dc.b	nD3, $03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nD3
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nD3
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nD3
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nD3
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nD3
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nD3
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nD3
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nD3
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nD3
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nD3
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nD3
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nD3, nRst, $09
	smpsStop

; PSG2 Data
prelude_PSG2:
	dc.b	nRst, $15
	smpsPSGAlterVol     $02
	dc.b	nD2, $03
	smpsPSGAlterVol     $01
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	nD2, $01
	smpsPSGAlterVol     $FA
	dc.b	nD3, $03
	smpsPSGAlterVol     $01
	dc.b	nD3
	smpsPSGAlterVol     $01
	dc.b	nD3
	smpsPSGAlterVol     $01
	dc.b	nD3
	smpsPSGAlterVol     $01
	dc.b	nD3
	smpsPSGAlterVol     $01
	dc.b	nD3, $01
	smpsPSGAlterVol     $FB
	dc.b	nB2, $03
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	nB2, $01
	smpsPSGAlterVol     $FB
	dc.b	nD3, $03
	smpsPSGAlterVol     $01
	dc.b	nD3
	smpsPSGAlterVol     $01
	dc.b	nD3
	smpsPSGAlterVol     $01
	dc.b	nD3
	smpsPSGAlterVol     $01
	dc.b	nD3
	smpsPSGAlterVol     $01
	dc.b	nD3, $01
	smpsPSGAlterVol     $FB
	dc.b	nB2, $03
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	nB2, $01
	smpsPSGAlterVol     $FB
	dc.b	nD3, $03
	smpsPSGAlterVol     $01
	dc.b	nD3
	smpsPSGAlterVol     $01
	dc.b	nD3
	smpsPSGAlterVol     $01
	dc.b	nD3
	smpsPSGAlterVol     $01
	dc.b	nD3
	smpsPSGAlterVol     $01
	dc.b	nD3, $01
	smpsPSGAlterVol     $FB
	dc.b	nB2, $03
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	nB2, $01
	smpsPSGAlterVol     $FB
	dc.b	nD3, $03
	smpsPSGAlterVol     $01
	dc.b	nD3
	smpsPSGAlterVol     $01
	dc.b	nD3
	smpsPSGAlterVol     $01
	dc.b	nD3
	smpsPSGAlterVol     $01
	dc.b	nD3
	smpsPSGAlterVol     $01
	dc.b	nD3, $01
	smpsPSGAlterVol     $FB
	dc.b	nB2, $03
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	nB2, $01
	smpsPSGAlterVol     $FB
	dc.b	nD3, $03
	smpsPSGAlterVol     $01
	dc.b	nD3
	smpsPSGAlterVol     $01
	dc.b	nD3
	smpsPSGAlterVol     $01
	dc.b	nD3
	smpsPSGAlterVol     $01
	dc.b	nD3
	smpsPSGAlterVol     $01
	dc.b	nD3, $01
	smpsPSGAlterVol     $FB
	dc.b	nB2, $03
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	nB2, $01
	smpsPSGAlterVol     $FB
	dc.b	nCs3, $03
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3, $01
	smpsPSGAlterVol     $FB
	dc.b	nA2, $03
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	nA2, $01
	smpsPSGAlterVol     $FB
	dc.b	nD3, $03
	smpsPSGAlterVol     $01
	dc.b	nD3
	smpsPSGAlterVol     $01
	dc.b	nD3
	smpsPSGAlterVol     $01
	dc.b	nD3
	smpsPSGAlterVol     $01
	dc.b	nD3
	smpsPSGAlterVol     $01
	dc.b	nD3, $01
	smpsPSGAlterVol     $FB
	dc.b	nB2, $03
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	nB2, $01
	smpsPSGAlterVol     $FB
	dc.b	nE3, $03
	smpsPSGAlterVol     $01
	dc.b	nE3
	smpsPSGAlterVol     $01
	dc.b	nE3
	smpsPSGAlterVol     $01
	dc.b	nE3
	smpsPSGAlterVol     $01
	dc.b	nE3
	smpsPSGAlterVol     $01
	dc.b	nE3, $01
	smpsPSGAlterVol     $FB
	dc.b	nCs3, $03
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3, nRst, $01
	smpsStop

; PSG3 Data
prelude_PSG3:
	dc.b	nRst, $20
	smpsPSGform         $E7
	smpsAlterNote       $01
	dc.b	nA5, $01
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nA5
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nA5, $02
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nA5, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nA5, nRst, $14
	smpsPSGAlterVol     $F2
	smpsAlterNote       $08
	dc.b	nA5, $01
	smpsPSGAlterVol     $03
	smpsAlterNote       $08
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nA5
	smpsPSGAlterVol     $02
	smpsAlterNote       $08
	dc.b	nA5, $02
	smpsPSGAlterVol     $02
	smpsAlterNote       $08
	dc.b	nA5, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nA5, nRst, $14
	smpsPSGAlterVol     $F2
	smpsAlterNote       $01
	dc.b	nA5, $01
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nA5
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nA5, $02
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nA5, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nA5, nRst, $14
	smpsPSGAlterVol     $F2
	smpsAlterNote       $08
	dc.b	nA5, $01
	smpsPSGAlterVol     $03
	smpsAlterNote       $08
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nA5
	smpsPSGAlterVol     $02
	smpsAlterNote       $08
	dc.b	nA5, $02
	smpsPSGAlterVol     $02
	smpsAlterNote       $08
	dc.b	nA5, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nA5, nRst, $14
	smpsPSGAlterVol     $F2
	smpsAlterNote       $01
	dc.b	nA5, $01
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nA5
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nA5, $02
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nA5, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nA5, nRst, $14
	smpsPSGAlterVol     $F2
	smpsAlterNote       $08
	dc.b	nA5, $01
	smpsPSGAlterVol     $03
	smpsAlterNote       $08
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nA5
	smpsPSGAlterVol     $02
	smpsAlterNote       $08
	dc.b	nA5, $02
	smpsPSGAlterVol     $02
	smpsAlterNote       $08
	dc.b	nA5, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nA5, nRst, $14
	smpsPSGAlterVol     $F2
	smpsAlterNote       $08
	dc.b	nA5, $01
	smpsPSGAlterVol     $03
	smpsAlterNote       $08
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nA5
	smpsPSGAlterVol     $02
	smpsAlterNote       $08
	dc.b	nA5, $02
	smpsPSGAlterVol     $02
	smpsAlterNote       $08
	dc.b	nA5, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nA5, nRst, $14
	smpsPSGAlterVol     $F2
	smpsAlterNote       $08
	dc.b	nA5, $01
	smpsPSGAlterVol     $03
	smpsAlterNote       $08
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nA5
	smpsPSGAlterVol     $02
	smpsAlterNote       $08
	dc.b	nA5, $02
	smpsPSGAlterVol     $02
	smpsAlterNote       $08
	dc.b	nA5, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nA5
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nA5, nRst, $34
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


