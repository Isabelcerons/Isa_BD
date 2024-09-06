use escuela;
#CONSULTAS SENCILLAS

-- 1. Listar todos los cursos disponibles
SELECT * FROM Cursos;

-- 2. Listar todos los estudiantes inscritos en el curso de "Matemáticas Básicas"
SELECT E.Nombre, E.NumeroMatricula
FROM Estudiantes E
JOIN Inscripciones I ON E.EstudianteID = I.EstudianteID
JOIN Cursos C ON I.CursoID = C.CursoID
WHERE C.Nombre = 'Matemáticas Básicas';

-- 3. Obtener la lista de cursos que imparte el profesor "Prof. Laura Sánchez"
SELECT C.Nombre, C.Codigo
FROM Cursos C
JOIN Curso_Profesor CP ON C.CursoID = CP.CursoID
JOIN Profesores P ON CP.ProfesorID = P.ProfesorID
WHERE P.Nombre = 'Prof. Laura Sánchez';

-- 4. Mostrar la información de los estudiantes junto con los cursos en los que están inscritos
SELECT E.Nombre AS Estudiante, C.Nombre AS Curso
FROM Estudiantes E
JOIN Inscripciones I ON E.EstudianteID = I.EstudianteID
JOIN Cursos C ON I.CursoID = C.CursoID;

-- 5. Listar todos los profesores junto con su especialización
SELECT Nombre, Especializacion FROM Profesores;

-- 6. Obtener la cantidad de estudiantes inscritos en cada curso
SELECT C.Nombre AS Curso, COUNT(I.EstudianteID) AS CantidadEstudiantes
FROM Cursos C
LEFT JOIN Inscripciones I ON C.CursoID = I.CursoID
GROUP BY C.Nombre;

-- 7. Mostrar la lista de cursos y los profesores que los imparten
SELECT C.Nombre AS Curso, P.Nombre AS Profesor
FROM Cursos C
JOIN Curso_Profesor CP ON C.CursoID = CP.CursoID
JOIN Profesores P ON CP.ProfesorID = P.ProfesorID;