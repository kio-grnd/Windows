^u:: ; Ctrl + U activa la acción
    ; Copiar la URL actual al portapapeles
    Send, ^l ; Selecciona la barra de direcciones del navegador
    Sleep, 100 ; Espera un poco para asegurar la selección
    Send, ^c ; Copia al portapapeles
    ClipWait, 2 ; Espera a que el contenido esté en el portapapeles

    ; Abre o crea el archivo de texto y escribe la URL en una nueva línea
    FileAppend, %Clipboard%`n, %A_Desktop%\urls.txt

    ; Mensaje de confirmación (opcional)
    MsgBox, La URL se ha copiado y guardado en urls.txt

    Return
