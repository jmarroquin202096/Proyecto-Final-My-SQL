USE PRO;

/*TABLA CUENTAS*/
INSERT INTO Cuentas(TipodeCuenta, TipodeMoneda, Saldo) 
VALUES ('Ahoros', 'Quetzales', 10000);
INSERT INTO Cuentas(TipodeCuenta, TipodeMoneda, Saldo) 
VALUES ('Monetaria', 'Euros', 2000);
INSERT INTO Cuentas(TipodeCuenta, TipodeMoneda, Saldo) 
VALUES ('Tarjeta Credito', 'Dolares', 1800);
INSERT INTO Cuentas(TipodeCuenta, TipodeMoneda, Saldo) 
VALUES ('Ahoros', 'Quetzales', 8000);
INSERT INTO Cuentas(TipodeCuenta, TipodeMoneda, Saldo) 
VALUES ('Pension', 'Quetzales', 20000);
INSERT INTO Cuentas(TipodeCuenta, TipodeMoneda, Saldo) 
VALUES ('Prestamo', 'Quetzales', 50000);

/*TABLA USUARIOS*/
INSERT INTO Usuarios(Contraseña, NombreUsuario, Estado, Fecha, CuentaNO) 
VALUES (MD5('abc123'), 'AntonioG1', 'Habilitado', '2020-09-30', 3);
INSERT INTO Usuarios(Contraseña, NombreUsuario, Estado, Fecha, CuentaNO) 
VALUES (MD5('def456'), 'SofiaP2', 'Deshabilitado', '2020-10-25', 6);
INSERT INTO Usuarios(Contraseña, NombreUsuario, Estado, Fecha, CuentaNO) 
VALUES (MD5('ghi789'), 'AlexanderD3', 'Habilitado', '2020-09-12', 1);
INSERT INTO Usuarios(Contraseña, NombreUsuario, Estado, Fecha, CuentaNO) 
VALUES (MD5('jkl101'), 'AndresR4', 'Habilitado', '2020-11-24', 4);
INSERT INTO Usuarios(Contraseña, NombreUsuario, Estado, Fecha, CuentaNO) 
VALUES (MD5('mno112'), 'JulioT5', 'Deshabilitado', '2020-12-31', 2);
INSERT INTO Usuarios(Contraseña, NombreUsuario, Estado, Fecha, CuentaNO) 
VALUES (MD5('pqr131'), 'Gabriel6', 'Habilitado', '2020-12-05', 5);

/*TABLA CLIENTE*/
INSERT INTO Clientes(Apellidos, Nombres, Edad, Direccion, Telefonos, Compañia, Sexo, Nacionalidad, Identificacion, IdUsuario) 
VALUES ('Gimenez', 'Antonio', 30, 'Guatemala', 20239367, 'Claro', 'Hombre', 'Guatemalteca', 4839203321, 1);
INSERT INTO Clientes(Apellidos, Nombres, Edad, Direccion, Telefonos, Compañia, Sexo, Nacionalidad, Identificacion, IdUsuario) 
VALUES ('Perez', 'Sofia', 28, 'Guatemala', 39201392, 'Movistar', 'Mujer', 'Española', 39202932, 2);
INSERT INTO Clientes(Apellidos, Nombres, Edad, Direccion, Telefonos, Compañia, Sexo, Nacionalidad, Identificacion, IdUsuario) 
VALUES ('Davies', 'Alexander', 45, 'Guatemala', 39302201, 'Tigo', 'Hombre', 'Canadiense', 34567893, 3);
INSERT INTO Clientes(Apellidos, Nombres, Edad, Direccion, Telefonos, Compañia, Sexo, Nacionalidad, Identificacion, IdUsuario) 
VALUES ('Romeo', 'Andres', 60, 'Guatemala', 39020392, 'Tigo', 'Hombre', 'Guatemalteca', 3839203920, 4);
INSERT INTO Clientes(Apellidos, Nombres, Edad, Direccion, Telefonos, Compañia, Sexo, Nacionalidad, Identificacion, IdUsuario) 
VALUES ('Torres', 'Julio', 80, 'Guatemala', 49201302, 'Movistar', 'Hombre', 'Guatemalteca', 2819021938, 5);
INSERT INTO Clientes(Apellidos, Nombres, Edad, Direccion, Telefonos, Compañia, Sexo, Nacionalidad, Identificacion, IdUsuario) 
VALUES ('Vazquez', 'Gabriel', 50, 'Guatemala', 29109384, 'Claro', 'Hombre', 'Guatemalteca', 2901029382, 6);

/*TABLA PROVEEDORES*/
INSERT INTO Proveedores(Nombre, Telefono, IdentifiacdordePago) 
VALUES ('Colegio KINAL', 39202912, 'CarnetAlumno');
INSERT INTO Proveedores(Nombre, Telefono, IdentifiacdordePago) 
VALUES ('Universidad del Valle', 39923934, 'CarnetUniversitario');
INSERT INTO Proveedores(Nombre, Telefono, IdentifiacdordePago) 
VALUES ('EGGSA', 34567893, 'Correlativo');
INSERT INTO Proveedores(Nombre, Telefono, IdentifiacdordePago) 
VALUES ('TIGO', 38492030, 'Numero');
INSERT INTO Proveedores(Nombre, Telefono, IdentifiacdordePago) 
VALUES ('AGUA MUNI', 47382910, 'Direccion');
INSERT INTO Proveedores(Nombre, Telefono, IdentifiacdordePago) 
VALUES ('CLARO', 56473829, 'Numero');

/*TABLA PAGOS DE SERVICIO*/
INSERT INTO PagosServicio(Descripcion, Fecha, TotalPago, IdCliente, IdProvedor) 
VALUES ('Pago de Telefono', '2020-09-15', 1000, 6, 6);
INSERT INTO PagosServicio(Descripcion, Fecha, TotalPago, IdCliente, IdProvedor) 
VALUES ('Pago de Energia Electrica', '2020-10-19', 300, 2, 3);
INSERT INTO PagosServicio(Descripcion, Fecha, TotalPago, IdCliente, IdProvedor) 
VALUES ('Pago de Agua Potable', '2020-12-28', 2000, 5, 5);
INSERT INTO PagosServicio(Descripcion, Fecha, TotalPago, IdCliente, IdProvedor) 
VALUES ('Pago de Telefono', '2020-09-05', 3000, 4, 4);
INSERT INTO PagosServicio(Descripcion, Fecha, TotalPago, IdCliente, IdProvedor) 
VALUES ('Pago de Colegio', '2020-10-10', 1000, 1, 1);
INSERT INTO PagosServicio(Descripcion, Fecha, TotalPago, IdCliente, IdProvedor) 
VALUES ('Pago de Universidad', '2020-11-22', 1000, 3, 2);

/*TABLA HISTORIAL*/
INSERT INTO Historial(IdPago) 
VALUES (2);
INSERT INTO Historial(IdPago) 
VALUES (1);
INSERT INTO Historial(IdPago) 
VALUES (3);
INSERT INTO Historial(IdPago) 
VALUES (4);
INSERT INTO Historial(IdPago) 
VALUES (6);
INSERT INTO Historial(IdPago) 
VALUES (5);

/*SELECTS*/
SELECT*FROM Cuentas;
SELECT*FROM Usuarios;
SELECT*FROM Clientes;
SELECT*FROM Proveedores;
SELECT*FROM PagosServicio;
SELECT*FROM Historial;

