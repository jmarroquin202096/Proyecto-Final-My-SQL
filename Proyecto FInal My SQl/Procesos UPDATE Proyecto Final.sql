USE `pro`;
DROP procedure IF EXISTS `ActualizarPagos`;

DELIMITER $$
USE `pro`$$
CREATE PROCEDURE ActualizarPagos (IN Descripcion VARCHAR(40),
								  IN Fecha DATE,
								  IN TotalPago INT(6),
								  IN IdCliente INT(3),
								  IN IdProvedor INT(3),
                                  IdPago INT)
BEGIN
	UPDATE PagosServicio SET Descripcion = Descripcion, Fecha = Fecha, TotalPago = TotalPago,
    IdCliente =IdCliente, IdProvedor = IdProvedor WHERE IdPago = IdPago;
END$$

DELIMITER ;

UPDATE PagosServicio SET Descripcion = 'Pago Telefono', Fecha = '2020-10-30', TotalPago = 2000, IdCliente = 2, IdProvedor = 3 WHERE IdPago = 7;
UPDATE PagosServicio SET Descripcion = 'Pago Colegio', Fecha = '2020-12-10', TotalPago = 4000, IdCliente = 3, IdProvedor = 4 WHERE IdPago = 8;
UPDATE PagosServicio SET Descripcion = 'Pago de Energia Electrica', Fecha = '2020-11-24', TotalPago = 9000, IdCliente = 1, IdProvedor = 6 WHERE IdPago = 9; 

SELECT*FROM  PagosServicio;