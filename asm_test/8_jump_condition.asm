
format PE console
entry start

include 'win32a.inc'

section '.text' code readable executable

start:
 
 mov eax,0h
 mov edx,0x80000000
 sub edx,1h
 ;add edx,2h
 
 jz jz_1
 js js_2
 jc jc_3
 jo jo_4
 
 jmp exit_9
 
jz_1:
 mov eax,1h
 jmp exit_9
 
js_2:
 mov eax,2h
 jmp exit_9
 
jc_3:
 mov eax,3h
 jmp exit_9
 
jo_4:
 mov eax,4h
 jmp exit_9
 


exit_9:
 call print_eax
 push 0
 call [ExitProcess]

include 'training.inc'