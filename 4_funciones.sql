USE Integracion_Educa_Chile;
/*
Funciones: CalcularPromedioCalificacionesEstudiante
Descripción: Calcula el promedio de calificaciones para un estudiante dado.
*/
DELIMITER //
CREATE FUNCTION CalcularPromedioCalificacionesEstudiante(estudiante_id_param INT) RETURNS DECIMAL(5, 2)
DETERMINISTIC
BEGIN
    DECLARE promedio DECIMAL(5, 2);
    -- Utilizando INNER JOIN para obtener calificaciones del estudiante específico
    SELECT AVG(calificacion_curso) INTO promedio
    FROM Calificaciones AS cal
    INNER JOIN Estudiantes AS est ON cal.estudiante_id = est.id_estudiante
    WHERE est.id_estudiante = estudiante_id_param;
    RETURN promedio;
END //
DELIMITER ;
-- Calcular el promedio de calificaciones segun tus necesidades
SELECT CalcularPromedioCalificacionesEstudiante(2) AS PromedioCalificacionesEstudiante;

/*
-- Crear función para obtener el total de notificaciones de un tipo específico
-- Obtener el total de notificaciones de tipo 'aviso importante'
*/
DELIMITER //
CREATE FUNCTION ObtenerTotalNotificacionesPorTipo(tipo_notificacion_param VARCHAR(100)) RETURNS INT
DETERMINISTIC
BEGIN
    -- Variable para almacenar el total de notificaciones
    DECLARE total INT;

    -- Utilizar COUNT para contar el número de notificaciones del tipo específico
    SELECT COUNT(*) INTO total
    FROM Notificaciones
    WHERE tipo_notificacion = tipo_notificacion_param;

    -- Devolver el total de notificaciones
    RETURN total;
END //
DELIMITER ;
-- Puedes cambiar el tipo de notificación según tus necesidades
SELECT ObtenerTotalNotificacionesPorTipo('aviso importante') AS TotalAvisosImportantes;