.include "x16.inc"

.org $080D
.segment "STARTUP"
.segment "INIT"
.segment "ONCE"
.segment "CODE"

   jmp start

message: .byte "hello, world!"
end_msg:

NEWLINE = $0D
UPPERCASE = $8E

start:
   ; force uppercase
   lda #UPPERCASE
   jsr CHROUT
   ; print message
   lda #<message
   sta ZP_PTR_1
   lda #>message
   sta ZP_PTR_1+1
   ldy #0
@loop:
   lda (ZP_PTR_1),y
   jsr CHROUT
   iny
   cpy #(end_msg-message)
   bne @loop
@done:
   ; print newline
   lda #NEWLINE
   jsr CHROUT
   rts
