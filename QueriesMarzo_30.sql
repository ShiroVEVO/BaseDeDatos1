-- ¿Cuántos clientes existen?
SELECT COUNT(*) FROM clientes;

-- ¿Cuántos clientes hay por ciudad?
SELECT COUNT(*), Ciudad  FROM clientes GROUP BY Ciudad;

-- ¿Cuál es el total de transporte?
SELECT SUM(Transporte) FROM facturas;

-- ¿Cuál es el total de transporte por EnvioVia (empresa de envío)?
SELECT SUM(EnvioVia) FROM facturas;

-- Calcular la cantidad de facturas por cliente. Ordenar descendentemente porcantidad de facturas.
SELECT COUNT(*), ClienteID FROM facturas GROUP BY ClienteID ORDER BY COUNT(*) DESC;

-- Obtener el Top 5 de clientes de acuerdo a su cantidad de facturas.
SELECT  ClienteID, COUNT(*) FROM facturas GROUP BY ClienteID ORDER BY COUNT(*) DESC LIMIT 5;

-- ¿Cuál es el país de envío menos frecuente de acuerdo a la cantidad de facturas?
SELECT PaisEnvio, COUNT(*) FROM facturas GROUP BY PaisEnvio ORDER BY COUNT(*) ASC LIMIT 1;

-- Se quiere otorgar un bono al empleado con más ventas. ¿Qué ID de empleado realizó más operaciones de ventas?
SELECT COUNT(*), EmpleadoID FROM facturas GROUP BY EmpleadoID ORDER BY COUNT(*) DESC LIMIT 1;

-- ¿Cuál es el producto que aparece en más líneas de la tabla Factura Detalle?
SELECT ProductoID, count(ProductoID) FROM facturadetalle GROUP BY ProductoID ORDER BY COUNT(ProductoID) DESC LIMIT 1;

-- ¿Cuál es el total facturado? Considerar que el total facturado es la suma de cantidad por precio unitario.
SELECT SUM(PrecioUnitario) FROM facturadetalle;

-- ¿Cuál es el total facturado para los productos ID entre 30 y 50?
SELECT SUM(PrecioUnitario) FROM facturadetalle WHERE ProductoID BETWEEN 30 AND 50;

-- ¿Cuál es el precio unitario promedio de cada producto?
SELECT AVG(PrecioUnitario), ProductoID FROM facturadetalle GROUP BY ProductoID;

-- ¿Cuál es el precio unitario máximo?
SELECT MAX(PrecioUnitario) FROM facturadetalle;

-- Generar un listado de todas las facturas del empleado 'Buchanan'.
SELECT empleados.EmpleadoID, empleados.Apellido, facturas.* FROM facturas JOIN empleados ON facturas.EmpleadoID = empleados.EmpleadoID AND empleados.Apellido = "Buchanan";

-- Generar un listado con todos los campos de las facturas del correo 'Speedy Express'
SELECT correos.CorreoID, correos.Compania, facturas.* FROM facturas JOIN correos ON correos.CorreoID = facturas.EnvioVia AND correos.Compania = "Speedy Express";

-- Generar un listado de todas las facturas con el nombre y apellido de los empleados.
SELECT empleados.Nombre, empleados.Apellido, facturas.* FROM facturas JOIN empleados ON facturas.EmpleadoID = empleados.EmpleadoID;

-- Mostrar un listado de las facturas de todos los clientes “Owner” y país de envío “USA”.
-- NO HAY DATOS

-- Mostrar todos los campos de las facturas del empleado cuyo apellido sea “Leverling” o que incluyan el producto id = “42”.
SELECT empleados.Apellido, facturadetalle.ProductoID, facturas.* FROM facturas 
JOIN empleados ON facturas.EmpleadoID = facturas.EmpleadoID
JOIN facturadetalle ON facturas.FacturaID = facturadetalle.FacturaID 
WHERE empleados.Apellido = "Leverling" OR facturadetalle.ProductoID = 42;

-- Mostrar todos los campos de las facturas del empleado cuyo apellido sea “Leverling” y que incluya los producto id = “80” o ”42”.
SELECT empleados.Apellido, facturadetalle.ProductoID , facturas.* FROM facturas 
JOIN empleados ON facturas.EmpleadoID = empleados.EmpleadoID 
JOIN facturadetalle ON facturas.FacturaID = facturadetalle.FacturaID 
WHERE empleados.Apellido = "Leverling" AND facturadetalle.ProductoID = 80 OR facturadetalle.ProductoID = 42;

-- Generar un listado con los cinco mejores clientes, según sus importes de compras total (PrecioUnitario * Cantidad).
SELECT SUM(facturadetalle.PrecioUnitario*facturadetalle.Cantidad), clientes.ClienteID FROM clientes
JOIN facturas ON clientes.ClienteID = facturas.ClienteID
JOIN facturadetalle ON facturas.FacturaID = facturadetalle.FacturaID
GROUP BY clientes.ClienteID
ORDER BY SUM(facturadetalle.PrecioUnitario*facturadetalle.Cantidad) DESC LIMIT 5;

-- Generar un listado de facturas, con los campos id, nombre y apellido del cliente, fecha de factura, país de envío, 
-- Total, ordenado de manera descendente por fecha de factura y limitado a 10 filas.

SELECT facturas.EmpleadoID, empleados.Nombre, empleados.Apellido, facturas.FechaFactura, facturas.PaisEnvio, facturadetalle.FacturaID, facturadetalle.PrecioUnitario*facturadetalle.Cantidad AS Total FROM facturas
JOIN empleados ON facturas.EmpleadoID = empleados.EmpleadoID
JOIN facturadetalle ON facturas.FacturaID = facturadetalle.FacturaID
ORDER BY facturas.FechaFactura DESC LIMIT 10;

