F9::
    ; Obtiene una lista de las ventanas del Explorador
    WinGet, id, list, ahk_class CabinetWClass

    if (id = 0)  ; Verifica si hay ventanas abiertas
    {
        MsgBox, No hay ventanas del Explorador abiertas.
        return
    }

    Loop, %id% {
        this_id := id%A_Index%
        ; Cierra la ventana
        WinClose, ahk_id %this_id%
        ; Añade una pausa breve para permitir el cierre
        Sleep, 100
    }
return
