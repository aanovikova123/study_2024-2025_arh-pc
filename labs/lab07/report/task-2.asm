%include 'in_out.asm'

section .data
    msg1 db "Введите a: ", 0
    msg2 db "Введите x: ", 0
    msg3 db "F(x) = ", 0

section .bss
    a resb 80    
    x resb 80     
    res resb 80   

section .text
global _start

_start:
    ; --- Ввод a ---
    mov eax, msg1  ; Вывод сообщения "Введите a:"
    call sprint
    mov ecx, a     ; Адрес для сохранения a
    mov edx, 10    ; Максимальная длина ввода
    call sread
    mov eax, a     ; Преобразование строки в число
    call atoi
    mov [a], eax   ; Запись преобразованного числа в а

    ; --- Ввод x ---
    mov eax, msg2 ; Вывод сообщения "Введите x:"
    call sprint
    mov ecx, x    ; Адрес для сохранения x
    mov edx, 10   ; Максимальная длина ввода
    call sread
    mov eax, x    ; Преобразование строки в число
    call atoi
    mov [x], eax  ; Запись преобразованного числа в х

    ; --- Вычисление функции ---
    mov eax, [x] ; Загружаем x в eax
    mov ebx, [a] ; Загружаем a в ebx
    cmp eax, ebx ; Сравниваем x и a
    jl _less_than_a ; Если x < a, перейти к соответствующей ветке

    ; если x >= a, то res = x - a
    sub eax, ebx     ; eax = eax - ebx (res = x - a)
    mov [res], eax   ; Сохраняем результат
    jmp _print_result ; Переход к выводу результата

_less_than_a:
    ; если x < a, то res = 5
    mov eax, 5 ; res = 5
    mov [res], eax ; Сохраняем результат

_print_result:
    ; --- Вывод результата ---
    mov eax, msg3 ; Вывод сообщения
    call sprint
    mov eax, [res]  ; Загружаем результат
    call iprintLF   ; Выводим результат
    call quit       ; Завершаем программу
