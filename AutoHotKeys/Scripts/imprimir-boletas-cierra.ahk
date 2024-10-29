F10:: ; Asigna F10 para ejecutar el script
    Click, 1296, 144 ; Hace clic en las coordenadas especificadas
    Sleep, 1500 ; Espera 1.5 segundos (1500 milisegundos)
    Send, {Enter} ; Envía la tecla Enter
    Sleep, 500 ; Espera 0.5 segundos para asegurar que se ejecute el Enter
    Send, ^w ; Cierra la pestaña activa con Ctrl + W
return

