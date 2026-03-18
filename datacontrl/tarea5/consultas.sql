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

/*equipos con mas jugadores que el promedio*/

SELECT e.id, e.nombre, COUNT(j.ID) as TotalJugadores
FROM equipo as e
LEFT JOIN Jugador as j ON e.ID = j.EquipoID
GROUP BY e.id, e.nombre
HAVING COUNT(j.ID)> (
	SELECT AVG(JugadoresP)
    FROM (SELECT COUNT(id) as JugadoresP 
    FROM jugador
   GROUP BY equipoID)AS conteo);
/*-------------sin usar avg()-----------------------*/
USE futbol;
SELECT e.Nombre, COUNT(j.ID) AS TotalJugadores
FROM Equipo e
JOIN Jugador j ON e.ID = j.EquipoID
GROUP BY e.ID, e.Nombre
HAVING COUNT(j.ID) > (
    SELECT COUNT(ID) / COUNT(DISTINCT EquipoID) /*calculo manual(total de jugadores/equipos) parece mas estetico*/
    FROM Jugador);


/*entrenadores que entrenan en un pais diferente al suyo*/

USE futbol;
SELECT e.nombre, e.nacionalidad, l.pais as PaisEntrenamiento
FROM entrenador as e 
JOIN equipo as a ON e.EquipoID=a.ID
JOIN liga as l ON a.LigaID=l.ID
WHERE l.pais <> (
	CASE e.nacionalidad
		WHEN 'Español' THEN 'España'  /*para traducir gentilicio =pais*/
        WHEN 'Alemán' THEN 'Alemania'
        WHEN 'Francés' THEN 'Francia'
        WHEN 'Inglés' THEN 'Inglaterra'
        WHEN 'Italiano' THEN 'Italia'
        ELSE e.Nacionalidad 
    END);

