-- Crear un nuevo usuario llamado 'usuario_lectura' con contraseña 'lectura'
CREATE USER 'usuario_lectura'@'localhost' IDENTIFIED BY 'lectura';

-- Permisos de solo lectura en todas las tablas de la base de datos 'Integracion_Educa_Chile' al usuario 'usuario_lectura' desde 'localhost'
GRANT SELECT ON Integracion_Educa_Chile.* TO 'usuario_lectura'@'localhost';

-- Mostrar información sobre los usuarios en la base de datos 'mysql'
-- Ayuda a verificar si el usuario 'usuario_lectura' se creó correctamente
SELECT * FROM mysql.user;

-- Crear un nuevo usuario llamado 'lectura_insercion_modificacion' con contraseña '123'
CREATE USER 'lectura_insercion_modificacion'@'localhost' IDENTIFIED BY
'123';

-- Permisos de lectura, inserción y modificación en todas las tablas de la base de datos 'Integracion_Educa_Chile'
GRANT SELECT, INSERT, UPDATE ON Integracion_Educa_Chile.* TO 'lectura_insercion_modificacion'@'localhost';

-- Revocar el privilegio DELETE en todas las bases de datos y tablas para el usuario 'usuario_lectura' desde 'localhost'
REVOKE DELETE ON *.* FROM 'usuario_lectura'@'localhost';
-- Revocar el privilegio DELETE en todas las bases de datos y tablas para el usuario 'lectura_insercion_modificacion' desde 'localhost'
REVOKE DELETE ON *.* FROM 'lectura_insercion_modificacion'@'localhost';