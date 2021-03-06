USE [master]
GO
/****** Object:  Database [PWA]    Script Date: 11/02/2021 9:02:53 ******/
CREATE DATABASE [PWA]
GO
USE [PWA]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 11/02/2021 9:02:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatosActualizacion]    Script Date: 11/02/2021 9:02:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatosActualizacion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DatosNombre] [varchar](500) NULL,
	[FechaActualizacion] [datetime] NULL,
 CONSTRAINT [PK_ActualizacionArchivos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([Id], [Nombre]) VALUES (1, N'Franco Cifuentes')
INSERT [dbo].[Clientes] ([Id], [Nombre]) VALUES (2, N'Ignacio Cifuentes')
SET IDENTITY_INSERT [dbo].[Clientes] OFF
GO
SET IDENTITY_INSERT [dbo].[DatosActualizacion] ON 

INSERT [dbo].[DatosActualizacion] ([Id], [DatosNombre], [FechaActualizacion]) VALUES (1, N'cliente', CAST(N'2021-02-11T00:05:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[DatosActualizacion] OFF
GO