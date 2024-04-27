extern ExitProcess
extern printf

global main

section .data
 Message db "%d", 0

section .text
main:
 sub RSP, 8

 mov EAX, 2
 mov EDX, 4
 cmp EAX, EDX
 jle .B ; EAX <= EDX

.B:
 add EDX, EAX
 jmp .BR

.BO:
 inc EDX

.BR:
 sub RSP, 32
 lea RCX, [REL Message]
 call printf
 add RSP, 32

 xor ECX, ECX
 call ExitProcess
