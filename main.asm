welcome db 0x0D, 0x0A
welcomeA db '   //////-------------------------------------------------\\\\\\', 0x0D, 0x0A
welcomeB db '   ||  |                     Welcome to Ryans              |  ||', 0x0D, 0x0A
welcomeC db '   ||  |                   Epic Operating System           |  ||', 0x0D, 0x0A
welcomeD db '   ||\\\\-------------------------------------------------////||', 0x0D, 0x0A
welcomeE db '   ||                                                         ||', 0x0D, 0x0A
welcomeF db '   ||                               \O                        ||', 0x0D, 0x0A
welcomeG db ' __||__                              |\                     __||__', 0x0D, 0x0A
welcomeH db '|______|____________________________/_\____________________|______|', 0x0D, 0x0A, 0

;welcomeA db 'd:                :d', 0x0D, 0x0A
;welcomeB db 'MMd:            :dMM  Ryans epic OS V1.0', 0x0D, 0x0A
;welcomeC db 'MmoNd:        :dN+mM', 0x0D, 0x0A
;welcomeD db 'Mm `+Nd:    /dN+` mM', 0x0D, 0x0A
;welcomeE db 'Mm sy.+Nd//mN+.ys mM', 0x0D, 0x0A
;welcomeF db 'Mm sM:  +Nm+  :Ms mM', 0x0D, 0x0A
;welcomeG db 'yMyhM:        :MhyMy', 0x0D, 0x0A
;welcomeH db ' .yMM:        :MMy.', 0x0D, 0x0A
;welcomeI db '   .y-        -y.', 0x0D, 0x0A, 0

;Black	0
;Blue	1
;Green	2
;Cyan	3
;Red	4
;Magenta	5
;Brown	6
;Light Gray	7
;Dark Gray	8
;Light Blue	9
;Light Green	A
;Light Cyan	B
;Light Red	C
;Light Magenta	D
;Yellow	E
;White	F

buffer times 64 db 0
param times 64 db 0
scriptData times 1000 db 0
programCounter db dword 0
program db 0
temp times 64 db 0

prompt db '>', 0
cmd_hi db 'hi', 0
cmd_help db 'help', 0
cmd_gui db 'gui', 0
cmd_reboot db 'reboot', 0
cmd_cls db 'cls', 0
cmd_echo db 'echo', 0
cmd_time db 'time', 0
cmd_sound db 'sound', 0
cmd_getinput db 'getinput', 0
cmd_nl db 'nl', 0
cmd_script db 'script', 0
cmd_run db 'run', 0
cmd_pause db 'pause', 0
cmd_stop db 'stop', 0
cmd_startImage db 'startImage', 0
cmd_stopImage db 'stopImage', 0
;cmd_pushstr db 'pushstr', 0
;cmd_pushint db 'pushint', 0
cmd_push db 'push', 0
cmd_print db 'print', 0
cmd_add db 'add', 0
cmd_sub db 'sub', 0
cmd_printstr db 'printstr', 0
cmd_printint db 'printint', 0
cmd_converttoint db 'converttoint', 0
cmd_converttostr db 'converttostr', 0
cmd_jump db 'jump', 0
cmd_pushint db 'pushint', 0
cmd_jumpz db 'jumpz', 0
cmd_dnd db 'dnd', 0
cmd_setstr db 'setstr', 0
cmd_setint db 'setint', 0
cmd_dup db 'dup', 0
cmd_intptr db 'intptr', 0
badcommand db 'Bad command entered.', 0x0D, 0x0A, 0

