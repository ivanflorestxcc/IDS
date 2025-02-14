USE [master]
GO
/****** Object:  Database [AkirasBoutiques]    Script Date: 12/02/2025 11:32:07 p. m. ******/
CREATE DATABASE [AkirasBoutiques]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AkirasBoutiques', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER02\MSSQL\DATA\AkirasBoutiques.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AkirasBoutiques_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER02\MSSQL\DATA\AkirasBoutiques_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [AkirasBoutiques] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AkirasBoutiques].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AkirasBoutiques] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET ARITHABORT OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AkirasBoutiques] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AkirasBoutiques] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AkirasBoutiques] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AkirasBoutiques] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AkirasBoutiques] SET  MULTI_USER 
GO
ALTER DATABASE [AkirasBoutiques] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AkirasBoutiques] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AkirasBoutiques] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AkirasBoutiques] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AkirasBoutiques] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'AkirasBoutiques', N'ON'
GO
ALTER DATABASE [AkirasBoutiques] SET QUERY_STORE = OFF
GO
USE [AkirasBoutiques]
GO
/****** Object:  Table [dbo].[categoria]    Script Date: 12/02/2025 11:32:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categoria](
	[id_categoria] [int] NOT NULL,
	[nombre] [text] NOT NULL,
	[descripcion] [text] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 12/02/2025 11:32:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[id_cliente] [int] NOT NULL,
	[nombre] [text] NOT NULL,
	[apellido] [text] NOT NULL,
	[direccion] [text] NOT NULL,
	[fec_nac] [date] NOT NULL,
	[telefono] [int] NOT NULL,
	[email] [text] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detalle]    Script Date: 12/02/2025 11:32:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalle](
	[id_detalle] [int] NOT NULL,
	[id_producto] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[precio] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_detalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 12/02/2025 11:32:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[NumeroEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Direccion] [varchar](255) NOT NULL,
	[NumeroTelefono] [varchar](15) NOT NULL,
	[Edad] [int] NOT NULL,
	[SucursalID] [int] NOT NULL,
	[CorreoElectronico] [varchar](100) NOT NULL,
	[Contrasena] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NumeroEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[factura]    Script Date: 12/02/2025 11:32:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[factura](
	[id_factura] [int] NOT NULL,
	[id_cliente] [int] NOT NULL,
	[fecha] [date] NULL,
	[id_detalle] [int] NOT NULL,
	[NumeroEmpleado] [int] NOT NULL,
	[NumeroSucursal] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto]    Script Date: 12/02/2025 11:32:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto](
	[id_producto] [int] NOT NULL,
	[nombre] [text] NOT NULL,
	[precio] [int] NOT NULL,
	[stock] [int] NOT NULL,
	[id_categoria] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 12/02/2025 11:32:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sucursal](
	[NumeroSucursal] [int] NOT NULL,
	[NombreSucursal] [varchar](100) NOT NULL,
	[Encargado] [varchar](100) NOT NULL,
	[Direccion] [varchar](255) NOT NULL,
	[NumeroTelefono] [varchar](15) NOT NULL,
	[Ciudad] [varchar](100) NOT NULL,
	[Estado] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NumeroSucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[categoria] ([id_categoria], [nombre], [descripcion]) VALUES (1, N'Blusa', N'Prenda abierta de tela fina , similar a la camisa , que usan las mujeres y los niños , y que cubre la parte superior del cuerpo')
INSERT [dbo].[categoria] ([id_categoria], [nombre], [descripcion]) VALUES (2, N'Falda', N'Prenda de vestir que cuelga de la cintura y cubre las piernas, al menos en parte. ')
INSERT [dbo].[categoria] ([id_categoria], [nombre], [descripcion]) VALUES (3, N'Pantalón', N'Prenda de vestir que se ajusta a la cintura y llega generalmente hasta el pie , cubriendo cada pierna separadamente .')
INSERT [dbo].[categoria] ([id_categoria], [nombre], [descripcion]) VALUES (4, N'Pijama', N'Conjunto de chaqueta o camiseta y pantalón a juego que se usa para dormir.')
INSERT [dbo].[categoria] ([id_categoria], [nombre], [descripcion]) VALUES (5, N'Camisa', N'Prenda de vestir que cubre el tronco hasta la cadera o medio muslo, con cuello, manga corta o larga, que se abrocha por delante con botones; suele llevar un canesú en la espalda que permite dar amplitud al cuerpo de la prenda.')
INSERT [dbo].[categoria] ([id_categoria], [nombre], [descripcion]) VALUES (6, N'Zapato', N'pieza de calzado que protege al pie, brindándole comodidad a la persona a la hora de llevar a cabo diferentes acciones')
INSERT [dbo].[categoria] ([id_categoria], [nombre], [descripcion]) VALUES (7, N'Chamarra', N'Prenda amplia de vestir, rústica, de abrigo, que cubre el cuerpo hasta medio muslo, hecha de piel con lana o pelo por fuera o por dentro.')
INSERT [dbo].[categoria] ([id_categoria], [nombre], [descripcion]) VALUES (8, N'Suéter', N'Prenda de punto elástico, manual o mecánico, de lana, algodón o alguna fibra sintética, cerrado o abierto por delante, con escote o cuello de distinto tipo y generalmente manga larga, que cubre el cuerpo hasta la cadera o medio muslo.')
INSERT [dbo].[categoria] ([id_categoria], [nombre], [descripcion]) VALUES (9, N'Vestido', N'Prenda que se asocia con la elegancia femenina y clásica. ')
INSERT [dbo].[categoria] ([id_categoria], [nombre], [descripcion]) VALUES (10, N'Accesorios', N'Completan el look, le dan un aire renovado a nuestras prendas. Collares, accesorios para el pelo, joyas, zapatos, carteras, cinturones')
GO
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (0, N'María Antonieta', N'García Meléndez ', N'Calle las Girasol #305 col. Jardines ', CAST(N'1989-06-15' AS Date), 1828921321, N'mariantonia@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (1, N'Óscar Germán', N'Wong Tabares ', N'Calle Revolución #879 col. México', CAST(N'1994-01-28' AS Date), 2035672143, N'germanwong@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (2, N'Valentina Anastasia', N'Huerta Corral', N'Calle Flamenco #3493 col. Aviar', CAST(N'1992-07-03' AS Date), 0, N'valehue92@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (3, N'Luisa Beatriz ', N'Rodríguez Estrada', N'Calle Ruiseño #1903 col. Aviar', CAST(N'1995-02-21' AS Date), 2034598383, N'betyrodri@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (4, N'Ana Maribel ', N'Cedillo Núñez ', N'Calle Ecuador #278 col. Latinoamérica', CAST(N'1986-09-25' AS Date), 1783920982, N'anamari86@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (5, N'Sara Valeria ', N'Jiménez Sánchez', N'calle Amarillo #890 col. Colores', CAST(N'1990-10-23' AS Date), 1025675109, N'valesarita@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (6, N'Rodrigo Enrique', N'García Monreal ', N'Calle Guadiana #905 fracc. Guadiana', CAST(N'1993-03-29' AS Date), 2146982372, N'rodrimonreal@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (7, N'Marina Gabriela', N'Villanueva Barrios', N'Calle Luna #560 fracc. Cosmos', CAST(N'1993-06-04' AS Date), 1161728372, N'marigaby@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (8, N'Luis Francisco', N'Bernal Casas', N'Calle Porfirio #246 col. Revolución', CAST(N'1996-01-22' AS Date), 2034573621, N'luispacober@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (9, N'Rebeca Elizabeth ', N'Puentes Ríos', N'Calle Domingo #1929 col. Buendia', CAST(N'1988-10-18' AS Date), 123459834, N'rebepuentes88@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (10, N'Yesenia Beatriz', N'Quintanilla Torres', N'Calle Roble #405 col. Singapur', CAST(N'1984-01-24' AS Date), 1328902183, N'betyquintanilla@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (11, N'Rodrigo Ismael', N'Silva Ugarte', N'Calle Tamarino #1209 fracc. Mezquital', CAST(N'1996-05-14' AS Date), 1436784145, N'rodriisma@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (12, N'Rosa Hortencia ', N'Rosas Morales', N'Calle Margarita #2892 col Jardines', CAST(N'1983-01-15' AS Date), 1923925489, N'rositarosas@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (13, N'Gabriela Cassandra', N'Quiñones Escobar', N'Calle Dolores #239 col. Del Río', CAST(N'1987-11-15' AS Date), 2113840192, N'cassqui87@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (14, N'Sara Roberta ', N'Moreno Moreno', N'Calle Colinas #912 col. Colinas del norte', CAST(N'1982-12-14' AS Date), 1244930285, N'saritarober@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (15, N'María Fernanda', N'Ávila Nuñez', N'Calle Nunó #594 col. Personajes', CAST(N'1995-09-13' AS Date), 1207583929, N'mariafer95@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (16, N'Camilo Isaac', N'Peña Huerta', N'Calle Niños Héroes #1239 col. México ', CAST(N'1987-01-20' AS Date), 1293904389, N'camisac@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (17, N'Zayra Manuela', N'Gómez López ', N'Calle Rosales #390 Fracc. Las flores', CAST(N'1977-10-28' AS Date), 1283094033, N'zaygom77@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (18, N'Rosa Alicia ', N'Reyes Nájera ', N'Calle Flautín #1459 col. La Orquesta', CAST(N'1984-11-20' AS Date), 125940940, N'rosealice84@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (19, N'Juan Roberto  ', N'Ortega Rincón', N'Calle Los Álamos #4902 Fracc. Monreal', CAST(N'1986-07-31' AS Date), 1489328581, N'roberortega@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (21, N'Sandra Isabella ', N'Pereyra Félix ', N'Calle Azalea #901 Fracc. Las Flores', CAST(N'1990-04-09' AS Date), 1289394301, N'peyfex90@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (22, N'Rogelia Margarita ', N'Cruz Santos ', N'Calle Golondrinas #9023 col. Felipe Ángeles', CAST(N'1986-05-11' AS Date), 1925678302, N'margaritacruz@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (23, N'Julieta Odette ', N'Rocha Ramazzoti', N'Calle Río Bravo #2013 Fracc. TierraBlanca', CAST(N'1993-07-16' AS Date), 1293391028, N'julyramazzoti@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (24, N'Dante Eduardo', N'Dolores Meza', N'Calle Miguel Ángel #439 col. Renacimiento', CAST(N'1993-07-15' AS Date), 2023950349, N'danteduardo93@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (25, N'Bianca Alejandra', N'Rosales Rosas', N'Calle Rueda #1924 col. Emprendedores ', CAST(N'1987-06-26' AS Date), 1821039583, N'rosasbianca@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (26, N'Fabiola Elena', N'Reséndiz Amador ', N'Calle Melchor Ocampo #901 col. Libertadores', CAST(N'1994-08-18' AS Date), 1294024901, N'fabielle94@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (27, N'Miriam Karina', N'Lara Ruíz', N'Sta. María del Oro #423 col. Nazas', CAST(N'1990-07-26' AS Date), 2014893018, N'mirilara@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (28, N'Valeria Jimena', N'De la O Tabares ', N'Calle Crisantema #311 col. PRI Amp', CAST(N'1986-08-15' AS Date), 1024792478, N'valejimena@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (29, N'Juan Humberto', N'Martínez Fuentes', N'Calle Agustín de Anda #608 fracc. Valle del Guadiana', CAST(N'1989-10-17' AS Date), 1924802840, N'juanmar@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (30, N'Melissa Ximena', N'Zaragoza Suárez', N'Calle Río Piaxtla #4380 col Valle del Sur', CAST(N'1986-05-15' AS Date), 2018438929, N'melizara@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (31, N'Cristina Miranda ', N'Morales Rueda ', N'Calle Magnolia #113 Fracc Jardines', CAST(N'1987-08-16' AS Date), 1034920394, N'crismiranda@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (32, N'Bruno Alejandro', N'Miranda López', N'Calle del Roble #702, fracc. Jardines del Real IV', CAST(N'1988-06-29' AS Date), 1893019749, N'brunomiranda@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (33, N'Helena Emilia', N'Robles Espinoza ', N'Calle Plan de Agua Prieta #128 Col Emiliano Zapata', CAST(N'1987-10-28' AS Date), 1892081803, N'helenarobles@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (34, N'Teresa Renata', N'Zavala Piña', N'Calle Chiapas #205 col. Morga', CAST(N'1985-02-20' AS Date), 1029482019, N'terezavala@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (35, N'Wendy Carolina ', N'Piña Quiñones', N'Calle Gral Fco. Arrieta #211 col. Gral Domingo Arrieta', CAST(N'1995-07-19' AS Date), 1928001001, N'carowendy@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (36, N'Jesús Alberto', N'Hidalgo Correa ', N'Calle 3 de Agosto #308, col Tierra y Libertad', CAST(N'1985-01-18' AS Date), 1890290832, N'chuybeto@gmail.com')
GO
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (1, 32, 4, 1600)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (2, 8, 3, 690)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (3, 39, 4, 200)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (4, 26, 1, 110)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (5, 30, 4, 1800)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (6, 2, 5, 750)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (7, 14, 4, 1600)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (8, 36, 2, 1500)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (9, 25, 1, 1050)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (10, 34, 1, 1350)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (11, 12, 6, 1500)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (12, 13, 1, 150)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (13, 21, 1, 150)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (14, 24, 8, 1600)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (15, 31, 2, 900)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (16, 22, 1, 600)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (17, 5, 7, 1750)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (18, 3, 4, 400)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (19, 11, 2, 558)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (20, 4, 6, 600)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (21, 7, 6, 720)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (22, 10, 4, 1200)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (23, 33, 4, 2400)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (24, 39, 10, 500)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (25, 20, 8, 2400)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (26, 27, 2, 1400)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (27, 35, 4, 4200)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (28, 29, 4, 1200)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (29, 38, 6, 450)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (30, 28, 1, 750)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (31, 18, 6, 1620)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (32, 25, 6, 6300)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (33, 30, 3, 1350)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (34, 26, 5, 5500)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (35, 40, 10, 1000)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (36, 21, 9, 4950)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (37, 12, 3, 750)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (38, 8, 6, 1380)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (39, 11, 4, 1116)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (40, 4, 8, 800)
GO
SET IDENTITY_INSERT [dbo].[Empleados] ON 

INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (1, N'Sonia Alejandra Fernández Moreno', N'Calle Roble #507', N'444 783 1225', 40, 1, N'sonia.fernandez@akiras.com', N'pass123')
INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (2, N'Ana López', N'Calle Fresno #23', N'444 111 2233', 28, 1, N'ana.lopez@akiras.com', N'pass123')
INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (3, N'Carlos Mendoza', N'Calle Pino #45', N'444 222 3344', 32, 1, N'carlos.mendoza@akiras.com', N'pass123')
INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (4, N'Elena Ruiz', N'Av. Juárez #567', N'444 333 4455', 26, 1, N'elena.ruiz@akiras.com', N'pass123')
INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (5, N'Miguel Torres', N'Calle Naranjo #89', N'444 444 5566', 30, 1, N'miguel.torres@akiras.com', N'pass123')
INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (6, N'Lucía Ramírez', N'Calle Olmo #90', N'444 555 6677', 27, 1, N'lucia.ramirez@akiras.com', N'pass123')
INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (7, N'Fernando Calderón Ayala', N'Calle Dr. Jesús Díaz de León #438', N'449 378 092', 45, 2, N'fernando.calderon@akiras.com', N'pass123')
INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (8, N'Valeria Gómez', N'Calle Nogal #12', N'449 111 2222', 29, 2, N'valeria.gomez@akiras.com', N'pass123')
INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (9, N'Roberto Sánchez', N'Av. López Mateos #567', N'449 333 4444', 33, 2, N'roberto.sanchez@akiras.com', N'pass123')
INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (10, N'Carla Ramírez', N'Calle Jacarandas #89', N'449 555 6666', 31, 2, N'carla.ramirez@akiras.com', N'pass123')
INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (11, N'Diego Herrera', N'Calle Pirul #90', N'449 777 8888', 28, 2, N'diego.herrera@akiras.com', N'pass123')
INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (12, N'Laura Flores', N'Av. Universidad #321', N'449 999 0000', 27, 2, N'laura.flores@akiras.com', N'pass123')
INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (13, N'Daniela Fernanda Díaz Ordaz', N'Av. de la Marina #6204', N'669 293 2059', 38, 3, N'daniela.diaz@akiras.com', N'pass123')
INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (14, N'Gabriel Soto', N'Calle del Mar #34', N'669 111 2233', 29, 3, N'gabriel.soto@akiras.com', N'pass123')
INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (15, N'Mariana Reyes', N'Av. Insurgentes #50', N'669 222 3344', 27, 3, N'mariana.reyes@akiras.com', N'pass123')
INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (16, N'Ricardo Núñez', N'Calle Olas Altas #75', N'669 333 4455', 32, 3, N'ricardo.nunez@akiras.com', N'pass123')
INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (17, N'Paula Herrera', N'Av. Reforma #100', N'669 444 5566', 30, 3, N'paula.herrera@akiras.com', N'pass123')
INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (18, N'Javier Pérez', N'Calle Costa Azul #120', N'669 555 6677', 28, 3, N'javier.perez@akiras.com', N'pass123')
INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (19, N'Mario Alberto Jiménez Salcido', N'Av. Manuel J. Clouthier 525', N'333 784 1230', 42, 4, N'mario.jimenez@akiras.com', N'pass123')
INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (20, N'Andrea Pérez', N'Calle Hidalgo #789', N'333 111 2233', 29, 4, N'andrea.perez@akiras.com', N'pass123')
INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (21, N'Rodrigo González', N'Calle Morelos #456', N'333 222 3344', 31, 4, N'rodrigo.gonzalez@akiras.com', N'pass123')
INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (22, N'Sofía Martínez', N'Calle Juárez #654', N'333 333 4455', 27, 4, N'sofia.martinez@akiras.com', N'pass123')
INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (23, N'Emilio Castro', N'Av. Vallarta #321', N'333 444 5566', 30, 4, N'emilio.castro@akiras.com', N'pass123')
INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (24, N'Fernanda Ortiz', N'Calle Independencia #147', N'333 555 6677', 28, 4, N'fernanda.ortiz@akiras.com', N'pass123')
INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (25, N'Yesenia Guadalupe Campos Rojo', N'Av. Melchor Ocampo #2528', N'614 390 6721', 39, 5, N'yesenia.campos@akiras.com', N'pass123')
INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (26, N'Luis Navarro', N'Calle Revolución #789', N'614 111 2233', 32, 5, N'luis.navarro@akiras.com', N'pass123')
INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (27, N'Patricia Méndez', N'Calle Allende #456', N'614 222 3344', 28, 5, N'patricia.mendez@akiras.com', N'pass123')
INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (28, N'Gerardo Ríos', N'Calle Ocampo #654', N'614 333 4455', 31, 5, N'gerardo.rios@akiras.com', N'pass123')
INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (29, N'Mónica Estrada', N'Av. Juárez #321', N'614 444 5566', 30, 5, N'monica.estrada@akiras.com', N'pass123')
INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (30, N'César Torres', N'Calle Victoria #147', N'614 555 6677', 29, 5, N'cesar.torres@akiras.com', N'pass123')
INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (31, N'Tamara Alejandra Bernal Ramos', N'Calle Constitución #106', N'618 196 2954', 41, 6, N'tamara.bernal@akiras.com', N'pass123')
INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (32, N'Jorge Ramírez', N'Calle Hidalgo #452', N'618 111 2244', 33, 6, N'jorge.ramirez@akiras.com', N'pass123')
INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (33, N'Lucía Gómez', N'Av. Central #678', N'618 222 3355', 29, 6, N'lucia.gomez@akiras.com', N'pass123')
INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (34, N'Alberto Salas', N'Calle Morelia #999', N'618 333 4466', 32, 6, N'alberto.salas@akiras.com', N'pass123')
INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (35, N'Gabriela Núñez', N'Av. Reforma #888', N'618 444 5577', 30, 6, N'gabriela.nunez@akiras.com', N'pass123')
INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (36, N'Ricardo Fuentes', N'Calle Victoria #123', N'618 555 6688', 28, 6, N'ricardo.fuentes@akiras.com', N'pass123')
INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (37, N'Samuel Enrique Barrios Enciso', N'Av. Hidalgo #338', N'492 930 1250', 45, 7, N'samuel.barrios@akiras.com', N'pass123')
INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (38, N'Elena Rivas', N'Calle Zaragoza #567', N'492 111 2299', 34, 7, N'elena.rivas@akiras.com', N'pass123')
INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (39, N'Carlos Méndez', N'Calle Revolución #101', N'492 222 3399', 31, 7, N'carlos.mendez@akiras.com', N'pass123')
INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (40, N'Verónica López', N'Av. Benito Juárez #222', N'492 333 4499', 29, 7, N'veronica.lopez@akiras.com', N'pass123')
INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (41, N'Daniel Ortega', N'Calle Independencia #333', N'492 444 5599', 30, 7, N'daniel.ortega@akiras.com', N'pass123')
INSERT [dbo].[Empleados] ([NumeroEmpleado], [Nombre], [Direccion], [NumeroTelefono], [Edad], [SucursalID], [CorreoElectronico], [Contrasena]) VALUES (42, N'Mariana Velázquez', N'Calle Insurgentes #444', N'492 555 6699', 27, 7, N'mariana.velazquez@akiras.com', N'pass123')
SET IDENTITY_INSERT [dbo].[Empleados] OFF
GO
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle], [NumeroEmpleado], [NumeroSucursal]) VALUES (1, 9, CAST(N'2021-12-22' AS Date), 1, 1, 1)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle], [NumeroEmpleado], [NumeroSucursal]) VALUES (2, 9, CAST(N'2021-10-11' AS Date), 2, 1, 1)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle], [NumeroEmpleado], [NumeroSucursal]) VALUES (3, 4, CAST(N'2021-12-07' AS Date), 3, 1, 1)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle], [NumeroEmpleado], [NumeroSucursal]) VALUES (4, 4, CAST(N'2021-08-24' AS Date), 4, 1, 1)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle], [NumeroEmpleado], [NumeroSucursal]) VALUES (5, 1, CAST(N'2021-09-24' AS Date), 5, 1, 1)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle], [NumeroEmpleado], [NumeroSucursal]) VALUES (6, 1, CAST(N'2022-01-08' AS Date), 6, 1, 1)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle], [NumeroEmpleado], [NumeroSucursal]) VALUES (7, 0, CAST(N'2022-01-01' AS Date), 7, 1, 1)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle], [NumeroEmpleado], [NumeroSucursal]) VALUES (8, 0, CAST(N'2021-12-28' AS Date), 8, 1, 1)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle], [NumeroEmpleado], [NumeroSucursal]) VALUES (9, 3, CAST(N'2022-01-11' AS Date), 9, 1, 1)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle], [NumeroEmpleado], [NumeroSucursal]) VALUES (10, 3, CAST(N'2022-01-16' AS Date), 10, 1, 1)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle], [NumeroEmpleado], [NumeroSucursal]) VALUES (11, 2, CAST(N'2021-07-13' AS Date), 11, 1, 1)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle], [NumeroEmpleado], [NumeroSucursal]) VALUES (12, 2, CAST(N'2022-01-05' AS Date), 12, 1, 1)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle], [NumeroEmpleado], [NumeroSucursal]) VALUES (13, 6, CAST(N'2022-01-12' AS Date), 13, 1, 1)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle], [NumeroEmpleado], [NumeroSucursal]) VALUES (14, 6, CAST(N'2021-12-22' AS Date), 14, 1, 1)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle], [NumeroEmpleado], [NumeroSucursal]) VALUES (15, 5, CAST(N'2021-11-18' AS Date), 15, 1, 1)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle], [NumeroEmpleado], [NumeroSucursal]) VALUES (16, 5, CAST(N'2022-01-09' AS Date), 16, 1, 1)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle], [NumeroEmpleado], [NumeroSucursal]) VALUES (17, 7, CAST(N'2021-10-12' AS Date), 17, 1, 1)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle], [NumeroEmpleado], [NumeroSucursal]) VALUES (18, 7, CAST(N'2021-12-30' AS Date), 18, 1, 1)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle], [NumeroEmpleado], [NumeroSucursal]) VALUES (19, 8, CAST(N'2022-01-17' AS Date), 19, 1, 1)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle], [NumeroEmpleado], [NumeroSucursal]) VALUES (20, 8, CAST(N'2021-12-21' AS Date), 20, 1, 1)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle], [NumeroEmpleado], [NumeroSucursal]) VALUES (21, 26, CAST(N'2021-10-08' AS Date), 21, 1, 1)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle], [NumeroEmpleado], [NumeroSucursal]) VALUES (22, 30, CAST(N'2022-01-19' AS Date), 22, 1, 1)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle], [NumeroEmpleado], [NumeroSucursal]) VALUES (23, 31, CAST(N'2021-07-16' AS Date), 23, 1, 1)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle], [NumeroEmpleado], [NumeroSucursal]) VALUES (24, 35, CAST(N'2021-09-23' AS Date), 24, 1, 1)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle], [NumeroEmpleado], [NumeroSucursal]) VALUES (25, 25, CAST(N'2021-06-14' AS Date), 25, 1, 1)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle], [NumeroEmpleado], [NumeroSucursal]) VALUES (26, 29, CAST(N'2021-08-19' AS Date), 26, 1, 1)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle], [NumeroEmpleado], [NumeroSucursal]) VALUES (27, 27, CAST(N'2021-11-10' AS Date), 27, 1, 1)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle], [NumeroEmpleado], [NumeroSucursal]) VALUES (28, 24, CAST(N'2022-01-22' AS Date), 28, 1, 1)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle], [NumeroEmpleado], [NumeroSucursal]) VALUES (29, 26, CAST(N'2022-01-11' AS Date), 29, 1, 1)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle], [NumeroEmpleado], [NumeroSucursal]) VALUES (30, 36, CAST(N'2022-01-04' AS Date), 30, 1, 1)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle], [NumeroEmpleado], [NumeroSucursal]) VALUES (31, 12, CAST(N'2021-12-07' AS Date), 31, 1, 1)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle], [NumeroEmpleado], [NumeroSucursal]) VALUES (32, 14, CAST(N'2022-01-06' AS Date), 32, 1, 1)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle], [NumeroEmpleado], [NumeroSucursal]) VALUES (33, 24, CAST(N'2022-01-03' AS Date), 33, 1, 1)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle], [NumeroEmpleado], [NumeroSucursal]) VALUES (34, 17, CAST(N'2021-11-11' AS Date), 34, 1, 1)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle], [NumeroEmpleado], [NumeroSucursal]) VALUES (35, 31, CAST(N'2021-11-16' AS Date), 35, 1, 1)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle], [NumeroEmpleado], [NumeroSucursal]) VALUES (36, 36, CAST(N'2022-01-10' AS Date), 36, 1, 1)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle], [NumeroEmpleado], [NumeroSucursal]) VALUES (37, 23, CAST(N'2021-11-17' AS Date), 37, 1, 1)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle], [NumeroEmpleado], [NumeroSucursal]) VALUES (38, 29, CAST(N'2022-01-03' AS Date), 38, 1, 1)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle], [NumeroEmpleado], [NumeroSucursal]) VALUES (39, 26, CAST(N'2021-12-14' AS Date), 39, 1, 1)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle], [NumeroEmpleado], [NumeroSucursal]) VALUES (40, 18, CAST(N'2022-01-20' AS Date), 40, 1, 1)
GO
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (1, N'Blusa de flores', 200, 70, 1)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (2, N'Blusa tipo escocesa ', 150, 35, 1)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (3, N'Blusa rayada manga larga', 100, 37, 1)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (4, N'Blusa con estampado animado', 100, 26, 1)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (5, N'Falda larga', 200, 45, 2)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (6, N'Falda tipo escocesa ', 250, 12, 2)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (7, N'Falda tipo escolar ', 120, 68, 2)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (8, N'Falda ejecutiva ', 230, 20, 2)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (9, N'Pantalón acampanado ', 350, 23, 3)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (10, N'Skinny Jeans', 300, 56, 3)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (11, N'Pantalón Pants ', 279, 30, 3)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (12, N'Shorts de Mezclilla', 250, 48, 3)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (13, N'Camisón', 150, 9, 4)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (14, N'Conjunto de pijama', 400, 26, 4)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (15, N'Blusa de pijama', 100, 45, 4)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (16, N'Pantalón de pijama', 150, 20, 4)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (17, N'Camisa ejecutiva ', 240, 36, 5)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (18, N'Camisa de flores', 270, 40, 5)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (19, N'Camisa tipo escolar', 290, 59, 5)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (20, N'Camisa con bordado', 300, 10, 5)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (21, N'Tennis suela alta', 550, 9, 6)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (22, N'Zapato de tacón ', 600, 23, 6)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (23, N'Bota alta', 650, 1, 6)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (24, N'Pantuflas', 200, 24, 6)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (25, N'Abrigo largo', 1050, 3, 7)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (26, N'Chamarra pluma de ganso', 1100, 17, 7)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (27, N'Chamarra delgada ', 700, 20, 7)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (28, N'Cazadora', 750, 12, 7)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (29, N'Suéter cerrado', 300, 23, 8)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (30, N'Sudadera deportiva', 450, 45, 8)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (31, N'Suéter tejido', 450, 35, 8)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (32, N'Suéter estampado', 400, 19, 8)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (33, N'Vestido corto de día', 600, 3, 9)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (34, N'Vestido de noche largo ', 1350, 23, 9)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (35, N'Vestido ejecutivo', 1050, 67, 9)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (36, N'Vestido fantasía para niña', 750, 5, 9)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (37, N'Collar', 150, 9, 10)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (38, N'Pulseras', 75, 78, 10)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (39, N'Aretes', 50, 59, 10)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (40, N'Accesorios para el cabello ', 100, 30, 10)
GO
INSERT [dbo].[Sucursal] ([NumeroSucursal], [NombreSucursal], [Encargado], [Direccion], [NumeroTelefono], [Ciudad], [Estado]) VALUES (1, N'Akira’s Boutique: Las Mercedes', N'Sonia Alejandra Fernández Moreno', N'Calle Roble #507 Fracc. Las Mercedes', N'444 783 1225', N'San Luis Potosí', N'San Luis Potosí')
INSERT [dbo].[Sucursal] ([NumeroSucursal], [NombreSucursal], [Encargado], [Direccion], [NumeroTelefono], [Ciudad], [Estado]) VALUES (2, N'Akira’s Boutique: Obraje', N'Fernando Calderón Ayala', N'Calle Dr. Jesús Díaz de León #438 col. Obraje', N'449 378 092', N'Aguascalientes', N'Aguascalientes')
INSERT [dbo].[Sucursal] ([NumeroSucursal], [NombreSucursal], [Encargado], [Direccion], [NumeroTelefono], [Ciudad], [Estado]) VALUES (3, N'Akira’s Boutique: Galerías Mazatlán', N'Daniela Fernanda Díaz Ordaz', N'Av. de la Marina #6204, Marina, local 35', N'669 293 2059', N'Mazatlán', N'Sinaloa')
INSERT [dbo].[Sucursal] ([NumeroSucursal], [NombreSucursal], [Encargado], [Direccion], [NumeroTelefono], [Ciudad], [Estado]) VALUES (4, N'Akira’s Boutique: Zapopan', N'Mario Alberto Jiménez Salcido', N'Av. Manuel J. Clouthier 525 col. Benito Juárez', N'333 784 1230', N'Zapopan', N'Jalisco')
INSERT [dbo].[Sucursal] ([NumeroSucursal], [NombreSucursal], [Encargado], [Direccion], [NumeroTelefono], [Ciudad], [Estado]) VALUES (5, N'Akira’s Boutique: Melchor', N'Yesenia Guadalupe Campos Rojo', N'Av. Melchor Ocampo #2528 Zona Centro', N'614 390 6721', N'Chihuahua', N'Chihuahua')
INSERT [dbo].[Sucursal] ([NumeroSucursal], [NombreSucursal], [Encargado], [Direccion], [NumeroTelefono], [Ciudad], [Estado]) VALUES (6, N'Akira’s Boutique: Constitución', N'Tamara Alejandra Bernal Ramos', N'Calle Constitución #106 Zona Centro', N'618 196 2954', N'Durango', N'Durango')
INSERT [dbo].[Sucursal] ([NumeroSucursal], [NombreSucursal], [Encargado], [Direccion], [NumeroTelefono], [Ciudad], [Estado]) VALUES (7, N'Akira’s Boutique: Centro', N'Samuel Enrique Barrios Enciso', N'Av. Hidalgo #338 Zacatecas Centro', N'492 930 1250', N'Zacatecas', N'Zacatecas')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Empleado__531402F36196832C]    Script Date: 12/02/2025 11:32:08 p. m. ******/
ALTER TABLE [dbo].[Empleados] ADD UNIQUE NONCLUSTERED 
(
	[CorreoElectronico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[detalle]  WITH CHECK ADD  CONSTRAINT [id_producto] FOREIGN KEY([id_producto])
REFERENCES [dbo].[producto] ([id_producto])
GO
ALTER TABLE [dbo].[detalle] CHECK CONSTRAINT [id_producto]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD FOREIGN KEY([SucursalID])
REFERENCES [dbo].[Sucursal] ([NumeroSucursal])
GO
ALTER TABLE [dbo].[factura]  WITH CHECK ADD  CONSTRAINT [FK_factura_Empleados] FOREIGN KEY([NumeroEmpleado])
REFERENCES [dbo].[Empleados] ([NumeroEmpleado])
GO
ALTER TABLE [dbo].[factura] CHECK CONSTRAINT [FK_factura_Empleados]
GO
ALTER TABLE [dbo].[factura]  WITH CHECK ADD  CONSTRAINT [FK_factura_Sucursal] FOREIGN KEY([NumeroSucursal])
REFERENCES [dbo].[Sucursal] ([NumeroSucursal])
GO
ALTER TABLE [dbo].[factura] CHECK CONSTRAINT [FK_factura_Sucursal]
GO
ALTER TABLE [dbo].[factura]  WITH CHECK ADD  CONSTRAINT [id_cliente] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[cliente] ([id_cliente])
GO
ALTER TABLE [dbo].[factura] CHECK CONSTRAINT [id_cliente]
GO
ALTER TABLE [dbo].[factura]  WITH CHECK ADD  CONSTRAINT [id_detalle] FOREIGN KEY([id_detalle])
REFERENCES [dbo].[detalle] ([id_detalle])
GO
ALTER TABLE [dbo].[factura] CHECK CONSTRAINT [id_detalle]
GO
ALTER TABLE [dbo].[producto]  WITH CHECK ADD  CONSTRAINT [id_categoria] FOREIGN KEY([id_categoria])
REFERENCES [dbo].[categoria] ([id_categoria])
GO
ALTER TABLE [dbo].[producto] CHECK CONSTRAINT [id_categoria]
GO
USE [master]
GO
ALTER DATABASE [AkirasBoutiques] SET  READ_WRITE 
GO
