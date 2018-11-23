
format PE console
entry start

include 'win32a.inc'

section '.text' code readable executable

start:
 
 mov eax,0
loop1:
 inc eax
 jmp loop1
 
 call print_eax

 
 push 0
 call [ExitProcess]

include 'training.inc'