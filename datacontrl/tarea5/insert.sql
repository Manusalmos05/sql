/*generado con IA*/

DELIMITER //

CREATE PROCEDURE GenerarDatosFutbol()
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE var_liga_id INT;
    DECLARE var_equipo_id INT;
    DECLARE var_jugador_id INT;

    -- 1. Insertar Ligas
    INSERT IGNORE INTO Liga (Nombre, Pais, EquiposMax) VALUES 
    ('La Liga', 'España', 20), ('Premier League', 'Inglaterra', 20), 
    ('Serie A', 'Italia', 20), ('Bundesliga', 'Alemania', 18), ('Ligue 1', 'Francia', 18);

    -- 2. Insertar Posiciones estándar
    INSERT IGNORE INTO Posicion (Nombre) VALUES 
    ('Portero'), ('Defensa Central'), ('Lateral'), ('Mediocentro'), ('Extremo'), ('Delantero');

    -- 3. Insertar 20 Equipos repartidos en las ligas
    WHILE i <= 20 DO
        SET var_liga_id = (SELECT ID FROM Liga ORDER BY RAND() LIMIT 1);
        INSERT IGNORE INTO Equipo (Nombre, LigaID) 
        VALUES (CONCAT('Equipo_', i), var_liga_id);
        SET i = i + 1;
    END WHILE;

    -- 4. Insertar 20 Entrenadores (uno por equipo para cumplir el UNIQUE)
    SET i = 1;
    WHILE i <= 20 DO
        INSERT IGNORE INTO Entrenador (Nombre, Apellido, Nacionalidad, EquipoID)
        VALUES (
            CONCAT('Entrenador_', i), 
            CONCAT('Apellido_', i), 
            ELT(FLOOR(1 + RAND() * 5), 'Español', 'Argentino', 'Brasilero', 'Alemán', 'Francés'),
            i
        );
        SET i = i + 1;
    END WHILE;

    -- 5. Insertar 200 Jugadores con aleatoriedad
    SET i = 1;
    WHILE i <= 200 DO
        -- Equipo aleatorio (algunos podrían quedar con más jugadores que otros)
        SET var_equipo_id = (SELECT ID FROM Equipo ORDER BY RAND() LIMIT 1);
        
        INSERT INTO Jugador (Nombre, Apellido, Nacionalidad, EquipoID)
        VALUES (
            CONCAT('Jugador_', i), 
            CONCAT('López_', i), 
            ELT(FLOOR(1 + RAND() * 8), 'Uruguayo', 'Belga', 'Portugués', 'Chileno', 'Mexicano', 'Inglés', 'Italiano', 'Holandés'),
            var_equipo_id
        );
        SET var_jugador_id = LAST_INSERT_ID();

        -- ASIGNACIÓN DE POSICIÓN (Condición: Algunos no tienen posición)
        -- Solo asignamos posición al 70% de los jugadores (RAND() > 0.3)
        IF RAND() > 0.3 THEN
            INSERT INTO JugadorPosicion (JugadorID, PosicionID)
            VALUES (var_jugador_id, (SELECT ID FROM Posicion ORDER BY RAND() LIMIT 1));
        END IF;

        SET i = i + 1;
    END WHILE;
END //

DELIMITER ;

-- Ejecutar el generador
CALL GenerarDatosFutbol();

-- Borrar el procedimiento después de usarlo (opcional)
DROP PROCEDURE IF EXISTS GenerarDatosFutbol;