newline db 0x0D, 0x0A, 0
hey db 'Hello World', 0x0D, 0x0A, 0
msg_help db 'RyanOS Commands: hi, help, test, reboot, cls, echo, time, sound, script, run, pause, stop, startImage, stopImage, getInput, pushstr, pushint, add, sub, printstr, converttoint, converttostr', 0x0D, 0x0A, 0
msg_script db 'Scripting Mode: type "." to stop', 0x0D, 0x0A, 0
msg_script_end db 'Leaving Scripting Mode!', 0x0D, 0x0A, 0
script_prompt db ':', 0
end db '.', 0
null db '', 0
heygraphic db 'Hello World', 0
dndgraphic db 'D&D', 0
dndname db 'Alaexander Adhaendior', 0
dndHealth db 'HP', 0
dndhp db 43
dndhpstrbuffer times 4 db 0
dndstr db 'Str: 11 (+0)', 0
dnddex db 'Dex: 13 (+1)', 0
dndcon db 'Con: 17 (+3)', 0
dndint db 'Int: 8  (-0)', 0
dndwis db 'Wis: 11 (+0)', 0
dndchr db 'Chr: 20 (+5)', 0
other db 'Other:', 0
dndac db 'AC: 15', 0
dndspd db 'Speed: 30', 0
dnddv db 'DarkVision: 60', 0
dndprof db 'Prof Bonus: +3', 0
dndinit db 'Init: +1', 0
dash db ':', 0
stats db 'Stats', 0
spells db 'Spells', 0
spellslots db 2
spellslotsstrbuffer times 4 db 0
luck db 'Luck', 0
luckpoints db 3
luckpointsstrbuffer times 4 db 0
notes db 'Notes', 0
apps db 'RyanOS Apps', 0
dndnotes1 db 'Attack +9', 0
dndnotes2 db '[+5(chr)+3(prof)+1(IPW)]', 0
dndnotes3 db 'Damage +6', 0
dndnotes4 db '[+5(chr)+1(IPW)]', 0
dndnotes5 db 'Polearm Master:', 0
dndnotes6 db 'Bonus melee with weapon end', 0
dndnotes7 db 'Opportinity when enemy comes 10ft', 0
dndnotes8 db 'Lucky:', 0
dndnotes9 db 'Reroll attack, check, saving throw', 0
dndnotes10 db 'Thirsting Blade:', 0
dndnotes11 db 'Attack twice', 0
dndnotes12 db 'Hexblades Curse:', 0
dndnotes13 db 'bonus choose 30ft creature', 0
dndnotes14 db '+3 damage, crit 19/20, +10hp killed', 0
dndnotes15 db 'Fey Ancestry adv on charmed, no sleep', 0
passwordmsg db 'Enter Password', 0
ryanos db 'RyanOS', 0
shellgraphic db 'Shell', 0
password db 'password', 0
times 10 db 10

mouse_status    db 0
mouse_delta_x   db 0
mouse_delta_y   db 0


get_getpasswordmsg db 'getpasswordmsg', 0
get_getdndhp db 'getdndhp', 0
get_getspellslots db 'getspellslots', 0
get_getluckpoints db 'getluckpoints', 0
get_getpassword db 'getpassword', 0

%macro print 1
  push si
  mov si, %1
  call print_string
  pop si
%endmacro

%macro input 1
  push di
  mov di, %1
  call get_string
  pop di
%endmacro

%macro cmpString 3
       mov si, %1
       mov di, %2
       call strcmp
       jc %3
%endmacro

%macro startVideo 0
  push ax
  push bx
  push es

  mov ah, 0x00     ; BIOS function to set video mode
  mov al, 0x13     ; Mode 13h (320x200, 256 colors)
  int 0x10         ; Call BIOS video interrupt
  
  mov bx, es
  mov ax, 0xA000   ; VGA memory segment
  mov es, ax       ; Set ES register to VGA memory segment

  pop es
  pop bx
  pop ax
%endmacro

%macro draw 2
  push ax
  push di 
  mov ax, %2
  mov di, %1
  call draw_pixel
  pop di
  pop ax
%endmacro

%macro lineY 3
  push di
  push ax
  push cx
  mov di, %1     ; X-coordinate
  mov ax, %2     ; Start Y-coordinate
  mov cx, %3    ; Final Y-coordinate
  call draw_line_y
  pop cx
  pop ax
  pop di
%endmacro

%macro lineX 3
  push di
  push ax
  push cx
  mov di, %1     ; X-coordinate
  mov ax, %2     ; Start Y-coordinate
  mov cx, %3    ; Final X-coordinate
  call draw_line_x
  pop cx
  pop ax
  pop di
%endmacro

%macro square 4
  lineY %1,%2,%4
  lineX %1,%4,%3
  lineY %3,%2,%4
  lineX %1,%2,%3
%endmacro

%macro endVideo 0
  push ax
  push bx
  push es

  ; Return to text mode (80x25)
  mov ah, 0x00     ; BIOS function to set video mode
  mov al, 0x03     ; Mode 03h is 80x25 text mode
  int 0x10         ; Call BIOS video interrupt
  mov es, bx

  pop es
  pop bx
  pop ax
%endmacro

