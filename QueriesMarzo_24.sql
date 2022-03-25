-- EJERCICIO 1
SELECT * FROM cancion WHERE titulo LIKE "%z%";

-- EJERCICIO 2 
SELECT * FROM cancion WHERE titulo LIKE "_a%s";

-- EJERCICIO 3
SELECT 
idPlaylist AS "Playlist", 
idusuario AS "Usuario", 
titulo AS "Título", 
cantcanciones AS "Cantidad de Canciones", 
idestado AS "Estado", 
Fechacreacion AS "Fecha de Creación", 
Fechaeliminada AS "Fecha de Eliminación" FROM playlist ORDER BY cantcanciones DESC LIMIT 1;

-- EJERCICIO 4
SELECT * FROM usuario ORDER BY fecha_nac DESC LIMIT 10 OFFSET 5;

-- EJERCICIO 5
SELECT * FROM cancion ORDER BY cantreproduccion DESC LIMIT 5;

-- EJERCICIO 6
SELECT * FROM album ORDER BY titulo ASC;

-- EJERCICIO 7
SELECT * FROM album WHERE imagenportada IS null ORDER BY titulo ASC;

-- EJERCICIO 8
SELECT * FROM usuario;
-- INSERT INTO usuario (idUsuario, nombreusuario, nyap, password, fecha_nac, sexo, CP, Pais_idPais) VALUES (DEFAULT, "nuevousuariodespotify@gmail.com", "Elmer Gomez", "S4321m", '1991-11-15', "M", "B4129ATF", 2);

-- EJERCICIO 9
DELETE idCancion FROM cancion 
JOIN generoxcancion
ON cancion.idCancion = generoxcancion.IdCancion 
WHERE IdGenero = 8;

-- EJERCICIO 10