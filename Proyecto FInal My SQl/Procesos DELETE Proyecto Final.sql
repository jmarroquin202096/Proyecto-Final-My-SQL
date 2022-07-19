USE `pro`;
DROP procedure IF EXISTS `FPagos`;

DELIMITER $$
USE `pro`$$
CREATE PROCEDURE FPagos (IN IdPago INT)
BEGIN
	DELETE FROM PagosServicio WHERE IdPago = IdPago;
END$$

DELIMITER ;

DELETE FROM PagosServicio WHERE IdPago = 7;
DELETE FROM PagosServicio WHERE IdPago = 8;
DELETE FROM PagosServicio WHERE IdPago = 9;

SELECT*FROM PagosServicio;