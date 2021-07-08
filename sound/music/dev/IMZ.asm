IMZ_Header:
smpsHeaderStartSong = 1
	smpsHeaderVoice	IMZ_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$01,	$00

	smpsHeaderDAC	IMZ_DAC
	smpsHeaderFM	IMZ_FM1,	$00,	$00
	smpsHeaderFM	IMZ_FM2,	$00,	$00
	smpsHeaderFM	IMZ_FM3,	$00,	$00
	smpsHeaderFM	IMZ_FM4,	$00,	$00
	smpsHeaderFM	IMZ_FM5,	$00,	$00
	smpsHeaderPSG	IMZ_PSG1,	$00,	$00,	$00, fTone_05
	smpsHeaderPSG	IMZ_PSG2,	$00,	$00,	$00, fTone_05
	smpsHeaderPSG	IMZ_PSG3,	$00,	$00,	$00, fTone_04
	smpsStop

; FM1 Data
IMZ_FM1:
	smpsSetvoice	$00
	smpsAlterVol	$20
	smpsPan		panCentre,	$00
	dc.b		nC3,	$0E,	nF4,	nG4,	$1C
	smpsAlterVol	$FD
	dc.b		nC3,	$0E,	nF4,	nG4,	nF3,	nC3,	nF4,	nG4
	dc.b		nF3,	nC3,	nF4,	nG4,	nF3
	smpsAlterVol	$03
	dc.b		nC3,	nF4,	nG4,	$1C
	smpsAlterVol	$FD
	dc.b		nC3,	$0E,	nF4,	nG4,	nF3,	nC3,	nF4,	nG4
	dc.b		nF3,	nC3,	nF4,	nG4,	nF3
	smpsAlterVol	$03
	dc.b		nC3,	nF4,	nG4,	$1C
	smpsAlterVol	$FD
	dc.b		nC3,	$0E,	nF4,	nG4,	nF3,	nC3,	nF4,	nG4
	dc.b		nF3,	nC3,	nF4,	nG4,	nF3
	smpsAlterVol	$03
	dc.b		nC3,	nF4,	nG4,	$1C
	smpsAlterVol	$FD
	dc.b		nC3,	$0E,	nF4,	nG4,	nF3,	nC3,	nF4,	nG4
	dc.b		nF3,	nC3,	nF4,	nG4,	nF3
	smpsAlterVol	$03
	dc.b		nC3,	nF4,	nG4,	$1C
	smpsAlterVol	$FD
	dc.b		nC3,	$0E,	nF4,	nG4,	nF3,	nC3,	nF4,	nG4
	dc.b		nF3,	nC3,	nF4,	nG4,	nF3
	smpsAlterVol	$03
	dc.b		nC3,	nF4,	nG4,	$1C
	smpsAlterVol	$FD
	dc.b		nC3,	$0E,	nF4,	nG4,	nF3,	nC3,	nF4,	nG4
	dc.b		nF3,	nC3,	nF4,	nG4,	nF3
	smpsAlterVol	$03
	dc.b		nC3,	nF4,	nG4,	$1C
	smpsAlterVol	$FD
	dc.b		nC3,	$0E,	nF4,	nG4,	nF3,	nC3,	nF4,	nG4
	dc.b		nF3,	nC3,	nF4,	nG4,	nF3
	smpsAlterVol	$03
	dc.b		nC3,	nF4,	nG4,	$1C
	smpsAlterVol	$FD
	dc.b		nC3,	$0E,	nF4,	nG4,	nF3,	nC3,	nF4,	nG4
	dc.b		nF3,	nC3,	nF4,	nG4,	nF3
	smpsAlterVol	$03
	dc.b		nC3,	nF4,	nG4,	$1C
	smpsAlterVol	$FD
	dc.b		nC3,	$0E,	nF4,	nG4,	nF3,	nC3,	nF4,	nG4
	dc.b		nF3,	nC3,	nF4,	nG4,	nF3
	smpsAlterVol	$03
	dc.b		nC3,	nF4,	nG4,	$1C
	smpsAlterVol	$FD
	dc.b		nC3,	$0E,	nF4,	nG4,	nF3,	nC3,	nF4,	nG4
	dc.b		nF3,	nC3,	nF4,	nG4,	nF3
	smpsAlterVol	$03
	dc.b		nC3,	nF4,	nG4,	$1C
	smpsAlterVol	$FD
	dc.b		nC3,	$0E,	nF4,	nG4,	nF3,	nC3,	nF4,	nG4
	dc.b		nF3,	nC3,	nF4,	nG4,	nF3
	smpsAlterVol	$03
	dc.b		nC3,	nF4,	nG4,	$1C
	smpsAlterVol	$FD
	dc.b		nC3,	$0E,	nF4,	nG4,	nF3,	nC3,	nF4,	nG4
	dc.b		nF3,	nC3,	nF4,	nG4,	nF3
	smpsAlterVol	$E3
	smpsPan		panCentre,	$00
	smpsJump	IMZ_FM1

