CREATE SCHEMA IF NOT EXISTS Integracion_Educa_Chile;
USE Integracion_Educa_Chile;
-- Insercion de Datos
INSERT INTO Estudiantes
(nombre_estudiante, apellido_estudiante, correo_estudiante, año_ingreso_estudiante)
VALUES
('Juan', 'Perez', 'juan@gmail.com', 2022),
('María', 'Lopez', 'maria@gmail.com', 2021),
('Carlos', 'Gomez', 'carlos@gmail.com', 2023),
('Ana', 'Rodriguez', 'ana@gmail.com', 2021),
('Luis', 'Hernandez', 'luis@gmail.com', 2022),
('Laura', 'Garcia', 'laura@gmail.com', 2021),
('Pedro', 'Martinez', 'pedro@gmail.com', 2023),
('Sofia', 'Diaz', 'sofia@gmail.com', 2020),
('David', 'Torres', 'david@gmail.com', 2021),
('Isabel', 'Rivera', 'isabel@gmail.com', 2022);

INSERT INTO Usuarios 
(nombre_usuario, apellido_usuario, correo_usuario, Contraseña_usuario, rol_usuario) 
VALUES
('Juan', 'Perez', 'juan@gmail.com', 'clave123', 'Estudiante'),
('Maria', 'Lopez', 'maria@gmail.com', 'contraseña456', 'Profesor'),
('Carlos', 'Gomez', 'carlos@gmail.com', 'clave789', 'Estudiante'),
('Ana', 'Rodriguez', 'ana@gmail.com', 'password123', 'Administrador'),
('Luis', 'Hernandez', 'luis@gmail.com', 'secret123', 'Estudiante'),
('Laura', 'Garcia', 'laura@gmail.com', 'pass456', 'Estudiante'),
('Pedro', 'Martinez', 'pedro@gmail.com', 'clave123', 'Profesor'),
('Sofia', 'Diaz', 'sofia@gmail.com', 'contraseña789', 'Estudiante'),
('David', 'Torres', 'david@gmail.com', 'secret456', 'Estudiante'),
('Isabel', 'Rivera', 'isabel@gmail.com', 'pass123', 'Profesor');

INSERT INTO Profesores
(nombre_profesor, apellido_profesor, correo_profesor, area_profesor) VALUES
('Juan', 'Ortega', 'juan@hotmailcom', 'Matematicas'),
('Maria', 'Gonzalez', 'maria@hotmailcom', 'Historia'),
('Carlos', 'Sanchez', 'carlos@hotmailcom', 'Ciencias'),
('Ana', 'Rodriguez', 'ana@hotmailcom', 'Ingles'),
('Luis', 'Hernandez', 'luis@hotmailcom', 'Economia'),
('Laura', 'Garcia', 'laura@hotmailcom', 'Informatica'),
('Pedro', 'Martinez', 'pedro@hotmailcom', 'Arte'),
('Sofia', 'Diaz', 'sofia@hotmailcom', 'Fisica'),
('David', 'Torres', 'david@hotmailcom', 'Quimica'),
('Isabel', 'Rivera', 'isabel@hotmailcom', 'Literatura');

INSERT INTO cursos 
(nombre_curso, descripcion_curso, profesor_id) VALUES
('Matematicas Basicas', 'Un curso introductorio de matematicas.', 1),
('Historia del Arte', 'Explora la historia del arte a lo largo de los siglos.', 2),
('Ciencias de la Computacion', 'Un curso sobre programacion y desarrollo de software.', 3),
('Ingles Avanzado', 'Clases de ingles para hablantes no nativos.', 1),
('Economia 101', 'Introduccion a los principios economicos.', 4),
('Programacion en Python', 'Aprende a programar en Python desde cero.', 3),
('Arte Moderno', 'Explora el arte moderno y contemporaneo.', 2),
('Fisica Aplicada', 'Un curso de fisica practica para estudiantes de ciencias.', 5),
('Quimica Organica', 'Estudia los compuestos quimicos organicos.', 3),
('Literatura Mundial', 'Lecturas y analisis de obras literarias de todo el mundo.', 2);

