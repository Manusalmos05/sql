/*jugadores sin posicion*/
SELECT j.id, j.nombre, j.apellido
FROM jugador as j
LEFT JOIN jugadorposicion as jp ON j.id=jp.jugadorid
WHERE jp.posicionid is null; 
