SndB5_Ring_Header:
smpsHeaderStartSong = 1
	smpsHeaderVoice     SndB5_Ring_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM5, SndB5_Ring_FM5,	$00, $05

; FM5 Data
SndB5_Ring_FM5:
	smpsSetvoice        $00
	smpsPan             panRight, $00
	dc.b	nC5, $04, nC6, $1B
	smpsStop

SndB5_Ring_Voices:
;	Voice $00
;	$04
;	$37, $72, $77, $49, 	$1F, $1F, $1F, $1F, 	$07, $0A, $07, $0D
;	$00, $0B, $00, $0B, 	$1F, $0F, $1F, $0F, 	$23, $80, $23, $80
	dc.b	$04,$37,$72,$77,$02,$1F,$1F,$1F,$1F,$07,$0A,$07,$0D,$00,$00,$00,$00,$10,$07,$10,$07,$23,$00,$23,$00

