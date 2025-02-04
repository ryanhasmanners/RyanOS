  .gui:
  startVideo
  ;.guiactive:
  push ax
  push es
  push di
  push cx
  push dx
  push bx
  push si

  .login:
  mov ax, 0xA000         ; Set VGA segment
  mov es, ax             ; Point ES to VGA memory
  xor di, di             ; Start at offset 0
  mov al, 7              ; Background color (blue in this example)
  mov cx, 64000          ; 320 * 200 pixels (1 byte per pixel)
  rep stosb              ; Fill VGA memory with AL

  mov dh, 8
  mov dl, 18
  mov si, ryanos
  mov bl, 0x03
  call print_graphic_slow

  mov bl, 0x00
  square 143,63, 192,72
  mov bl, 0x03
  square 142,62, 193,73
  square 141,61, 194,74

  mov dh, 11
  mov dl, 14
  mov si, passwordmsg
  mov bl, 0x04
  call print_graphic

  mov bl, 7
  call replace_black

  mov dh, 8
  mov dl, 18
  mov si, ryanos
  mov bl, 0x03
  call print_graphic

  mov bl, 0x00
  square 143,63, 192,72
  mov bl, 0x03
  square 142,62, 193,73
  square 141,61, 194,74

  .password_check:
  mov si, password
  .password_check_loop:
  mov ah, 0x00
  int 0x16
  mov bl, al
  lodsb
  cmp al, bl
  jne .password_check

  mov al, [si]
  cmp al, 0
  je .password_check_done
  jmp .password_check_loop
  .password_check_done:

  .guiactive:
  mov al, 0xA8
  out 0x64, al

  call wait_write
  mov al, 0xD4
  out 0x64, al
  call wait_write
  mov al, 0xF4
  out 0x60, al

  mov ax, 0xA000         ; Set VGA segment
  mov es, ax             ; Point ES to VGA memory
  xor di, di             ; Start at offset 0
  mov al, 1              ; Background color (blue in this example)
  mov cx, 64000          ; 320 * 200 pixels (1 byte per pixel)
  rep stosb              ; Fill VGA memory with AL

  mov ax, 0
  mov si, 0
  call newcursor

  .guiscreen:
  push ax
  push si

  mov dh, 1
  mov dl, 15
  mov si, apps
  mov bl, 0x03
  call print_graphic

  mov bl, 0x00
  square 119,7, 208,16
  mov bl, 0x03
  square 118,6, 209,17
  square 117,5, 210,18

  mov dh, 5
  mov dl, 1
  mov si, dndgraphic
  mov bl, 0x03
  call print_graphic

  mov bl, 0x00
  square 8,39, 32, 48

  mov dh, 7
  mov dl, 1
  mov si, notes
  mov bl, 0x03
  call print_graphic

  mov bl, 0x00
  square 7,55, 47, 64

  mov dh, 9
  mov dl, 1
  mov si, shellgraphic
  mov bl, 0x03
  call print_graphic

  mov bl, 0x00
  square 7,71, 47, 80

  pop si
  pop ax
  push ax
  push si

  ;DND Button
  checkbutton 8,39,32,48, .dndnotHover

  .dndHover:
  mov bl, 0x02
  square 7,38, 33,49
  square 6,37, 34,50
  jmp .dndHoverCheckEnd

  .dndnotHover:
  mov bl, 0x0f
  square 7,38, 33,49
  square 6,37, 34,50

  .dndHoverCheckEnd:
  ;pop si
  ;pop ax
  ;call newcursor

  ;Notes Button
  checkbutton 7,55,47,64, .notesnotHover

  .notesHover:
  mov bl, 0x02
  square 6,54, 48,65
  square 5,53, 49,66
  jmp .notesHoverCheckEnd

  .notesnotHover:
  mov bl, 0x0f
  square 6,54, 48,65
  square 5,53, 49,66

  .notesHoverCheckEnd:
  ;pop si
  ;pop ax
  ;call newcursor
  ;jmp .guiloop

  checkbutton 7,61,47,80, .shellnotHover

  .shellHover:
  mov bl, 0x02
  square 6,70, 48,81
  square 5,69, 49,82
  jmp .shellHoverCheckEnd

  .shellnotHover:
  mov bl, 0x0f
  square 6,70, 48,81
  square 5,69, 49,82

  .shellHoverCheckEnd:
  pop si
  pop ax
  call newcursor
  ;jmp .guiloop

  .guiloop:
  push ax
  ; Wait for and read 3 bytes of mouse data
  call wait_read
  in al, 0x60             ; Read status byte
  mov [mouse_status], al

  call wait_read
  in al, 0x60             ; Read Delta X
  mov [mouse_delta_x], al

  call wait_read
  in al, 0x60             ; Read Delta Y
  mov [mouse_delta_y], al

  ; push di
  ; push si
  ; push ax
  ; push dx
  ; mov ax, [mouse_status]
  ; mov di, param
  ; call IntToStr
  ; mov si, param
  ; mov dx, 0
  ; call print_graphic
  ; pop dx
  ; pop ax
  ; pop si
  ; pop di

  mov al, [mouse_delta_x]
  cmp al, 0
  jg .right
  jl .left

  mov al, [mouse_delta_y]
  cmp al, 0
  jl .down
  jg .up

  mov ax, [mouse_status]
  cmp ax, 9
  je .click

  mov ax, [mouse_status]
  cmp ax, 10
  je .guiend

  pop ax
  jmp .guiloop

  ;pop ax
  ;jmp .guiloop

  .right:
  pop ax
  call clear_cursor
  add ax, 4
  call newcursor
  jmp .guiscreen

  .left:
  pop ax
  call clear_cursor
  sub ax, 4
  call newcursor
  jmp .guiscreen

  .up:
  pop ax
  call clear_cursor
  sub si, 5
  call newcursor
  jmp .guiscreen

  .down:
  pop ax
  call clear_cursor
  add si, 5
  call newcursor
  jmp .guiscreen

  .click:
  pop ax

  ;checking for dnd
  checkbutton 8,39,32,48, .checkNotes
  push ax
  call .dnd
  pop ax
  jmp .clicked

  .checkNotes:
  checkbutton 7,55,47,64, .checkShell
  push ax
  call .notesWindow
  pop ax
  jmp .clicked

  .checkShell:
  checkbutton 7,61,47,80, .clickend
  endVideo
  pop si
  pop bx
  pop dx
  pop cx
  pop di
  pop es
  pop ax
  jmp .nogui

  .clicked:
  jmp .guiactive

  .clickend:
  jmp .guiscreen

  .guiend:
  pop ax
  jmp .login

  .dnd:
  mov ax, 0xA000         ; Set VGA segment
  mov es, ax             ; Point ES to VGA memory
  xor di, di             ; Start at offset 0
  mov al, 0x09              ; Background color (blue in this example)
  mov cx, 64000          ; 320 * 200 pixels (1 byte per pixel)
  rep stosb              ; Fill VGA memory with AL

  display 3,1, stats, 0x0e
  display 5,1, dndstr, 0x0f
  display 7,1, dnddex, 0x0f
  display 9,1, dndcon, 0x0f
  display 11,1, dndint, 0x0f
  display 13,1, dndwis, 0x0f
  display 15,1, dndchr, 0x0f

  display 17,1, other, 0x0c
  display 19,1, dndac, 0x0f
  display 20,1, dndspd, 0x0f
  display 21,1, dnddv, 0x0f
  display 22,1, dndprof, 0x0f
  display 23,1, dndinit, 0x0f

  .dndloop:
  display 5,17, dndHealth, 0x0a
  display 5,20, dash, 0x0f
  mov ax, [dndhp]
  mov di, [dndhpstrbuffer]
  call IntToStr
  display 5,22, [dndhpstrbuffer], 0x0f

  display 7,14, spells, 0x0a
  display 7,20, dash, 0x0f
  mov ax, [spellslots]
  mov di, [spellslotsstrbuffer]
  call IntToStr
  display 7,22, [spellslotsstrbuffer], 0x0f

  display 9,15, luck, 0x0a
  display 9,20, dash, 0x0f
  mov ax, [luckpoints]
  mov di, [luckpointsstrbuffer]
  call IntToStr
  display 9,22, [luckpointsstrbuffer], 0x0f
   
  mov bl, 9
  call replace_black

  display 1,10, dndname, 0x03
  mov bl, 0x00
  square 79,7, 248,16
  mov bl, 0x03
  square 78,6, 249,17
  square 77,5, 250,18

  mov ah, 0x00
  int 0x16
  cmp al, 'p'
  je .hpinc
  cmp al, 'o'
  je .hpdec
  cmp al, 'l'
  je .ssinc
  cmp al, 'k'
  je .ssdec
  cmp al, 'm'
  je .lpinc
  cmp al, 'n'
  je .lpdec
  cmp al, 'q'
  je .dndloopend
  jmp .dndloop
  
  .hpinc:
  mov ax, [dndhp]
  inc ax
  mov [dndhp], ax
  jmp .dndloop

  .hpdec:
  mov ax, [dndhp]
  dec ax
  mov [dndhp], ax
  jmp .dndloop

  .ssinc:
  mov ax, [spellslots]
  inc ax
  mov [spellslots], ax
  jmp .dndloop

  .ssdec:
  mov ax, [spellslots]
  dec ax
  mov [spellslots], ax
  jmp .dndloop

  .lpinc:
  mov ax, [luckpoints]
  inc ax
  mov [luckpoints], ax
  jmp .dndloop

  .lpdec:
  mov ax, [luckpoints]
  dec ax
  mov [luckpoints], ax
  jmp .dndloop

  .dndloopend:
  ret

  .notesWindow:
  mov ax, 0xA000         ; Set VGA segment
  mov es, ax             ; Point ES to VGA memory
  xor di, di             ; Start at offset 0
  mov al, 0x09              ; Background color (blue in this example)
  mov cx, 64000          ; 320 * 200 pixels (1 byte per pixel)
  rep stosb              ; Fill VGA memory with AL
  

  display 3,1, dndnotes1, 0x0f
  display 4,1, dndnotes2, 0x0f
  display 6,1, dndnotes3, 0x0f
  display 7,1, dndnotes4, 0x0f
  display 9,1, dndnotes5, 0x0f
  display 10,1, dndnotes6, 0x0f
  display 11,1, dndnotes7, 0x0f
  display 13,1, dndnotes8, 0x0f
  display 14,1, dndnotes9, 0x0f
  display 16,1, dndnotes10, 0x0f
  display 17,1, dndnotes11, 0x0f
  display 19,1, dndnotes12, 0x0f
  display 20,1, dndnotes13, 0x0f
  display 21,1, dndnotes14, 0x0f
  display 23,1, dndnotes15, 0x0f
  mov bl, 9
  call replace_black

  display 1,18, notes, 0x03
  mov bl, 0x00
  square 143,7, 183,16
  mov bl, 0x03
  square 142,6, 184,17
  square 141,5, 185,18

  mov ah, 0x00
  int 0x16
  ret


wait_read:
  in al, 0x64             ; Read status register
  test al, 1              ; Check if output buffer is full
  jz wait_read
  ret

wait_write:
  in al, 0x64             ; Read status register
  test al, 2              ; Check if input buffer is empty
  jnz wait_write
  ret