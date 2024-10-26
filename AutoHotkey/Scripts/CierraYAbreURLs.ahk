; Definir URLs para cada navegador
firefox_urls := ["https://laplata.gob.ar", "https://youtube.com", "https://chatgpt.com"]
chrome_urls := ["https://example.com", "https://openai.com", "https://github.com"]

; Título de la pestaña de Chrome que deseas mantener abierta
tituloPestanaMantener := "Página de Turnos La Plata"  ; Cambia esto al título de la pestaña que quieres conservar

; Atajo para ejecutar el script con F1
F1::
{
    ; Cerrar todas las instancias de Firefox
    Process, Close, firefox.exe
    Sleep, 1000 ; Esperar un momento para asegurarse de que Firefox se cierra completamente

    ; Obtener el ID de la ventana de Chrome que contiene el título especificado
    WinGet, ventanaMantener, ID, %tituloPestanaMantener% - Google Chrome

    ; Cerrar todas las ventanas de Chrome excepto la que coincide con el título especificado
    WinGet, listaVentanas, List, ahk_class Chrome_WidgetWin_1
    Loop, % listaVentanas
    {
        ventanaActual := listaVentanas%A_Index%
        if (ventanaActual != ventanaMantener)  ; Si la ventana no es la que queremos mantener abierta
        {
            WinClose, ahk_id %ventanaActual%  ; Cerrar la ventana
        }
    }

    ; Abrir URLs en Firefox
    Run, firefox.exe
    Sleep, 1000 ; Espera a que Firefox abra
    for each, url in firefox_urls
    {
        Run, firefox.exe -new-tab %url%
        Sleep, 500 ; Pausa entre cada pestaña
    }

    ; Abrir URLs en Chrome
    Run, chrome.exe
    Sleep, 1000 ; Espera a que Chrome abra
    for each, url in chrome_urls
    {
        Run, chrome.exe --new-tab %url%
        Sleep, 500 ; Pausa entre cada pestaña
    }

    return
}
