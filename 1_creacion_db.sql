CREATE SCHEMA IF NOT EXISTS Integracion_Educa_Chile;
USE Integracion_Educa_Chile;

-- Crear la tabla Usuarios
CREATE TABLE IF NOT EXISTS Usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre_usuario VARCHAR(255),
    apellido_usuario VARCHAR(255),
    correo_usuario VARCHAR(255),
    contraseña_usuario VARCHAR(255),
    rol_usuario VARCHAR(50)
);

-- Crear la tabla Profesores
CREATE TABLE IF NOT EXISTS Profesores (
    id_profesor INT AUTO_INCREMENT PRIMARY KEY,
    nombre_profesor VARCHAR(255),
    apellido_profesor VARCHAR(255),
    correo_profesor VARCHAR(255),
    area_profesor VARCHAR(100)
);

-- Crear la tabla Cursos
CREATE TABLE IF NOT EXISTS Cursos (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nombre_curso VARCHAR(255),
    descripcion_curso TEXT,
    profesor_id INT,
    FOREIGN KEY (profesor_id) REFERENCES Profesores(id_profesor)
);

-- Crear la tabla Estudiantes
CREATE TABLE IF NOT EXISTS Estudiantes (
    id_estudiante INT AUTO_INCREMENT PRIMARY KEY,
    nombre_estudiante VARCHAR(255),
    apellido_estudiante VARCHAR(255),
    correo_estudiante VARCHAR(255),
    año_ingreso_estudiante INT
);

-- Crear la tabla Calificaciones
CREATE TABLE IF NOT EXISTS Calificaciones (
    id_calificacion INT AUTO_INCREMENT PRIMARY KEY,
    estudiante_id INT,
    curso_id INT,
    calificacion_curso DECIMAL(5, 2),
    FOREIGN KEY (estudiante_id) REFERENCES Estudiantes(id_estudiante),
    FOREIGN KEY (curso_id) REFERENCES Cursos(id_curso)
);

-- Crear la tabla Contenido del Curso
CREATE TABLE IF NOT EXISTS Contenido_del_Curso (
    id_contenido INT AUTO_INCREMENT PRIMARY KEY,
    curso_id INT,
    tipo_contenido VARCHAR(50),
    titulo_contenido VARCHAR(255),
    descripcion_contenido TEXT,
    url VARCHAR(255),
    FOREIGN KEY (curso_id) REFERENCES Cursos(id_curso)
);

-- Crear la tabla Foros y Comunicación (publicación)
CREATE TABLE IF NOT EXISTS Foros_y_Comunicacion (
    id_foro INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    curso_id INT,
    fecha_publicacion DATETIME,
    contenido_foros_comunicacion TEXT,
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(id_usuario),
    FOREIGN KEY (curso_id) REFERENCES Cursos(id_curso)
);

-- Crear la tabla Asistencia
CREATE TABLE IF NOT EXISTS Asistencia (
    id_asistencia INT AUTO_INCREMENT PRIMARY KEY,
    estudiante_id INT,
    curso_id INT,
    fecha_asistencia DATETIME,
    FOREIGN KEY (estudiante_id) REFERENCES Estudiantes(id_estudiante),
    FOREIGN KEY (curso_id) REFERENCES Cursos(id_curso)
);

-- Crear la tabla Notificaciones
CREATE TABLE IF NOT EXISTS Notificaciones (
    id_notificacion INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    tipo_notificacion VARCHAR(100),
    contenido_notificacion TEXT,
    fecha_notificacion DATETIME,
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(id_usuario)
);