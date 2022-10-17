SELECT count(id) FROM persona WHERE persona.tipo = 'alumno';
SELECT p.* FROM persona AS p WHERE p.tipo = 'alumno' AND YEAR(p.fecha_nacimiento) = '1999';
SELECT departamento.nombre,count(persona.id) FROM departamento RIGHT JOIN profesor ON departamento.id = profesor.id_departamento LEFT JOIN persona ON persona.id = profesor.id_profesor GROUP BY departamento.id ORDER BY count(departamento.id) DESC;
SELECT departamento.nombre,persona.apellido1,persona.apellido2,persona.nombre FROM departamento LEFT JOIN profesor ON departamento.id = profesor.id_departamento LEFT JOIN persona ON persona.id = profesor.id_profesor;
SELECT grado.nombre FROM grado LEFT JOIN asignatura ON asignatura.id_grado = grado.id GROUP BY grado.nombre ORDER BY count(grado.id);
SELECT grado.nombre, count(asignatura.id) FROM grado LEFT JOIN asignatura ON grado.id = asignatura.id_grado;
--
--
--
SELECT persona.* FROM persona WHERE persona.tipo = 'alumno' ORDER BY persona.fecha_nacimiento DESC LIMIT 1;