USE `pro`;
DROP procedure IF EXISTS `AgregarPagos`;

DELIMITER $$
USE `pro`$$
CREATE PROCEDURE AgregarPagos (IN Descripcion VARCHAR(40),
							   IN Fecha DATE,
							   IN TotalPago INT(6),
                               IN IdCliente INT(3),
                               IN IdProvedor INT(3))
BEGIN
INSERT INTO  PagosServicio(Descripcion, Fecha, TotalPago, IdCliente, IdProvedor)
	VALUES (Descripcion, Fecha, TotalPago, IdCliente, IdProvedor);
END$$

DELIMITER ;

CALL AgregarPagos('Pago de Colegio', '2020-09-01', 4000, 4, 5);
CALL AgregarPagos('Pago de Universidad', '2020-12-07', 10000, 2, 3);
CALL AgregarPagos('Pago de Telefono', '2020-11-26', 700, 1, 4);

SELECT*FROM PagosServicio;