.thumb
.org 0x00
Init:
push {r4-r7, lr}
ldr r0, =0x202BCF0
ldrb r4, [r0, #0x0E]
lsl r4, #3
ldr r5, EAL
add r5, r4

Graphics: 
ldr r0, [r5]
ldr r1, =0x600B000
ldr r3, =0x8012F50+1
bl Bxr3

Palette:
ldr r0, [r5, #4]
mov r1, #0xC0
lsl r1, #1
mov r2, #0x80
ldr r3, =0x8000DB8+1
bl Bxr3

End:
pop {r4-r7}
pop {r0}
bx r0

Bxr3:
bx r3

.align 2, 0
.ltorg
EAL:

