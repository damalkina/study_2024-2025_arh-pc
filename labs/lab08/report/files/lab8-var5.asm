%include 'in_out.asm'

SECTION .data
msg1 db "Функция: 4x+3",0
msg2 db "Результат: ",0
SECTION .text
global _start

_start:

pop ecx 	; Извлекаем из стека в `ecx` количество аргументов
pop edx		; Извлекаем из стека в `edx` имя программы
sub ecx,1 	; Уменьшаем `ecx` на 1
mov esi, 0 	; Используем `esi` для хранения промежуточных результатов

next:
cmp ecx,0h 	; проверяем, есть ли еще аргументы
jz _end 	; если аргументов нет выходим из цикла

pop eax 	; иначе извлекаем следующий аргумент из стека
call atoi 	; преобразуем символ в число
mov ebx, 4	; 'ebx = 4'
mul ebx	 	; домножаем '4' на аргумент 'eax=4*eax'
add eax, 3	; прибавляем '3+4*eax'
add esi, eax	; складываем результат с предыдущими результатами

loop next 	; переход к обработке следующего аргумента

_end:
mov eax, msg1 	; вывод сообщения "Функция: 4x+3"
call sprintLF
mov eax, msg2 	; вывод сообщения "Результат: "
call sprint
mov eax, esi 	; записываем произведение в регистр `eax`
call iprintLF 	; печать результата
call quit 	; завершение программы
