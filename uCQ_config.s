/*
 *  File: uCQ_config.s
 *
 *  uC-Quick config setttings
 *   
 *  VSK @THU 21.04.2023
 *  MPLABX v6.00 / pic-as v2.40
 *  Board: THU uC-Quick v2018
 */
    

; PIC18F25K22 Configuration Bit Settings
; CONFIG1H
  CONFIG  FOSC = INTIO67        ; Oscillator Selection bits (Internal oscillator block)
  CONFIG  PLLCFG = OFF          ; 4X PLL Enable (Oscillator used directly)
  CONFIG  PRICLKEN = ON         ; Primary clock enable bit (Primary clock enabled)
  CONFIG  FCMEN = OFF           ; Fail-Safe Clock Monitor Enable bit (Fail-Safe Clock Monitor disabled)
  CONFIG  IESO = OFF            ; Internal/External Oscillator Switchover bit (Oscillator Switchover mode disabled)

; CONFIG2L
  CONFIG  PWRTEN = OFF          ; Power-up Timer Enable bit (Power up timer disabled)
  CONFIG  BOREN = SBORDIS       ; Brown-out Reset Enable bits (Brown-out Reset enabled in hardware only (SBOREN is disabled))
  CONFIG  BORV = 190            ; Brown Out Reset Voltage bits (VBOR set to 1.90 V nominal)

; CONFIG2H
  CONFIG  WDTEN = OFF           ; Watchdog Timer Enable bits (Watch dog timer is always disabled. SWDTEN has no effect.)
  CONFIG  WDTPS = 32768         ; Watchdog Timer Postscale Select bits (1:32768)

; CONFIG3H
  CONFIG  CCP2MX = PORTC1       ; CCP2 MUX bit (CCP2 input/output is multiplexed with RC1)
  CONFIG  PBADEN = OFF          ; PORTB A/D Enable bit (PORTB<5:0> pins are configured as digital I/O on Reset)
  CONFIG  CCP3MX = PORTB5       ; P3A/CCP3 Mux bit (P3A/CCP3 input/output is multiplexed with RB5)
  CONFIG  HFOFST = ON           ; HFINTOSC Fast Start-up (HFINTOSC output and ready status are not delayed by the oscillator stable status)
  CONFIG  T3CMX = PORTC0        ; Timer3 Clock input mux bit (T3CKI is on RC0)
  CONFIG  P2BMX = PORTB5        ; ECCP2 B output mux bit (P2B is on RB5)
  CONFIG  MCLRE = EXTMCLR       ; MCLR Pin Enable bit (MCLR pin enabled, RE3 input pin disabled)

; CONFIG4L
  CONFIG  STVREN = ON           ; Stack Full/Underflow Reset Enable bit (Stack full/underflow will cause Reset)
  CONFIG  LVP = ON              ; Single-Supply ICSP Enable bit (Single-Supply ICSP enabled if MCLRE is also 1)
  CONFIG  XINST = OFF           ; Extended Instruction Set Enable bit (Instruction set extension and Indexed Addressing mode disabled (Legacy mode))

; CONFIG5L
  CONFIG  CP0 = OFF             ; Code Protection Block 0 (Block 0 (000800-001FFFh) not code-protected)
  CONFIG  CP1 = OFF             ; Code Protection Block 1 (Block 1 (002000-003FFFh) not code-protected)
  CONFIG  CP2 = OFF             ; Code Protection Block 2 (Block 2 (004000-005FFFh) not code-protected)
  CONFIG  CP3 = OFF             ; Code Protection Block 3 (Block 3 (006000-007FFFh) not code-protected)

; CONFIG5H
  CONFIG  CPB = OFF             ; Boot Block Code Protection bit (Boot block (000000-0007FFh) not code-protected)
  CONFIG  CPD = OFF             ; Data EEPROM Code Protection bit (Data EEPROM not code-protected)

; CONFIG6L
  CONFIG  WRT0 = OFF            ; Write Protection Block 0 (Block 0 (000800-001FFFh) not write-protected)
  CONFIG  WRT1 = OFF            ; Write Protection Block 1 (Block 1 (002000-003FFFh) not write-protected)
  CONFIG  WRT2 = OFF            ; Write Protection Block 2 (Block 2 (004000-005FFFh) not write-protected)
  CONFIG  WRT3 = OFF            ; Write Protection Block 3 (Block 3 (006000-007FFFh) not write-protected)

; CONFIG6H
  CONFIG  WRTC = OFF            ; Configuration Register Write Protection bit (Configuration registers (300000-3000FFh) not write-protected)
  CONFIG  WRTB = OFF            ; Boot Block Write Protection bit (Boot Block (000000-0007FFh) not write-protected)
  CONFIG  WRTD = OFF            ; Data EEPROM Write Protection bit (Data EEPROM not write-protected)

; CONFIG7L
  CONFIG  EBTR0 = OFF           ; Table Read Protection Block 0 (Block 0 (000800-001FFFh) not protected from table reads executed in other blocks)
  CONFIG  EBTR1 = OFF           ; Table Read Protection Block 1 (Block 1 (002000-003FFFh) not protected from table reads executed in other blocks)
  CONFIG  EBTR2 = OFF           ; Table Read Protection Block 2 (Block 2 (004000-005FFFh) not protected from table reads executed in other blocks)
  CONFIG  EBTR3 = OFF           ; Table Read Protection Block 3 (Block 3 (006000-007FFFh) not protected from table reads executed in other blocks)

; CONFIG7H
  CONFIG  EBTRB = OFF           ; Boot Block Table Read Protection bit (Boot Block (000000-0007FFh) not protected from table reads executed in other blocks)
