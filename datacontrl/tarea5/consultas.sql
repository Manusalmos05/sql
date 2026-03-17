/*jugadores sin posicion*/
SELECT j.id, j.nombre, j.apellido
FROM jugador as j
LEFT JOIN jugadorposicion as jp ON j.id=jp.jugadorid
WHERE jp.posicionid is null; 


/*Equipo con mas jugadores*/
SELECT e.ID, e.nombre, COUNT(DISTINCT j.id) as NumeroJugadores
FROM jugador as j
JOIN equipo as e ON j.equipoID= e.ID
GROUP BY e.nombre, e.ID
ORDER BY NumeroJugadores DESC
LIMIT 1;

/*jugadores por cada liga*/
SELECT l.ID, l.Nombre, COUNT(j.ID) as NumeroJugadores
FROM Liga as l
LEFT JOIN Equipo as e ON l.ID = e.LigaID
LEFT JOIN Jugador as j ON e.ID = j.EquipoID
GROUP BY l.ID, l.Nombre
ORDER BY NumeroJugadores DESC;

