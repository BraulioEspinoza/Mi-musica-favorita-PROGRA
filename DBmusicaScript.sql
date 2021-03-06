USE [master]
GO
/****** Object:  Database [db_musica]    Script Date: 19/11/2016 23:48:08 ******/
CREATE DATABASE [db_musica]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_musica', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\db_musica.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'db_musica_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\db_musica_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [db_musica] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_musica].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_musica] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_musica] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_musica] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_musica] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_musica] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_musica] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [db_musica] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_musica] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_musica] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_musica] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_musica] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_musica] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_musica] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_musica] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_musica] SET  DISABLE_BROKER 
GO
ALTER DATABASE [db_musica] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_musica] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_musica] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_musica] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_musica] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_musica] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db_musica] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_musica] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [db_musica] SET  MULTI_USER 
GO
ALTER DATABASE [db_musica] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_musica] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_musica] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_musica] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [db_musica] SET DELAYED_DURABILITY = DISABLED 
GO
USE [db_musica]
GO
/****** Object:  Table [dbo].[Artista]    Script Date: 19/11/2016 23:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Artista](
	[idArtista] [int] NOT NULL,
	[nombreArtista] [varchar](50) NOT NULL,
	[nacionalidad] [varchar](50) NULL,
	[descripcion] [varchar](max) NULL,
	[imagen] [varchar](300) NULL,
	[noticiaId] [int] NOT NULL,
	[cancionId] [int] NOT NULL,
	[descripcionCompleta] [varchar](max) NULL,
	[generoId] [int] NULL,
 CONSTRAINT [PK_Artista] PRIMARY KEY CLUSTERED 
(
	[idArtista] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Canciones]    Script Date: 19/11/2016 23:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Canciones](
	[idCanciones] [int] NOT NULL,
	[nombreCanciones] [varchar](50) NOT NULL,
	[generoId] [int] NOT NULL,
	[videoId] [varchar](20) NULL,
 CONSTRAINT [PK_Canciones] PRIMARY KEY CLUSTERED 
(
	[idCanciones] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Genero]    Script Date: 19/11/2016 23:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Genero](
	[idGenero] [int] NOT NULL,
	[tipoGenero] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Genero] PRIMARY KEY CLUSTERED 
(
	[idGenero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Noticias]    Script Date: 19/11/2016 23:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Noticias](
	[idNoticia] [int] NOT NULL,
	[titulo] [varchar](50) NOT NULL,
	[descripcion] [varchar](max) NOT NULL,
	[imagen] [varchar](300) NULL,
	[fecha] [date] NULL,
 CONSTRAINT [PK_Noticias] PRIMARY KEY CLUSTERED 
(
	[idNoticia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Artista] ([idArtista], [nombreArtista], [nacionalidad], [descripcion], [imagen], [noticiaId], [cancionId], [descripcionCompleta], [generoId]) VALUES (1, N'zaperoko ', N'Peru', N'La orquesta de salsa del momento "Zaperoko" viajaron hasta el Callao, para hacer bailar a todos. De acuerdo a sus integrantes el significado del nombre de su banda significa desorden, alboroto. ', N'http://sss.radiomar.pe/imagen/apaisado/zaperoko-mala-mujer-video5-76a19.jpg', 1, 1, N'La Orquesta Zaperoko La Resistencia Salsera del Callao nos ofrece una selección de temas sabrosos, llenos de creatividad y calidad para satisfacer y deleitar a la masa de todos los salseros que bailan por todo el Perú y sobre todo en el Callao, nuestro lugar que nos vio nacer.

La Orquesta Zaperoko formada por músicos 100% chalacos que quieren poner en alto el nombre de nuestro Callao; Nosotros somos sinónimo de bailador latino, el mismo bailador que le late la sangre y en su corazón cuando danza su baile.
Es uno de los grupos que suena muy rico en vivo; la madurez, soltura y ejecución musical que emanamos en cada presentación musical nos hace triunfadores. El grupo reivindica, una vez más, el sitial de honor que merece la Música Latina, no sólo para los países caribeños, andinos y afroamericanos; es una propuesta en el marco de una sociedad globalizada, pero también, en un momento histórico en donde nuestras identidades culturales tienen un gran capital que aportar en este contrapunteo multicultural y pluriétnico que existe actualmente en el ámbito mundial, en diversos campos y por supuesto en el plano musical.', 1)
INSERT [dbo].[Artista] ([idArtista], [nombreArtista], [nacionalidad], [descripcion], [imagen], [noticiaId], [cancionId], [descripcionCompleta], [generoId]) VALUES (2, N'Guns N'' Roses', N'Estados Unidos', N'Guns N'' Roses es una banda estadounidense de hard rock formada en Hollywood (Los Ángeles, California) en 1985. El grupo fue fundado por Axl Rose y el guitarrista rítmico Izzy Stradlin.', N'http://d1ya1fm0bicxg1.cloudfront.net/2015/11/promoted-media-optimized_5658eff54962e.jpg', 2, 2, N'Guns N'' Roses es una banda estadounidense de hard rock formada en Hollywood (Los Ángeles, California) en 1985.  La banda ha vendido más de 100 millones de álbumes en todo el mundo,  incluyendo más de 58 millones de álbumes en los Estados Unidos.  El álbum Appetite for Destruction de 1987 ha vendido 30  millones de copias a nivel mundial y alcanzó el número 1 en el Billboard 200 en Estados Unidos. Además, cuatro canciones del álbum ingresaron en el Top 10 en la Billboard Hot 100, y «Sweet Child o'' Mine» quedó en el número uno. Su álbum de 1988 G N'' R Lies ha vendido más de 14 millones de copias en todo el mundo y su canción «Patience» entró en el Top 5 del Billboard Hot 100 y el álbum alcanzó el número dos en el Billboard 200. A finales de los años ochenta y principios de los noventa han sido descritos por la industria de la música como el período en el que Guns N'' Roses «sacó una rebeldía hedonista y revivió la actitud punk impulsada por el hard rock, con referencias de los primeros álbumes de The Rolling Stones»', 2)
INSERT [dbo].[Artista] ([idArtista], [nombreArtista], [nacionalidad], [descripcion], [imagen], [noticiaId], [cancionId], [descripcionCompleta], [generoId]) VALUES (3, N'Ráfaga', N'Argentina', N'Ráfaga es una banda de la cumbia argentina que fue formada en 1994 por diez integrantes. Comenzó a ganar popularidad en 1996 tras publicar su primer disco Soplando Fuerte. ', N'https://1.bp.blogspot.com/-j-4q_H2C-RE/VxT4EWGGVFI/AAAAAAAANEo/dF3P_REytGwNluSOH68F5xo1L3nVRLn1ACLcB/s1600/rafagaaa.jpg', 3, 3, N'Las primeras apariciones en público revelaron el especial “feeling” que Ráfaga despertaba en el auditorio, determinando la pronta grabación de su primer compacto, “Soplando fuerte”, que llegó a ser disco de Oro. En 1997 salió su segundo disco, titulado “Sobrevolando América”, que los lleva por todo el continente en una espectacular gira de éxitos, consiguiendo llegar hasta Estados Unidos. Después del inmenso éxito, llega un momento difícil para el grupo y es de saber que Ariel Puchetta , pero antes editan el disco Marca Registrada en 2002. Una vez tomada esta decisión, empieza una ardua búsqueda de la nueva voz para el grupo. Se presentaron muchos aspirantes para ocupar el lugar que dejó Ariel, cosa que en su momento fue difícil, pero apareció Rodrigo Tapari, un chico de 18 años que quedó elegido y se empezó con la grabación de su primer trabajo en Ráfaga. En 2004 Ráfaga llega al país vecino Chile con una gira renovada en todos los aspectos, en lo que cabe destacar que el público aceptó de manera fabulosa al nuevo cantante. ', 3)
INSERT [dbo].[Artista] ([idArtista], [nombreArtista], [nacionalidad], [descripcion], [imagen], [noticiaId], [cancionId], [descripcionCompleta], [generoId]) VALUES (4, N'Romeo Santos', N'Estados Unidos', N'Es apodado como El Rey de la Bachata por haber sido el líder, vocalista y compositor principal de la agrupación Aventura. Ha sido una figura clave en la popularización de la bachata a nivel internacional.', N'http://www.lahiguera.net/musicalia/artistas/romeo_santos/disco/5649/romeo_santos_formula_vol_2-portada.jpg', 4, 4, N'Anthony Santos (Bronx, Nueva York, Estados Unidos 21 de julio de 1981), más conocido por su nombre artístico Romeo Santos, es un cantautor estadounidense.  En 2002, la canción Obsesión ocupó el #1 en Italia por 16 semanas consecutivas. Luego de varios discos con la agrupación Aventura, Romeo anunció su separación de la agrupación para lanzarse como solista en abril de 2011. Desde entonces, Romeo ha lanzado su carrera solista, logrando siete sencillos #1 en el Hot Latin Chart, y ocho #1 en el Hot Tropical Songs Chart, en cuatro años. Romeo es el compositor de casi todos los temas que ha alcanzado, tanto con el grupo Aventura como él como solista. También ha escrito éxitos para artistas como Wisin & Yandel ("Noche de sexo"), Thalía (No, no, no), Héctor Acosta ("Me voy")', 4)
INSERT [dbo].[Canciones] ([idCanciones], [nombreCanciones], [generoId], [videoId]) VALUES (1, N'La revancha', 1, N'9lw1i0riTds')
INSERT [dbo].[Canciones] ([idCanciones], [nombreCanciones], [generoId], [videoId]) VALUES (2, N'You Could Be Mine', 2, N'VC9L-BZ1PI0')
INSERT [dbo].[Canciones] ([idCanciones], [nombreCanciones], [generoId], [videoId]) VALUES (3, N'Una Cerveza', 3, N'jroGX_jM1Yc')
INSERT [dbo].[Canciones] ([idCanciones], [nombreCanciones], [generoId], [videoId]) VALUES (4, N'Eres mia', 4, N'J9Hd6kOYO00')
INSERT [dbo].[Genero] ([idGenero], [tipoGenero]) VALUES (1, N'salsa')
INSERT [dbo].[Genero] ([idGenero], [tipoGenero]) VALUES (2, N'rock')
INSERT [dbo].[Genero] ([idGenero], [tipoGenero]) VALUES (3, N'cumbia')
INSERT [dbo].[Genero] ([idGenero], [tipoGenero]) VALUES (4, N'bachata')
INSERT [dbo].[Noticias] ([idNoticia], [titulo], [descripcion], [imagen], [fecha]) VALUES (1, N'zaperoko puso el sabor en "exitosa"', N'La orquesta salsera del Callao se presentó en el programa de Maribel Toledo Ocampo con lo mejor de sus éxitos.
 Zaperoko nos comenta que todos los que conforman son chalacos y que no cualquiera le puede poner el sabor de la salsa cantandolo con mucho sentimiento. Cada integrante tiene experiencia por haber estado acompañado con buenos artistas internacionales. ', N'https://i.ytimg.com/vi/jyNkvEkP6mM/hqdefault.jpg', CAST(N'2016-06-06' AS Date))
INSERT [dbo].[Noticias] ([idNoticia], [titulo], [descripcion], [imagen], [fecha]) VALUES (2, N'G N'' R Lies', N'G N'' R Lies es el nombre del segundo álbum de estudio de la banda de hard rock estadounidense Guns N'' Roses. Fue lanzado al mercado el 6 de diciembre de 1988.

El álbum en si, resultó menos intenso en cuanto a contenidos que el primero (Appetite for Destruction), aunque no por ello menos controvertido, destacan canciones como «One in a Million», de gran dureza en el contenido de sus letras, lo que ocasionó unos pocos problemas a la banda.', N'https://i.scdn.co/image/1cb46a8a838ee554ec3a4a96025c8dc8274cb811', CAST(N'1998-11-29' AS Date))
INSERT [dbo].[Noticias] ([idNoticia], [titulo], [descripcion], [imagen], [fecha]) VALUES (3, N'Ráfaga causó furor en su visita a Nuevo Chimbote', N'Rodrigo Tapari y sus compañeros se dieron con la grata sorpresa de la gran acogida que tienen en esa parte del país. Tras enterarse de la llegada de Ráfaga a Nuevo Chimbote, varias jovencitas estuvieron casi todo el día del miércoles esperándolos fuera del hotel para verlos en vivo y en directo. Tuvieron que pasar horas para que los argentinos las sorprendan.', N'http://cdn7.larepublica.pe/sites/default/files/styles/img_620/public/imagen/2016/05/30/rafaga-Noticia-772227.jpg', CAST(N'2016-06-01' AS Date))
INSERT [dbo].[Noticias] ([idNoticia], [titulo], [descripcion], [imagen], [fecha]) VALUES (4, N'Romeo casi muere en un accidente de transito', N'Romeo Santos: El rey de la bachata casi muere en un aparatoso accidente de transito, mientras conducia su ferrari color rojo, en un hecho ocurrido en la tercera avenida de la calle de Manhattan. El artista perdió el control del vehículo mientras conducía a alta velocidad.', N'http://3.bp.blogspot.com/-WbOD_lOunSM/VXIv_DmIODI/AAAAAAAAAFI/4zBNnbcNPFg/s1600/romeo-santos-viral-2.png', CAST(N'2015-06-05' AS Date))
ALTER TABLE [dbo].[Artista]  WITH CHECK ADD  CONSTRAINT [FK_Artista_Canciones] FOREIGN KEY([cancionId])
REFERENCES [dbo].[Canciones] ([idCanciones])
GO
ALTER TABLE [dbo].[Artista] CHECK CONSTRAINT [FK_Artista_Canciones]
GO
ALTER TABLE [dbo].[Artista]  WITH CHECK ADD  CONSTRAINT [FK_Artista_Genero] FOREIGN KEY([generoId])
REFERENCES [dbo].[Genero] ([idGenero])
GO
ALTER TABLE [dbo].[Artista] CHECK CONSTRAINT [FK_Artista_Genero]
GO
ALTER TABLE [dbo].[Artista]  WITH CHECK ADD  CONSTRAINT [FK_Artista_Noticias] FOREIGN KEY([noticiaId])
REFERENCES [dbo].[Noticias] ([idNoticia])
GO
ALTER TABLE [dbo].[Artista] CHECK CONSTRAINT [FK_Artista_Noticias]
GO
USE [master]
GO
ALTER DATABASE [db_musica] SET  READ_WRITE 
GO