; FM2 Data
IMZ_FM2:
	smpsSetvoice	$01
	smpsAlterVol	$0B
	smpsPan		panCentre,	$00
	dc.b		nG3,	$0E,	nC3,	nRst,	nBb3,	$38,	nA3,	$1C
	dc.b		nF3,	nG3,	$0E,	nG3,	$1C,	nBb3,	$0E,	nF3
	dc.b		nG3,	nRst,	$1C,	nC3,	$38,	nF3,	$1C,	nF3
	dc.b		nE3,	$0E,	nE3,	$1C,	nG3,	$0E,	nG3,	nG3
	dc.b		nC3,	nRst,	nBb3,	$38,	nA3,	$1C,	nF3,	nG3
	dc.b		$0E,	nG3,	$1C,	nBb3,	$0E,	nF3,	nG3,	nRst
	dc.b		$1C,	nC3,	$2A,	nRst,	$70,	nG3,	$0E,	nG3
	dc.b		nG3,	nC3,	nRst,	nBb3,	$38,	nA3,	$1C,	nF3
	dc.b		nG3,	$0E,	nG3,	$1C,	nBb3,	$0E,	nF3,	nG3
	dc.b		nRst,	$1C,	nC3,	$38,	nF3,	$1C,	nF3,	nE3
	dc.b		$0E,	nE3,	$1C,	nG3,	$0E,	nG3,	nG3,	nC3
	dc.b		nRst,	nBb3,	$38,	nA3,	$1C,	nF3,	nG3,	$0E
	dc.b		nG3,	$1C,	nBb3,	$0E,	nF3,	nG3,	nRst,	$1C
	dc.b		nC3,	$38,	nF3,	$1C,	nF3,	nE3,	$0E,	nE3
	dc.b		$1C,	nG3,	$0E,	nG3,	nG3,	nC3,	nRst,	nBb3
	dc.b		$38,	nA3,	$1C,	nF3,	nG3,	$0E,	nG3,	$1C
	dc.b		nBb3,	$0E,	nF3,	nG3,	nRst,	$1C,	nC3,	$38
	dc.b		nF3,	$1C,	nF3,	nE3,	$0E,	nE3,	$1C,	nG3
	dc.b		$0E,	nG3,	nG3,	nC3,	nRst,	nBb3,	$38,	nA3
	dc.b		$1C,	nF3,	nG3,	$0E,	nG3,	$1C,	nBb3,	$0E
	dc.b		nF3,	nG3,	nRst,	$1C,	nC3,	$2A,	nRst,	$70
	dc.b		nG3,	$0E,	nG3
	smpsSetvoice	$00
	smpsAlterVol	$F5
	smpsPan		panCentre,	$00
	smpsJump	IMZ_FM2