%macro wait 1
  mov cx, %1
  call delay
%endmacro

%macro cls 0
  mov ah, 06h        ; Scroll up function
  mov al, 0          ; Number of lines to scroll (0 = clear entire window)
  mov bh, 07h        ; Attribute for blank lines (white text on black background)
  mov cx, 0          ; Top-left corner of the window (row=0, col=0)
  mov dx, 184Fh      ; Bottom-right corner of the window (row=24, col=79 for 80x25 mode)
  int 10h            ; Call BIOS
%endmacro

%macro command 3
  mov si, %1
  mov di, %2
  call cmpCommand
  jc %3
%endmacro

%macro checkbutton 5
  cmp ax, %1
  jl %5
  cmp si, %2
  jl %5
  cmp ax, %3
  jg %5
  cmp si, %4
  jg %5
%endmacro

%macro display 4
  push si
  push dx
  push bx

  mov dh, %1
  mov dl, %2
  mov si, %3
  mov bl, %4
  call print_graphic

  pop bx
  pop dx
  pop si
%endmacro

%macro password_state 2
  mov ah, 0x00
  int 0x16
  cmp al, %1
  je %2
  jmp .password
%endmacro

; %include 'intro.asm'

main:
  je .gui
  .nogui
  ;call animation
  ;startVideo
  print welcome

  .shell:
  ;mov byte [buffer], 0
  cmp byte [program], 0
  jne .interpreter
  print prompt
  ;print buffer
  input buffer
  jmp .userProcess

  .interpreter:
  mov si, [programCounter]
  ;mov si, 0
  call getScriptEnd
  mov [programCounter], si
  mov bx, scriptData
  add bx, si
  mov [buffer], bx
  ;print [buffer]
  ;mov ah, 0
  ;int 0x16
  jmp .scriptProcess

  .userProcess:
  command cmd_hi, buffer, .hello
  command cmd_help, buffer, .help
  command cmd_gui, buffer, .gui
  command cmd_reboot, buffer, .reboot
  command cmd_cls, buffer, .cls
  command cmd_echo, buffer, .echo
  command cmd_time, buffer, .time
  command cmd_sound, buffer, .sound
  command cmd_getinput, buffer, .getInput
  command cmd_nl, buffer, .nl
  command cmd_script, buffer, .script
  command cmd_run, buffer, .run
  command cmd_pause, buffer, .pause
  ;command cmd_startImage, buffer, .startImage
  ;command cmd_stopImage, buffer, .stopImage
  command cmd_print, buffer, .print
  command cmd_converttoint, buffer, .convertToInt
  command cmd_converttostr, buffer, .convertToStr
  command cmd_add, buffer, .add
  command cmd_sub, buffer, .sub
  command cmd_push, buffer, .push
  command cmd_pushint, buffer, .pushint
  command cmd_setstr, buffer, .setstr
  command cmd_setint, buffer, .setint
  command get_getpasswordmsg, buffer, .getpasswordmsg
  command get_getluckpoints, buffer, .getluckpoints
  command get_getspellslots, buffer, .getspellslots
  command get_getdndhp, buffer, .getdndhp
  command get_getpassword, buffer, .getpassword
  command cmd_dup, buffer, .dup
  command cmd_intptr, buffer, .intptr
  command null, buffer, .shell
  print badcommand
  jmp .shell

  .scriptProcess:
  command end, [buffer], .stop
  command cmd_hi, [buffer], .hello
  command cmd_help, [buffer], .help
  command cmd_gui, [buffer], .gui
  command cmd_reboot, [buffer], .reboot
  command cmd_cls, [buffer], .cls
  command cmd_echo, [buffer], .echo
  command cmd_time, [buffer], .time
  command cmd_sound, [buffer], .sound
  command cmd_getinput, [buffer], .getInput
  command cmd_nl, [buffer], .nl
  command cmd_script, [buffer], .script
  command cmd_run, [buffer], .run
  command cmd_pause, [buffer], .pause
  command cmd_stop, [buffer], .stop
  ;command cmd_startImage, [buffer], .startImage
  ;command cmd_stopImage, [buffer], .stopImage
  command cmd_print, [buffer], .print
  command cmd_converttoint, [buffer], .convertToInt
  command cmd_converttostr, [buffer], .convertToStr
  command cmd_add, [buffer], .add
  command cmd_sub, [buffer], .sub
  command cmd_push, [buffer], .push
  command cmd_jump, [buffer], .jump
  command cmd_pushint, [buffer], .pushint
  command cmd_jumpz, [buffer], .jumpz
  command cmd_setstr, [buffer], .setstr
  command cmd_setint, [buffer], .setint
  command get_getpasswordmsg, [buffer], .getpasswordmsg
  command get_getluckpoints, [buffer], .getluckpoints
  command get_getspellslots, [buffer], .getspellslots
  command get_getdndhp, [buffer], .getdndhp
  command get_getpassword, [buffer], .getpassword
  command cmd_dup, [buffer], .dup
  command cmd_intptr, [buffer], .intptr
  print badcommand
  jmp .shell
  

  .hello:
  print hey
  jmp .shell

  .help:
  print msg_help
  jmp .shell 

  .reboot:
  int 0x19
  jmp .shell

  .cls:
  cls
  jmp .nogui

  .echo:
  ;print echo_prompt
  ;input buffer
  mov di, param
  mov si, [di]
  call print_string
  print newline
  jmp .shell

  .time:
  mov ax, 4500
  mov cx, 5
  call play_sound
  mov ax, 3400
  mov cx, 2
  call play_sound
  mov ax, 3000
  mov cx, 5
  call play_sound
  mov ax, 3400
  mov cx, 3
  call play_sound
  mov ax, 3000
  mov cx, 5
  call play_sound
  jmp .shell

  .sound:
  ;print sound_prompt
  ;input buffer
  mov si, [param]
  call string_to_int
  ;mov ax, 2280    ; Frequency number (in decimal)
  mov cx, 10
  call play_sound
  jmp .shell

  .getInput:
  input param
  mov ax, param
  push ax
  jmp .shell

  .nl:
  print newline
  jmp .shell

  .script:
  mov dword [programCounter], 0
  print msg_script
  mov si, 0
  .script_loop:

  mov al, ':'
  mov ah, 0x0E
  int 0x10

  mov bx, scriptData
  add bx, si
  input bx

  cmp byte [scriptData+si], 0x2E
  je .script_end
  call getScriptEnd
  jmp .script_loop

  .script_end:
  print msg_script_end
  jmp .shell

  .run:
  mov byte [program], 1
  jmp .shell

  .stop:
  mov byte [program], 0
  mov byte [programCounter], 0
  jmp .shell

  .pause:
  mov si, [param]
  call string_to_int
  wait ax
  jmp .shell

  .print:
  pop si
  print si
  print newline
  jmp .shell

  .convertToInt:
  pop si
  call string_to_int
  push ax
  jmp .shell

  .convertToStr:
  pop ax
  mov di, param
  call IntToStr
  mov si, param
  push si
  jmp .shell

  .add:
  pop ax
  pop bx
  add ax, bx
  push ax
  jmp .shell

  .sub:
  pop ax
  pop bx
  sub ax, bx
  push ax
  jmp .shell

  .push:
  mov si, [param]
  mov di, temp
  call strcpy
  mov di, temp
  push di
  jmp .shell

  .pushint:
  mov si, [param]
  call string_to_int
  push ax
  jmp .shell
  
  .jump:
  pop ax
  mov [programCounter], ax
  jmp .shell

  .jumpz:
  pop ax
  pop bx
  cmp bx, 0
  je .jumpz_ok
  jmp .shell
  .jumpz_ok:
  mov [programCounter], ax
  jmp .shell

  .setstr:
  pop si
  pop di
  call strcpy
  jmp .shell

  .setint:
  pop si
  pop di
  mov [di], si
  jmp .shell

  .getpasswordmsg:
  push passwordmsg
  jmp .shell

  .getluckpoints:
  push luckpoints
  jmp .shell

  .getspellslots:
  push spellslots
  jmp .shell

  .getdndhp:
  push dndhp
  jmp .shell

  .getpassword:
  push password
  jmp .shell

  .dup:
  pop ax
  push ax
  push ax
  jmp .shell

  .intptr:
  pop si
  mov ax, [si]
  push ax
  jmp .shell

  %include 'gui.asm'


