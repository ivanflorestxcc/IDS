
/* =====================================================
  BD TiendaSara
  
  ===================================================== */

-- =====================================
-- ELIMINAR TABLAS SI EXISTEN (ORDEN CORRECTO)
-- =====================================
IF OBJECT_ID('DetallePedido', 'U') IS NOT NULL DROP TABLE DetallePedido;
IF OBJECT_ID('Pedidos', 'U') IS NOT NULL DROP TABLE Pedidos;
IF OBJECT_ID('Productos', 'U') IS NOT NULL DROP TABLE Productos;
IF OBJECT_ID('Usuarios', 'U') IS NOT NULL DROP TABLE Usuarios;
IF OBJECT_ID('Roles', 'U') IS NOT NULL DROP TABLE Roles;

-- =====================================
-- CREACIÓN DE TABLAS
-- =====================================

CREATE TABLE Roles (
    IdRol INT IDENTITY(1,1) PRIMARY KEY,
    NombreRol VARCHAR(50) NOT NULL
);

CREATE TABLE Usuarios (
    IdUsuario INT IDENTITY(1,1) PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    PasswordHash VARCHAR(255) NOT NULL,
    IdRol INT NOT NULL,
    CONSTRAINT FK_Usuarios_Roles
        FOREIGN KEY (IdRol) REFERENCES Roles(IdRol)
);

CREATE TABLE Productos (
    IdProducto INT IDENTITY(1,1) PRIMARY KEY,
    NombreProducto VARCHAR(150) NOT NULL,
    Descripcion VARCHAR(255),
    Precio DECIMAL(10,2) NOT NULL,
    Stock INT NOT NULL
);

CREATE TABLE Pedidos (
    IdPedido INT IDENTITY(1,1) PRIMARY KEY,
    FechaPedido DATETIME DEFAULT GETDATE(),
    IdUsuario INT NOT NULL,
    CONSTRAINT FK_Pedidos_Usuarios
        FOREIGN KEY (IdUsuario) REFERENCES Usuarios(IdUsuario)
);

CREATE TABLE DetallePedido (
    IdDetalle INT IDENTITY(1,1) PRIMARY KEY,
    IdPedido INT NOT NULL,
    IdProducto INT NOT NULL,
    Cantidad INT NOT NULL,
    PrecioUnitario DECIMAL(10,2) NOT NULL,
    CONSTRAINT FK_DetallePedido_Pedidos
        FOREIGN KEY (IdPedido) REFERENCES Pedidos(IdPedido),
    CONSTRAINT FK_DetallePedido_Productos
        FOREIGN KEY (IdProducto) REFERENCES Productos(IdProducto)
);

-- =====================================
-- INSERTS
-- =====================================

-- Roles
INSERT INTO Roles (NombreRol) VALUES ('Administrador');
INSERT INTO Roles (NombreRol) VALUES ('Gerente');
INSERT INTO Roles (NombreRol) VALUES ('Empleado');
INSERT INTO Roles (NombreRol) VALUES ('Cliente');
INSERT INTO Roles (NombreRol) VALUES ('Supervisor');

-- Usuarios
INSERT INTO Usuarios (Nombre, Email, PasswordHash, IdRol)
VALUES ('Juan Perez', 'juan@email.com', 'hash123', 1);

INSERT INTO Usuarios (Nombre, Email, PasswordHash, IdRol)
VALUES ('Maria Lopez', 'maria@email.com', 'hash456', 2);

INSERT INTO Usuarios (Nombre, Email, PasswordHash, IdRol)
VALUES ('Carlos Ruiz', 'carlos@email.com', 'hash789', 3);

INSERT INTO Usuarios (Nombre, Email, PasswordHash, IdRol)
VALUES ('Ana Torres', 'ana@email.com', 'hash321', 4);

INSERT INTO Usuarios (Nombre, Email, PasswordHash, IdRol)
VALUES ('Luis Gomez', 'luis@email.com', 'hash654', 5);

-- Productos
INSERT INTO Productos (NombreProducto, Descripcion, Precio, Stock)
VALUES ('Laptop HP', 'Laptop 16GB RAM', 15000.00, 10);

INSERT INTO Productos (NombreProducto, Descripcion, Precio, Stock)
VALUES ('Mouse Logitech', 'Mouse inalámbrico', 350.00, 50);

INSERT INTO Productos (NombreProducto, Descripcion, Precio, Stock)
VALUES ('Teclado Mecánico', 'Teclado RGB', 1200.00, 30);

INSERT INTO Productos (NombreProducto, Descripcion, Precio, Stock)
VALUES ('Monitor 24 pulgadas', 'Monitor Full HD', 3200.00, 20);

INSERT INTO Productos (NombreProducto, Descripcion, Precio, Stock)
VALUES ('Impresora Epson', 'Impresora multifuncional', 2800.00, 15);

-- Pedidos
INSERT INTO Pedidos (IdUsuario) VALUES (1);
INSERT INTO Pedidos (IdUsuario) VALUES (2);
INSERT INTO Pedidos (IdUsuario) VALUES (3);
INSERT INTO Pedidos (IdUsuario) VALUES (4);
INSERT INTO Pedidos (IdUsuario) VALUES (5);

-- DetallePedido
INSERT INTO DetallePedido (IdPedido, IdProducto, Cantidad, PrecioUnitario)
VALUES (1, 1, 1, 15000.00);

INSERT INTO DetallePedido (IdPedido, IdProducto, Cantidad, PrecioUnitario)
VALUES (2, 2, 2, 350.00);

INSERT INTO DetallePedido (IdPedido, IdProducto, Cantidad, PrecioUnitario)
VALUES (3, 3, 1, 1200.00);

INSERT INTO DetallePedido (IdPedido, IdProducto, Cantidad, PrecioUnitario)
VALUES (4, 4, 2, 3200.00);

INSERT INTO DetallePedido (IdPedido, IdProducto, Cantidad, PrecioUnitario)
VALUES (5, 5, 1, 2800.00);
