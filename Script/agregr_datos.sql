use escuela;
-- Insertar datos en la tabla de Cursos
INSERT INTO Cursos (Nombre, Codigo, Descripcion) VALUES
('Matemáticas Básicas', 'MAT101', 'Curso introductorio de matemáticas.'),
('Historia Mundial', 'HIS202', 'Estudio de los eventos clave en la historia global.'),
('Programación en Python', 'PRO303', 'Curso sobre los fundamentos de la programación en Python.');

-- Insertar datos en la tabla de Estudiantes
INSERT INTO Estudiantes (Nombre, Direccion, NumeroMatricula) VALUES
('Ana García', 'Calle Falsa 123', 'MATR0001'),
('Luis Pérez', 'Avenida Siempre Viva 742', 'MATR0002'),
('María López', 'Boulevard de la Libertad 456', 'MATR0003');

-- Insertar datos en la tabla de Profesores
INSERT INTO Profesores (Nombre, Especializacion) VALUES
('Dr. Juan Martínez', 'Matemáticas'),
('Prof. Laura Sánchez', 'Historia'),
('Ing. Carlos Rivera', 'Programación');

-- Insertar datos en la tabla de Inscripciones
INSERT INTO Inscripciones (EstudianteID, CursoID) VALUES
(1, 1), -- Ana García se inscribe en Matemáticas Básicas
(1, 2), -- Ana García se inscribe en Historia Mundial
(2, 1), -- Luis Pérez se inscribe en Matemáticas Básicas
(3, 3); -- María López se inscribe en Programación en Python

-- Insertar datos en la tabla de Curso_Profesor
INSERT INTO Curso_Profesor (CursoID, ProfesorID) VALUES
(1, 1), -- Matemáticas Básicas es impartido por Dr. Juan Martínez
(2, 2), -- Historia Mundial es impartido por Prof. Laura Sánchez
(3, 3); -- Programación en Python es impartido por Ing. Carlos Rivera
