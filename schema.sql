CREATE TABLE temporadas (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    activa BOOLEAN DEFAULT TRUE
);


CREATE TABLE arbitros (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE equipos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE jugadores (
    id SERIAL PRIMARY KEY,
    equipo_id INT REFERENCES equipos(id),
    nombre VARCHAR(100) NOT NULL,
    numero_camisa INT
    edad INT
);

CREATE TABLE partidos (
    id SERIAL PRIMARY KEY,
    categoria_id INT REFERENCES temporadas(id),
    fecha_hora TIMESTAMP NOT NULL,
    arbitro_principal_id INT REFERENCES arbitros(id),
    arbitro_asistente_id INT REFERENCES arbitros(id),
    equipo_local_id INT REFERENCES equipos(id),
    equipo_visitante_id INT REFERENCES equipos(id),
    goles_local INT DEFAULT 0,
    goles_visitante INT DEFAULT 0
);

CREATE TABLE partido_jugadores (
    id SERIAL PRIMARY KEY,
    partido_id INT REFERENCES partidos(id) ON DELETE CASCADE,
    jugador_id INT REFERENCES jugadores(id),
    equipo_id INT REFERENCES equipos(id),
    es_titular BOOLEAN DEFAULT TRUE,
    tarjetas_amarillas INT DEFAULT 0,
    tarjetas_rojas INT DEFAULT 0,
    goles INT DEFAULT 0
);


INSERT INTO equipos (nombre)
VALUES 
	('Queer Goals'),
	('Valquirias'),
	('Good Vibes'),
	('All stares GV'),
	('TBD United'),
	('Unknown'),
	('F.C Lionesses'),
	('Bandidas F.C'),
	('Real Madrid'),
	('Fénix F.C'),
	('Lobas México');



INSERT INTO jugadores (equipo_id, nombre, numero_camisa, edad) VALUES
-- 1: Queer Goals
(1, 'Mariana López Hernández', 1, 26),
(1, 'Daniela Ramírez Cruz', 2, 24),
(1, 'Fernanda Castillo Morales', 3, 29),
(1, 'Andrea Sánchez Flores', 4, 22),
(1, 'Paola Jiménez Torres', 5, 31),
(1, 'Valeria Mendoza Ruiz', 6, 25),
(1, 'Karla Pérez García', 7, 28),
(1, 'Alejandra Reyes Luna', 8, 23),
(1, 'Gabriela Ortiz Vega', 10, 30),
(1, 'Sofía Navarro Díaz', 9, 21),
(1, 'Natalia Romero Silva', 11, 27),
(1, 'Brenda Aguilar Ríos', 12, 32),
(1, 'Ximena Flores Castro', 13, 20),
(1, 'Melissa Vargas León', 14, 34),
(1, 'Regina Torres Méndez', 15, 26),

-- 2: Valquirias
(2, 'Laura Martínez Silva', 1, 28),
(2, 'Mónica Herrera López', 2, 32),
(2, 'Itzel García Romero', 3, 24),
(2, 'Claudia Sánchez Rivas', 4, 35),
(2, 'Jimena Morales Cruz', 5, 22),
(2, 'Diana Flores Mendoza', 6, 27),
(2, 'Renata Pérez Castillo', 7, 21),
(2, 'Araceli Torres Jiménez', 8, 30),
(2, 'Lucía Ramírez Vega', 10, 25),
(2, 'Evelyn Reyes Navarro', 9, 29),
(2, 'Abril Castro Díaz', 11, 23),
(2, 'Karina León Aguilar', 12, 33),
(2, 'Fátima Ríos Hernández', 13, 20),
(2, 'Verónica Luna Ortiz', 14, 37),
(2, 'Natalia Méndez Ruiz', 15, 26),

-- 3: Good Vibes
(3, 'Alejandra Sánchez López', 1, 27),
(3, 'Blanca Andrade Pérez', 2, 31),
(3, 'Carolina Jiménez Ríos', 3, 24),
(3, 'Jessica Morales Vega', 4, 29),
(3, 'Paulina Castro Ruiz', 5, 22),
(3, 'Mariana Torres Flores', 6, 26),
(3, 'Andrea Navarro Cruz', 7, 30),
(3, 'Leslie Ramírez García', 8, 23),
(3, 'Gabriela Mendoza Silva', 10, 34),
(3, 'Valentina Romero Díaz', 9, 21),
(3, 'Michelle Reyes Hernández', 11, 28),
(3, 'Brenda Ortiz Luna', 12, 32),
(3, 'Fernanda Aguilar León', 13, 25),
(3, 'Sofía Herrera Méndez', 14, 20),
(3, 'Natalia Castillo Rivas', 15, 27),

-- 4: All stares GV (All Stars GV)
(4, 'Daniela Flores Martínez', 1, 25),
(4, 'Paola Ramírez López', 2, 29),
(4, 'Karla Mendoza Cruz', 3, 33),
(4, 'Ingrid Santana Moya', 4, 27),
(4, 'Ximena Torres García', 5, 22),
(4, 'Melissa Jiménez Ríos', 6, 30),
(4, 'Mariana Reyes Silva', 7, 24),
(4, 'Regina Navarro Pérez', 8, 21),
(4, 'Andrea Castillo Vega', 10, 28),
(4, 'Valeria Ortiz Hernández', 9, 26),
(4, 'Sofía León Morales', 11, 23),
(4, 'Fernanda Aguilar Ruiz', 12, 32),
(4, 'Lucía Herrera Díaz', 13, 20),
(4, 'Diana Romero Flores', 14, 35),
(4, 'Natalia Sánchez Luna', 15, 27),

-- 5: TBD United
(5, 'Gabriela Martínez Cruz', 1, 30),
(5, 'Fernanda López Ríos', 2, 24),
(5, 'Alejandra Torres Silva', 3, 28),
(5, 'Daniela Pérez Mendoza', 4, 22),
(5, 'Karina Romero Vega', 5, 34),
(5, 'Valeria Sánchez Ruiz', 6, 26),
(5, 'Mónica Castillo Flores', 7, 31),
(5, 'Itzel Navarro Hernández', 8, 23),
(5, 'Paola Aguilar Díaz', 10, 29),
(5, 'Regina Morales León', 9, 21),
(5, 'Jimena Reyes Ortiz', 11, 25),
(5, 'Andrea García Luna', 12, 33),
(5, 'Laura Méndez Castro', 13, 27),
(5, 'Evelyn Ríos Jiménez', 14, 36),
(5, 'Ximena Herrera Ramírez', 15, 20),

-- 6: Unknown
(6, 'Claudia Ramírez Flores', 1, 32),
(6, 'Natalia Pérez López', 2, 24),
(6, 'Melissa Torres Cruz', 3, 27),
(6, 'Diana Sánchez Vega', 4, 35),
(6, 'Abril Mendoza Ruiz', 5, 22),
(6, 'Valentina García Ríos', 6, 26),
(6, 'Jessica Navarro Silva', 7, 29),
(6, 'Fátima Romero Díaz', 8, 21),
(6, 'Mariana Ortiz Hernández', 10, 30),
(6, 'Karla Castillo Morales', 9, 25),
(6, 'Paola Herrera León', 11, 28),
(6, 'Renata Aguilar Méndez', 12, 23),
(6, 'Sofía Jiménez Luna', 13, 20),
(6, 'Andrea Flores Castro', 14, 34),
(6, 'Verónica Reyes Martínez', 15, 37),

-- 7: F.C Lionesses
(7, 'Jessica Aguilar Torres', 1, 29),
(7, 'Fernanda López García', 2, 25),
(7, 'Mariana Castillo Ruiz', 3, 31),
(7, 'Daniela Romero Cruz', 4, 22),
(7, 'Karla Sánchez Vega', 5, 27),
(7, 'Valeria Martínez Flores', 6, 24),
(7, 'Alejandra Mendoza Díaz', 7, 33),
(7, 'Ximena Ramírez Ortiz', 8, 21),
(7, 'Natalia Herrera Silva', 10, 28),
(7, 'Paola Reyes Luna', 9, 26),
(7, 'Regina Jiménez Ríos', 11, 23),
(7, 'Gabriela Navarro León', 12, 35),
(7, 'Lucía Pérez Morales', 13, 20),
(7, 'Evelyn Torres Hernández', 14, 30),
(7, 'Mónica Flores Castro', 15, 32),

-- 8: Bandidas F.C
(8, 'Andrea Morales Ríos', 1, 28),
(8, 'Esmeralda Sosa Martínez', 2, 30),
(8, 'Paulina García López', 3, 24),
(8, 'Diana Reyes Cruz', 4, 33),
(8, 'Jimena Navarro Vega', 5, 21),
(8, 'Karina Torres Silva', 6, 27),
(8, 'Fernanda Castillo Ruiz', 7, 25),
(8, 'Valeria Mendoza Flores', 8, 29),
(8, 'Brenda Ramírez Díaz', 10, 34),
(8, 'Sofía Aguilar Hernández', 9, 22),
(8, 'Mariana Pérez León', 11, 26),
(8, 'Regina Herrera Ortiz', 12, 23),
(8, 'Melissa Jiménez Luna', 13, 31),
(8, 'Claudia Romero Castro', 14, 36),
(8, 'Natalia Sánchez Méndez', 15, 20),

-- 9: Real Madrid
(9, 'Sofía Gallegos Hernández', 1, 27),
(9, 'Debora Gallegos Ruiz', 2, 29),
(9, 'Valeria Martínez Cruz', 3, 24),
(9, 'Mariana López Vega', 4, 32),
(9, 'Fernanda Torres Silva', 5, 25),
(9, 'Daniela Castillo Ríos', 6, 23),
(9, 'Andrea Reyes Flores', 7, 28),
(9, 'Paola Navarro Díaz', 8, 30),
(9, 'Karla Jiménez Morales', 10, 26),
(9, 'Ximena Mendoza León', 9, 21),
(9, 'Regina Sánchez Ortiz', 11, 22),
(9, 'Gabriela Herrera Luna', 12, 34),
(9, 'Melissa Ramírez Castro', 13, 31),
(9, 'Lucía Aguilar Pérez', 14, 20),
(9, 'Natalia Romero García', 15, 27),

-- 10: Fénix F.C
(10, 'Renata Flores Martínez', 1, 24),
(10, 'Alejandra Cruz López', 2, 28),
(10, 'Karina Ríos Hernández', 3, 33),
(10, 'Daniela Vega Torres', 4, 22),
(10, 'Fernanda Silva Morales', 5, 27),
(10, 'Valeria Ortiz Ramírez', 6, 25),
(10, 'Mariana León García', 7, 30),
(10, 'Andrea Luna Pérez', 8, 23),
(10, 'Melissa Castro Jiménez', 10, 29),
(10, 'Paola Díaz Romero', 9, 26),
(10, 'Natalia Flores Sánchez', 11, 21),
(10, 'Jimena Herrera Mendoza', 12, 32),
(10, 'Claudia Reyes Navarro', 13, 35),
(10, 'Sofía Torres Aguilar', 14, 20),
(10, 'Evelyn Martínez Ruiz', 15, 31),

-- 11: Lobas México
(11, 'Thalia Aguilera González', 1, 28),
(11, 'Olivia Pineda Martínez', 2, 25),
(11, 'Britani García López', 3, 27),
(11, 'Mariana Sánchez Cruz', 4, 23),
(11, 'Fernanda Reyes Flores', 5, 31),
(11, 'Valeria Torres Mendoza', 6, 24),
(11, 'Karla Jiménez Ruiz', 7, 29),
(11, 'Andrea Ramírez Silva', 8, 22),
(11, 'Daniela Navarro Ortiz', 10, 26),
(11, 'Regina Castillo Vega', 9, 21),
(11, 'Paola Herrera Díaz', 11, 30),
(11, 'Ximena Morales León', 12, 20),
(11, 'Gabriela Flores Ríos', 13, 33),
(11, 'Lucía Pérez Castro', 14, 35),
(11, 'Natalia Romero Luna', 15, 27);

-- Temporadas (IDs 1 al 4, siendo la 4ta edición la activa)
INSERT INTO temporadas (nombre, activa) VALUES
('1.ª Edición - Apertura', FALSE),
('2.ª Edición - Clausura', FALSE),
('3.ª Edición - Invierno', FALSE),
('4.ª Edición - Actual', TRUE);

-- Árbitros (IDs 1 al 8)
INSERT INTO arbitros (nombre) VALUES
('Camila Ortega Vázquez'),
('Marisol Domínguez Reyes'),
('Tania Castellanos Mora'),
('Beatriz Sandoval Fuentes'),
('Rocío Méndez Pacheco'),
('Adriana Cisneros Solís'),
('Patricia Villalobos Cruz'),
('Lorena Bustamante Peña');

INSERT INTO partidos (
    categoria_id, fecha_hora, arbitro_principal_id, arbitro_asistente_id, 
    equipo_local_id, equipo_visitante_id, goles_local, goles_visitante
) VALUES
-- Jornada 1
(4, '2026-10-04 09:00:00', 1, 2, 1, 2, 2, 1),  -- Partido 1: Queer Goals 2 - 1 Valquirias
(4, '2026-10-04 10:30:00', 3, 4, 3, 4, 1, 1),  -- Partido 2: Good Vibes 1 - 1 All stares GV
(4, '2026-10-04 12:00:00', 5, 6, 5, 6, 0, 3),  -- Partido 3: TBD United 0 - 3 Unknown
(4, '2026-10-04 13:30:00', 7, 8, 7, 8, 3, 2),  -- Partido 4: F.C Lionesses 3 - 2 Bandidas F.C
(4, '2026-10-04 15:00:00', 1, 3, 9, 10, 2, 0), -- Partido 5: Real Madrid 2 - 0 Fénix F.C

-- Jornada 2
(4, '2026-10-11 09:00:00', 2, 4, 11, 1, 1, 2), -- Partido 6: Lobas México 1 - 2 Queer Goals
(4, '2026-10-11 10:30:00', 6, 8, 2, 3, 0, 0),  -- Partido 7: Valquirias 0 - 0 Good Vibes
(4, '2026-10-11 12:00:00', 1, 5, 4, 5, 4, 1),  -- Partido 8: All stares GV 4 - 1 TBD United
(4, '2026-10-11 13:30:00', 3, 7, 6, 7, 1, 2),  -- Partido 9: Unknown 1 - 2 F.C Lionesses
(4, '2026-10-11 15:00:00', 4, 6, 8, 9, 1, 3);  -- Partido 10: Bandidas F.C 1 - 3 Real Madrid

-- Paso A: Poblar alineaciones completas (15 jugadoras por equipo en cada partido)
-- Las playeras 1 a 11 entran como titulares (TRUE) y 12 a 15 como suplentes (FALSE)
INSERT INTO partido_jugadores (partido_id, jugador_id, equipo_id, es_titular, tarjetas_amarillas, tarjetas_rojas, goles)
SELECT 
    p.id AS partido_id,
    j.id AS jugador_id,
    j.equipo_id,
    CASE WHEN j.numero_camisa <= 11 THEN TRUE ELSE FALSE END AS es_titular,
    0 AS tarjetas_amarillas,
    0 AS tarjetas_rojas,
    0 AS goles
FROM partidos p
JOIN jugadores j ON j.equipo_id IN (p.equipo_local_id, p.equipo_visitante_id);

-- Paso B: Asignar goles y tarjetas reales por partido para que cuadren los marcadores

-- Partido 1: Queer Goals (2) vs Valquirias (1)
UPDATE partido_jugadores SET goles = 1, tarjetas_amarillas = 1 WHERE partido_id = 1 AND jugador_id = 10; -- Sofía Navarro (Queer Goals)
UPDATE partido_jugadores SET goles = 1 WHERE partido_id = 1 AND jugador_id = 9;  -- Gabriela Ortiz (Queer Goals)
UPDATE partido_jugadores SET goles = 1 WHERE partido_id = 1 AND jugador_id = 25; -- Evelyn Reyes (Valquirias)
UPDATE partido_jugadores SET tarjetas_amarillas = 1 WHERE partido_id = 1 AND jugador_id = 19; -- Claudia Sánchez (Valquirias)

-- Partido 2: Good Vibes (1) vs All stares GV (1)
UPDATE partido_jugadores SET goles = 1 WHERE partido_id = 2 AND jugador_id = 40; -- Valentina Romero (Good Vibes)
UPDATE partido_jugadores SET goles = 1, tarjetas_amarillas = 1 WHERE partido_id = 2 AND jugador_id = 55; -- Valeria Ortiz (All stares GV)

-- Partido 3: TBD United (0) vs Unknown (3)
UPDATE partido_jugadores SET tarjetas_rojas = 1 WHERE partido_id = 3 AND jugador_id = 65; -- Karina Romero (TBD United)
UPDATE partido_jugadores SET goles = 2 WHERE partido_id = 3 AND jugador_id = 85; -- Karla Castillo (Unknown)
UPDATE partido_jugadores SET goles = 1 WHERE partido_id = 3 AND jugador_id = 84; -- Mariana Ortiz (Unknown)

-- Partido 4: F.C Lionesses (3) vs Bandidas F.C (2)
UPDATE partido_jugadores SET goles = 2 WHERE partido_id = 4 AND jugador_id = 100; -- Paola Reyes (Lionesses)
UPDATE partido_jugadores SET goles = 1 WHERE partido_id = 4 AND jugador_id = 101; -- Regina Jiménez (Lionesses)
UPDATE partido_jugadores SET goles = 2, tarjetas_amarillas = 1 WHERE partido_id = 4 AND jugador_id = 115; -- Sofía Aguilar (Bandidas)

-- Partido 5: Real Madrid (2) vs Fénix F.C (0)
UPDATE partido_jugadores SET goles = 1 WHERE partido_id = 5 AND jugador_id = 130; -- Ximena Mendoza (Real Madrid)
UPDATE partido_jugadores SET goles = 1 WHERE partido_id = 5 AND jugador_id = 129; -- Karla Jiménez (Real Madrid)
UPDATE partido_jugadores SET tarjetas_amarillas = 2, tarjetas_rojas = 1 WHERE partido_id = 5 AND jugador_id = 138; -- Karina Ríos (Fénix F.C)

-- Partido 6: Lobas México (1) vs Queer Goals (2)
UPDATE partido_jugadores SET goles = 1 WHERE partido_id = 6 AND jugador_id = 160; -- Regina Castillo (Lobas México)
UPDATE partido_jugadores SET goles = 2 WHERE partido_id = 6 AND jugador_id = 10;  -- Sofía Navarro (Queer Goals - goleadora del torneo)

-- Partido 7: Valquirias (0) vs Good Vibes (0)
UPDATE partido_jugadores SET tarjetas_amarillas = 1 WHERE partido_id = 7 AND jugador_id = 17; -- Mónica Herrera (Valquirias)
UPDATE partido_jugadores SET tarjetas_amarillas = 1 WHERE partido_id = 7 AND jugador_id = 33; -- Carolina Jiménez (Good Vibes)

-- Partido 8: All stares GV (4) vs TBD United (1)
UPDATE partido_jugadores SET goles = 2 WHERE partido_id = 8 AND jugador_id = 55; -- Valeria Ortiz (All stares GV)
UPDATE partido_jugadores SET goles = 1 WHERE partido_id = 8 AND jugador_id = 56; -- Sofía León (All stares GV)
UPDATE partido_jugadores SET goles = 1 WHERE partido_id = 8 AND jugador_id = 54; -- Andrea Castillo (All stares GV)
UPDATE partido_jugadores SET goles = 1 WHERE partido_id = 8 AND jugador_id = 70; -- Regina Morales (TBD United)

-- Partido 9: Unknown (1) vs F.C Lionesses (2)
UPDATE partido_jugadores SET goles = 1 WHERE partido_id = 9 AND jugador_id = 86;  -- Paola Herrera (Unknown)
UPDATE partido_jugadores SET goles = 1 WHERE partido_id = 9 AND jugador_id = 100; -- Paola Reyes (Lionesses)
UPDATE partido_jugadores SET goles = 1 WHERE partido_id = 9 AND jugador_id = 99;  -- Natalia Herrera (Lionesses)

-- Partido 10: Bandidas F.C (1) vs Real Madrid (3)
UPDATE partido_jugadores SET goles = 1 WHERE partido_id = 10 AND jugador_id = 116; -- Mariana Pérez (Bandidas)
UPDATE partido_jugadores SET goles = 2 WHERE partido_id = 10 AND jugador_id = 130; -- Ximena Mendoza (Real Madrid)
UPDATE partido_jugadores SET goles = 1 WHERE partido_id = 10 AND jugador_id = 131; -- Regina Sánchez (Real Madrid)