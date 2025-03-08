%include 'in_out.asm'

SECTION .data
div: DB 'Результат: ',0

SECTION .text
GLOBAL _start

_start:

; -----------------------------------
;   Вычисление выражения (3+2)*4+5
; -----------------------------------
mov ebx,3
mov eax,2
add ebx,eax
mov ecx,4
mov eax, ebx	; содержимое из ebx в eax
mul ecx
add eax,5	; 5 + (eax * ecx)
mov edi,eax	; сохраняем результат из eax

; ---------------------------------
;    Вывод результата на экран
; ---------------------------------
mov eax,div
call sprint
mov eax,edi
call iprintLF
call quit
