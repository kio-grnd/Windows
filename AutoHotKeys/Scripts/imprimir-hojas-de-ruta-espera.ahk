F12::
    ; Primer clic
    Sleep 1500
    Click 1002, 475 ; Primer clic
    WaitForDialog() ; Espera hasta que el cuadro de diálogo esté listo
    Send, {Enter} ; Presiona Enter

    ; Segundo clic
    Sleep 1500
    Click 1226, 469 ; Segundo clic
    WaitForDialog() ; Espera hasta que el cuadro de diálogo esté listo
    Send, {Enter} ; Presiona Enter
return

WaitForDialog() {
    ; Espera hasta que el cuadro de diálogo de impresión esté listo, con un límite de tiempo
    Timeout := 10000 ; 10 segundos de espera máxima
    StartTime := A_TickCount
    while (A_TickCount - StartTime < Timeout) {
        if WinActive("A") ; Verifica si hay una ventana activa (modifícala si tienes el título específico del cuadro de diálogo)
        {
            Sleep 500 ; Espera corta para verificar si está listo
            return
        }
        Sleep 100 ; Espera antes de intentar de nuevo
    }
    MsgBox, "El cuadro de diálogo de impresión no apareció a tiempo."
}