; FM3 Data
IMZ_FM3:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$7F,	$7F,	$7F,	$7F,	$7F,	$7F,	$7F
	dc.b		$7F,	$7F,	$7F,	$7F,	$7F,	$7F,	$7F,	$0E
	smpsSetvoice	$04
	smpsAlterVol	$1C
	dc.b		nG4,	nRst,	$1C,	nBb4,	$38,	nA4,	$1C,	nA4
	dc.b		nG4,	$0E,	nG4,	$1C,	nBb4,	$0E,	nF4,	nG4
	dc.b		$2A,	nC4
	smpsSetvoice	$01
	smpsAlterVol	$FC
	dc.b		nF2,	$0E,	nF2,	$2A,	nE2,	$38,	nG2,	$0E
	dc.b		nG2
	smpsSetvoice	$04
	smpsAlterVol	$04
	dc.b		nG4,	nRst,	$1C,	nBb4,	$38,	nA4,	$1C,	nA4
	dc.b		nG4,	$0E,	nG4,	$1C,	nBb4,	$0E,	nF4,	nG4
	dc.b		$2A,	nC4
	smpsSetvoice	$01
	smpsAlterVol	$FC
	dc.b		nF2,	$0E,	nF2,	$2A,	nE2,	$38,	nG2,	$0E
	dc.b		nG2
	smpsSetvoice	$00
	smpsAlterVol	$E8
	smpsPan		panCentre,	$00
	smpsJump	IMZ_FM3

; FM4 Data
IMZ_FM4:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$7F,	$7F,	$7F,	$7F,	$7F,	$7F,	$7F
	dc.b		$07
	smpsSetvoice	$02
	smpsAlterVol	$0E
	dc.b		nE4,	$0E,	nD4,	nC4,	nG4,	$38,	nF4,	$0E
	dc.b		nC5,	nG4,	nF4,	nG4,	$2A,	nBb4,	$0E,	nF4
	dc.b		nG4,	$2A,	nC4,	$62,	nC4,	$0E,	nF4,	nE4
	dc.b		nF4,	nG4,	nF4,	nE4,	nD4,	nC4,	nG4,	$38
	dc.b		nF4,	$0E,	nC5,	nG4,	nF4,	nG4,	$2A,	nBb4
	dc.b		$0E,	nF4,	nG4,	$2A,	nC4,	$62,	nC4,	$0E
	dc.b		nF4,	nE4,	nF4,	nG4,	nF4
	smpsSetvoice	$04
	smpsAlterVol	$0E
	dc.b		nG4,	nRst,	$1C,	nBb4,	$38,	nA4,	$1C,	nA4
	dc.b		nG4,	$0E,	nG4,	$15,	nRst,	$07,	nBb4,	$0E
	dc.b		nF4,	nG4,	$2A,	nC4,	nF4,	$0E,	nF4,	$23
	dc.b		nRst,	$07,	nE4,	$31,	nRst,	$07,	nG4,	$0E
	dc.b		nG4,	nG4,	nRst,	$1C,	nBb4,	$38,	nA4,	$1C
	dc.b		nA4,	nG4,	$0E,	nG4,	$15,	nRst,	$07,	nBb4
	dc.b		$0E,	nF4,	nG4,	$2A,	nC4,	nF4,	$0E,	nF4
	dc.b		$23,	nRst,	$07,	nE4,	$31,	nRst,	$07,	nG4
	dc.b		$0E,	nG4
	smpsSetvoice	$00
	smpsAlterVol	$E4
	smpsPan		panCentre,	$00
	smpsJump	IMZ_FM4

