
format PE console
entry start

include 'win32a.inc'

section '.text' code readable executable

start:
 
 mov eax,0h
 mov ecx,1h
 sub ecx,1h
 jz jz_0
 
 call print_eax
 jmp exit_9
 
jz_1:
 mov eax,1h
 call print_eax
 
 


exit_9:
 push 0
 call [ExitProcess]

include 'training.inc'