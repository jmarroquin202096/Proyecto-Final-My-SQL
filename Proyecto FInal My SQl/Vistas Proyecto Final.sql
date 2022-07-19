USE PRO;

/*VISTAS*/
CREATE VIEW Usuario
AS SELECT U.IdUsuario, U.NombreUsuario AS Nombre, U.Fecha, U.CuentaNo, C.TipodeMoneda AS Moneda
FROM Cuentas AS C
INNER JOIN Usuarios AS U ON U.CuentaNO = C.CuentaNO

/*VISTA CLIENTES */
CREATE VIEW Cliente
AS SELECT C.IdCliente, CONCAT(C.Apellidos, ' ', C.Nombres) AS NOMBRE, C.Edad, C.Telefonos, C.Identificacion, 
U.IdUsuario, U.NombreUsuario
FROM Usuarios AS U
INNER JOIN Clientes AS C ON C.IdUsuario = U.IdUsuario;

/*VISTAS PAGO*/ 
CREATE VIEW Pago
AS SELECT P.IdPago, P.Descripcion, P.Fecha, P.TotalPago AS PAGO, Pr.IdProvedor
FROM Proveedores AS Pr
INNER JOIN PagosServicio AS P ON P.IdProvedor = Pr.IdProvedor


CREATE VIEW Historiales
AS SELECT H.IdHistorial, P.IdPago
FROM PagosServicio AS P
INNER JOIN Historial AS H ON H.IdPago = P.IdPago;

CREATE VIEW PAGOS1000
AS SELECT P.IdPago, P.Descripcion, (P.TotalPago >= 1000), C.IdCliente, Pr.IdProvedor
FROM PagosServicio AS P
INNER JOIN Clientes AS C ON C.IdCliente = P.IdCliente
INNER JOIN Proveedores AS Pr ON Pr.IdProvedor = P.IdProvedor;

/*SELECT VISTAS*/
SELECT*FROM Usuario;
SELECT*FROM Cliente;
SELECT*FROM Pago;
SELECT*FROM Historiales;
SELECT*FROM PAGOS1000;

SELECT TotalPago FROM PagosServicio WHERE TotalPago >= 1000;