;=======================================================
;                    General Functions
;=======================================================


;=======================================================
;                    General Functions
;=======================================================

;--------------------
;   Print String
; Put address to start of string in SI
;--------------------
print_string:
  push ax
  push si
  .print_string_loop:
  lodsb        ; grab a byte from SI
  or al, al    ; logical or AL by itself
  jz .done     ; if the result is zero, get out
  mov ah, 0x0E
  int 0x10     ; otherwise, print out the character!
  jmp .print_string_loop
 .done:
  pop si
  pop ax
  ret
;--------------------

;--------------------
;  Get String Input
; Put address to start of buffer in DI
;--------------------
get_string:
  push ax
  push cx
  push dx
  push di
  xor cl, cl
  get_string_loop:
    mov ah, 0
    int 0x16    ; wait for keypress
    cmp al, 0x08 ; backspace pressed?
    je .backspace
    cmp al, 0x0D ; enter pressed?
    je .done
    cmp cl, 0x3F ; limit to 63 chars
    je get_string_loop
    mov ah, 0x0E
    int 0x10    ; print the character
    stosb       ; store character in buffer
    inc cl
    jmp get_string_loop
  .done:
    mov al, 0
    stosb       ; null-terminate the string
    mov ah, 0x0E
    mov al, 0x0D
    int 0x10
    mov al, 0x0A
    int 0x10    ; newline
    pop di
    pop dx
    pop cx
    pop ax
    ret
  .backspace:
    cmp cl, 0
    je get_string_loop
    dec di
    mov byte [di], 0
    dec cl
    mov ah, 0x0E
    mov al, 0x08
    int 10h
    mov al, ' '
    int 10h
    mov al, 0x08
    int 10h
    jmp get_string_loop
