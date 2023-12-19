USE Integracion_Educa_Chile;
/*
stored procedures para ordenar una tabla
Ordenar una tabla según un campo específico y especificar si el orden es ascendente o descendente.
*/
DELIMITER //
CREATE PROCEDURE OrdenarTabla(
    IN tabla_nombre VARCHAR(100),
    IN campo_ordenamiento VARCHAR(100),
    IN orden VARCHAR(10)
)
BEGIN
    -- Variable para construir la consulta SQL dinámicamente
    SET @sql_query = CONCAT('SELECT * FROM ', tabla_nombre, ' ORDER BY ', campo_ordenamiento, ' ', orden);

    -- Ejecutar la consulta SQL dinámica
    PREPARE stmt FROM @sql_query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END //
DELIMITER ;
-- Uso del S.P. OrdenarTabla
CALL OrdenarTabla('Usuarios', 'nombre_usuario', 'ASC');

/*
Stored Procedure para gestionar registros en una tabla
Stored Procedure permite insertar o eliminar registros en una tabla específica del proyecto.
*/

DELIMITER //
CREATE PROCEDURE GestionarRegistros(
    IN accion VARCHAR(10),
    IN tabla_nombre VARCHAR(100),
    IN id_registro INT
)
BEGIN
    -- Variable para construir la consulta SQL dinámicamente
    SET @sql_query = '';

    -- Determinar la acción a realizar (insertar o eliminar)
    CASE accion
        WHEN 'INSERT' THEN
            SET @sql_query = CONCAT('INSERT INTO ', tabla_nombre, ' (nombre_usuario, apellido_usuario, correo_usuario, contraseña_usuario, rol_usuario) VALUES (''NuevoNombre'', ''NuevoApellido'', ''nuevo@correo.com'', ''nuevacontraseña'', ''NuevoRol'');');
        WHEN 'DELETE' THEN
            SET @sql_query = CONCAT('DELETE FROM ', tabla_nombre, ' WHERE id_usuario = ', id_registro, ';');
    END CASE;

    -- Ejecutar la consulta SQL dinámica
    PREPARE stmt FROM @sql_query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END //
DELIMITER ;

-- Uso del S.P. GestionarRegistros para insertar un nuevo registro
CALL GestionarRegistros('INSERT', 'Usuarios', NULL);
-- Uso del S.P. GestionarRegistros para eliminar un registro específico
CALL GestionarRegistros('DELETE', 'Usuarios', 11);  -- Cambia el valor 1 por el ID del registro que deseas eliminar