INSERT INTO Foros_y_Comunicacion 
(usuario_id, curso_id, fecha_publicacion, contenido_foros_comunicacion) 
VALUES
(1, 1, '2023-10-23 09:00:00', 'Este es un mensaje de ejemplo en el curso 1.'),
(2, 2, '2023-10-23 10:15:00', 'Mensaje en el curso 2 para discutir temas.'),
(3, 1, '2023-10-23 11:30:00', 'Otro mensaje en el curso 1 sobre el tema principal.'),
(4, 3, '2023-10-23 12:45:00', 'Mensaje en el curso 3 para intercambiar ideas.'),
(5, 2, '2023-10-23 14:00:00', 'Mensaje de prueba en el curso 2.'),
(6, 4, '2023-10-23 15:15:00', 'Este mensaje se publico en el curso 4.'),
(7, 1, '2023-10-23 16:30:00', 'Mensaje en el curso 1 para debates abiertos.'),
(8, 5, '2023-10-23 17:45:00', 'Mensaje de discusión en el curso 5.'),
(9, 3, '2023-10-23 19:00:00', 'Otro mensaje en el curso 3 sobre temas importantes.'),
(10, 2, '2023-10-23 20:15:00', 'Mensaje final en el curso 2 para hoy.');

INSERT INTO Contenido_del_Curso
(curso_id, tipo_contenido, titulo_contenido, descripcion_contenido, url) VALUES 
(1, 'Video', 'Introduccion al curso', 'Video de introduccion al curso.', 
'https://www.youtube.com/video1.mp4'),
(2, 'Documento', 'Leccion 1', 'Documento sobre la primera leccion.', 
'https://www.youtube.com/leccion1.pdf'),
(3, 'Quiz', 'Prueba de conocimientos', 'Realiza esta prueba para evaluar tus conocimientos.', 
'https://www.youtube.com/quiz1.html'),
(1, 'Video', 'Tema 1', 'Video sobre el primer tema del curso.', 
'https://www.youtube.com/video2.mp4'),
(2, 'Documento', 'Leccion 2', 'Documento sobre la segunda leccion.', 
'https://www.youtube.com/leccion2.pdf'),
(3, 'Quiz', 'Prueba final', 'Prueba final para evaluar lo aprendido en el curso.', 
'https://www.youtube.com/quiz2.html'),
(1, 'Video', 'Resumen del curso', 'Video de resumen del curso.', 
'https://www.youtube.com/video3.mp4'),
(2, 'Documento', 'Leccion 3', 'Documento sobre la tercera leccion.', 
'https://www.youtube.com/leccion3.pdf'),
(3, 'Quiz', 'Examen final', 'Examen final para obtener la certificacion.', 
'https://www.youtube.comm/examen.html');

INSERT INTO calificaciones
(estudiante_id, curso_id, calificacion_curso) VALUES
    (1, 1, 90.50),
    (2, 2, 85.00),
    (3, 1, 92.75),
    (4, 3, 78.25),
    (5, 2, 88.00),
    (6, 4, 95.75),
    (7, 1, 87.50),
    (8, 5, 76.00),
    (9, 3, 91.25),
    (10, 2, 89.75);

INSERT INTO Asistencia 
(estudiante_id, curso_id, fecha_asistencia) VALUES
 (1, 1, '2023-10-23 09:00:00'),
 (2, 2, '2023-10-23 10:15:00'),
 (3, 1, '2023-10-23 11:30:00'),
 (4, 3, '2023-10-23 12:45:00'),
 (5, 2, '2023-10-23 14:00:00'),
 (6, 4, '2023-10-23 15:15:00'),
 (7, 1, '2023-10-23 16:30:00'),
 (8, 5, '2023-10-23 17:45:00'),
 (9, 3, '2023-10-23 19:00:00');


INSERT INTO Notificaciones
(usuario_id, tipo_notificacion, contenido_notificacion, fecha_notificacion) VALUES
 (1, 'Nueva tarea', 'Tienes una nueva tarea asignada.', '2023-10-23 09:00:00'),
 (2, 'Recordatorio', 'Recordatorio de la proxima reunion.', '2023-10-23 10:15:00'),
 (3, 'Nueva tarea', 'Tienes una nueva tarea para completar.', '2023-10-23 11:30:00'),
 (4, 'Aviso importante', 'Aviso importante para todos los estudiantes.', '2023-10-23 12:45:00'),
 (5, 'Nueva tarea', 'Tarea adicional para la proxima semana.', '2023-10-23 14:00:00'),
 (6, 'Recordatorio', 'Recordatorio de la fecha limite de un proyecto.', '2023-10-23 15:15:00'),
 (7, 'Aviso importante', 'Cambios en el horario de clases.', '2023-10-23 16:30:00'),
 (8, 'Nueva tarea', 'Nueva tarea de investigación asignada.', '2023-10-23 17:45:00'),
 (9, 'Recordatorio', 'Recordatorio de la reunión de padres.', '2023-10-23 19:00:00'),
 (10, 'Aviso importante', 'Cambios en el calendario academico.', '2023-10-23 20:15:00');
 