;--------------------

;--------------------
;  String Compare
;--------------------
strcmp:
  push ax
  push si
  push di
  .strcmp_loop:
  mov al, [si]
  mov bl, [di]
  cmp al, bl
  jne .notequal
  cmp al, 0
  je .done
  inc si
  inc di
  jmp .strcmp_loop
  .notequal:
  clc
  jmp .exit
  .done:
  stc
  .exit:
  pop di
  pop si
  pop ax
  ret
;--------------------

;--------------------
;   Draw Pixel
;--------------------
draw_pixel:
  push ax
  push di
  push cx
  push es
  mov cx, 320
  mul cx
  add di, ax
  ;mov al, 0x0F
  mov al, bl
  mov [es:di], al
  pop es
  pop cx
  pop di
  pop ax
  ret
;--------------------

;--------------------
;   Draw Line Y
;--------------------
draw_line_y:
  push ax
  push cx
  push dx
  push di
  .loop:
    cmp ax, cx
    je .done
    push ax
    call draw_pixel
    pop ax
    inc ax
    jmp .loop
  .done:
  pop di
  pop dx
  pop cx
  pop ax
  ret
;--------------------

;--------------------
;   Draw Line X
;--------------------
draw_line_x:
  push ax
  push cx
  push dx
  push di
  .loop:
    cmp di, cx
    jg .done
    push di
    call draw_pixel
    pop di
    inc di
    jmp .loop
  .done:
  pop di
  pop dx
  pop cx
  pop ax
  ret
;--------------------

;--------------------
;   Delay
;--------------------
delay:
  push ax
  push cx
  push dx
  mov ah, 0x86
  int 0x15
  pop dx
  pop cx
  pop ax
  ret
;--------------------

;--------------------
;   Play Sound
;--------------------
play_sound:
  push ax
  push cx
  mov al, 182
  out 43h, al
  out 42h, al
  mov al, ah
  out 42h, al
  in al, 61h
  or al, 3
  out 61h, al
  call delay
  in al, 61h
  and al, 0xFC
  out 61h, al
  pop cx
  pop ax
  ret
;--------------------



;--------------------
; Converts a null-terminated string to an integer
; Input: SI points to the string
; Output: AX contains the resulting integer
;--------------------
string_to_int:
  xor ax, ax            ; Clear AX (the result accumulator)
  xor bx, bx            ; Clear BX (used for working with the current digit)
    
  .string_loop:
  mov bl, [si]          ; Load the current character from the string (pointed by SI)
  cmp bl, 0             ; Check if it's the null terminator (end of string)
  je  .string_done       ; If end of string, we're done
    
  sub bl, '0'           ; Convert ASCII digit to integer (e.g., '3' -> 3)
  imul ax, ax, 10       ; Multiply the current result by 10 (shift left by one decimal place)
  add ax, bx            ; Add the current digit (in BL) to the result
    
  inc si                ; Move to the next character in the string
  jmp .string_loop       ; Repeat for the next character
    
  .string_done:
  ret                   ; Return, AX now contains the integer result


