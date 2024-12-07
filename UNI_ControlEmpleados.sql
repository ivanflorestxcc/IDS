CREATE DATABASE UNI_ControlEmpleados;


-- Tabla CentrosDeTrabajo
CREATE TABLE CentroDeTrabajo (
    NumCentro INT PRIMARY KEY,
    NombreCentro VARCHAR(50) NOT NULL,
    Ciudad VARCHAR(50) NOT NULL
);

-- Tabla Puestos
CREATE TABLE Puesto (
    NombrePuesto VARCHAR(50) PRIMARY KEY,
    DescripcionPuesto VARCHAR(100) NOT NULL
);

-- Tabla Empleados
CREATE TABLE Empleado (
    NumEmpleado INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(50) NOT NULL,
    ApellidoPaterno VARCHAR(50) NOT NULL,
    ApellidoMaterno VARCHAR(50),
    FechaNacimiento DATE NOT NULL,
    RFC CHAR(13) NOT NULL,
    EsDirectivo BIT NOT NULL,
    NumCentro INT FOREIGN KEY REFERENCES CentroDeTrabajo(NumCentro),
    NombrePuesto VARCHAR(50) FOREIGN KEY REFERENCES Puesto(NombrePuesto)
);

-- Insertar registros en CentroDeTrabajo
INSERT INTO CentroDeTrabajo VALUES
(000201, 'Tiendas Ángel Flores Ropa', 'Culiacán'),
(000202, 'Tiendas Ángel Flores Muebles', 'Culiacán'),
(000203, 'Tiendas Ángel Flores Cajas', 'Culiacán'),
(049001, 'La Primavera Ropa', 'Culiacán'),
(049002, 'La Primavera Muebles', 'Culiacán'),
(049003, 'La Primavera Cajas', 'Culiacán');

-- Insertar registros en Puesto
INSERT INTO Puesto (NombrePuesto, DescripcionPuesto)
VALUES
('Vendedor', 'Atención y venta de productos.'),
('Vendedora', 'Atención y venta de productos.'),
('Cajero', 'Manejo de caja registradora y cobros.'),
('Cajera', 'Manejo de caja registradora y cobros.'),
('Gerente', 'Gestión y administración del centro.'),
('Gerente General', 'Responsable de toda la organización.');

-- Insertar registros en Empleado
INSERT INTO Empleado (Nombre, ApellidoPaterno, ApellidoMaterno, FechaNacimiento, RFC, EsDirectivo, NumCentro, NombrePuesto)
VALUES
('Juan', 'Pérez', 'López', '1985-05-12', 'PELJ850512HDF', 0, '000201', 'Vendedor'),
('Ana', 'García', 'Sánchez', '1990-07-23', 'GASD900723MDF', 0, '000202', 'Vendedora'),
('Luis', 'Martínez', 'Hernández', '1992-11-04', 'MAHL921104HDF', 0, '000203', 'Cajero'),
('Sofía', 'Ramírez', 'Delgado', '1988-02-19', 'RADS880219MDF', 0, '049001', 'Vendedora'),
('Pedro', 'Torres', 'Ortiz', '1995-06-15', 'TOOP950615HDF', 0, '049002', 'Vendedor'),
('Elena', 'Chávez', 'Núñez', '1993-09-28', 'CHNE930928MDF', 0, '049003', 'Cajera'),
('Carlos', 'Gutiérrez', 'Vázquez', '1978-04-12', 'GUVA780412HDF', 1, '000201', 'Gerente'),
('Mariana', 'López', 'Juárez', '1983-10-07', 'LOJU831007MDF', 1, '000202', 'Gerente'),
('Francisco', 'Gómez', 'Pérez', '1981-01-15', 'GOPF810115HDF', 1, '000203', 'Gerente'),
('Julia', 'Morales', 'Hernández', '1975-03-20', 'MOHJ750320HDF', 1, '049001', 'Gerente'),
('Rodrigo', 'Castro', 'Delgado', '1979-08-22', 'CADR790822HDF', 1, '049002', 'Gerente'),
('Clara', 'Méndez', 'Sánchez', '1984-12-05', 'MESC841205HDF', 1, '049003', 'Gerente'),
('Andrés', 'Velasco', 'Ramírez', '1970-09-11', 'VERA700911HDF', 1, '049003', 'Gerente');