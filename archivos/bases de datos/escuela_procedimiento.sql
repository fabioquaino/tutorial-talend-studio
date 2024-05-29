DELIMITER //

CREATE PROCEDURE ObtenerPromedioPorMateria (
    IN dni_param VARCHAR(20)
)
BEGIN
    SELECT 
        UPPER(m.nombre) AS materia, 
        ROUND(AVG(nota), 2) AS promedio
    FROM examen e
    INNER JOIN materia m ON m.id = e.materia_id 
    WHERE dni_persona = dni_param
    GROUP BY m.nombre;
END //

DELIMITER ;