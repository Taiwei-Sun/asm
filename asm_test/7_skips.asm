
format PE console
entry start

include 'win32a.inc'

section '.text' code readable executable

start:
 
 mov eax,0
 call print_eax
 jmp loop1
 inc eax
 call print_eax
loop1:
 inc eax
 call print_eax
 
 


 
 push 0
 call [ExitProcess]

include 'training.inc'