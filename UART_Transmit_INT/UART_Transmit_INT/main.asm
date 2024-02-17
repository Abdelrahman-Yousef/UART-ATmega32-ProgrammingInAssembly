;
; UART_Transmit_INT.asm
;
; Created: 8/31/2023 6:59:23 PM
; Author : Options
;


; Replace with your application code
;
; UART_Receive_INT.asm
;
; Created: 8/31/2023 6:13:03 PM
; Author : Options
;


; Replace with your application code

.INCLUDE "m32def.inc"

.ORG 0x00
JMP MAIN

.ORG 0x1C
JMP UDRE_ISR

.ORG 0x100
MAIN:
LDI R16,HIGH(RAMEND)
OUT SPH,R16
LDI R16,LOW(RAMEND)
OUT SPL,R16

LDI R16,0x00
OUT UBRRH,R16
LDI R16,0x33
OUT UBRRL,R16
LDI R16,0x86
OUT UCSRC,R16
LDI R16,0x28
OUT UCSRB,R16

SEI 

LOOP: RJMP LOOP


.ORG 0x200
UDRE_ISR:
LDI R16,'G'
OUT UDR,R16
RETI










