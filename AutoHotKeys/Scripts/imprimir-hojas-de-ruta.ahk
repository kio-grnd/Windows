; Script de AutoHotkey que se activa con F12

F12::
    ; Primer clic
	Sleep 1500 ;
    Click 1002, 475 ; Primer clic
    Sleep 2500 ; Espera 2.5 segundos
    Send, {Enter} ; Presiona Enter

    ; Segundo clic
	Sleep 1500 ;
    Click 1226, 469 ; Segundo clic
    Sleep 2500 ; Espera 2.5 segundos
    Send, {Enter} ; Presiona Enter
return

