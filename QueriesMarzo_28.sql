SELECT id as "Número de Huesped", nombre, apellido 
FROM huesped
WHERE nombre LIKE "S%";

SELECT legajo FROM empleado 
WHERE domicilio = "Av. Rosalind Franklin 600";

SELECT MAX(importe) from reserva;

SELECT * FROM reserva WHERE id IN (15,19,21,35);

SELECT habitacion_numero, SUM(importe) FROM checkin WHERE habitacion_numero = 40;

SELECT * FROM empleado WHERE sector_ID NOT LIKE 3 
AND fecha_nacimiento > '1989-09-03' 
OR fecha_nacimiento = '1986-11-07' 
ORDER BY fecha_nacimiento ASC;

SELECT * FROM reserva WHERE importe
BETWEEN 10499.50 and 12000.00 ORDER BY importe DESC;

SELECT importe FROM chekin ORDER BY importe LIMIT 1 OFFSET 5;

SELECT id, fecha_entrada, importe FROM chekin 
ORDER BY importe DESC LIMIT 1;

SELECT id, importe, servicio_extra_id FROM reserva 
ORDER BY importe LIMIT 10;

SELECT * FROM reserva WHERE fecha 
BETWEEN '2021-07-14' AND '2021-08-15';

SELECT * FROM checkin 
WHERE importe >= 34125.00 AND fecha_salida < '2020-06-26' ORDER BY importe;

SELECT legajo, apellido, nombre, telefono_movil FROM empleado 
WHERE nombre LIKE "%IA";

SELECT AVG(importe) FROM reserva WHERE id = 1;

SELECT * FROM checkin WHERE forma_pago_id = 3 
ORDER BY importe DESC LIMIT 1 OFFSET 2;

SELECT COUNT(habitacion_numero) as Cantidad, habitacion_numero as Habitacion FROM checkin GROUP BY habitacion_numero HAVING habitacion_numero = 7;

SELECT domicilio FROM huesped WHERE domicilio LIKE "%__n__%"