; FM5 Data
IMZ_FM5:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$7F,	$7F,	$7F,	$7F,	$7F,	$7F,	$7F
	dc.b		$07
	smpsSetvoice	$03
	smpsAlterVol	$0D
	smpsModSet	$00,	$02,	$03,	$03
	dc.b		nE4,	$0E,	nD4,	nC4,	nG4,	$38,	nF4,	$0E
	dc.b		nC5,	nG4,	nF4,	nG4,	$2A,	nBb4,	$0E,	nF4
	dc.b		nG4,	$2A,	nC4,	$62,	nC4,	$0E,	nF4,	nE4
	dc.b		nF4,	nG4,	nF4,	nE4,	nD4,	nC4,	nG4,	$38
	dc.b		nF4,	$0E,	nC5,	nG4,	nF4,	nG4,	$2A,	nBb4
	dc.b		$0E,	nF4,	nG4,	$2A,	nC4,	$62,	nC4,	$0E
	dc.b		nF4,	nE4,	nF4,	nG4,	nF4,	nE4,	nD4,	nC4
	dc.b		nG4,	$38,	nF4,	$0E,	nC5,	nG4,	nF4,	nG4
	dc.b		$2A,	nBb4,	$0E,	nF4,	nG4,	$2A,	nC4,	$62
	dc.b		nC4,	$0E,	nF4,	nE4,	nF4,	nG4,	nF4,	nE4
	dc.b		nD4,	nC4,	nG4,	$38,	nF4,	$0E,	nC5,	nG4
	dc.b		nF4,	nG4,	$2A,	nBb4,	$0E,	nF4,	nG4,	$2A
	dc.b		nC4,	$62,	nC4,	$0E,	nF4,	nE4,	nF4,	nG4
	dc.b		nF4
	smpsSetvoice	$00
	smpsAlterVol	$F3
	smpsPan		panCentre,	$00
;	dc.b		smpsModOff
	smpsJump	IMZ_FM5

