CREATE SCHEMA [jaoseguros]
GO
/****** Object:  Table [dbo].[administrador]    Script Date: 20/06/2021 23:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[administrador](
	[IDAdministrador] [varchar](45) NOT NULL,
	[NombreAdmin] [varchar](50) NOT NULL,
	[ApellidoAdmin] [varchar](50) NOT NULL,
	[RepresentanteLegalAdmin] [varchar](80) NOT NULL,
	[CorreoAdmin] [varchar](40) NOT NULL,
	[TelefonoAdmin] [varchar](30) NOT NULL,
 CONSTRAINT [PK_administrador_1] PRIMARY KEY CLUSTERED 
(
	[IDAdministrador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aseguradora]    Script Date: 20/06/2021 23:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aseguradora](
	[NitAseguradora] [varchar](30) NOT NULL,
	[NombreAseguradora] [varchar](80) NOT NULL,
	[DireccionAseguradora] [varchar](80) NOT NULL,
	[TelefonoAseguradora] [varchar](30) NOT NULL,
	[CorreoAseguradora] [varchar](40) NOT NULL,
 CONSTRAINT [PK_aseguradora] PRIMARY KEY CLUSTERED 
(
	[NitAseguradora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 20/06/2021 23:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[DocumentoCliente] [varchar](45) NOT NULL,
	[NombreCliente] [varchar](50) NOT NULL,
	[ApellidoCliente] [varchar](50) NOT NULL,
	[DireccionResidenciaCliente] [varchar](80) NOT NULL,
	[TelefonoFijoCliente] [varchar](30) NOT NULL,
	[TelefonoCelularCliente] [varchar](30) NOT NULL,
	[TipoDocumentoCliente] [varchar](30) NOT NULL,
	[FechaExpedicionDocumentoCliente] [date] NOT NULL,
	[GeneroCliente] [varchar](10) NOT NULL,
	[CiudadNacimientoCliente] [varchar](30) NOT NULL,
	[DireccionTrabajoCliente] [varchar](80) NOT NULL,
	[TelefonoTrabajoCliente] [varchar](30) NOT NULL,
	[EmpleoCliente] [varchar](50) NOT NULL,
	[IDEmpleado] [varchar](45) NOT NULL,
 CONSTRAINT [PK_cliente] PRIMARY KEY CLUSTERED 
(
	[DocumentoCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cotizacion]    Script Date: 20/06/2021 23:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cotizacion](
	[IDCotizacion] [int] IDENTITY(1000,1) NOT NULL,
	[NombreProspecto] [varchar](50) NOT NULL,
	[ApellidoProspecto] [varchar](50) NOT NULL,
	[DescripcionCotizacion] [text] NOT NULL,
	[RamoCotizacion] [varchar](30) NOT NULL,
	[CorreoProspecto] [varchar](40) NOT NULL,
	[FechaCotizacion] [date] NOT NULL,
	[EnviadaCotizacion] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Cotizacion] PRIMARY KEY CLUSTERED 
(
	[IDCotizacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empleado]    Script Date: 20/06/2021 23:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleado](
	[IDEmpleado] [varchar](45) NOT NULL,
	[NombreEmpleado] [varchar](50) NOT NULL,
	[ApellidoEmpleado] [varchar](50) NOT NULL,
	[TelefonoEmpleado] [varchar](30) NOT NULL,
	[RolEmpleado] [varchar](10) NOT NULL,
	[IDAdministrador] [varchar](45) NOT NULL,
 CONSTRAINT [PK_empleado_1] PRIMARY KEY CLUSTERED 
(
	[IDEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empleado_cotizacion]    Script Date: 20/06/2021 23:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleado_cotizacion](
	[IDEmpleado] [varchar](45) NOT NULL,
	[IDCotizacion] [int] NOT NULL,
 CONSTRAINT [PK_empleado_cotizacion] PRIMARY KEY CLUSTERED 
(
	[IDCotizacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[login]    Script Date: 20/06/2021 23:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login](
	[Usuario] [varchar](45) NOT NULL,
	[Clave] [varchar](45) NOT NULL,
	[TipoUsuario] [varchar](20) NOT NULL,
 CONSTRAINT [PK_login] PRIMARY KEY CLUSTERED 
(
	[Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[poliza]    Script Date: 20/06/2021 23:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[poliza](
	[CodigoPoliza] [varchar](30) NOT NULL,
	[NombreTomador] [varchar](80) NOT NULL,
	[DocumentoTomador] [varchar](45) NOT NULL,
	[NombreBeneficiario] [varchar](80) NOT NULL,
	[DocumentoBeneficiario] [varchar](45) NOT NULL,
	[NombreAsegurado] [varchar](80) NOT NULL,
	[DocumentoAsegurado] [varchar](45) NOT NULL,
	[FechaInicioPoliza] [date] NOT NULL,
	[FechaFinPoliza] [date] NOT NULL,
	[FechaExpedicionPoliza] [date] NOT NULL,
	[TipoPagoPoliza] [varchar](20) NOT NULL,
	[PolizaVirtual] [varchar](100) NOT NULL,
	[DocumentoCliente] [varchar](45) NOT NULL,
	[NitAseguradora] [varchar](30) NOT NULL,
	[TipoPoliza] [varchar](30) NOT NULL,
 CONSTRAINT [PK_poliza] PRIMARY KEY CLUSTERED 
(
	[CodigoPoliza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[poliza_estudiantil]    Script Date: 20/06/2021 23:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[poliza_estudiantil](
	[CodigoPoliza] [varchar](30) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[Institucion] [varchar](80) NOT NULL,
	[AnuarioCursado] [varchar](45) NOT NULL,
	[CursoSemestre] [varchar](45) NOT NULL,
 CONSTRAINT [PK_poliza_estudiantil] PRIMARY KEY CLUSTERED 
(
	[CodigoPoliza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[poliza_hogar]    Script Date: 20/06/2021 23:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[poliza_hogar](
	[CodigoPoliza] [varchar](30) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[ValorEnseres] [varchar](30) NOT NULL,
	[ValorConstruccion] [varchar](30) NOT NULL,
	[Localidad] [varchar](45) NOT NULL,
 CONSTRAINT [PK_poliza_hogar] PRIMARY KEY CLUSTERED 
(
	[CodigoPoliza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[poliza_pyme]    Script Date: 20/06/2021 23:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[poliza_pyme](
	[CodigoPoliza] [varchar](30) NOT NULL,
	[ValorAsegurado] [varchar](30) NOT NULL,
	[TipoNegocio] [varchar](45) NOT NULL,
	[NombreNegocio] [varchar](80) NOT NULL,
	[LocalidadNegocio] [varchar](45) NOT NULL,
 CONSTRAINT [PK_poliza_pyme] PRIMARY KEY CLUSTERED 
(
	[CodigoPoliza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[poliza_rcmedica]    Script Date: 20/06/2021 23:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[poliza_rcmedica](
	[CodigoPoliza] [varchar](30) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[TarjetaProfesional] [varchar](30) NOT NULL,
	[FechaExpedicion] [date] NOT NULL,
 CONSTRAINT [PK_poliza_rcmedica] PRIMARY KEY CLUSTERED 
(
	[CodigoPoliza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[poliza_vehicular]    Script Date: 20/06/2021 23:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[poliza_vehicular](
	[CodigoPoliza] [varchar](30) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[TipoAuto] [varchar](45) NOT NULL,
	[Placa] [varchar](10) NOT NULL,
 CONSTRAINT [PK_poliza_vehicular] PRIMARY KEY CLUSTERED 
(
	[CodigoPoliza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[poliza_vida]    Script Date: 20/06/2021 23:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[poliza_vida](
	[CodigoPoliza] [varchar](30) NOT NULL,
	[ValorBeneficiario] [varchar](40) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
 CONSTRAINT [PK_poliza_vida] PRIMARY KEY CLUSTERED 
(
	[CodigoPoliza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reporte]    Script Date: 20/06/2021 23:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reporte](
	[IDReporte] [int] IDENTITY(5000,1) NOT NULL,
	[TipoReporte] [varchar](20) NOT NULL,
	[FechaReporte] [date] NOT NULL,
	[DescripcionReporte] [text] NOT NULL,
	[DocumentoCliente] [varchar](45) NOT NULL,
	[IDEmpleado] [varchar](45) NOT NULL,
	[RespuestaReporte] [text] NOT NULL,
 CONSTRAINT [PK_reporte] PRIMARY KEY CLUSTERED 
(
	[IDReporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[administrador] ([IDAdministrador], [NombreAdmin], [ApellidoAdmin], [RepresentanteLegalAdmin], [CorreoAdmin], [TelefonoAdmin]) VALUES (N'AD910', N'Diego', N'Escobar', N'Gabriel Rojas', N'diego_156@gmail.com', N'3161239535')
GO
INSERT [dbo].[administrador] ([IDAdministrador], [NombreAdmin], [ApellidoAdmin], [RepresentanteLegalAdmin], [CorreoAdmin], [TelefonoAdmin]) VALUES (N'AH123', N'Marco', N'Rodriguez', N'Ricardo Martinez', N'marcorodriguez65@gmail.com', N'3123569865')
GO
INSERT [dbo].[administrador] ([IDAdministrador], [NombreAdmin], [ApellidoAdmin], [RepresentanteLegalAdmin], [CorreoAdmin], [TelefonoAdmin]) VALUES (N'AN125', N'Juan', N'Vargas', N'Ricardo', N'vargasjuan639@gmail.com', N'3156869565')
GO
INSERT [dbo].[administrador] ([IDAdministrador], [NombreAdmin], [ApellidoAdmin], [RepresentanteLegalAdmin], [CorreoAdmin], [TelefonoAdmin]) VALUES (N'AN129', N'Francisco', N'Zapata', N'Gabriel Rojas', N'francisco1zap157@gmail.com', N'3159853561')
GO
INSERT [dbo].[administrador] ([IDAdministrador], [NombreAdmin], [ApellidoAdmin], [RepresentanteLegalAdmin], [CorreoAdmin], [TelefonoAdmin]) VALUES (N'AR156', N'Federico', N'Rojas', N'Ricardo Martinez', N'fede12@outlook.com', N'3126596532')
GO
INSERT [dbo].[administrador] ([IDAdministrador], [NombreAdmin], [ApellidoAdmin], [RepresentanteLegalAdmin], [CorreoAdmin], [TelefonoAdmin]) VALUES (N'AS154', N'Gustavo', N'Baeza', N'Gabriel Rojas', N'gusbaeza128@gmail.com', N'3119856432')
GO
INSERT [dbo].[administrador] ([IDAdministrador], [NombreAdmin], [ApellidoAdmin], [RepresentanteLegalAdmin], [CorreoAdmin], [TelefonoAdmin]) VALUES (N'CF126', N'Daniel', N'Jaramillo', N'Ricardo Martínez', N'daniel1jaramillo@outlook.com', N'3192543576')
GO
INSERT [dbo].[administrador] ([IDAdministrador], [NombreAdmin], [ApellidoAdmin], [RepresentanteLegalAdmin], [CorreoAdmin], [TelefonoAdmin]) VALUES (N'CK125', N'Carolina', N'Rosas', N'Ricardo Martínez', N'carolinarosas125@hotmail.com', N'3142596735')
GO
INSERT [dbo].[administrador] ([IDAdministrador], [NombreAdmin], [ApellidoAdmin], [RepresentanteLegalAdmin], [CorreoAdmin], [TelefonoAdmin]) VALUES (N'CL123', N'Juan', N'Vargas', N'Ricardo Martinez', N'vargasjuan@gmail.com', N'3126596532')
GO
INSERT [dbo].[administrador] ([IDAdministrador], [NombreAdmin], [ApellidoAdmin], [RepresentanteLegalAdmin], [CorreoAdmin], [TelefonoAdmin]) VALUES (N'CP153', N'Sofía', N'Salazar', N'Jorge Arias', N'sofia1010@yahoo.com', N'3168569435')
GO
INSERT [dbo].[administrador] ([IDAdministrador], [NombreAdmin], [ApellidoAdmin], [RepresentanteLegalAdmin], [CorreoAdmin], [TelefonoAdmin]) VALUES (N'DF265', N'Mario', N'Belalcazar', N'Ricardo Martinez', N'mariobelalcazar@gmail.com', N'3126596532')
GO
INSERT [dbo].[administrador] ([IDAdministrador], [NombreAdmin], [ApellidoAdmin], [RepresentanteLegalAdmin], [CorreoAdmin], [TelefonoAdmin]) VALUES (N'ED686', N'Oscar', N'Barrios', N'Julio Quintana', N'julquintana_12@gmail.com', N'3126549865')
GO
INSERT [dbo].[administrador] ([IDAdministrador], [NombreAdmin], [ApellidoAdmin], [RepresentanteLegalAdmin], [CorreoAdmin], [TelefonoAdmin]) VALUES (N'RD129', N'Camilo', N'Parra', N'Ricardo Martínez', N'camiloparra12@gmail.com', N'3126596532')
GO
INSERT [dbo].[administrador] ([IDAdministrador], [NombreAdmin], [ApellidoAdmin], [RepresentanteLegalAdmin], [CorreoAdmin], [TelefonoAdmin]) VALUES (N'RF125', N'José', N'Albogado', N'Ricardo Martínez', N'josealbo33@gmail.com', N'3138041724')
GO
INSERT [dbo].[administrador] ([IDAdministrador], [NombreAdmin], [ApellidoAdmin], [RepresentanteLegalAdmin], [CorreoAdmin], [TelefonoAdmin]) VALUES (N'RH145', N'Raúl ', N'Arias', N'Jorge Arias', N'rau_1526@gmail.com', N'3189564326')
GO
INSERT [dbo].[aseguradora] ([NitAseguradora], [NombreAseguradora], [DireccionAseguradora], [TelefonoAseguradora], [CorreoAseguradora]) VALUES (N'800.226.098-4', N'BBVA SEGUROS COLOMBIA SA', N'Carrera 7 No. 71-52 Torre A Piso 12', N'(1)2191100', N'clientes@bbvaseguros.com.co')
GO
INSERT [dbo].[aseguradora] ([NitAseguradora], [NombreAseguradora], [DireccionAseguradora], [TelefonoAseguradora], [CorreoAseguradora]) VALUES (N'860.002.180-7', N'Seguros Bolívar', N' Avenida Carrera 45 No. 108 - 27', N'3138041728', N'defensoria@sernarojasasociados.com')
GO
INSERT [dbo].[aseguradora] ([NitAseguradora], [NombreAseguradora], [DireccionAseguradora], [TelefonoAseguradora], [CorreoAseguradora]) VALUES (N'860.002.183-9', N'AXA COLPATRIA SEGUROS SA', N'Cl. 12b #71D-61', N'(1) 4235757', N'servicioalcliente@axacolpatria.co')
GO
INSERT [dbo].[aseguradora] ([NitAseguradora], [NombreAseguradora], [DireccionAseguradora], [TelefonoAseguradora], [CorreoAseguradora]) VALUES (N'860.009.578-6', N'Seguros del Estado', N'Carrera 11 # 90 - 20', N'307 8288', N'contactenos@segurosdelestado.com')
GO
INSERT [dbo].[aseguradora] ([NitAseguradora], [NombreAseguradora], [DireccionAseguradora], [TelefonoAseguradora], [CorreoAseguradora]) VALUES (N'860.026.182-5', N'Allianz Seguros S.A', N'Carrera 13 A 29-24', N'(1)5188801', N'servicioalcliente@allianz.co')
GO
INSERT [dbo].[aseguradora] ([NitAseguradora], [NombreAseguradora], [DireccionAseguradora], [TelefonoAseguradora], [CorreoAseguradora]) VALUES (N'860.524.654-6', N'Aseguradora solidaria de colombia', N'Calle 100 N. 9ª-45 Pisos 8 y 12', N'(031)291 6868', N'defensoriasolidaria@gmail.com')
GO
INSERT [dbo].[aseguradora] ([NitAseguradora], [NombreAseguradora], [DireccionAseguradora], [TelefonoAseguradora], [CorreoAseguradora]) VALUES (N'865.236.659-9', N'Aseguradora Los Libertadores', N'Calle 125 N° 12 - 21 Norte', N'3126596532', N'fundacionlibertadores@libertadores.com')
GO
INSERT [dbo].[aseguradora] ([NitAseguradora], [NombreAseguradora], [DireccionAseguradora], [TelefonoAseguradora], [CorreoAseguradora]) VALUES (N'890.903.407-9', N'Seguros Generales Suramericana S.A', N'Carrera 64B No. 49A - 30', N'437 8888', N' protecciondedatos@suramericana.com.co ')
GO
INSERT [dbo].[aseguradora] ([NitAseguradora], [NombreAseguradora], [DireccionAseguradora], [TelefonoAseguradora], [CorreoAseguradora]) VALUES (N'891.700.037-9', N'MAPFRE Seguros Generales de Colombia SA', N'Cra 14 No. 96-34', N'3077024 ', N'ecomerce@mapfre.com')
GO
INSERT [dbo].[cliente] ([DocumentoCliente], [NombreCliente], [ApellidoCliente], [DireccionResidenciaCliente], [TelefonoFijoCliente], [TelefonoCelularCliente], [TipoDocumentoCliente], [FechaExpedicionDocumentoCliente], [GeneroCliente], [CiudadNacimientoCliente], [DireccionTrabajoCliente], [TelefonoTrabajoCliente], [EmpleoCliente], [IDEmpleado]) VALUES (N'1000456369', N'Carlos', N'Borja', N'Calle 12 - 125 - Avenida Tucanes', N'Null', N'3126563269', N'Cédula de Ciudadanía', CAST(N'1989-02-13' AS Date), N'Masculino', N'Bogotá D.C', N'Null', N'Null', N'Estudiante', N'125DK')
GO
INSERT [dbo].[cliente] ([DocumentoCliente], [NombreCliente], [ApellidoCliente], [DireccionResidenciaCliente], [TelefonoFijoCliente], [TelefonoCelularCliente], [TipoDocumentoCliente], [FechaExpedicionDocumentoCliente], [GeneroCliente], [CiudadNacimientoCliente], [DireccionTrabajoCliente], [TelefonoTrabajoCliente], [EmpleoCliente], [IDEmpleado]) VALUES (N'1000698263', N'Benito', N'Carmelo', N'Calle 15 - Avenida Transversal 12', N'Null', N'312986326', N'Cédula de Ciudadanía', CAST(N'2019-02-04' AS Date), N'Masculino', N'Bogotá D.C', N'Null', N'Null', N'Estudiante', N'125DK')
GO
INSERT [dbo].[cliente] ([DocumentoCliente], [NombreCliente], [ApellidoCliente], [DireccionResidenciaCliente], [TelefonoFijoCliente], [TelefonoCelularCliente], [TipoDocumentoCliente], [FechaExpedicionDocumentoCliente], [GeneroCliente], [CiudadNacimientoCliente], [DireccionTrabajoCliente], [TelefonoTrabajoCliente], [EmpleoCliente], [IDEmpleado]) VALUES (N'1000789117', N'Juan', N'Vargas', N'Kr 89 N° 81 31 Sur', N'Null', N'3195610175', N'Cédula de Ciudadanía', CAST(N'2018-03-28' AS Date), N'Masculino', N'Bogotá D.C', N'Carrera 15 N° 21 - 12 Sur', N'78235632', N'Mecánico', N'125DK')
GO
INSERT [dbo].[cliente] ([DocumentoCliente], [NombreCliente], [ApellidoCliente], [DireccionResidenciaCliente], [TelefonoFijoCliente], [TelefonoCelularCliente], [TipoDocumentoCliente], [FechaExpedicionDocumentoCliente], [GeneroCliente], [CiudadNacimientoCliente], [DireccionTrabajoCliente], [TelefonoTrabajoCliente], [EmpleoCliente], [IDEmpleado]) VALUES (N'104S598F', N'Eladio', N'Domingo', N'Cra 21 - Transversal 86 Norte', N'Null', N'3106593245', N'Cédula de Ciudadanía', CAST(N'2019-08-06' AS Date), N'Masculino', N'Bogotá D.C', N'Null', N'71256365', N'Estudiante', N'129DF')
GO
INSERT [dbo].[cliente] ([DocumentoCliente], [NombreCliente], [ApellidoCliente], [DireccionResidenciaCliente], [TelefonoFijoCliente], [TelefonoCelularCliente], [TipoDocumentoCliente], [FechaExpedicionDocumentoCliente], [GeneroCliente], [CiudadNacimientoCliente], [DireccionTrabajoCliente], [TelefonoTrabajoCliente], [EmpleoCliente], [IDEmpleado]) VALUES (N'1254D68', N'Camilo', N'Carrion', N'Calle 51 N° 21 Sur', N'78265932', N'3126895362', N'Cédula de Ciudadanía', CAST(N'2012-02-20' AS Date), N'Masculino', N'Bogotá D.C', N'Carrera 12 N° 15 - 54', N'Null', N'Pintor', N'235RD')
GO
INSERT [dbo].[cliente] ([DocumentoCliente], [NombreCliente], [ApellidoCliente], [DireccionResidenciaCliente], [TelefonoFijoCliente], [TelefonoCelularCliente], [TipoDocumentoCliente], [FechaExpedicionDocumentoCliente], [GeneroCliente], [CiudadNacimientoCliente], [DireccionTrabajoCliente], [TelefonoTrabajoCliente], [EmpleoCliente], [IDEmpleado]) VALUES (N'12565SD1', N'Camila', N'Paez', N'Kr 12 N° 21 - Sur Bosa', N'3126532', N'3169863565', N'Pasaporte', CAST(N'2020-11-10' AS Date), N'Femenino', N'Madrid', N'Calle 100 N° 21 C 25', N'3126596532', N'Gerente', N'125DK')
GO
INSERT [dbo].[cliente] ([DocumentoCliente], [NombreCliente], [ApellidoCliente], [DireccionResidenciaCliente], [TelefonoFijoCliente], [TelefonoCelularCliente], [TipoDocumentoCliente], [FechaExpedicionDocumentoCliente], [GeneroCliente], [CiudadNacimientoCliente], [DireccionTrabajoCliente], [TelefonoTrabajoCliente], [EmpleoCliente], [IDEmpleado]) VALUES (N'14233595', N'Armando', N'Salinas', N'Calle 15 N° 12- 35 Sur', N'Null', N'3143520532', N'Cédula de Ciudadanía', CAST(N'2005-06-10' AS Date), N'Masculino', N'Cartagena', N'Null', N'Null', N'Conductor', N'415CD')
GO
INSERT [dbo].[cliente] ([DocumentoCliente], [NombreCliente], [ApellidoCliente], [DireccionResidenciaCliente], [TelefonoFijoCliente], [TelefonoCelularCliente], [TipoDocumentoCliente], [FechaExpedicionDocumentoCliente], [GeneroCliente], [CiudadNacimientoCliente], [DireccionTrabajoCliente], [TelefonoTrabajoCliente], [EmpleoCliente], [IDEmpleado]) VALUES (N'154SD655', N'Andrés', N'Morales', N'Kr 12 N° 12 - 21 Sur', N'Null', N'3126596532', N'Cédula de Ciudadanía', CAST(N'2011-04-22' AS Date), N'Masculino', N'Bogotá D.C', N'Kr 12 N° 12 - 154 Sur', N'3126533265', N'Mecánico', N'125DK')
GO
INSERT [dbo].[cliente] ([DocumentoCliente], [NombreCliente], [ApellidoCliente], [DireccionResidenciaCliente], [TelefonoFijoCliente], [TelefonoCelularCliente], [TipoDocumentoCliente], [FechaExpedicionDocumentoCliente], [GeneroCliente], [CiudadNacimientoCliente], [DireccionTrabajoCliente], [TelefonoTrabajoCliente], [EmpleoCliente], [IDEmpleado]) VALUES (N'22098845', N'Zack', N'Molina Vanegas', N'Avenida 12 #  11 - 13', N'Null', N'3169525238', N'Pasaporte', CAST(N'1999-01-30' AS Date), N'Masculino', N'Madrid', N'Transversal 7B -10 Norte', N'3102596435', N'Extranjero', N'128ED')
GO
INSERT [dbo].[cliente] ([DocumentoCliente], [NombreCliente], [ApellidoCliente], [DireccionResidenciaCliente], [TelefonoFijoCliente], [TelefonoCelularCliente], [TipoDocumentoCliente], [FechaExpedicionDocumentoCliente], [GeneroCliente], [CiudadNacimientoCliente], [DireccionTrabajoCliente], [TelefonoTrabajoCliente], [EmpleoCliente], [IDEmpleado]) VALUES (N'42737587', N'Darío', N'Pelaez', N'Calle 56  N° 32-15', N'7350819', N'3123988777', N'Cédula de Ciudadanía', CAST(N'1990-05-25' AS Date), N'Masculino', N'Bogotá D.C', N'Null', N'3143526598', N'Mensajero', N'125DK')
GO
INSERT [dbo].[cliente] ([DocumentoCliente], [NombreCliente], [ApellidoCliente], [DireccionResidenciaCliente], [TelefonoFijoCliente], [TelefonoCelularCliente], [TipoDocumentoCliente], [FechaExpedicionDocumentoCliente], [GeneroCliente], [CiudadNacimientoCliente], [DireccionTrabajoCliente], [TelefonoTrabajoCliente], [EmpleoCliente], [IDEmpleado]) VALUES (N'49563652', N'Rosa', N'Peréz', N'Calle 41 Transversal 15- 26', N'5326956', N'3206523569', N'Cédula de Ciudadanía', CAST(N'1995-05-15' AS Date), N'Femenino', N'Boyacá', N'Null', N'3502536598', N'Mensajera', N'106VG')
GO
INSERT [dbo].[cliente] ([DocumentoCliente], [NombreCliente], [ApellidoCliente], [DireccionResidenciaCliente], [TelefonoFijoCliente], [TelefonoCelularCliente], [TipoDocumentoCliente], [FechaExpedicionDocumentoCliente], [GeneroCliente], [CiudadNacimientoCliente], [DireccionTrabajoCliente], [TelefonoTrabajoCliente], [EmpleoCliente], [IDEmpleado]) VALUES (N'52775346', N'María del Pilar', N'Malambo', N'Kr 89 N° 81 21 Sur', N'7831156', N'3138041727', N'Cédula de Ciudadanía', CAST(N'2000-12-12' AS Date), N'Femenino', N'Tolima', N'Kr 90 N° 21 12', N'3135623265', N'Aseadora', N'196GB')
GO
INSERT [dbo].[cliente] ([DocumentoCliente], [NombreCliente], [ApellidoCliente], [DireccionResidenciaCliente], [TelefonoFijoCliente], [TelefonoCelularCliente], [TipoDocumentoCliente], [FechaExpedicionDocumentoCliente], [GeneroCliente], [CiudadNacimientoCliente], [DireccionTrabajoCliente], [TelefonoTrabajoCliente], [EmpleoCliente], [IDEmpleado]) VALUES (N'52873835D', N'Oscar', N'Cabrera', N'Av. Oscar Acevedo, Hab. 4', N'7812569865', N'3120336532', N'Cédula de Extranjería', CAST(N'1995-05-24' AS Date), N'Masculino', N'Madrid', N'Carretera Francisco, Piso 2', N'3126596532', N'Periodista', N'356DF')
GO
INSERT [dbo].[cliente] ([DocumentoCliente], [NombreCliente], [ApellidoCliente], [DireccionResidenciaCliente], [TelefonoFijoCliente], [TelefonoCelularCliente], [TipoDocumentoCliente], [FechaExpedicionDocumentoCliente], [GeneroCliente], [CiudadNacimientoCliente], [DireccionTrabajoCliente], [TelefonoTrabajoCliente], [EmpleoCliente], [IDEmpleado]) VALUES (N'5564556565', N'María', N'Nuñez', N'Kr 655 N° 16-65 Norte', N'2659898', N'3195125465', N'Cédula de Ciudadanía', CAST(N'2000-10-15' AS Date), N'Femenino', N'Bogotá', N'Null', N'Null', N'Recepcionista', N'196GB')
GO
INSERT [dbo].[cliente] ([DocumentoCliente], [NombreCliente], [ApellidoCliente], [DireccionResidenciaCliente], [TelefonoFijoCliente], [TelefonoCelularCliente], [TipoDocumentoCliente], [FechaExpedicionDocumentoCliente], [GeneroCliente], [CiudadNacimientoCliente], [DireccionTrabajoCliente], [TelefonoTrabajoCliente], [EmpleoCliente], [IDEmpleado]) VALUES (N'65674281', N'Gabriel', N'Velez', N'Transversal 7B -12 Norte', N'604734', N'3153477769', N'Cédula de Ciudadanía', CAST(N'2000-10-20' AS Date), N'Masculino', N'Medellín', N'Null', N'Null', N'Repartidor', N'168RD')
GO
INSERT [dbo].[cliente] ([DocumentoCliente], [NombreCliente], [ApellidoCliente], [DireccionResidenciaCliente], [TelefonoFijoCliente], [TelefonoCelularCliente], [TipoDocumentoCliente], [FechaExpedicionDocumentoCliente], [GeneroCliente], [CiudadNacimientoCliente], [DireccionTrabajoCliente], [TelefonoTrabajoCliente], [EmpleoCliente], [IDEmpleado]) VALUES (N'67906144R', N'Victor', N'Palacios', N'Vereda Alfaro, Casa 64', N'3006532', N'312986332', N'Cédula de Ciudadanía', CAST(N'1999-01-12' AS Date), N'Masculino', N'Bogotá D.C', N'Null', N'Null', N'Jubilado', N'356ED')
GO
INSERT [dbo].[cliente] ([DocumentoCliente], [NombreCliente], [ApellidoCliente], [DireccionResidenciaCliente], [TelefonoFijoCliente], [TelefonoCelularCliente], [TipoDocumentoCliente], [FechaExpedicionDocumentoCliente], [GeneroCliente], [CiudadNacimientoCliente], [DireccionTrabajoCliente], [TelefonoTrabajoCliente], [EmpleoCliente], [IDEmpleado]) VALUES (N'79980000', N'Angel', N'Rojas', N'Kr 58 N° 15 25  N° 12-32', N'Null', N'3153659535', N'Cédula de Ciudadanía', CAST(N'2020-03-16' AS Date), N'Masculino', N'Bogotá', N'Null', N'Null', N'Estudiante', N'125DK')
GO
INSERT [dbo].[cliente] ([DocumentoCliente], [NombreCliente], [ApellidoCliente], [DireccionResidenciaCliente], [TelefonoFijoCliente], [TelefonoCelularCliente], [TipoDocumentoCliente], [FechaExpedicionDocumentoCliente], [GeneroCliente], [CiudadNacimientoCliente], [DireccionTrabajoCliente], [TelefonoTrabajoCliente], [EmpleoCliente], [IDEmpleado]) VALUES (N'84578159Y', N'José Manuel', N'Solana Risco', N'Calle Helena Delatorre, Nro 72', N'Null', N'3126593265', N'Cédula de Ciudadanía', CAST(N'1999-06-08' AS Date), N'Masculino', N'Bogotá D.C', N'Calle Helena Delatorre, Nro 72', N'7825693', N'Agente Inmobiliario', N'125DK')
GO
INSERT [dbo].[cliente] ([DocumentoCliente], [NombreCliente], [ApellidoCliente], [DireccionResidenciaCliente], [TelefonoFijoCliente], [TelefonoCelularCliente], [TipoDocumentoCliente], [FechaExpedicionDocumentoCliente], [GeneroCliente], [CiudadNacimientoCliente], [DireccionTrabajoCliente], [TelefonoTrabajoCliente], [EmpleoCliente], [IDEmpleado]) VALUES (N'87341977Y', N'Natalia', N'Corral', N'Carretera Patiño, 97, Casa 9', N'7426598', N'3109536235', N'Cédula de Ciudadanía', CAST(N'1989-01-09' AS Date), N'Masculino', N'Bogotá D.C', N'Callejón Ane, 600, Apto 8', N'6532365', N'Gerente de Almacen', N'125DK')
GO
INSERT [dbo].[cliente] ([DocumentoCliente], [NombreCliente], [ApellidoCliente], [DireccionResidenciaCliente], [TelefonoFijoCliente], [TelefonoCelularCliente], [TipoDocumentoCliente], [FechaExpedicionDocumentoCliente], [GeneroCliente], [CiudadNacimientoCliente], [DireccionTrabajoCliente], [TelefonoTrabajoCliente], [EmpleoCliente], [IDEmpleado]) VALUES (N'91782927', N'Claudia', N'Tovar', N'Carrera 9 N° 18A Sur', N'4163940', N'3006919568', N'Cédula de Ciudadanía', CAST(N'1992-12-05' AS Date), N'Femenino', N'Bogotá', N'Null', N'Null', N'Estudiante', N'123ED')
GO
INSERT [dbo].[cliente] ([DocumentoCliente], [NombreCliente], [ApellidoCliente], [DireccionResidenciaCliente], [TelefonoFijoCliente], [TelefonoCelularCliente], [TipoDocumentoCliente], [FechaExpedicionDocumentoCliente], [GeneroCliente], [CiudadNacimientoCliente], [DireccionTrabajoCliente], [TelefonoTrabajoCliente], [EmpleoCliente], [IDEmpleado]) VALUES (N'92012640', N'Paolo', N'Estrada', N'Avenida 35 #15-98 Sur', N'5050027', N'3194555798', N'Cédula de Ciudadanía', CAST(N'2005-09-13' AS Date), N'Masculino', N'Medellín', N'Calle 15 N° 12- 35 Sur', N'3102659865', N'Estudiante', N'415CD')
GO
INSERT [dbo].[cliente] ([DocumentoCliente], [NombreCliente], [ApellidoCliente], [DireccionResidenciaCliente], [TelefonoFijoCliente], [TelefonoCelularCliente], [TipoDocumentoCliente], [FechaExpedicionDocumentoCliente], [GeneroCliente], [CiudadNacimientoCliente], [DireccionTrabajoCliente], [TelefonoTrabajoCliente], [EmpleoCliente], [IDEmpleado]) VALUES (N'DF126598', N'Pablo', N'Fernandéz', N'Calle 15 N° 12 Norte', N'Null', N'3129864523', N'Cédula de Ciudadanía', CAST(N'2014-11-28' AS Date), N'Masculino', N'Bogotá D.C', N'Null', N'Null', N'Estudiante', N'356ER')
GO
SET IDENTITY_INSERT [dbo].[cotizacion] ON 
GO
INSERT [dbo].[cotizacion] ([IDCotizacion], [NombreProspecto], [ApellidoProspecto], [DescripcionCotizacion], [RamoCotizacion], [CorreoProspecto], [FechaCotizacion], [EnviadaCotizacion]) VALUES (1002, N'Isabel', N'Maldonado', N'Quiero asegurar a mi hijo de 6 años de primaria', N'Póliza Estudiantil', N'maldonado1565@gmail.com', CAST(N'2020-10-28' AS Date), N'Verdadero')
GO
INSERT [dbo].[cotizacion] ([IDCotizacion], [NombreProspecto], [ApellidoProspecto], [DescripcionCotizacion], [RamoCotizacion], [CorreoProspecto], [FechaCotizacion], [EnviadaCotizacion]) VALUES (1012, N'Camila', N'Ospino', N'Deseo asegurar a mi hijo en su educación', N'Póliza Estudiantil', N'cami2566@hotmail.com', CAST(N'2021-06-20' AS Date), N'Verdadero')
GO
INSERT [dbo].[cotizacion] ([IDCotizacion], [NombreProspecto], [ApellidoProspecto], [DescripcionCotizacion], [RamoCotizacion], [CorreoProspecto], [FechaCotizacion], [EnviadaCotizacion]) VALUES (1013, N'Joe', N'Bentacur', N'Deseo cotizar un seguro para mi Ford Fiesta 25', N'Póliza Vehicular', N'julito12rojas@gmail.com', CAST(N'2021-06-20' AS Date), N'Falso')
GO
SET IDENTITY_INSERT [dbo].[cotizacion] OFF
GO
INSERT [dbo].[empleado] ([IDEmpleado], [NombreEmpleado], [ApellidoEmpleado], [TelefonoEmpleado], [RolEmpleado], [IDAdministrador]) VALUES (N'106VG', N'Daniel', N'González', N'3107536498', N'Asesor', N'AH123')
GO
INSERT [dbo].[empleado] ([IDEmpleado], [NombreEmpleado], [ApellidoEmpleado], [TelefonoEmpleado], [RolEmpleado], [IDAdministrador]) VALUES (N'120WD', N'Valeria', N'Arango', N'3103528642', N'Gerente', N'CF126')
GO
INSERT [dbo].[empleado] ([IDEmpleado], [NombreEmpleado], [ApellidoEmpleado], [TelefonoEmpleado], [RolEmpleado], [IDAdministrador]) VALUES (N'123ED', N'Jorge Andres', N'Rojas', N'3156592543', N'Asesor', N'CL123')
GO
INSERT [dbo].[empleado] ([IDEmpleado], [NombreEmpleado], [ApellidoEmpleado], [TelefonoEmpleado], [RolEmpleado], [IDAdministrador]) VALUES (N'125DF', N'María', N'de la Peña', N'3169863265', N'Asesor', N'AN129')
GO
INSERT [dbo].[empleado] ([IDEmpleado], [NombreEmpleado], [ApellidoEmpleado], [TelefonoEmpleado], [RolEmpleado], [IDAdministrador]) VALUES (N'125DK', N'Juan', N'Rodríguez', N'3169863565', N'Asesor', N'CK125')
GO
INSERT [dbo].[empleado] ([IDEmpleado], [NombreEmpleado], [ApellidoEmpleado], [TelefonoEmpleado], [RolEmpleado], [IDAdministrador]) VALUES (N'128ED', N'Lucía', N'López', N'3002596423', N'Asesor', N'CF126')
GO
INSERT [dbo].[empleado] ([IDEmpleado], [NombreEmpleado], [ApellidoEmpleado], [TelefonoEmpleado], [RolEmpleado], [IDAdministrador]) VALUES (N'129DF', N'Sebastián', N'Carbajo', N'3168653223', N'Asesor', N'CF126')
GO
INSERT [dbo].[empleado] ([IDEmpleado], [NombreEmpleado], [ApellidoEmpleado], [TelefonoEmpleado], [RolEmpleado], [IDAdministrador]) VALUES (N'143TG', N'Sebastián', N'Reyes', N'3141244253', N'Asesor', N'CP153')
GO
INSERT [dbo].[empleado] ([IDEmpleado], [NombreEmpleado], [ApellidoEmpleado], [TelefonoEmpleado], [RolEmpleado], [IDAdministrador]) VALUES (N'146RF', N'Carlos', N'Morales', N'3165963265', N'Asesor', N'AD910')
GO
INSERT [dbo].[empleado] ([IDEmpleado], [NombreEmpleado], [ApellidoEmpleado], [TelefonoEmpleado], [RolEmpleado], [IDAdministrador]) VALUES (N'165FG', N'Rocío', N'Saldaña', N'3126593265', N'Gerente', N'AN129')
GO
INSERT [dbo].[empleado] ([IDEmpleado], [NombreEmpleado], [ApellidoEmpleado], [TelefonoEmpleado], [RolEmpleado], [IDAdministrador]) VALUES (N'168RD', N'Lucas', N'Ruiz', N'3133314253', N'Asesor', N'AD910')
GO
INSERT [dbo].[empleado] ([IDEmpleado], [NombreEmpleado], [ApellidoEmpleado], [TelefonoEmpleado], [RolEmpleado], [IDAdministrador]) VALUES (N'196DV', N'Leidy', N'Vargas', N'3129568632', N'Asesor', N'AH123')
GO
INSERT [dbo].[empleado] ([IDEmpleado], [NombreEmpleado], [ApellidoEmpleado], [TelefonoEmpleado], [RolEmpleado], [IDAdministrador]) VALUES (N'196FV', N'Santiago', N'Molina', N'3134568534', N'Asesor', N'CK125')
GO
INSERT [dbo].[empleado] ([IDEmpleado], [NombreEmpleado], [ApellidoEmpleado], [TelefonoEmpleado], [RolEmpleado], [IDAdministrador]) VALUES (N'196GB', N'Mariana', N'Arias', N'3200583461', N'Asesor', N'ED686')
GO
INSERT [dbo].[empleado] ([IDEmpleado], [NombreEmpleado], [ApellidoEmpleado], [TelefonoEmpleado], [RolEmpleado], [IDAdministrador]) VALUES (N'196OG', N'Gonzalo', N'Roca', N'3196245635', N'Asesor', N'RF125')
GO
INSERT [dbo].[empleado] ([IDEmpleado], [NombreEmpleado], [ApellidoEmpleado], [TelefonoEmpleado], [RolEmpleado], [IDAdministrador]) VALUES (N'235RD', N'Oscar', N'Calderón', N'3169819865', N'Asesor', N'CK125')
GO
INSERT [dbo].[empleado] ([IDEmpleado], [NombreEmpleado], [ApellidoEmpleado], [TelefonoEmpleado], [RolEmpleado], [IDAdministrador]) VALUES (N'236EG', N'Ramón', N'Saldaña', N'3126536895', N'Asesor', N'AN129')
GO
INSERT [dbo].[empleado] ([IDEmpleado], [NombreEmpleado], [ApellidoEmpleado], [TelefonoEmpleado], [RolEmpleado], [IDAdministrador]) VALUES (N'356DF', N'Rosa María', N'Perez', N'315659865', N'Asesor', N'AN129')
GO
INSERT [dbo].[empleado] ([IDEmpleado], [NombreEmpleado], [ApellidoEmpleado], [TelefonoEmpleado], [RolEmpleado], [IDAdministrador]) VALUES (N'356ED', N'Cecilia', N'Rovira', N'3129863562', N'Asesor', N'AS154')
GO
INSERT [dbo].[empleado] ([IDEmpleado], [NombreEmpleado], [ApellidoEmpleado], [TelefonoEmpleado], [RolEmpleado], [IDAdministrador]) VALUES (N'356ER', N'Ana', N'Barragan', N'3169863265', N'Gerente', N'CF126')
GO
INSERT [dbo].[empleado] ([IDEmpleado], [NombreEmpleado], [ApellidoEmpleado], [TelefonoEmpleado], [RolEmpleado], [IDAdministrador]) VALUES (N'356VD', N'Juan', N'Martinez', N'3126598656', N'Asesor', N'CF126')
GO
INSERT [dbo].[empleado] ([IDEmpleado], [NombreEmpleado], [ApellidoEmpleado], [TelefonoEmpleado], [RolEmpleado], [IDAdministrador]) VALUES (N'415CD', N'Camilo', N'Rodriguez', N'3195873564', N'Asesor', N'ED686')
GO
INSERT [dbo].[empleado] ([IDEmpleado], [NombreEmpleado], [ApellidoEmpleado], [TelefonoEmpleado], [RolEmpleado], [IDAdministrador]) VALUES (N'426DV', N'Cecilia', N'Coral', N'3126593524', N'Asesor', N'AN129')
GO
INSERT [dbo].[empleado_cotizacion] ([IDEmpleado], [IDCotizacion]) VALUES (N'125DK', 1002)
GO
INSERT [dbo].[empleado_cotizacion] ([IDEmpleado], [IDCotizacion]) VALUES (N'125DK', 1012)
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'1000456369', N'1000456369', N'Cliente')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'1000698263', N'1000698263', N'Cliente')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'1000789117', N'Real159Madrid', N'Cliente')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'104S598F', N'104S598F', N'Cliente')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'106VG', N'6NouxFQ5Sf7I', N'Asesor')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'120WD', N'IRU6VfwVK1Yq', N'Asesor')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'123ED', N'qAXSrgvrVy9E', N'Asesor')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'1254D68', N'1254D68', N'Cliente')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'12565SD1', N'12565SD1', N'Cliente')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'125DF', N'125DF', N'Asesor')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'125DK', N'Juanro125', N'Asesor')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'128ED', N'v31gK0PWkCtE', N'Asesor')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'129DF', N'129DF', N'Asesor')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'14233595', N'RkDDWuZsXQ9N', N'Cliente')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'143TG', N'Yq2nEQxe1QnY', N'Asesor')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'146RF', N'146RF', N'Asesor')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'154SD655', N'154SD655', N'Cliente')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'165FG', N'165FG', N'Asesor')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'168RD', N'goejE581BfLu', N'Asesor')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'196DV', N'653EF', N'Asesor')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'196FV', N'x78pxEt7fiAN', N'Asesor')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'196GB', N'kogFahmOz8um', N'Asesor')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'196OG', N'196OG', N'Asesor')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'22098845', N'CW8osTsteEeM', N'Cliente')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'235RD', N'235RD', N'Asesor')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'236EG', N'659DC', N'Asesor')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'356DF', N'356DF', N'Asesor')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'356ED', N'356ED', N'Asesor')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'356ER', N'356ER', N'Asesor')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'356VD', N'356VD', N'Asesor')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'415CD', N'Fl5zHam0yTYZ', N'Asesor')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'426DV', N'426DV', N'Asesor')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'42737587', N'zNz34dKeTXxN', N'Cliente')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'49563652', N'6AxpuKpkr84H', N'Cliente')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'52775346', N'pZve5vjbxUCZ', N'Cliente')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'52873835D', N'52873835D', N'Cliente')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'5564556565', N'r5OPINlggsix', N'Cliente')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'65674281', N'ymb0bLlk19dL', N'Cliente')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'67906144R', N'67906144R', N'Cliente')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'79980000', N'aeul5SuwOXmV', N'Cliente')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'84578159Y', N'84578159Y', N'Cliente')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'87341977Y', N'87341977Y', N'Cliente')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'91782927', N'oP94XVxcX92M', N'Cliente')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'92012640', N'joseXD12', N'Cliente')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'AD910', N'Ixzvd0KYn9QH', N'Administrador')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'AH123', N'AH123', N'Administrador')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'AN125', N'AN125', N'Administrador')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'AN129', N'j7lP9oBlTJuC', N'Administrador')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'AR156', N'AR156', N'Administrador')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'AS154', N'NcBp7dAile1R', N'Administrador')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'CF126', N'CF126', N'Administrador')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'CK125', N'Admin123', N'Administrador')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'CL123', N'CL123', N'Administrador')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'CP153', N'mDxlAzMHVGPp', N'Administrador')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'DF126598', N'DF126598', N'Cliente')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'DF265', N'DF265', N'Administrador')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'ED686', N'io2hYjskBGir', N'Administrador')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'RD129', N'RD129', N'Administrador')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'RF125', N'tZZLfEvWvAjS', N'Administrador')
GO
INSERT [dbo].[login] ([Usuario], [Clave], [TipoUsuario]) VALUES (N'RH145', N'LW0PfRI8w6ps', N'Administrador')
GO
INSERT [dbo].[poliza] ([CodigoPoliza], [NombreTomador], [DocumentoTomador], [NombreBeneficiario], [DocumentoBeneficiario], [NombreAsegurado], [DocumentoAsegurado], [FechaInicioPoliza], [FechaFinPoliza], [FechaExpedicionPoliza], [TipoPagoPoliza], [PolizaVirtual], [DocumentoCliente], [NitAseguradora], [TipoPoliza]) VALUES (N'1002C0V02', N'Miguel Ángel', N'2399138', N'Irune Talavera', N'7421300', N'Adrian Lobo', N'4780815', CAST(N'2019-10-26' AS Date), CAST(N'2021-10-26' AS Date), CAST(N'2020-10-27' AS Date), N'Contado', N'Sin Poliza', N'22098845', N'860.002.183-9', N'Estudiantil')
GO
INSERT [dbo].[poliza] ([CodigoPoliza], [NombreTomador], [DocumentoTomador], [NombreBeneficiario], [DocumentoBeneficiario], [NombreAsegurado], [DocumentoAsegurado], [FechaInicioPoliza], [FechaFinPoliza], [FechaExpedicionPoliza], [TipoPagoPoliza], [PolizaVirtual], [DocumentoCliente], [NitAseguradora], [TipoPoliza]) VALUES (N'100A16S65', N'Santiago Martínez', N'6516650', N'Narciso Gordo', N'352723189', N'No Aplica', N'No Aplica', CAST(N'2019-04-04' AS Date), CAST(N'2021-03-16' AS Date), CAST(N'2021-03-15' AS Date), N'Contado', N'Sin Poliza', N'14233595', N'860.009.578-6', N'Pyme')
GO
INSERT [dbo].[poliza] ([CodigoPoliza], [NombreTomador], [DocumentoTomador], [NombreBeneficiario], [DocumentoBeneficiario], [NombreAsegurado], [DocumentoAsegurado], [FechaInicioPoliza], [FechaFinPoliza], [FechaExpedicionPoliza], [TipoPagoPoliza], [PolizaVirtual], [DocumentoCliente], [NitAseguradora], [TipoPoliza]) VALUES (N'100CT26G5', N'Samuel Gonzalez', N'6377969', N'Esperanza Navas', N'9611029', N'Jaime Jaramillo', N'8223252', CAST(N'2019-11-07' AS Date), CAST(N'2021-11-07' AS Date), CAST(N'2019-11-08' AS Date), N'Contado', N'Sin Poliza', N'79980000', N'860.002.183-9', N'Hogar')
GO
INSERT [dbo].[poliza] ([CodigoPoliza], [NombreTomador], [DocumentoTomador], [NombreBeneficiario], [DocumentoBeneficiario], [NombreAsegurado], [DocumentoAsegurado], [FechaInicioPoliza], [FechaFinPoliza], [FechaExpedicionPoliza], [TipoPagoPoliza], [PolizaVirtual], [DocumentoCliente], [NitAseguradora], [TipoPoliza]) VALUES (N'102DF56C99', N'Alexander Camacho', N'4100132', N'Gladys Zhou', N'4461701', N'No Aplica', N'No Aplica', CAST(N'2020-05-15' AS Date), CAST(N'2021-05-15' AS Date), CAST(N'2020-05-14' AS Date), N'Contado', N'Sin Poliza', N'92012640', N'891.700.037-9', N'Vida')
GO
INSERT [dbo].[poliza] ([CodigoPoliza], [NombreTomador], [DocumentoTomador], [NombreBeneficiario], [DocumentoBeneficiario], [NombreAsegurado], [DocumentoAsegurado], [FechaInicioPoliza], [FechaFinPoliza], [FechaExpedicionPoliza], [TipoPagoPoliza], [PolizaVirtual], [DocumentoCliente], [NitAseguradora], [TipoPoliza]) VALUES (N'1095CD356', N'José Rodriguez', N'2629427', N'Jose-Maria Maestre', N'204219456', N'No Aplica', N'No Aplica', CAST(N'2020-01-02' AS Date), CAST(N'2021-01-02' AS Date), CAST(N'2020-01-03' AS Date), N'Contado', N'Sin Poliza', N'49563652', N'860.002.180-7', N'Hogar')
GO
INSERT [dbo].[poliza] ([CodigoPoliza], [NombreTomador], [DocumentoTomador], [NombreBeneficiario], [DocumentoBeneficiario], [NombreAsegurado], [DocumentoAsegurado], [FechaInicioPoliza], [FechaFinPoliza], [FechaExpedicionPoliza], [TipoPagoPoliza], [PolizaVirtual], [DocumentoCliente], [NitAseguradora], [TipoPoliza]) VALUES (N'10ASFE1212', N'Samuel Ovalle', N'12AB125568', N'No Aplica', N'No Aplica', N'No Aplica', N'No Aplica', CAST(N'2020-12-01' AS Date), CAST(N'2021-12-01' AS Date), CAST(N'2020-12-03' AS Date), N'Financiado', N'Sin Poliza', N'1000789117', N'891.700.037-9', N'Hogar')
GO
INSERT [dbo].[poliza] ([CodigoPoliza], [NombreTomador], [DocumentoTomador], [NombreBeneficiario], [DocumentoBeneficiario], [NombreAsegurado], [DocumentoAsegurado], [FechaInicioPoliza], [FechaFinPoliza], [FechaExpedicionPoliza], [TipoPagoPoliza], [PolizaVirtual], [DocumentoCliente], [NitAseguradora], [TipoPoliza]) VALUES (N'10CD56E99', N'Juan Vargas', N'23565612', N'No Aplica', N'No Aplica', N'No Aplica', N'No Aplica', CAST(N'2020-12-01' AS Date), CAST(N'2021-12-01' AS Date), CAST(N'2020-12-03' AS Date), N'Financiado', N'10CD56E99.pdf', N'1000789117', N'891.700.037-9', N'RCMedica')
GO
INSERT [dbo].[poliza] ([CodigoPoliza], [NombreTomador], [DocumentoTomador], [NombreBeneficiario], [DocumentoBeneficiario], [NombreAsegurado], [DocumentoAsegurado], [FechaInicioPoliza], [FechaFinPoliza], [FechaExpedicionPoliza], [TipoPagoPoliza], [PolizaVirtual], [DocumentoCliente], [NitAseguradora], [TipoPoliza]) VALUES (N'10CD56ECDD1', N'Juan Vargas', N'23565612', N'No Aplica', N'No Aplica', N'Camilo Vargas', N'95391916Z', CAST(N'2020-12-01' AS Date), CAST(N'2021-12-01' AS Date), CAST(N'2020-12-03' AS Date), N'Financiado', N'Sin Poliza', N'1000789117', N'891.700.037-9', N'Estudiantil')
GO
INSERT [dbo].[poliza] ([CodigoPoliza], [NombreTomador], [DocumentoTomador], [NombreBeneficiario], [DocumentoBeneficiario], [NombreAsegurado], [DocumentoAsegurado], [FechaInicioPoliza], [FechaFinPoliza], [FechaExpedicionPoliza], [TipoPagoPoliza], [PolizaVirtual], [DocumentoCliente], [NitAseguradora], [TipoPoliza]) VALUES (N'ASLSDFD215', N'No Aplica', N'No Aplica', N'No Aplica', N'No Aplica', N'No Aplica', N'No Aplica', CAST(N'2021-06-30' AS Date), CAST(N'2021-06-30' AS Date), CAST(N'2021-06-09' AS Date), N'Contado', N'Sin Poliza', N'1254D68', N'860.002.180-7', N'Vehicular')
GO
INSERT [dbo].[poliza] ([CodigoPoliza], [NombreTomador], [DocumentoTomador], [NombreBeneficiario], [DocumentoBeneficiario], [NombreAsegurado], [DocumentoAsegurado], [FechaInicioPoliza], [FechaFinPoliza], [FechaExpedicionPoliza], [TipoPagoPoliza], [PolizaVirtual], [DocumentoCliente], [NitAseguradora], [TipoPoliza]) VALUES (N'D12F5V66GG', N'No Aplica', N'No Aplica', N'No Aplica', N'No Aplica', N'No Aplica', N'No Aplica', CAST(N'2021-06-30' AS Date), CAST(N'2021-06-30' AS Date), CAST(N'2021-06-16' AS Date), N'Contado', N'Sin Poliza', N'1000789117', N'860.002.183-9', N'Vehicular')
GO
INSERT [dbo].[poliza] ([CodigoPoliza], [NombreTomador], [DocumentoTomador], [NombreBeneficiario], [DocumentoBeneficiario], [NombreAsegurado], [DocumentoAsegurado], [FechaInicioPoliza], [FechaFinPoliza], [FechaExpedicionPoliza], [TipoPagoPoliza], [PolizaVirtual], [DocumentoCliente], [NitAseguradora], [TipoPoliza]) VALUES (N'D2F56DF56D', N'No Aplica', N'No Aplica', N'No Aplica', N'No Aplica', N'Javier Rios', N'126D5FD65', CAST(N'2021-05-01' AS Date), CAST(N'2022-05-01' AS Date), CAST(N'2021-05-21' AS Date), N'Contado', N'Sin Poliza', N'42737587', N'860.009.578-6', N'Vida')
GO
INSERT [dbo].[poliza] ([CodigoPoliza], [NombreTomador], [DocumentoTomador], [NombreBeneficiario], [DocumentoBeneficiario], [NombreAsegurado], [DocumentoAsegurado], [FechaInicioPoliza], [FechaFinPoliza], [FechaExpedicionPoliza], [TipoPagoPoliza], [PolizaVirtual], [DocumentoCliente], [NitAseguradora], [TipoPoliza]) VALUES (N'D6G65HJH45', N'Camilo Beltrán', N'1000AD2F65', N'No Aplica', N'No Aplica', N'No Aplica', N'No Aplica', CAST(N'2021-05-01' AS Date), CAST(N'2022-05-01' AS Date), CAST(N'2021-05-21' AS Date), N'Contado', N'Sin Poliza', N'52775346', N'860.009.578-6', N'Pyme')
GO
INSERT [dbo].[poliza] ([CodigoPoliza], [NombreTomador], [DocumentoTomador], [NombreBeneficiario], [DocumentoBeneficiario], [NombreAsegurado], [DocumentoAsegurado], [FechaInicioPoliza], [FechaFinPoliza], [FechaExpedicionPoliza], [TipoPagoPoliza], [PolizaVirtual], [DocumentoCliente], [NitAseguradora], [TipoPoliza]) VALUES (N'D6YH89VR35', N'Camilo Díaz', N'12S3D5DOS1', N'No Aplica', N'No Aplica', N'No Aplica', N'No Aplica', CAST(N'2021-05-20' AS Date), CAST(N'2022-05-20' AS Date), CAST(N'2021-05-21' AS Date), N'Contado', N'Sin Poliza', N'12565SD1', N'860.002.183-9', N'Hogar')
GO
INSERT [dbo].[poliza] ([CodigoPoliza], [NombreTomador], [DocumentoTomador], [NombreBeneficiario], [DocumentoBeneficiario], [NombreAsegurado], [DocumentoAsegurado], [FechaInicioPoliza], [FechaFinPoliza], [FechaExpedicionPoliza], [TipoPagoPoliza], [PolizaVirtual], [DocumentoCliente], [NitAseguradora], [TipoPoliza]) VALUES (N'DFD12F451F', N'No Aplica', N'No Aplica', N'No Aplica', N'No Aplica', N'No Aplica', N'No Aplica', CAST(N'2021-06-30' AS Date), CAST(N'2021-06-30' AS Date), CAST(N'2021-06-23' AS Date), N'Contado', N'Sin Poliza', N'104S598F', N'860.009.578-6', N'Vehicular')
GO
INSERT [dbo].[poliza] ([CodigoPoliza], [NombreTomador], [DocumentoTomador], [NombreBeneficiario], [DocumentoBeneficiario], [NombreAsegurado], [DocumentoAsegurado], [FechaInicioPoliza], [FechaFinPoliza], [FechaExpedicionPoliza], [TipoPagoPoliza], [PolizaVirtual], [DocumentoCliente], [NitAseguradora], [TipoPoliza]) VALUES (N'DFD3F2DF5F', N'No Aplica', N'No Aplica', N'No Aplica', N'No Aplica', N'No Aplica', N'No Aplica', CAST(N'2021-06-30' AS Date), CAST(N'2021-06-30' AS Date), CAST(N'2021-06-30' AS Date), N'Contado', N'Sin Poliza', N'14233595', N'860.002.180-7', N'Vehicular')
GO
INSERT [dbo].[poliza] ([CodigoPoliza], [NombreTomador], [DocumentoTomador], [NombreBeneficiario], [DocumentoBeneficiario], [NombreAsegurado], [DocumentoAsegurado], [FechaInicioPoliza], [FechaFinPoliza], [FechaExpedicionPoliza], [TipoPagoPoliza], [PolizaVirtual], [DocumentoCliente], [NitAseguradora], [TipoPoliza]) VALUES (N'DFF1245F5G', N'No Aplica', N'No Aplica', N'No Aplica', N'No Aplica', N'No Aplica', N'No Aplica', CAST(N'2021-06-01' AS Date), CAST(N'2021-06-01' AS Date), CAST(N'2021-06-08' AS Date), N'Contado', N'Sin Poliza', N'1000789117', N'860.009.578-6', N'Vehicular')
GO
INSERT [dbo].[poliza] ([CodigoPoliza], [NombreTomador], [DocumentoTomador], [NombreBeneficiario], [DocumentoBeneficiario], [NombreAsegurado], [DocumentoAsegurado], [FechaInicioPoliza], [FechaFinPoliza], [FechaExpedicionPoliza], [TipoPagoPoliza], [PolizaVirtual], [DocumentoCliente], [NitAseguradora], [TipoPoliza]) VALUES (N'DFF45DFD65', N'No Aplica', N'No Aplica', N'No Aplica', N'No Aplica', N'No Aplica', N'No Aplica', CAST(N'2021-06-23' AS Date), CAST(N'2021-06-23' AS Date), CAST(N'2021-06-15' AS Date), N'Contado', N'Sin Poliza', N'1254D68', N'860.002.180-7', N'Vehicular')
GO
INSERT [dbo].[poliza] ([CodigoPoliza], [NombreTomador], [DocumentoTomador], [NombreBeneficiario], [DocumentoBeneficiario], [NombreAsegurado], [DocumentoAsegurado], [FechaInicioPoliza], [FechaFinPoliza], [FechaExpedicionPoliza], [TipoPagoPoliza], [PolizaVirtual], [DocumentoCliente], [NitAseguradora], [TipoPoliza]) VALUES (N'S2F56S98CV', N'No Aplica', N'No Aplica', N'Camila Vanegas', N'6545DF98FD', N'No Aplica', N'No Aplica', CAST(N'2021-06-02' AS Date), CAST(N'2022-06-02' AS Date), CAST(N'2021-05-21' AS Date), N'Contado', N'Sin Poliza', N'14233595', N'860.002.180-7', N'Estudiantil')
GO
INSERT [dbo].[poliza] ([CodigoPoliza], [NombreTomador], [DocumentoTomador], [NombreBeneficiario], [DocumentoBeneficiario], [NombreAsegurado], [DocumentoAsegurado], [FechaInicioPoliza], [FechaFinPoliza], [FechaExpedicionPoliza], [TipoPagoPoliza], [PolizaVirtual], [DocumentoCliente], [NitAseguradora], [TipoPoliza]) VALUES (N'S56D89T45G', N'José Fabio Vargas', N'56D65SD65DF', N'No Aplica', N'No Aplica', N'No Aplica', N'No Aplica', CAST(N'2021-05-07' AS Date), CAST(N'2022-05-07' AS Date), CAST(N'2021-05-21' AS Date), N'Contado', N'Sin Poliza', N'52775346', N'860.026.182-5', N'Hogar')
GO
INSERT [dbo].[poliza_estudiantil] ([CodigoPoliza], [FechaNacimiento], [Institucion], [AnuarioCursado], [CursoSemestre]) VALUES (N'1002C0V02', CAST(N'2005-03-20' AS Date), N'Universidad del Bosque', N'2020-2020', N'Primer Trimestre')
GO
INSERT [dbo].[poliza_estudiantil] ([CodigoPoliza], [FechaNacimiento], [Institucion], [AnuarioCursado], [CursoSemestre]) VALUES (N'10CD56ECDD1', CAST(N'2001-02-13' AS Date), N'Colegio Armando Castillos', N'2021-2021', N'Último Año de Bachillerato')
GO
INSERT [dbo].[poliza_estudiantil] ([CodigoPoliza], [FechaNacimiento], [Institucion], [AnuarioCursado], [CursoSemestre]) VALUES (N'S2F56S98CV', CAST(N'2010-02-03' AS Date), N'Colegio Orlando Higuita Rojas', N'2020-2021', N'Último grado de primaria')
GO
INSERT [dbo].[poliza_hogar] ([CodigoPoliza], [FechaNacimiento], [ValorEnseres], [ValorConstruccion], [Localidad]) VALUES (N'100CT26G5', CAST(N'1973-10-01' AS Date), N'35000000', N'381000000', N'Bosa')
GO
INSERT [dbo].[poliza_hogar] ([CodigoPoliza], [FechaNacimiento], [ValorEnseres], [ValorConstruccion], [Localidad]) VALUES (N'1095CD356', CAST(N'1989-12-12' AS Date), N'100000000', N'90000000', N'Engativá')
GO
INSERT [dbo].[poliza_hogar] ([CodigoPoliza], [FechaNacimiento], [ValorEnseres], [ValorConstruccion], [Localidad]) VALUES (N'10ASFE1212', CAST(N'1991-09-12' AS Date), N'45000000', N'66505000', N'Kennedy')
GO
INSERT [dbo].[poliza_hogar] ([CodigoPoliza], [FechaNacimiento], [ValorEnseres], [ValorConstruccion], [Localidad]) VALUES (N'D6YH89VR35', CAST(N'1989-01-01' AS Date), N'23000000', N'23000000', N'Suba')
GO
INSERT [dbo].[poliza_hogar] ([CodigoPoliza], [FechaNacimiento], [ValorEnseres], [ValorConstruccion], [Localidad]) VALUES (N'S56D89T45G', CAST(N'2000-02-14' AS Date), N'600000000', N'12000000000', N'Antonio Nariño')
GO
INSERT [dbo].[poliza_pyme] ([CodigoPoliza], [ValorAsegurado], [TipoNegocio], [NombreNegocio], [LocalidadNegocio]) VALUES (N'100A16S65', N'53000000', N'Venta de Verduras al Mayor', N'MercaSur', N'Suba')
GO
INSERT [dbo].[poliza_pyme] ([CodigoPoliza], [ValorAsegurado], [TipoNegocio], [NombreNegocio], [LocalidadNegocio]) VALUES (N'D6G65HJH45', N'1200000000', N'Dulcería al detal', N'Dulces la maría', N'San Cristóbal')
GO
INSERT [dbo].[poliza_rcmedica] ([CodigoPoliza], [FechaNacimiento], [TarjetaProfesional], [FechaExpedicion]) VALUES (N'10CD56E99', CAST(N'2001-02-12' AS Date), N'1245662-BD', CAST(N'2019-12-20' AS Date))
GO
INSERT [dbo].[poliza_vehicular] ([CodigoPoliza], [FechaNacimiento], [TipoAuto], [Placa]) VALUES (N'ASLSDFD215', CAST(N'2021-06-30' AS Date), N'NO', N'DFG125')
GO
INSERT [dbo].[poliza_vehicular] ([CodigoPoliza], [FechaNacimiento], [TipoAuto], [Placa]) VALUES (N'D12F5V66GG', CAST(N'2021-06-15' AS Date), N'no', N'SDR265')
GO
INSERT [dbo].[poliza_vehicular] ([CodigoPoliza], [FechaNacimiento], [TipoAuto], [Placa]) VALUES (N'DFD12F451F', CAST(N'2021-06-16' AS Date), N'si', N'DFG125')
GO
INSERT [dbo].[poliza_vehicular] ([CodigoPoliza], [FechaNacimiento], [TipoAuto], [Placa]) VALUES (N'DFD3F2DF5F', CAST(N'2021-06-14' AS Date), N'NO', N'DFG123')
GO
INSERT [dbo].[poliza_vehicular] ([CodigoPoliza], [FechaNacimiento], [TipoAuto], [Placa]) VALUES (N'DFF1245F5G', CAST(N'2021-06-08' AS Date), N'no', N'SDG256')
GO
INSERT [dbo].[poliza_vehicular] ([CodigoPoliza], [FechaNacimiento], [TipoAuto], [Placa]) VALUES (N'DFF45DFD65', CAST(N'2021-06-08' AS Date), N'no', N'DRF126')
GO
INSERT [dbo].[poliza_vida] ([CodigoPoliza], [ValorBeneficiario], [FechaNacimiento]) VALUES (N'102DF56C99', N'35000000', CAST(N'1997-09-26' AS Date))
GO
INSERT [dbo].[poliza_vida] ([CodigoPoliza], [ValorBeneficiario], [FechaNacimiento]) VALUES (N'D2F56DF56D', N'30000000', CAST(N'1991-01-15' AS Date))
GO
SET IDENTITY_INSERT [dbo].[reporte] ON 
GO
INSERT [dbo].[reporte] ([IDReporte], [TipoReporte], [FechaReporte], [DescripcionReporte], [DocumentoCliente], [IDEmpleado], [RespuestaReporte]) VALUES (5001, N'Sugerencia', CAST(N'2020-10-28' AS Date), N'La oficina no estuvo disponible las 24 horas', N'1000789117', N'125DK', N'El cliente será cambiado de asesor. El Asesor se comunicará con el cliente')
GO
INSERT [dbo].[reporte] ([IDReporte], [TipoReporte], [FechaReporte], [DescripcionReporte], [DocumentoCliente], [IDEmpleado], [RespuestaReporte]) VALUES (5016, N'Corrección', CAST(N'2021-06-20' AS Date), N'El número de mi documento de identidad termina en 17', N'1000789117', N'125DK', N'Se ha hecho la corrección del número de documento')
GO
INSERT [dbo].[reporte] ([IDReporte], [TipoReporte], [FechaReporte], [DescripcionReporte], [DocumentoCliente], [IDEmpleado], [RespuestaReporte]) VALUES (5017, N'Solicitud', CAST(N'2021-06-20' AS Date), N'Quisiera cotizar una nueva póliza al terminar la de hogar. Gracias', N'1000789117', N'125DK', N'Sin Respuesta')
GO
SET IDENTITY_INSERT [dbo].[reporte] OFF
GO
ALTER TABLE [dbo].[cliente] ADD  CONSTRAINT [DF_cliente_TelefonoFijoCliente]  DEFAULT (NULL) FOR [TelefonoFijoCliente]
GO
ALTER TABLE [dbo].[cliente] ADD  CONSTRAINT [DF_cliente_DireccionTrabajoCliente]  DEFAULT (NULL) FOR [DireccionTrabajoCliente]
GO
ALTER TABLE [dbo].[cliente] ADD  CONSTRAINT [DF_cliente_TelefonoTrabajoCliente]  DEFAULT (NULL) FOR [TelefonoTrabajoCliente]
GO
ALTER TABLE [dbo].[cotizacion] ADD  CONSTRAINT [DF_cotizacion_FechaCotizacion]  DEFAULT (getdate()) FOR [FechaCotizacion]
GO
ALTER TABLE [dbo].[cotizacion] ADD  CONSTRAINT [DF_cotizacion_EnviadaCotizacion]  DEFAULT ('Falso') FOR [EnviadaCotizacion]
GO
ALTER TABLE [dbo].[poliza] ADD  CONSTRAINT [DF_poliza_NombreTomador]  DEFAULT (NULL) FOR [NombreTomador]
GO
ALTER TABLE [dbo].[poliza] ADD  CONSTRAINT [DF_poliza_DocumentoTomador]  DEFAULT (NULL) FOR [DocumentoTomador]
GO
ALTER TABLE [dbo].[poliza] ADD  CONSTRAINT [DF_poliza_NombreBeneficiario]  DEFAULT (NULL) FOR [NombreBeneficiario]
GO
ALTER TABLE [dbo].[poliza] ADD  CONSTRAINT [DF_poliza_DocumentoBeneficiario]  DEFAULT (NULL) FOR [DocumentoBeneficiario]
GO
ALTER TABLE [dbo].[poliza] ADD  CONSTRAINT [DF_poliza_NombreAsegurado]  DEFAULT (NULL) FOR [NombreAsegurado]
GO
ALTER TABLE [dbo].[poliza] ADD  CONSTRAINT [DF_poliza_DocumentoAsegurado]  DEFAULT (NULL) FOR [DocumentoAsegurado]
GO
ALTER TABLE [dbo].[poliza] ADD  CONSTRAINT [DF_poliza_PolizaVirtual]  DEFAULT (NULL) FOR [PolizaVirtual]
GO
ALTER TABLE [dbo].[poliza_estudiantil] ADD  CONSTRAINT [DF_poliza_estudiantil_AnuarioCursado]  DEFAULT (NULL) FOR [AnuarioCursado]
GO
ALTER TABLE [dbo].[reporte] ADD  CONSTRAINT [DF_reporte_FechaReporte]  DEFAULT (getdate()) FOR [FechaReporte]
GO
ALTER TABLE [dbo].[reporte] ADD  CONSTRAINT [DF_reporte_RespuestaReporte]  DEFAULT (NULL) FOR [RespuestaReporte]
GO
ALTER TABLE [dbo].[cliente]  WITH CHECK ADD  CONSTRAINT [FK_cliente_empleado1] FOREIGN KEY([IDEmpleado])
REFERENCES [dbo].[empleado] ([IDEmpleado])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[cliente] CHECK CONSTRAINT [FK_cliente_empleado1]
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD  CONSTRAINT [FK_empleado_administrador] FOREIGN KEY([IDAdministrador])
REFERENCES [dbo].[administrador] ([IDAdministrador])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[empleado] CHECK CONSTRAINT [FK_empleado_administrador]
GO
ALTER TABLE [dbo].[empleado_cotizacion]  WITH CHECK ADD  CONSTRAINT [FK_empleado_cotizacion_cotizacion] FOREIGN KEY([IDCotizacion])
REFERENCES [dbo].[cotizacion] ([IDCotizacion])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[empleado_cotizacion] CHECK CONSTRAINT [FK_empleado_cotizacion_cotizacion]
GO
ALTER TABLE [dbo].[empleado_cotizacion]  WITH CHECK ADD  CONSTRAINT [FK_empleado_cotizacion_empleado] FOREIGN KEY([IDEmpleado])
REFERENCES [dbo].[empleado] ([IDEmpleado])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[empleado_cotizacion] CHECK CONSTRAINT [FK_empleado_cotizacion_empleado]
GO
ALTER TABLE [dbo].[poliza]  WITH CHECK ADD  CONSTRAINT [FK_poliza_aseguradora] FOREIGN KEY([NitAseguradora])
REFERENCES [dbo].[aseguradora] ([NitAseguradora])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[poliza] CHECK CONSTRAINT [FK_poliza_aseguradora]
GO
ALTER TABLE [dbo].[poliza]  WITH CHECK ADD  CONSTRAINT [FK_poliza_cliente] FOREIGN KEY([DocumentoCliente])
REFERENCES [dbo].[cliente] ([DocumentoCliente])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[poliza] CHECK CONSTRAINT [FK_poliza_cliente]
GO
ALTER TABLE [dbo].[poliza_estudiantil]  WITH CHECK ADD  CONSTRAINT [FK_poliza_estudiantil_poliza] FOREIGN KEY([CodigoPoliza])
REFERENCES [dbo].[poliza] ([CodigoPoliza])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[poliza_estudiantil] CHECK CONSTRAINT [FK_poliza_estudiantil_poliza]
GO
ALTER TABLE [dbo].[poliza_hogar]  WITH CHECK ADD  CONSTRAINT [FK_poliza_hogar_poliza] FOREIGN KEY([CodigoPoliza])
REFERENCES [dbo].[poliza] ([CodigoPoliza])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[poliza_hogar] CHECK CONSTRAINT [FK_poliza_hogar_poliza]
GO
ALTER TABLE [dbo].[poliza_pyme]  WITH CHECK ADD  CONSTRAINT [FK_poliza_pyme_poliza] FOREIGN KEY([CodigoPoliza])
REFERENCES [dbo].[poliza] ([CodigoPoliza])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[poliza_pyme] CHECK CONSTRAINT [FK_poliza_pyme_poliza]
GO
ALTER TABLE [dbo].[poliza_rcmedica]  WITH CHECK ADD  CONSTRAINT [FK_poliza_rcmedica_poliza] FOREIGN KEY([CodigoPoliza])
REFERENCES [dbo].[poliza] ([CodigoPoliza])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[poliza_rcmedica] CHECK CONSTRAINT [FK_poliza_rcmedica_poliza]
GO
ALTER TABLE [dbo].[poliza_vehicular]  WITH CHECK ADD  CONSTRAINT [FK_poliza_vehicular_poliza] FOREIGN KEY([CodigoPoliza])
REFERENCES [dbo].[poliza] ([CodigoPoliza])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[poliza_vehicular] CHECK CONSTRAINT [FK_poliza_vehicular_poliza]
GO
ALTER TABLE [dbo].[poliza_vida]  WITH CHECK ADD  CONSTRAINT [FK_poliza_vida_poliza] FOREIGN KEY([CodigoPoliza])
REFERENCES [dbo].[poliza] ([CodigoPoliza])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[poliza_vida] CHECK CONSTRAINT [FK_poliza_vida_poliza]
GO
ALTER TABLE [dbo].[reporte]  WITH CHECK ADD  CONSTRAINT [FK_reporte_cliente] FOREIGN KEY([DocumentoCliente])
REFERENCES [dbo].[cliente] ([DocumentoCliente])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[reporte] CHECK CONSTRAINT [FK_reporte_cliente]
GO
