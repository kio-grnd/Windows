; Definir URLs para cada navegador
firefox_urls := ["https://laplata.gob.ar", "https://youtube.com", "https://chatgpt.com"]
chrome_urls := ["https://example.com", "https://openai.com", "https://github.com"]

; Atajo para ejecutar el script con F1
F1::
{
    ; Cerrar todas las instancias de Firefox y Chrome
    Process, Close, firefox.exe
    Process, Close, chrome.exe
    Sleep, 1000 ; Esperar un momento para asegurarse de que los procesos se cierren completamente

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
