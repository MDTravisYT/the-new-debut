; ============================================================================================
; Radiant Nexus affiliates Splash Screen.
; Programmed by Giovanni.
; ============================================================================================
RadnexAffiliate:
    move.b  #$E4,d0             			; set music ID to "stop music"
    jsr     PlaySound_Special       		; play ID
    jsr     PaletteFadeOut		  	        ; fade palettes out
    jsr     ClearScreen.w		   	        ; clear the plane mappings
 
; Step 1) Load all mappings into RAM for future use.
; ADIAN NEXUS, line 3
    lea     (RadLogoDump).l,a1          	; load dump location
    lea     (Eni_RadnexAffiliate2).l,a0		; load compressed mappings address
    move.w  #320+$6000,d0          			; prepare pattern index value to patch to mappings
    jsr     EniDec 		           			; decompress and dump

; R, line 3
    lea     (RadLogoDump+RLD_R).l,a1          		; load dump location
    lea     (Eni_RAffiliate2).l,a0		; load compressed mappings address
    move.w  #320+$6000,d0          			; prepare pattern index value to patch to mappings
    jsr     EniDec 		           			; decompress and dump
 
; T, line 3
	lea     (RadLogoDump+RLD_T).l,a1          		; load dump location
    lea     (Eni_TAffiliate2).l,a0		; load compressed mappings address
    move.w  #320+$6000,d0          			; prepare pattern index value to patch to mappings
    jsr     EniDec 		           			; decompress and dump

; ADIAN NEXUS, line 2	
    lea     (RadLogoDump+Sizeof_RL).l,a1	
    lea     (Eni_RadnexAffiliate).l,a0		; load compressed mappings address
    move.w  #320+$4000,d0            		; prepare pattern index value to patch to mappings
    jsr     EniDec 		           			; decompress and dump

; R, line 2
    lea     (RadLogoDump+Sizeof_RL+RLD_R).l,a1          		; load dump location
    lea     (Eni_RAffiliate).l,a0			; load compressed mappings address
    move.w  #320+$4000,d0          			; prepare pattern index value to patch to mappings
    jsr     EniDec 		           			; decompress and dump

; T, line 2
    lea     (RadLogoDump+Sizeof_RL+RLD_T).l,a1          		; load dump location
    lea     (Eni_TAffiliate).l,a0			; load compressed mappings address
    move.w  #320+$4000,d0          			; prepare pattern index value to patch to mappings
    jsr     EniDec 		           			; decompress and dump
	
; ADIAN NEXUS, line 1	
    lea     (RadLogoDump+2*Sizeof_RL).l,a1	
    lea     (Eni_RadnexAffiliate2).l,a0		; load compressed mappings address
    move.w  #320+$2000,d0            		; prepare pattern index value to patch to mappings
    jsr     EniDec 		           			; decompress and dump
 
; R, line 1
    lea     (RadLogoDump+2*Sizeof_RL+RLD_R).l,a1          		; load dump location
    lea     (Eni_RAffiliate2).l,a0			; load compressed mappings address
    move.w  #320+$2000,d0          			; prepare pattern index value to patch to mappings
    jsr     EniDec 		           			; decompress and dump

; T, line 1
    lea     (RadLogoDump+2*Sizeof_RL+RLD_T).l,a1          		; load dump location
    lea     (Eni_TAffiliate2).l,a0			; load compressed mappings address
    move.w  #320+$2000,d0          			; prepare pattern index value to patch to mappings
    jsr     EniDec 		           			; decompress and dump

; ADIAN NEXUS, line 0
    lea     (RadLogoDump+3*Sizeof_RL).l,a1	
    lea     (Eni_RadnexAffiliate).l,a0		; load compressed mappings address
    move.w  #320,d0            		; prepare pattern index value to patch to mappings
    jsr     EniDec 		           			; decompress and dump

; R, line 0
    lea     (RadLogoDump+3*Sizeof_RL+RLD_R).l,a1          		; load dump location
    lea     (Eni_RAffiliate).l,a0			; load compressed mappings address
    move.w  #320,d0          			; prepare pattern index value to patch to mappings
    jsr     EniDec 		           			; decompress and dump

; T, line 0
    lea     (RadLogoDump+3*Sizeof_RL+RLD_T).l,a1          		; load dump location
    lea     (Eni_TAffiliate).l,a0		; load compressed mappings address
    move.w  #320,d0          			; prepare pattern index value to patch to mappings
    jsr     EniDec 		           			; decompress and dump

; AN AFFILIATE OF
    lea     (RadLogoDump+4*Sizeof_RL).l,a1          		; load dump location
    lea     (Eni_RadnexAffiliateText).l,a0			; load compressed mappings address
    move.w  #320,d0          				; prepare pattern index value to patch to mappings
    jsr     EniDec 		           			; decompress and dump	

; Step 2) load all of the art
    move.l  #$68000000,(vdp_control_port).l    	; set vdp loc
    lea     (Nem_RadnexAffiliate).l,a0		; load background art
    jsr     NemDec              			; run NemDec to decompress art for display

