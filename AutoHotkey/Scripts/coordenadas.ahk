^!p:: ; Atajo de teclado Ctrl + Alt + P para mostrar las coordenadas
    CoordMode, Mouse, Screen ; Usa coordenadas de pantalla en lugar de ventana activa
    MouseGetPos, xpos, ypos ; Obtiene las coordenadas actuales del ratón
    MsgBox, Las coordenadas son: X%xpos% Y%ypos% ; Muestra las coordenadas en una ventana emergente
return
