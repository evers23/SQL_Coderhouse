-- Iniciar una transacción para la tabla Profesores
START TRANSACTION;

-- Eliminar registros de la tabla Profesores si existen
DELETE FROM Profesores WHERE id_profesor IN (1, 2, 3); 

-- Guardar un punto de guardado (Savepoint) después de la eliminación
SAVEPOINT despues_eliminar;

-- Sentencia Rollback comentada (sin ejecutar)
-- ROLLBACK TO despues_eliminar;

-- Sentencia Commit comentada (sin ejecutar)
-- COMMIT;

-- Iniciar una transacción para la tabla Cursos
START TRANSACTION;

-- Insertar ocho nuevos registros en la tabla Cursos
INSERT INTO Cursos (nombre_curso, descripcion_curso, profesor_id) VALUES
    ('Curso1', 'Descripción1', 1),
    ('Curso2', 'Descripción2', 2),
    ('Curso3', 'Descripción3', 3),
    ('Curso4', 'Descripción4', 4),
    ('Curso5', 'Descripción5', 5),
    ('Curso6', 'Descripción6', 6),
    ('Curso7', 'Descripción7', 7),
    ('Curso8', 'Descripción8', 8);

-- Guardar un punto de guardado (Savepoint) después de la inserción del registro #4
SAVEPOINT despues_insertar_4;

-- Guardar un punto de guardado (Savepoint) después de la inserción del registro #8
SAVEPOINT despues_insertar_8;

-- Sentencia para eliminar el Savepoint después de la inserción de los primeros 4 registros (comentada)
-- RELEASE SAVEPOINT despues_insertar_4;

-- Confirmar la transacción
COMMIT;