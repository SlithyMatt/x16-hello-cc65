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

start:
   lda #<message
   sta ZP_PTR_1
   lda #>message
   sta ZP_PTR_1+1
   ldy #0
@loop:
   cpy #(end_msg-message)
   beq @done
   lda ZP_PTR_1,y
   jsr CHROUT
   iny
   bra @loop
@done:
   lda #NEWLINE
   jsr CHROUT
   rts