; PSG1 Data
IMZ_PSG1:
	dc.b		nRst,	$7F,	$7F,	$7F,	$7F,	$7F,	$7F,	$7F
	dc.b		$07,	nG3,	$01
	smpsSetVol	$01
	dc.b		nG3,	$02
	smpsSetVol	$01
	dc.b		nG3,	$01
	smpsSetVol	$01
	dc.b		nG3
	smpsSetVol	$01
	dc.b		nG3
	smpsSetVol	$01
	dc.b		nG3
	smpsSetVol	$FB
	dc.b		nG3
	smpsSetVol	$01
	dc.b		nG3,	$02
	smpsSetVol	$01
	dc.b		nG3,	$01
	smpsSetVol	$01
	dc.b		nG3
	smpsSetVol	$01
	dc.b		nG3
	smpsSetVol	$01
	dc.b		nG3,	nRst,	$1C
	smpsSetVol	$FB
	dc.b		nBb3,	$01
	smpsSetVol	$01
	dc.b		nBb3,	$02
	smpsSetVol	$01
	dc.b		nBb3,	$01
	smpsSetVol	$01
	dc.b		nBb3
	smpsSetVol	$01
	dc.b		nBb3
	smpsSetVol	$01
	dc.b		nBb3,	nRst,	$7F,	$7F,	$7F,	$12
	smpsSetVol	$FB
	dc.b		nG3,	$01
	smpsSetVol	$01
	dc.b		nG3,	$02
	smpsSetVol	$01
	dc.b		nG3,	$01
	smpsSetVol	$01
	dc.b		nG3
	smpsSetVol	$01
	dc.b		nG3
	smpsSetVol	$01
	dc.b		nG3
	smpsSetVol	$FB
	dc.b		nG3
	smpsSetVol	$01
	dc.b		nG3,	$02
	smpsSetVol	$01
	dc.b		nG3,	$01
	smpsSetVol	$01
	dc.b		nG3
	smpsSetVol	$01
	dc.b		nG3
	smpsSetVol	$01
	dc.b		nG3,	nRst,	$1C
	smpsSetVol	$FB
	dc.b		nBb3,	$01
	smpsSetVol	$01
	dc.b		nBb3,	$02
	smpsSetVol	$01
	dc.b		nBb3,	$01
	smpsSetVol	$01
	dc.b		nBb3
	smpsSetVol	$01
	dc.b		nBb3
	smpsSetVol	$01
	dc.b		nBb3,	nRst,	$7F,	$7F,	$7F,	$12
	smpsSetVol	$FB
	dc.b		nG3,	$01
	smpsSetVol	$01
	dc.b		nG3,	$02
	smpsSetVol	$01
	dc.b		nG3,	$01
	smpsSetVol	$01
	dc.b		nG3
	smpsSetVol	$01
	dc.b		nG3
	smpsSetVol	$01
	dc.b		nG3
	smpsSetVol	$FB
	dc.b		nG3
	smpsSetVol	$01
	dc.b		nG3,	$02
	smpsSetVol	$01
	dc.b		nG3,	$01
	smpsSetVol	$01
	dc.b		nG3
	smpsSetVol	$01
	dc.b		nG3
	smpsSetVol	$01
	dc.b		nG3,	nRst,	$1C
	smpsSetVol	$FB
	dc.b		nBb3,	$01
	smpsSetVol	$01
	dc.b		nBb3,	$02
	smpsSetVol	$01
	dc.b		nBb3,	$01
	smpsSetVol	$01
	dc.b		nBb3
	smpsSetVol	$01
	dc.b		nBb3
	smpsSetVol	$01
	dc.b		nBb3,	nRst,	$7F,	$7F,	$7F,	$12
	smpsSetVol	$FB
	dc.b		nG3,	$01
	smpsSetVol	$01
	dc.b		nG3,	$02
	smpsSetVol	$01
	dc.b		nG3,	$01
	smpsSetVol	$01
	dc.b		nG3
	smpsSetVol	$01
	dc.b		nG3
	smpsSetVol	$01
	dc.b		nG3
	smpsSetVol	$FB
	dc.b		nG3
	smpsSetVol	$01
	dc.b		nG3,	$02
	smpsSetVol	$01
	dc.b		nG3,	$01
	smpsSetVol	$01
	dc.b		nG3
	smpsSetVol	$01
	dc.b		nG3
	smpsSetVol	$01
	dc.b		nG3,	nRst,	$1C
	smpsSetVol	$FB
	dc.b		nBb3,	$01
	smpsSetVol	$01
	dc.b		nBb3,	$02
	smpsSetVol	$01
	dc.b		nBb3,	$01
	smpsSetVol	$01
	dc.b		nBb3
	smpsSetVol	$01
	dc.b		nBb3
	smpsSetVol	$01
	dc.b		nBb3,	nRst,	$7F,	$7F,	$7F,	$12
	smpsSetVol	$FB
	smpsJump	IMZ_PSG1