; Step 3) load every instance of the logo at the right time.

    lea 	(Pal_RadnexAffiliate+$60).l,a0 	; load palette line 3
    lea 	(v_pal_dry+$60).l,a1        	; in current palette line 3
    move.w  #$3,d0							; for each repetition, four colors are loaded 
 
@line3:
    move.l  (a0)+,(a1)+         			; copy colours to buffer
    move.l  (a0)+,(a1)+         			; ''
    dbf d0,@line3     		; repeat until done	

	bsr.w	WaitForNextLogo 

    lea     (RadLogoDump).l,a1
    move.l  #$66940003,d0					; position in VRAM
    moveq   #19,d1							; width -1
    moveq   #7,d2							; height -1
    bsr.w   TilemapToVRAM			        ; flush mappings to VRAM

    lea     (RadLogoDump+RLD_R).l,a1
    move.l  #$668C0003,d0					; position in VRAM
    moveq   #3,d1							; width -1
    moveq   #3,d2							; height -1
    bsr.w   TilemapToVRAM			        ; flush mappings to VRAM	

    lea     (RadLogoDump+RLD_T).l,a1
    move.l  #$66BC0003,d0					; position in VRAM
    moveq   #3,d1							; width -1
    moveq   #3,d2							; height -1
    bsr.w   TilemapToVRAM			        ; flush mappings to VRAM

    lea 	(Pal_RadnexAffiliate+$40).l,a0 	; load palette line 2
    lea 	(v_pal_dry+$40).l,a1        	; in current palette line 2
    move.w  #$3,d0							; for each repetition, four colors are loaded
 
@line2:
    move.l  (a0)+,(a1)+         			; copy colours to buffer
    move.l  (a0)+,(a1)+         			; ''
    dbf d0,@line2     		; repeat until done	

	bsr.w	WaitForNextLogo

    lea     (RadLogoDump+Sizeof_RL).l,a1
    move.l  #$66140003,d0					; position in VRAM
    moveq   #19,d1							; width -1
    moveq   #7,d2							; height -1
    bsr.w   TilemapToVRAM			        ; flush mappings to VRAM

    lea     (RadLogoDump+Sizeof_RL+RLD_R).l,a1
    move.l  #$660C0003,d0					; position in VRAM
    moveq   #3,d1							; width -1
    moveq   #3,d2							; height -1
    bsr.w   TilemapToVRAM			        ; flush mappings to VRAM	

    lea     (RadLogoDump+Sizeof_RL+RLD_T).l,a1
    move.l  #$663C0003,d0					; position in VRAM
    moveq   #3,d1							; width -1
    moveq   #3,d2							; height -1
    bsr.w   TilemapToVRAM			        ; flush mappings to VRAM	

    lea 	(Pal_RadnexAffiliate+$20).l,a0 	; load palette line 1
    lea 	(v_pal_dry+$20).l,a1        	; in current palette line 1
    move.w  #$3,d0							; for each repetition, four colors are loaded
 
@line1:
    move.l  (a0)+,(a1)+         			; copy colours to buffer
    move.l  (a0)+,(a1)+         			; ''
    dbf d0,@line1     		; repeat until done	

	bsr.w	WaitForNextLogo

	lea     (RadLogoDump+2*Sizeof_RL).l,a1
    move.l  #$45940003,d0					; position in VRAM
    moveq   #19,d1							; width -1
    moveq   #7,d2							; height -1
    bsr.w   TilemapToVRAM			        ; flush mappings to VRAM

    lea     (RadLogoDump+2*Sizeof_RL+RLD_R).l,a1
    move.l  #$458C0003,d0					; position in VRAM
    moveq   #3,d1							; width -1
    moveq   #3,d2							; height -1
    bsr.w   TilemapToVRAM			        ; flush mappings to VRAM	

    lea     (RadLogoDump+2*Sizeof_RL+RLD_T).l,a1
    move.l  #$45BC0003,d0					; position in VRAM
    moveq   #3,d1							; width -1
    moveq   #3,d2							; height -1
    bsr.w   TilemapToVRAM			        ; flush mappings to VRAM	

    lea 	(Pal_RadnexAffiliate).l,a0 		; load palette line 0
    lea 	(v_pal_dry).l,a1        		; in current palette line 0
    move.w  #$3,d0							; for each repetition, four colors are loaded
 
@line0:
    move.l  (a0)+,(a1)+         			; copy colours to buffer
    move.l  (a0)+,(a1)+         			; ''
    dbf d0,@line0     						; repeat until done	

	bsr.w	WaitForNextLogo

    lea     (RadLogoDump+3*Sizeof_RL).l,a1
    move.l  #$45140003,d0					; position in VRAM
    moveq   #19,d1							; width -1
    moveq   #7,d2							; height -1
    bsr.w   TilemapToVRAM			        ; flush mappings to VRAM

    lea     (RadLogoDump+3*Sizeof_RL+RLD_R).l,a1
    move.l  #$450C0003,d0					; position in VRAM
    moveq   #3,d1							; width -1
    moveq   #3,d2							; height -1
    bsr.w   TilemapToVRAM			        ; flush mappings to VRAM	

    lea     (RadLogoDump+3*Sizeof_RL+RLD_T).l,a1
    move.l  #$453C0003,d0					; position in VRAM
    moveq   #3,d1							; width -1
    moveq   #3,d2							; height -1
    bsr.w   TilemapToVRAM			        ; flush mappings to VRAM

	bsr.w	WaitForNextLogo
 
	moveq	#0,d1
	
    lea 	(v_pal_dry+$60).l,a1	
	moveq	#3,d0
	
