CREATE DATABASE PRO;

USE PRO;

/*TABLA CUENTAS*/
CREATE TABLE Cuentas(CuentaNO INT(3) AUTO_INCREMENT NOT NULL,
					 TipodeCuenta VARCHAR (20) NOT NULL,
                     TipodeMoneda VARCHAR(20) NOT NULL,
                     Saldo INT(10) NOT NULL,
                     PRIMARY KEY (CuentaNO)
                     );

/*TABLA USUARIOS*/
CREATE TABLE Usuarios(IdUsuario INT(3) AUTO_INCREMENT NOT NULL,
					  Contraseña VARCHAR(10) NOT NULL,
                      NombreUsuario VARCHAR(20) NOT NULL,
                      Estado VARCHAR(20) NOT NULL,
                      Fecha DATE NOT NULL,
                      CuentaNO INT(3) NOT NULL,
                      PRIMARY KEY (IdUsuario),
                      FOREIGN KEY (CuentaNO) REFERENCES Cuentas(CuentaNO)
                      );
                  
/*TABLA CLIENTE*/
CREATE TABLE Clientes(IdCliente INT(3) AUTO_INCREMENT NOT NULL,
					  Apellidos VARCHAR(30) NOT NULL,
                      Nombres VARCHAR(30) NOT NULL,
                      Edad INT(3) NOT NULL,
                      Direccion VARCHAR(20) NOT NULL,
                      Telefonos BIGINT(30) NOT NULL,
                      Compañia VARCHAR(20),
                      Sexo VARCHAR(20) NOT NULL,
                      Nacionalidad VARCHAR(20) NOT NULL,
                      Identificacion BIGINT(30) NOT NULL,
                      IdUsuario INT(3) NOT NULL,
                      PRIMARY KEY (IdCliente),
                      FOREIGN KEY (IdUsuario) REFERENCES Usuarios(IdUsuario)
                      );
                      
/*TABLA PROVEEDORES*/
CREATE TABLE Proveedores(IdProvedor INT(3) AUTO_INCREMENT NOT NULL,
						 Nombre VARCHAR(40) NOT NULL,
                         Telefono INT(8) NOT NULL,
                         IdentifiacdordePago VARCHAR(30) NOT NULL,
                         PRIMARY KEY (IdProvedor)
                         );
                         
/*TABLA PAGOS DE SERVICIO*/
CREATE TABLE PagosServicio(IdPago INT(3) AUTO_INCREMENT NOT NULL,
						   Descripcion VARCHAR(40) NOT NULL,
                           Fecha DATE NOT NULL,
                           TotalPago INT(6) NOT NULL,
                           IdCliente INT(3) NOT NULL,
                           IdProvedor INT(3) NOT NULL,
                           PRIMARY KEY (IdPago),
                           FOREIGN KEY (IdCliente) REFERENCES Clientes(IdCliente),
                           FOREIGN KEY (IdProvedor) REFERENCES Proveedores(IdProvedor)
                           );
                           
/*TABLA HISTORIAL*/
CREATE TABLE Historial(IdHistorial INT(3) AUTO_INCREMENT NOT NULL,
					   IdPago INT(3) NOT NULL,
                       PRIMARY KEY (IdHistorial),
                       FOREIGN KEY (IdPago) REFERENCES PagosServicio(IdPago)
                       );