; PSG2 Data
IMZ_PSG2:
	dc.b		nRst,	$7F,	$7F,	$7F,	$7F,	$7F,	$7F,	$7F
	dc.b		$07,	nC3,	$01
	smpsSetVol	$01
	dc.b		nC3,	$02
	smpsSetVol	$01
	dc.b		nC3,	$01
	smpsSetVol	$01
	dc.b		nC3
	smpsSetVol	$01
	dc.b		nC3
	smpsSetVol	$01
	dc.b		nC3
	smpsSetVol	$FB
	dc.b		nC3
	smpsSetVol	$01
	dc.b		nC3,	$02
	smpsSetVol	$01
	dc.b		nC3,	$01
	smpsSetVol	$01
	dc.b		nC3
	smpsSetVol	$01
	dc.b		nC3
	smpsSetVol	$01
	dc.b		nC3,	nRst,	$1C
	smpsSetVol	$FB
	dc.b		nG3,	$01
	smpsSetVol	$01
	dc.b		nG3,	$02
	smpsSetVol	$01
	dc.b		nG3,	$01
	smpsSetVol	$01
	dc.b		nG3
	smpsSetVol	$01
	dc.b		nG3
	smpsSetVol	$01
	dc.b		nG3,	nRst,	$7F,	$7F,	$7F,	$12
	smpsSetVol	$FB
	dc.b		nC3,	$01
	smpsSetVol	$01
	dc.b		nC3,	$02
	smpsSetVol	$01
	dc.b		nC3,	$01
	smpsSetVol	$01
	dc.b		nC3
	smpsSetVol	$01
	dc.b		nC3
	smpsSetVol	$01
	dc.b		nC3
	smpsSetVol	$FB
	dc.b		nC3
	smpsSetVol	$01
	dc.b		nC3,	$02
	smpsSetVol	$01
	dc.b		nC3,	$01
	smpsSetVol	$01
	dc.b		nC3
	smpsSetVol	$01
	dc.b		nC3
	smpsSetVol	$01
	dc.b		nC3,	nRst,	$1C
	smpsSetVol	$FB
	dc.b		nG3,	$01
	smpsSetVol	$01
	dc.b		nG3,	$02
	smpsSetVol	$01
	dc.b		nG3,	$01
	smpsSetVol	$01
	dc.b		nG3
	smpsSetVol	$01
	dc.b		nG3
	smpsSetVol	$01
	dc.b		nG3,	nRst,	$7F,	$7F,	$7F,	$12
	smpsSetVol	$FB
	dc.b		nC3,	$01
	smpsSetVol	$01
	dc.b		nC3,	$02
	smpsSetVol	$01
	dc.b		nC3,	$01
	smpsSetVol	$01
	dc.b		nC3
	smpsSetVol	$01
	dc.b		nC3
	smpsSetVol	$01
	dc.b		nC3
	smpsSetVol	$FB
	dc.b		nC3
	smpsSetVol	$01
	dc.b		nC3,	$02
	smpsSetVol	$01
	dc.b		nC3,	$01
	smpsSetVol	$01
	dc.b		nC3
	smpsSetVol	$01
	dc.b		nC3
	smpsSetVol	$01
	dc.b		nC3,	nRst,	$1C
	smpsSetVol	$FB
	dc.b		nG3,	$01
	smpsSetVol	$01
	dc.b		nG3,	$02
	smpsSetVol	$01
	dc.b		nG3,	$01
	smpsSetVol	$01
	dc.b		nG3
	smpsSetVol	$01
	dc.b		nG3
	smpsSetVol	$01
	dc.b		nG3,	nRst,	$7F,	$7F,	$7F,	$12
	smpsSetVol	$FB
	dc.b		nC3,	$01
	smpsSetVol	$01
	dc.b		nC3,	$02
	smpsSetVol	$01
	dc.b		nC3,	$01
	smpsSetVol	$01
	dc.b		nC3
	smpsSetVol	$01
	dc.b		nC3
	smpsSetVol	$01
	dc.b		nC3
	smpsSetVol	$FB
	dc.b		nC3
	smpsSetVol	$01
	dc.b		nC3,	$02
	smpsSetVol	$01
	dc.b		nC3,	$01
	smpsSetVol	$01
	dc.b		nC3
	smpsSetVol	$01
	dc.b		nC3
	smpsSetVol	$01
	dc.b		nC3,	nRst,	$1C
	smpsSetVol	$FB
	dc.b		nG3,	$01
	smpsSetVol	$01
	dc.b		nG3,	$02
	smpsSetVol	$01
	dc.b		nG3,	$01
	smpsSetVol	$01
	dc.b		nG3
	smpsSetVol	$01
	dc.b		nG3
	smpsSetVol	$01
	dc.b		nG3,	nRst,	$7F,	$7F,	$7F,	$12
	smpsSetVol	$FB
	smpsJump	IMZ_PSG2

; PSG3 Data
IMZ_PSG3:
	smpsPSGform	$E7
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$69
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$08
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
	smpsSetVol	$F3
	smpsJump	IMZ_PSG3