@clrline3p1:
    move.l  d1,(a1)+         			; copy colours to buffer
    move.l  d1,(a1)+         			; ''
    dbf d0,@clrline3p1     						; repeat until done		

    lea 	(Pal_RadnexAffiliate+$40).l,a0 	; load palette lines 2 and 3
    lea 	(v_pal_dry+$20).l,a1        	; in current palette lines 1 and 2
    move.w  #$7,d0							; for each repetition, four colors are loaded 
 
@clrline3p2:
    move.l  (a0)+,(a1)+         			; copy colours to buffer
    move.l  (a0)+,(a1)+         			; ''
    dbf d0,@clrline3p2     		; repeat until done	

	move.w	(v_pal_dry+$22).w,(v_pal_dry+$1E).w

	bsr.w	WaitForNextLogo

    lea 	(v_pal_dry+$40).l,a1	
	moveq	#3,d0
	
@clrline2p1:
    move.l  d1,(a1)+         					; copy colours to buffer
    move.l  d1,(a1)+         					; ''
    dbf d0,@clrline2p1     						; repeat until done		

    lea 	(Pal_RadnexAffiliate+$60).l,a0 	; load palette line 3
    lea 	(v_pal_dry+$20).l,a1        	; in current palette line 1
    move.w  #$3,d0							; for each repetition, four colors are loaded 
 
@clrline2p2:
    move.l  (a0)+,(a1)+         			; copy colours to buffer
    move.l  (a0)+,(a1)+         			; ''
    dbf d0,@clrline2p2     		; repeat until done	

	move.w	(v_pal_dry+$22).w,(v_pal_dry+$1E).w

	bsr.w	WaitForNextLogo

	move.l	#0,d0
    lea 	(v_pal_dry+$20).l,a1	
	moveq	#3,d0
	
@clrline1:
    move.l  d1,(a1)+         					; copy colours to buffer
    move.l  d1,(a1)+         					; ''
    dbf d0,@clrline1     						; repeat until done		

	clr.w	(v_pal_dry+$1E).w

	move.w	#60,(v_demolength).w

Radnex_WaitForText:
    move.b  #2,(v_vbla_routine).w        		; set V-blank routine to run
    jsr 	WaitForVBla          			; wait for V-blank (decreases "Demo_Time_left")
    tst.b   (v_jpadpress1).w           		; has player 1 pressed start button?
    bmi.w   Radnex_GotoTitle        		; if so, branch
    tst.w   (v_demolength).w           		; has the delay time finished?
    bne.s   Radnex_WaitForText         		; if not, branch

    lea     (RadLogoDump+4*Sizeof_RL).l,a1
    move.l  #$62980003,d0					; position in VRAM
    moveq   #15,d1							; width -1
    moveq   #0,d2							; height -1
    bsr.w   TilemapToVRAM			        ; flush mappings to VRAM

	move.b	#1,(v_palflags).w
	move.b	#1,(v_palcount).w
	move.l	#The_individual_palette_entry_on_the_table,(p_paltarget).w
	move.l	#v_pal_dry+$6,(p_palreplace).w
	
Radnex_WaitForFadeIn:
    move.b  #6,(v_vbla_routine).w        		; set V-blank routine to run
    jsr 	WaitForVBla          			; wait for V-blank (decreases "Demo_Time_left")
	bsr.w	DynPaletteTransition
	tst.b	(v_palflags).w
	bne.s	Radnex_WaitForFadeIn
	
	move.w	#180,(v_demolength).w

Sega_MainLoop2:
    move.b  #2,(v_vbla_routine).w        		; set V-blank routine to run
    jsr 	WaitForVBla          			; wait for V-blank (decreases "Demo_Time_left")
    tst.b   (v_jpadpress1).w           		; has player 1 pressed start button?
    bmi.s   Radnex_GotoTitle         		; if so, branch
    tst.w   (v_demolength).w           		; has the delay time finished?
    bne.s   Sega_MainLoop2          		; if not, branch
 
Radnex_GotoTitle:
    move.b  #$18,($FFFFF600).w      		; set the screen mode to Title Screen
    rts                     				; return
	
WaitForNextLogo:
	move.w	#6,(v_demolength).w
	
WaitForLogo_Loop:	
    move.b  #2,(v_vbla_routine).w        		; set V-blank routine to run
    jsr 	WaitForVBla          			; wait for V-blank (decreases "Demo_Time_left")
    tst.w   (v_demolength).w           		; has the delay time finished?
    bne.s   WaitForLogo_Loop          		; if not, branch
	
	rts
	
The_individual_palette_entry_on_the_table:
	dc.w	$6EE
	
	include	"_inc\DynPaletteTransition Lite.asm"