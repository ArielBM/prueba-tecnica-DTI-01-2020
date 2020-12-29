SELECT * FROM persona;
SELECT * FROM area_desempenio;
SELECT * FROM grado_academico;
SELECT * FROM registro_grado;

SELECT DISTINCT p.id_persona, p.nombres_persona, p.apellidos_persona, p.telefono_persona, p.direccion_persona, p.fecha_nacimiento, 
(SELECT g2.nombre_grado FROM registro_grado r2, persona p2, area_desempenio a2, grado_academico g2
WHERE p2.id_persona=r2.id_persona
AND a2.id_area=r2.id_area
AND g2.id_grado=r2.id_grado
AND p2.id_persona=p.id_persona
ORDER BY r2.fecha_registro DESC
LIMIT 1) as grado_persona,
(SELECT a2.nombre_area FROM registro_grado r2, persona p2, area_desempenio a2, grado_academico g2
WHERE p2.id_persona=r2.id_persona
AND a2.id_area=r2.id_area
AND g2.id_grado=r2.id_grado
AND p2.id_persona=p.id_persona
ORDER BY r2.fecha_registro DESC
LIMIT 1) as area_persona
FROM persona p;

SELECT a.nombre_area, COUNT(r.id_area) as cantidad_registrada
FROM area_desempenio a, registro_grado r
WHERE r.id_area=a.id_area
GROUP BY (r.id_area);

