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

/*jugadores con la misma nacionalidad que su entrenador*/

SELECT j.nombre as NombreJugador, j.nacionalidad as NacionalidadJugador,
e.nombre as NombreEntrenador, e.nacionalidad as NacionalidadEntrenador

FROM jugador as j
JOIN equipo as eq ON j.EquipoID=eq.ID
JOIN entrenador as e ON  eq.ID=e.EquipoID
WHERE j.nacionalidad = e.nacionalidad;


/*posicion mas asignada a jugadores*/

SELECT p.nombre, COUNT(jp.JugadorID) as NumeroJugadores
FROM jugadorposicion as jp 
JOIN posicion as p ON jp.posicionID =p.ID
GROUP BY p.nombre, p.id
ORDER BY COUNT(jp.JugadorID) DESC
LIMIT 1;

/*posicion menos asignada a jugadores*/

SELECT p.nombre, COUNT(jp.JugadorID) as NumeroJugadores
FROM jugadorposicion as jp 
JOIN posicion as p ON jp.posicionID =p.ID
GROUP BY p.nombre, p.id
ORDER BY COUNT(jp.JugadorID) ASC
LIMIT 1;


/*Entrenadores cuya nacionalidad no coincide con la de los jugadores de su equipo*/

SELECT e.Nombre, e.Nacionalidad, eq.Nombre AS Equipo
FROM Entrenador as e
JOIN Equipo as eq ON e.EquipoID = eq.ID
LEFT JOIN Jugador as j ON e.EquipoID = j.EquipoID AND e.Nacionalidad = j.Nacionalidad /*que no haya jugadores con esa nacionalidad en su equipo*/
WHERE j.ID IS NULL;

/*jugadores con posicion unica dentro de su equipo*/

SELECT j.id, j.Nombre, p.nombre as Posicion, eq.Nombre AS Equipo
FROM jugador as j
JOIN Equipo eq ON j.EquipoID = eq.ID
JOIN jugadorposicion as jp ON j.ID =jp.JugadorID
JOIN posicion as p ON jp.PosicionID=p.ID
WHERE (/*aqui compara cada jugador dentro de su equipo*/
    SELECT COUNT(*) 
    FROM JugadorPosicion jp2
    JOIN Jugador j2 ON jp2.JugadorID = j2.ID
    WHERE j2.EquipoID = j.EquipoID 
    AND jp2.PosicionID = jp.PosicionID
) = 1;

/*tipo de jugador segun sus posiciones*/
SELECT j.id, j.Nombre, eq.Nombre AS Equipo,
(SELECT COUNT(*) 
     FROM JugadorPosicion jp 
     WHERE jp.JugadorID = j.ID) AS NumeroPosiciones,
    CASE 
        WHEN (SELECT COUNT(*) FROM JugadorPosicion jp WHERE jp.JugadorID = j.ID) > 1 THEN 'Versátil'
        WHEN (SELECT COUNT(*) FROM JugadorPosicion jp WHERE jp.JugadorID = j.ID) =0 THEN 'Sin Posicion'
        ELSE 'Especialista'
    END AS Tipo
   
FROM Jugador j
JOIN Equipo eq ON j.EquipoID = eq.ID;