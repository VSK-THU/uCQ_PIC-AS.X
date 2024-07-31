 /*
 *  File: uCQ_pic_as_template.s
 *
 *  uC-Quick template file
 *
 *  VSK @THU 20.04.2023
 *  MPLABX v6.00 / pic-as v2.40
 *  Board: THU uC-Quick v2018
 */

#include <xc.inc>                   // includes the PIC specific header
;#include "../uCQuick/uCQ_2018.inc"  ; include board specific stuff

PSECT resetVec,class=CODE,reloc=2   ; define "-presetVec=0h" in linker options
resetVector:
    goto Init

PSECT code
Init:
;   initalisation code (runs only one time)
MainLoop:
;   code for main programm (do this forever)
    goto    MainLoop
    END     resetVector


/*

GLOBAL Delay1,Delay2;make variables global -> watchable when debugging
PSECT udata_acs     ;access memory location
Delay1:
    DS      1       ;reserve 1 byte for Delay1
Delay2:
    DS      1       ;reserve 1 byte for Delay2

    ; -------------------LATB-----------------------
    ; Bit#:  -7----6----5----4----3----2----1----0--
    ; LED:   ---------|LED4|LED3|LED2|LED1|----------
    ; ----------------------------------------------



;    movlw   00101000B   ;set cpu clock speed of 500KHz ->correlates to (1/(500K/4)) for each instruction
;    movwf   OSCCON,A
    bsf     LATB,2,A    ; init the LATCH ->  turning off LED1
    bcf     TRISB,2,A   ; make IO Pin C0 an output


    decfsz  Delay1,f,A  ; Waste time.
    bra     MainLoop    ;The Inner loop takes 3 instructions per loop * 256 loops = 768 instructions
    decfsz  Delay2,f,A  ;The outer loop takes an additional 3 instructions per lap * 256 loops
    bra     MainLoop    ;(768+3) * 256 = 197376 instructions / 125K instructions per second = 1.579 sec.
    btg     LATB,2,A    ;toggle DS1
*/












































