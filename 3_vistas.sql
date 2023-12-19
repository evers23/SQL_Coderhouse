USE Integracion_Educa_Chile;
/*
 Creación de Vistas Principales
*/
-- Usuarios con filtros WHERE
CREATE VIEW VistaUsuarios_Filtrados AS
SELECT id_usuario, nombre_usuario, apellido_usuario, correo_usuario, rol_usuario
FROM Usuarios
WHERE rol_usuario = 'estudiante';

-- Cursos con LIMIT
CREATE VIEW VistaCursos_Limit AS
SELECT id_curso, nombre_curso, descripcion_curso
FROM Cursos
LIMIT 5;
-- Promedio de calificaciones por curso con GROUP BY
CREATE VIEW VistaPromedio_Calificaciones AS
SELECT Cursos.id_curso, nombre_curso, AVG(calificacion_curso) as promedio_calificaciones
FROM Cursos
INNER JOIN Calificaciones ON Cursos.id_curso = Calificaciones.curso_id
GROUP BY Cursos.id_curso, nombre_curso;

-- Estudiantes y sus cursos con INNER JOIN
CREATE VIEW VistaEstudiantes_Cursos AS
SELECT Estudiantes.id_estudiante, nombre_estudiante, apellido_estudiante, nombre_curso
FROM Estudiantes
INNER JOIN Calificaciones ON Estudiantes.id_estudiante = Calificaciones.estudiante_id
INNER JOIN Cursos ON Calificaciones.curso_id = Cursos.id_curso;

-- Notificaciones por usuario con filtro WHERE
CREATE VIEW VistaNotificaciones_PorUsuario AS
SELECT Usuarios.id_usuario, nombre_usuario, tipo_notificacion, fecha_notificacion
FROM Usuarios
INNER JOIN Notificaciones ON Usuarios.id_usuario = Notificaciones.usuario_id
WHERE tipo_notificacion = 'Nueva tarea';
