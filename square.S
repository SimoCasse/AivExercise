.org $8000

LDX #$30

input:
LDA $4000
CMP #$01
BEQ up
CMP #$02
BEQ down
CMP #$04
BEQ left
CMP #$08
BEQ right
RTS

clear:
LDA #0
STA $0200, X
RTS

down:
JSR clear
TXA
ADC #$0F
TAX
RTS



up:
JSR clear
TXA
ADC #$ef
TAX
RTS



right:
JSR clear
INX
RTS


left:
JSR clear
TXA
DEX
RTS



create:
LDA #03
STA $0200, X
RTS



begin:
JSR create
JSR input
JMP begin










.goto $FFFA
.dw begin
.dw begin
.dw begin