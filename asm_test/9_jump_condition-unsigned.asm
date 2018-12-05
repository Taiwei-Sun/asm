
format PE console
entry start

include 'win32a.inc'

section '.text' code readable executable

start:
 
 mov eax,1h
 mov edx,0x0
 ;sub edx,1h
 ;add edx,2h
 cmp eax,edx
 
 ja c_1
 jae c_2
 jb c_3
 jbe c_4
 
 mov eax,0h
 jmp exit_9
 
c_1:
 mov eax,1h
 jmp exit_9
 
c_2:
 mov eax,2h
 jmp exit_9
 
c_3:
 mov eax,3h
 jmp exit_9
 
c_4:
 mov eax,4h
 jmp exit_9
 


exit_9:
 call print_eax
 push 0
 call [ExitProcess]

include 'training.inc'