; DAC Data
IMZ_DAC:
	dc.b		dKick,	$1C,	dSnare,	$2A,	dKick,	$0E,	dSnare,	$1C
	dc.b		dKick,	dSnare,	$2A,	dKick,	$0E,	dSnare,	$1C,	dKick
	dc.b		dSnare,	$2A,	dKick,	$0E,	dSnare,	$1C,	dKick,	dSnare
	dc.b		$2A,	dKick,	$0E,	dSnare,	$1C,	dKick,	dSnare,	$2A
	dc.b		dKick,	$0E,	dSnare,	$1C,	dKick,	dSnare,	$2A,	dKick
	dc.b		$0E,	dSnare,	$1C,	dKick,	dSnare,	$2A,	dKick,	$0E
	dc.b		dSnare,	dSnare,	$07,	dSnare,	$77,	dKick,	$1C,	dSnare
	dc.b		$2A,	dKick,	$0E,	dSnare,	$1C,	dKick,	dSnare,	$2A
	dc.b		dKick,	$0E,	dSnare,	$1C,	dKick,	dSnare,	$2A,	dKick
	dc.b		$0E,	dSnare,	$1C,	dKick,	dSnare,	$2A,	dKick,	$0E
	dc.b		dSnare,	$1C,	dKick,	dSnare,	$2A,	dKick,	$0E,	dSnare
	dc.b		$1C,	dKick,	dSnare,	$2A,	dKick,	$0E,	dSnare,	$1C
	dc.b		dKick,	dSnare,	$2A,	dKick,	$0E,	dSnare,	$1C,	dKick
	dc.b		dSnare,	$2A,	dKick,	$0E,	dSnare,	$1C,	dKick,	dSnare
	dc.b		$2A,	dKick,	$0E,	dSnare,	$1C,	dKick,	dSnare,	$2A
	dc.b		dKick,	$0E,	dSnare,	$1C,	dKick,	dSnare,	$2A,	dKick
	dc.b		$0E,	dSnare,	$1C,	dKick,	dSnare,	$2A,	dKick,	$0E
	dc.b		dSnare,	$1C,	dKick,	dSnare,	$2A,	dKick,	$0E,	dSnare
	dc.b		$1C,	dKick,	dSnare,	$2A,	dKick,	$0E,	dSnare,	$1C
	dc.b		dKick,	dSnare,	$2A,	dKick,	$0E,	dSnare,	dSnare,	$07
	dc.b		dSnare,	$77
	smpsJump	IMZ_DAC

IMZ_Voices:
	dc.b		$04,$72,$02,$32,$32,$12,$12,$12,$12,$00,$08,$00,$08,$00,$08,$00
	dc.b		$08,$0F,$1F,$0F,$1F,$4A,$11,$2E,$00;			Voice 00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $05, $06
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $09, $06, $07
	smpsVcDecayRate2    $08, $06, $06, $07
	smpsVcDecayLevel    $0F, $01, $01, $02
	smpsVcReleaseRate   $08, $00, $00, $00
	smpsVcTotalLevel    $00, $13, $37, $19
	dc.b	$04,$37,$72,$77,$02,$1F,$1F,$1F,$1F,$07,$0A,$07,$0D,$00,$00,$00,$00,$10,$07,$10,$07,$23,$00,$23,$00
	dc.b		$35,$3A,$0A,$11,$02,$D4,$14,$50,$0E,$05,$08,$02,$88,$04,$14,$00
	dc.b		$00,$99,$09,$09,$1A,$1C,$23,$0D,$00;			Voice 03
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $02, $02, $01
	smpsVcRateScale     $01, $01, $01, $00
	smpsVcAttackRate    $10, $10, $10, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $08, $08, $07
	smpsVcDecayRate2    $00, $00, $00, $01
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $07, $07, $07, $00
	smpsVcTotalLevel    $00, $00, $00, $1C
	even