;-----------------------------------
; Compare Command
; Put command in si, input in di
; if input ends will null it sets flag
; if input end with space it copies rest of string to 'param'
;-----------------------------------
cmpCommand:
    mov al, [si]        ; Load a byte from String 1
    mov bl, [di]        ; Load a byte from String 2

  .check_end:
    cmp al, 0           ; Is String 1 at null terminator?
    je .check_space     ; If yes, check if String 2 is at space

    cmp bl, 0x20         ; Is String 2 at space terminator?
    je .check_null      ; If yes, check if String 1 is at null

    cmp al, bl          ; Compare current characters
    jne .not_equal      ; If not equal, exit with CF = 0

    inc si              ; Advance to next character in String 1
    inc di              ; Advance to next character in String 2
    mov al, [si]        ; Load next byte from String 1
    mov bl, [di]        ; Load next byte from String 2
    jmp .check_end      ; Repeat comparison

  .check_null:
    cmp al, 0           ; Is String 1 null-terminated?
    jne .not_equal      ; If not, strings are not equal
    stc                 ; Strings are equal, set CF = 1
    inc di
    mov [param], di
    ret

  .check_space:
    cmp bl, 20h         ; Is String 2 space-terminated?
    je .equal_with_param      ; If not, strings are not equal
    cmp bl, 0
    je .equal
    jmp .not_equal
    .equal_with_param:
    inc di
    mov [param], di
    .equal:
    stc                 ; Strings are equal, set CF = 1
    ret

  .not_equal:
    clc                 ; Strings are not equal, clear CF
    ret

getScriptEnd:
  cmp byte [scriptData+si], 0
  je .done
  inc si
  jmp getScriptEnd
 .done:
  inc si
  ret


;-----------------------------------
; IntToStr - Convert Integer to String
; Parameters:
;   AX - The integer to convert
;   DI - Pointer to the destination buffer
;-----------------------------------
IntToStr:
    push ax
    push bx
    push cx
    push dx

    mov bx, 10             ; Base 10 for decimal conversion
    mov cx, 0              ; Character count for digit extraction

    ; Check if AX is zero
    cmp ax, 0
    jne .convert_loop
    mov byte [di], '0'     ; Handle zero explicitly
    inc di
    jmp .terminate

    ; Convert number to string
    .convert_loop:
        xor dx, dx         ; Clear DX for division
        div bx             ; AX = AX / 10, DX = remainder
        push dx            ; Save remainder (digit)
        inc cx             ; Increment digit count
        or ax, ax          ; Check if AX is zero
        jne .convert_loop  ; Continue until AX = 0

    ; Write digits to the buffer
    .write_digits:
        pop dx             ; Get last digit from the stack
        add dl, '0'        ; Convert to ASCII
        mov [di], dl       ; Store in the buffer
        inc di             ; Move to the next position
        loop .write_digits ; Repeat for all digits

    .terminate:
        mov byte [di], 0   ; Null-terminate the string

    pop dx
    pop cx
    pop bx
    pop ax
    ret


;-----------------------------------------------------
; strcpy: Copies a null-terminated string
; Input: 
;   SI = Address of source string
;   DI = Address of destination buffer
; Output:
;   Destination buffer contains the copied string
; Registers used: AX, SI, DI
;-----------------------------------------------------
strcpy:
  push ax           ; Save used registers
  push si
  push di
  .copy_loop:
    lodsb           ; Load a byte from [SI] into AL and increment SI
    stosb           ; Store the byte from AL into [DI] and increment DI
    test al, al     ; Check if the byte is null (end of string)
    jnz .copy_loop  ; If not null, continue copying
  pop di            ; Restore registers
  pop si
  pop ax
  ret


; Coords X in ax Y in si
cursor:
  push ax
  push cx
  push dx
  push bx
  push si

  ;mov ax, 10
  ;mov si, ax
  mov dx, ax
  mov cx, si
  add dx, 5
  add cx, 10
  mov bl, 0x0F
  square ax,si, dx,cx
  mov bl, 0x07
  add ax, 1
  add si, 1
  sub dx, 1
  sub cx, 1
  square ax,si, dx,cx
  add ax, 1
  add si, 1
  sub dx, 1
  sub cx, 1
  square ax,si, dx,cx
  add ax, 1
  add si, 1
  sub dx, 1
  sub cx, 1
  square ax,si, dx,cx

  pop si
  pop bx
  pop dx
  pop cx
  pop ax
  ret


