SELECT apellido1, apellido2, nombre
FROM alumno_se_matricula_asignatura
ORDER BY apellido1, apellido2, nombre;

SELECT nombre, apellido1, apellido2
FROM alumno_se_matricula_asignatura
WHERE telefono IS NULL;

SELECT *
FROM alumno_se_matricula_asignatura
WHERE YEAR(fecha_nacimiento) = 1999;

SELECT *
FROM profesor
WHERE telefono IS NULL AND nif LIKE '%K';

SELECT *
FROM asignatura
WHERE cuatrimestre = 1 AND curso = 3 AND id_grado = 7;

SELECT p.apellido1, p.apellido2, p.nombre, d.nombre AS nombre_departamento
FROM profesor p
LEFT JOIN departamento d ON p.id_departamento = d.id
ORDER BY p.apellido1, p.apellido2, p.nombre;

SELECT a.nombre, c.anio_inicio, c.anio_fin
FROM asignaturas a
JOIN cursos c ON a.curso_id = c.id
JOIN persona al ON al.curso_id = c.id
WHERE al.nif = '26902806M';

SELECT d.nombre AS nombre_departamento, p.apellido1, p.apellido2, p.nombre
FROM profesores p
LEFT JOIN departamentos d ON p.departamento_id = d.id
ORDER BY d.nombre, p.apellido1, p.apellido2, p.nombre;

SELECT COUNT(*)
FROM persona
WHERE genero = 'Femenino';

SELECT COUNT(*)
FROM persona
WHERE YEAR(fecha_nacimiento) = 1999;

SELECT d.nombre AS nombre_departamento, COUNT(p.id) AS cantidad_profesores
FROM departamentos d
JOIN profesores p ON d.id = p.departamento_id
GROUP BY d.nombre
ORDER BY cantidad_profesores DESC;

SELECT d.nombre AS nombre_departamento, COUNT(p.id) AS cantidad_profesores
FROM departamentos d
LEFT JOIN profesores p ON d.id = p.departamento_id
GROUP BY d.nombre;

SELECT g.nombre AS nombre_grado, COUNT(a.id) AS cantidad_asignaturas
FROM grados g
LEFT JOIN asignaturas a ON g.id = a.grado_id
GROUP BY g.nombre
ORDER BY cantidad_asignaturas DESC;

SELECT g.nombre AS nombre_grado, COUNT(a.id) AS cantidad_asignaturas
FROM grados g
JOIN asignaturas a ON g.id = a.grado_id
GROUP BY g.nombre
HAVING COUNT(a.id) > 40;

SELECT g.nombre AS nombre_grado, a.tipo_asignatura, SUM(a.creditos) AS total_creditos
FROM grados g
LEFT JOIN asignaturas a ON g.id = a.grado_id
GROUP BY g.nombre, a.tipo_asignatura;

SELECT p.id, p.nombre, p.apellido1, p.apellido2, COUNT(a.id) AS cantidad_asignaturas
FROM profesores p
LEFT JOIN asignaturas_profesores ap ON p.id = ap.profesor_id
LEFT JOIN asignaturas a ON ap.asignatura_id = a.id
GROUP BY p.id, p.nombre, p.apellido1, p.apellido2
ORDER BY cantidad_asignaturas DESC;

SELECT d.nombre AS nombre_departamento
FROM departamentos d
LEFT JOIN profesores p ON d.id = p.departamento_id
WHERE p.id IS NULL;

SELECT p.*
FROM profesores p
JOIN departamentos d ON p.departamento_id = d.id
LEFT JOIN asignaturas_profesores ap ON p.id = ap.profesor_id
WHERE ap.profesor_id IS NULL;

SELECT *
FROM persona
ORDER BY fecha_nacimiento ASC
LIMIT 1;

SELECT DISTINCT d.nombre AS nombre_departamento
FROM departamentos d
LEFT JOIN profesores p ON d.id = p.departamento_id
LEFT JOIN asignaturas_profesores ap ON p.id = ap.profesor_id
WHERE ap.profesor_id IS NULL;
