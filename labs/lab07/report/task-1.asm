%include 'in_out.asm'

section .data
    msg db "Наименьшее число: ", 0
    A dd 95 
    B dd 2 
    C dd 61  

section .bss
    min resd 1 ; Переменная для хранения наименьшего значения (32-битная)

section .text
global _start

_start:
    ; Инициализируем min значением A
    mov eax, [A] ; Загружаем A в eax
    mov [min], eax ; Сохраняем A в min

    ; Сравниваем min и B
    mov ebx, [B] ; Загружаем B в ebx
    cmp eax, ebx ; Сравниваем min (eax) и B
    jle _compare_c ; Если min <= B, идем к сравнению с C
    mov [min], ebx ; Иначе B становится наименьшим

_compare_c:
    ; Сравниваем min и C
    mov ecx, [C] ; Загружаем C в ecx
    mov eax, [min] ; Загружаем min в eax
    cmp eax, ecx ; Сравниваем min и C
    jle _end ; Если min <= C, завершаем
    mov [min], ecx ; Иначе C становится наименьшим

_end:
    ; Выводим сообщение
    mov eax, msg
    call sprint

    ; Выводим значение min
    mov eax, [min] ; Загружаем значение min в eax
    call iprintLF

    ; Завершаем программу
    call quit