newcursor:
  push ax
  push cx
  push dx
  push bx
  push si

  mov bl, 0x03
  mov di, ax
  mov ax, si
  ;call draw_pixel

  push di
  push ax
  
  mov cx, ax
  ;mov di, ax
  ;mov ax, cx
  add cx, 8
  call draw_line_y
  pop ax
  pop di

  add ax, 1
  add di, 1
  call draw_pixel
  add ax, 1
  add di, 1
  call draw_pixel
  add ax, 1
  add di, 1
  call draw_pixel
  add ax, 1
  add di, 1
  call draw_pixel
  add ax, 1
  add di, 1
  call draw_pixel

  sub di, 1
  call draw_pixel
  sub di, 1
  call draw_pixel
  sub di, 1
  add ax, 1
  call draw_pixel
  sub di, 1
  add ax, 1
  call draw_pixel

  

  pop si
  pop bx
  pop dx
  pop cx
  pop ax
  ret


; Coords X in ax Y in si
clear_cursor:
  push ax
  push cx
  push dx
  push bx
  push si

  ;mov ax, 10
  ;mov si, ax
  mov dx, ax
  mov cx, si
  add dx, 5
  add cx, 10
  mov bl, 0x01
  square ax,si, dx,cx
  mov bl, 0x01
  add ax, 1
  add si, 1
  sub dx, 1
  sub cx, 1
  square ax,si, dx,cx
  add ax, 1
  add si, 1
  sub dx, 1
  sub cx, 1
  square ax,si, dx,cx
  add ax, 1
  add si, 1
  sub dx, 1
  sub cx, 1
  square ax,si, dx,cx

  pop si
  pop bx
  pop dx
  pop cx
  pop ax
  ret


;--------------------
;   Print graphic
; Put address to start of string in SI
; Put row in DH column in DL
;--------------------
print_graphic:
  push ax
  push si
  push bx
  .print_graphic_loop:
  ;push bx
  mov ah, 0x02
  mov bh, 0
  int 0x10 ;set cursor
  ;pop bx
  lodsb        ; grab a byte from SI
  or al, al    ; logical or AL by itself
  jz .done     ; if the result is zero, get out
  mov ah, 0x0a
  mov cx, 1
  ;mov bl, 0x1E
  int 0x10     ; otherwise, print out the character!
  inc dl ;inc column to print next char in
  jmp .print_graphic_loop
 .done:
  pop bx
  pop si
  pop ax
  ret
;--------------------

;replace black colour in bl
replace_black:
  push ax
  push es
  push di
  push cx
  push bx

  mov ax, 0xA000       ; VGA memory segment
  mov es, ax           ; Set ES to point to VGA memory
  xor di, di           ; Start at offset 0 (top-left pixel)
  mov cx, 64000        ; Total number of pixels (320 x 200 = 64000 bytes)
                        ; Process two pixels per iteration (CX = 32000)
  .replace_loop:
    mov al, byte es:[di]  ; Read the current pixel value
    cmp al, 0                 ; Check if it’s black (index 0)
    jne .skip_pixel            ; If not black, skip the replacement
    mov al, bl                 ; Set color to blue (index 1)
    mov byte es:[di], al  ; Write the new color back to memory

  .skip_pixel:
    inc di                    ; Move to the next pixel
    loop .replace_loop         ; Repeat for all pixels
  
  pop bx
  pop cx
  pop di
  pop es
  pop ax
  ret


;--------------------
;   Print graphic Slow
; Put address to start of string in SI
; Put row in DH column in DL
;--------------------
print_graphic_slow:
  push ax
  push si
  push bx
  .print_graphic_loop:
  ;push bx
  mov ah, 0x02
  mov bh, 0
  int 0x10 ;set cursor
  ;pop bx
  lodsb        ; grab a byte from SI
  or al, al    ; logical or AL by itself
  jz .done     ; if the result is zero, get out
  mov ah, 0x0a
  mov cx, 1
  ;mov bl, 0x1E
  int 0x10     ; otherwise, print out the character!
  inc dl ;inc column to print next char in
  wait 3
  jmp .print_graphic_loop
 .done:
  pop bx
  pop si
  pop ax
  ret
;--------------------