SELECT * FROM categoria;
SELECT CategoriaNombre, Descripcion FROM categorias;
SELECT * FROM productos;
SELECT * FROM productos WHERE Discontinuado = 1;
SELECT * FROM productos WHERE proveedor = 8;
SELECT * FROM productos WHERE precioUnitario BETWEEN 10 AND 22;
SELECT * FROM productos WHERE unidadesStock < NivelReorden;
SELECT * FROM productos WHERE unidadesStock < NivelReorden AND unidadesPedidas =0 ;

SELECT Contacto, Compania, Titulo,Pais FROM clientes ORDER BY Pais;
SELECT * FROM clientes WHERE titulo = "Owner";
SELECT Contacto FROM clientes WHERE nombre LIKE "C%";

SELECT * FROM facturas ORDER BY fecha ASC;
SELECT * FROM facturas WHERE paisEnvio = "USA" AND EnvioVia != 3;
SELECT * FROM facturas WHERE cliente = "GOURL";
SELECT * FROM facturas WHERE empleados = 2 AND empleados = 3 AND empleados = 5 AND empleados = 8 AND empleados = 9;

SELECT * FROM productos ORDER BY PrecioUnitario DESC;
SELECT * FROM productos ORDER BY PrecioUnitario ASC LIMIT 5;
SELECT * FROM productos ORDER BY UnidadesStock ASC LIMIT 10;

SELECT FacturaID, Producto, Cantidad FROM FacturaDetalle;
SELECT FacturaID, Producto, Cantidad FROM FacturaDetalle ORDER BY Cantidad DESC;
SELECT * FROM FacturaDetalle WHERE Cantidad BETWEEN 50 AND 100;
SELECT FacturaID, ProductoID, PrecioUnitario*Cantidad FROM FacturaDetalle;


SELECT * FROM Clientes WHERE Pais = "Brazil" OR Pais = "Mexico" OR Titulo LIKE "Sales%";
SELECT * FROM Clientes WHERE Compañia LIKE "A%";
SELECT Ciudad, Contacto AS "Apelllido y Nombre",Titulo AS Puesto FROM Clientes WHERE ciudad = "Madrid"; 
SELECT * FROM Facturas Where FacturaID BETWEEN 10000 AND 10500;
SELECT * FROM Facturas Where FacturaID BETWEEN 10000 AND 10500 OR ClienteID LIKE "B%";
SELECT * FROM Facturas Where Ciudad = "Vancouver" OR Correo = 3;
SELECT IdEmpleado FROM Empleados WHERE Nombre = "Buchanan";
SELECT * FROM Facturas WHERE EXISTS(SELECT IdEmpleado FROM Empleados WHERE Nombre = "Buchanan");




