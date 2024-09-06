create database escuela;
use escuela;
-- Crear la tabla de Cursos
CREATE TABLE Cursos (
    CursoID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Codigo VARCHAR(50) UNIQUE NOT NULL,
    Descripcion TEXT
);

-- Crear la tabla de Estudiantes
CREATE TABLE Estudiantes (
    EstudianteID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Direccion VARCHAR(255),
    NumeroMatricula VARCHAR(50) UNIQUE NOT NULL
);

-- Crear la tabla de Profesores
CREATE TABLE Profesores (
    ProfesorID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Especializacion VARCHAR(255)
);

-- Crear la tabla de Inscripciones (para la relación muchos a muchos entre Estudiantes y Cursos)
CREATE TABLE Inscripciones (
    InscripcionID INT AUTO_INCREMENT PRIMARY KEY,
    EstudianteID INT,
    CursoID INT,
    FOREIGN KEY (EstudianteID) REFERENCES Estudiantes(EstudianteID),
    FOREIGN KEY (CursoID) REFERENCES Cursos(CursoID),
    UNIQUE (EstudianteID, CursoID) -- Asegura que un estudiante no se inscriba en el mismo curso más de una vez
);

-- Crear la tabla de Curso_Profesor (para la relación muchos a muchos entre Cursos y Profesores)
CREATE TABLE Curso_Profesor (
    CursoID INT,
    ProfesorID INT,
    FOREIGN KEY (CursoID) REFERENCES Cursos(CursoID),
    FOREIGN KEY (ProfesorID) REFERENCES Profesores(ProfesorID),
    PRIMARY KEY (CursoID, ProfesorID) -- Asegura que un curso y profesor no se repitan
);
