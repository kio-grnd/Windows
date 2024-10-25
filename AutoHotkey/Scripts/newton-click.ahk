#Persistent
#SingleInstance Force

; Tecla de activación (F11) para copiar URL de Chrome y pegarla en Firefox
F11::
{
    ; Selecciona Chrome
    IfWinExist ahk_class Chrome_WidgetWin_1
    {
        ; Copia la URL de Chrome (Ctrl+L para seleccionar la barra de direcciones y Ctrl+C para copiar)
        WinActivate
        Send, ^l
        Sleep, 300  ; Tiempo para seleccionar la barra de direcciones
        Send, ^c
        Sleep, 300  ; Tiempo para copiar

        ; Abre Firefox (o selecciona si ya está abierto)
        IfWinExist ahk_class MozillaWindowClass
        {
            WinActivate
        }
        else
        {
            Run, firefox.exe
            Sleep, 2000  ; Espera más tiempo para que Firefox cargue
        }

        ; Espera hasta que Firefox esté activo
        WinWaitActive ahk_class MozillaWindowClass

        ; Pega la URL en la barra de direcciones de Firefox y presiona Enter
        Send, ^l
        Sleep, 300  ; Tiempo para seleccionar la barra de direcciones en Firefox
        Send, ^v
        Sleep, 300  ; Tiempo para pegar la URL
        Send, {Enter}

        ; Espera un momento y hace clic en las coordenadas específicas
        Sleep, 500  ; Espera para que cargue la página
        CoordMode, Mouse, Screen  ; Define el modo de coordenadas en pantalla completa
        Click, 21, 873  ; Haz clic en las coordenadas (500, 300) (modificar con las coordenadas reales)
    }
    else
    {
        MsgBox, No se pudo encontrar Chrome.
    }
}
return

; Tecla de activación (F12) para copiar URL de Firefox y pegarla en Chrome
F12::
{
    ; Selecciona Firefox
    IfWinExist ahk_class MozillaWindowClass
    {
        WinActivate
        ; Copia la URL de Firefox
        Send, ^l
        Sleep, 300  ; Tiempo para seleccionar la barra de direcciones
        Send, ^c
        Sleep, 300  ; Tiempo para copiar

        ; Vuelve a Chrome
        IfWinExist ahk_class Chrome_WidgetWin_1
        {
            WinActivate
        }
        else
        {
            Run, chrome.exe
            Sleep, 2000  ; Espera más tiempo para que Chrome cargue
        }

        ; Espera hasta que Chrome esté activo
        WinWaitActive ahk_class Chrome_WidgetWin_1

        ; Pega la URL en la barra de direcciones de Chrome y presiona Enter
        Send, ^l
        Sleep, 300  ; Tiempo para seleccionar la barra de direcciones en Chrome
        Send, ^v
        Sleep, 300  ; Tiempo para pegar la URL
        Send, {Enter}
    }
    else
    {
        MsgBox, No se pudo encontrar Firefox.
    }
}
return
