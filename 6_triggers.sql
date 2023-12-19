/*
 Triggers: En esta tabla se utiliza para registrar acciones realizadas en la tabla Usuarios.
 SHOW TRIGGERS;
 DROP TRIGGER IF EXISTS After_insert_usuarios;
*/
-- Tabla de Log para Usuarios (Log_Usuarios):
CREATE TABLE IF NOT EXISTS Log_Usuarios (
    id_log INT AUTO_INCREMENT PRIMARY KEY,
    accion_realizada VARCHAR(50),
    usuario_modificador VARCHAR(255),
    fecha_modificacion DATE,
    hora_modificacion TIME
);

/*
 Este trigger se activa antes de que se realice una inserción en la tabla Usuarios.
*/
-- Trigger BEFORE para la tabla Usuarios (before_insert_usuarios):
DELIMITER //
CREATE TRIGGER before_insert_usuarios
BEFORE INSERT ON Usuarios
FOR EACH ROW
BEGIN
    -- Registra la información antes de la inserción
    INSERT INTO Log_Usuarios ( accion_realizada, usuario_modificador, fecha_modificacion, hora_modificacion)
    VALUES ( 'INSERT BEFORE USUARIOS', CURRENT_USER(), CURRENT_DATE(), CURRENT_TIME());
END;
//
DELIMITER ;

/*
  Este trigger se activa después de una inserción en la tabla Usuarios.
  Se puede realizar acciones adicionales aquí si es necesario.
*/
-- Trigger AFTER para la tabla Usuarios (after_insert_usuarios):
DELIMITER //
CREATE TRIGGER after_insert_usuarios
AFTER INSERT ON Usuarios
FOR EACH ROW
BEGIN
    -- Insertar información en una tabla de registro (log)
    INSERT INTO Log_Usuarios ( accion_realizada, usuario_modificador, fecha_modificacion, hora_modificacion)
    VALUES ( 'INSERT AFTER USUARIOS', CURRENT_USER(), CURRENT_DATE(), CURRENT_TIME());
END;
//
DELIMITER ;

/*
  Esta tabla es similar a la tabla de log para usuarios, pero está destinada a las acciones realizadas en la tabla Cursos.
*/
-- Tabla de Log para Cursos (Log_Cursos):
CREATE TABLE IF NOT EXISTS Log_Cursos (
    id_log INT AUTO_INCREMENT PRIMARY KEY,
    accion_realizada VARCHAR(50),
    usuario_modificador VARCHAR(255),
    fecha_modificacion DATE,
    hora_modificacion TIME
);

/*
 Trigger BEFORE para la tabla Cursos (before_update_cursos):
 Este trigger se activa antes de que se realice una actualización en la tabla Cursos.
 Captura la información relevante (ID de curso, acción 'UPDATE', usuario que realiza la acción, fecha y hora) y la inserta en la tabla de log Log_Cursos.
*/
DELIMITER //
CREATE TRIGGER before_update_cursos
BEFORE UPDATE ON Cursos
FOR EACH ROW
BEGIN
    -- Registra la información antes de la actualización
    INSERT INTO Log_Cursos ( accion_realizada, usuario_modificador, fecha_modificacion, hora_modificacion)
    VALUES ( 'UPDATE CURSOS ACTUALIZACION', CURRENT_USER(), CURRENT_DATE(), CURRENT_TIME());
END;
//
DELIMITER ;

