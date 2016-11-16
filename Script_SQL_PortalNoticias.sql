USE [master]
GO
/****** Object:  Database [PortalNoticias]    Script Date: 02/11/2016 17:18:40 ******/
CREATE DATABASE [PortalNoticias]
GO
ALTER DATABASE [PortalNoticias] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PortalNoticias].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PortalNoticias] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PortalNoticias] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PortalNoticias] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PortalNoticias] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PortalNoticias] SET ARITHABORT OFF 
GO
ALTER DATABASE [PortalNoticias] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PortalNoticias] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PortalNoticias] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PortalNoticias] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PortalNoticias] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PortalNoticias] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PortalNoticias] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PortalNoticias] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PortalNoticias] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PortalNoticias] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PortalNoticias] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PortalNoticias] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PortalNoticias] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PortalNoticias] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PortalNoticias] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PortalNoticias] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PortalNoticias] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PortalNoticias] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PortalNoticias] SET  MULTI_USER 
GO
ALTER DATABASE [PortalNoticias] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PortalNoticias] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PortalNoticias] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PortalNoticias] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [PortalNoticias] SET DELAYED_DURABILITY = DISABLED 
GO
USE [PortalNoticias]
GO
/****** Object:  Table [dbo].[Comentarios]    Script Date: 02/11/2016 17:18:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comentarios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Comentario] [varchar](max) NULL,
	[Nombre] [varchar](max) NULL,
	[NoticiaId] [int] NULL,
	[FechaCreacion] [datetime] NULL,
 CONSTRAINT [PK_Comentarios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Noticias]    Script Date: 02/11/2016 17:18:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Noticias](
	[Id] [int] NOT NULL,
	[Titulo] [nvarchar](250) NOT NULL,
	[DescripcionBreve] [nvarchar](500) NULL,
	[DescipcionCompleta] [nvarchar](max) NULL,
	[Imagen] [nvarchar](250) NULL,
	[Visitas] [int] NULL,
 CONSTRAINT [PK_Noticias] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[Noticias] ([Id], [Titulo], [DescripcionBreve], [DescipcionCompleta], [Imagen], [Visitas]) VALUES (1, N'Resultados ONPE al 91%: PPK con 50,32% y Keiko con 49,68%', N'Porcentaje de ONPE de la segunda vuelta se refiere a actas contabilizadas. En actas procesadas, conteo es al 92,6%', N'La Oficina Nacional de Procesos Electorales (ONPE) hizo público sus resultados oficiales al 91% de actas contabilizadas –92,6% de actas procesadas– de las elecciones 2016. Según este, el candidato presidencial de Peruanos por el Kambio, Pedro Pablo Kuczynski (PPK), llega a 50,32% y su contendora de Fuerza Popular, Keiko Fujimori, a 49,68%.', N'http://cde.3.elcomercio.pe/ima/0/1/4/0/2/1402744/base_image.jpg', 12)
GO
INSERT [dbo].[Noticias] ([Id], [Titulo], [DescripcionBreve], [DescipcionCompleta], [Imagen], [Visitas]) VALUES (2, N'Elecciones Perú 2016: revive segunda vuelta entre PPK y Keiko', N'Los candidatos de Fuerza Popular y Peruanos por el Kambio definen quién será presidente del Perú del período 2016-2021', N'Los candidatos presidenciales de Fuerza Popular, Keiko Fujimori, y de Peruanos por el Kambio, Pedro Pablo Kuczynski (PPK), pelean voto a voto en la segunda vuelta de las elecciones del 2016, que define quién será el próximo jefe del Estado.', N'http://cde.3.elcomercio.pe/ima/0/1/4/0/1/1401768/base_image.jpg', 50)
GO
INSERT [dbo].[Noticias] ([Id], [Titulo], [DescripcionBreve], [DescipcionCompleta], [Imagen], [Visitas]) VALUES (3, N'ONPE: resultados al 100% estarán el fin de semana', N'Presidente de la ONPE refirió que "el viernes, sábado o domingo deben llegar las actas desde el lugar más alejado del mundo"', N'El jefe de la ONPE, Mariano Cucho, refirió hoy que los resultados al 100% de la segunda vuelta de las Elecciones 2016 recién se conocerán el fin de semana debido a que aún se esperan las actas procedentes del extranjero.', N'http://cde.3.elcomercio.pe/ima/0/1/4/0/2/1402657/base_image.jpg', 100)
GO
ALTER TABLE [dbo].[Comentarios] ADD  CONSTRAINT [DF_Comentarios_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[Comentarios]  WITH CHECK ADD  CONSTRAINT [FK_Comentarios_Noticias] FOREIGN KEY([NoticiaId])
REFERENCES [dbo].[Noticias] ([Id])
GO
ALTER TABLE [dbo].[Comentarios] CHECK CONSTRAINT [FK_Comentarios_Noticias]
GO
USE [master]
GO
ALTER DATABASE [PortalNoticias] SET  READ_WRITE 
GO
