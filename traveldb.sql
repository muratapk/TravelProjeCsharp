USE [master]
GO
/****** Object:  Database [traveldb]    Script Date: 25.05.2025 10:48:50 ******/
CREATE DATABASE [traveldb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'traveldb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\traveldb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'traveldb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\traveldb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [traveldb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [traveldb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [traveldb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [traveldb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [traveldb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [traveldb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [traveldb] SET ARITHABORT OFF 
GO
ALTER DATABASE [traveldb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [traveldb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [traveldb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [traveldb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [traveldb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [traveldb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [traveldb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [traveldb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [traveldb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [traveldb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [traveldb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [traveldb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [traveldb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [traveldb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [traveldb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [traveldb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [traveldb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [traveldb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [traveldb] SET  MULTI_USER 
GO
ALTER DATABASE [traveldb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [traveldb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [traveldb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [traveldb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [traveldb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [traveldb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [traveldb] SET QUERY_STORE = OFF
GO
USE [traveldb]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 25.05.2025 10:48:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[AdminId] [int] IDENTITY(1,1) NOT NULL,
	[Kul] [nvarchar](30) NOT NULL,
	[Sifre] [nvarchar](30) NOT NULL,
	[Yetki] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AdminId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kategori]    Script Date: 25.05.2025 10:48:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kategori](
	[KategoriId] [int] IDENTITY(1,1) NOT NULL,
	[KategoriAdi] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[KategoriId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[oda]    Script Date: 25.05.2025 10:48:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[oda](
	[OdaId] [int] IDENTITY(1,1) NOT NULL,
	[OdaNo] [int] NOT NULL,
	[OdaAdi] [nvarchar](30) NOT NULL,
	[OdaFiyat] [float] NOT NULL,
	[OdaDurum] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OdaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[otel]    Script Date: 25.05.2025 10:48:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[otel](
	[OtelId] [int] IDENTITY(1,1) NOT NULL,
	[OtelAdi] [nvarchar](150) NOT NULL,
	[Lokasyon] [nvarchar](100) NOT NULL,
	[GenelBakis] [nvarchar](max) NOT NULL,
	[OtelOzellik] [nvarchar](255) NOT NULL,
	[Konum] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OtelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[otell]    Script Date: 25.05.2025 10:48:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[otell](
	[OtelId] [int] IDENTITY(1,1) NOT NULL,
	[OtelAd] [nvarchar](30) NOT NULL,
	[OtelAciklama] [nvarchar](30) NOT NULL,
	[OzelOzellik] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OtelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[oteloda]    Script Date: 25.05.2025 10:48:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[oteloda](
	[OtelOdaId] [int] IDENTITY(1,1) NOT NULL,
	[OtelId] [nvarchar](30) NOT NULL,
	[OdaId] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OtelOdaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[otelozellik]    Script Date: 25.05.2025 10:48:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[otelozellik](
	[OzelId] [int] IDENTITY(1,1) NOT NULL,
	[OzelAd] [nvarchar](30) NOT NULL,
	[OzelSimge] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OzelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[otelresimler]    Script Date: 25.05.2025 10:48:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[otelresimler](
	[ResimId] [int] IDENTITY(1,1) NOT NULL,
	[OtelId] [nvarchar](30) NOT NULL,
	[Resimadi] [nvarchar](30) NOT NULL,
	[ResimYolu] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ResimId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ozellikler]    Script Date: 25.05.2025 10:48:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ozellikler](
	[OzelId] [int] IDENTITY(1,1) NOT NULL,
	[OzelAd] [nvarchar](30) NOT NULL,
	[OzelSimge] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OzelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rezervasyon]    Script Date: 25.05.2025 10:48:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rezervasyon](
	[RezervasyonId] [int] IDENTITY(1,1) NOT NULL,
	[GirisTarih] [nvarchar](11) NOT NULL,
	[CıkısTarih] [nvarchar](11) NOT NULL,
	[Yetiskin] [nvarchar](30) NOT NULL,
	[Cocuk] [nvarchar](30) NOT NULL,
	[UyeId] [nvarchar](11) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RezervasyonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rezerveoda]    Script Date: 25.05.2025 10:48:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rezerveoda](
	[RezerveOdaId] [int] IDENTITY(1,1) NOT NULL,
	[OtelId] [nvarchar](11) NOT NULL,
	[OdaId] [nvarchar](30) NOT NULL,
	[GirisTarihi] [nvarchar](30) NOT NULL,
	[CikisTarihi] [nvarchar](30) NOT NULL,
	[OdaDurumu] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RezerveOdaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[uyelik]    Script Date: 25.05.2025 10:48:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[uyelik](
	[UyeId] [int] IDENTITY(1,1) NOT NULL,
	[UyeAd] [nvarchar](100) NOT NULL,
	[Cep] [nvarchar](30) NOT NULL,
	[Mail] [nvarchar](70) NOT NULL,
	[Kul] [nvarchar](30) NOT NULL,
	[Sifre] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UyeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yorumlar]    Script Date: 25.05.2025 10:48:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yorumlar](
	[YorumId] [int] IDENTITY(1,1) NOT NULL,
	[OtelId] [int] NOT NULL,
	[YorumAd] [nvarchar](100) NOT NULL,
	[Yorum] [nvarchar](max) NOT NULL,
	[Gizle] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[YorumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[admin] ON 

INSERT [dbo].[admin] ([AdminId], [Kul], [Sifre], [Yetki]) VALUES (1, N'Faruk', N'123', N'Admin')
INSERT [dbo].[admin] ([AdminId], [Kul], [Sifre], [Yetki]) VALUES (2, N'Fahri', N'Fahri', N'Fahri')
INSERT [dbo].[admin] ([AdminId], [Kul], [Sifre], [Yetki]) VALUES (3, N'Furkan', N'123', N'Admin')
INSERT [dbo].[admin] ([AdminId], [Kul], [Sifre], [Yetki]) VALUES (4, N'Furkan', N'123', N'Admin')
INSERT [dbo].[admin] ([AdminId], [Kul], [Sifre], [Yetki]) VALUES (5, N'Furkan', N'123', N'Admin')
INSERT [dbo].[admin] ([AdminId], [Kul], [Sifre], [Yetki]) VALUES (6, N'Furkan', N'123', N'Editör')
INSERT [dbo].[admin] ([AdminId], [Kul], [Sifre], [Yetki]) VALUES (7, N'Şükrü', N'123', N'Admin')
INSERT [dbo].[admin] ([AdminId], [Kul], [Sifre], [Yetki]) VALUES (8, N'Selim', N'123', N'Admin')
INSERT [dbo].[admin] ([AdminId], [Kul], [Sifre], [Yetki]) VALUES (9, N'Mete', N'123', N'Admin')
INSERT [dbo].[admin] ([AdminId], [Kul], [Sifre], [Yetki]) VALUES (10, N'Taha', N'123', N'Admin')
INSERT [dbo].[admin] ([AdminId], [Kul], [Sifre], [Yetki]) VALUES (11, N'Taha', N'123', N'Admin')
INSERT [dbo].[admin] ([AdminId], [Kul], [Sifre], [Yetki]) VALUES (12, N'Mete', N'123', N'Admin')
INSERT [dbo].[admin] ([AdminId], [Kul], [Sifre], [Yetki]) VALUES (13, N'Ahmet', N'123', N'Admin')
INSERT [dbo].[admin] ([AdminId], [Kul], [Sifre], [Yetki]) VALUES (14, N'Veli', N'123', N'Admin')
SET IDENTITY_INSERT [dbo].[admin] OFF
GO
SET IDENTITY_INSERT [dbo].[kategori] ON 

INSERT [dbo].[kategori] ([KategoriId], [KategoriAdi]) VALUES (1, N'Sosyete')
INSERT [dbo].[kategori] ([KategoriId], [KategoriAdi]) VALUES (2, N'bungalov')
INSERT [dbo].[kategori] ([KategoriId], [KategoriAdi]) VALUES (3, N'otel')
INSERT [dbo].[kategori] ([KategoriId], [KategoriAdi]) VALUES (4, N'kiralık ev')
SET IDENTITY_INSERT [dbo].[kategori] OFF
GO
SET IDENTITY_INSERT [dbo].[oda] ON 

INSERT [dbo].[oda] ([OdaId], [OdaNo], [OdaAdi], [OdaFiyat], [OdaDurum]) VALUES (1, 1, N'Üç Kişilik Oda', 300, N'0')
INSERT [dbo].[oda] ([OdaId], [OdaNo], [OdaAdi], [OdaFiyat], [OdaDurum]) VALUES (2, 1, N'Üç Kişilik Oda', 410, N'0')
INSERT [dbo].[oda] ([OdaId], [OdaNo], [OdaAdi], [OdaFiyat], [OdaDurum]) VALUES (3, 1, N'Üç Kişilik Oda', 6000, N'0')
INSERT [dbo].[oda] ([OdaId], [OdaNo], [OdaAdi], [OdaFiyat], [OdaDurum]) VALUES (4, 1, N'Üç Kişilik Oda', 6000, N'0')
INSERT [dbo].[oda] ([OdaId], [OdaNo], [OdaAdi], [OdaFiyat], [OdaDurum]) VALUES (5, 2, N'Üç Kişilik Oda', 6000, N'0')
INSERT [dbo].[oda] ([OdaId], [OdaNo], [OdaAdi], [OdaFiyat], [OdaDurum]) VALUES (6, 1, N'Üç Kişilik Oda', 6000, N'0')
INSERT [dbo].[oda] ([OdaId], [OdaNo], [OdaAdi], [OdaFiyat], [OdaDurum]) VALUES (7, 1, N'suit', 410, N'Boş')
SET IDENTITY_INSERT [dbo].[oda] OFF
GO
SET IDENTITY_INSERT [dbo].[otel] ON 

INSERT [dbo].[otel] ([OtelId], [OtelAdi], [Lokasyon], [GenelBakis], [OtelOzellik], [Konum]) VALUES (2, N'Selim', N'Antayla', N'16', N'16', N'16')
SET IDENTITY_INSERT [dbo].[otel] OFF
GO
SET IDENTITY_INSERT [dbo].[ozellikler] ON 

INSERT [dbo].[ozellikler] ([OzelId], [OzelAd], [OzelSimge]) VALUES (1, N'Murat', N'Ay')
INSERT [dbo].[ozellikler] ([OzelId], [OzelAd], [OzelSimge]) VALUES (2, N'Murat', N'Ay')
INSERT [dbo].[ozellikler] ([OzelId], [OzelAd], [OzelSimge]) VALUES (3, N'Murat', N'Ay')
INSERT [dbo].[ozellikler] ([OzelId], [OzelAd], [OzelSimge]) VALUES (4, N'Murat', N'Ay')
SET IDENTITY_INSERT [dbo].[ozellikler] OFF
GO
SET IDENTITY_INSERT [dbo].[uyelik] ON 

INSERT [dbo].[uyelik] ([UyeId], [UyeAd], [Cep], [Mail], [Kul], [Sifre]) VALUES (1, N'', N'', N'', N'', N'')
INSERT [dbo].[uyelik] ([UyeId], [UyeAd], [Cep], [Mail], [Kul], [Sifre]) VALUES (2, N'', N'', N'', N'', N'')
INSERT [dbo].[uyelik] ([UyeId], [UyeAd], [Cep], [Mail], [Kul], [Sifre]) VALUES (3, N'', N'55565', N'ktjkgj', N'hsj', N'1234')
INSERT [dbo].[uyelik] ([UyeId], [UyeAd], [Cep], [Mail], [Kul], [Sifre]) VALUES (4, N'Alev', N'55565', N'ktjkgj', N'hsj', N'1234')
INSERT [dbo].[uyelik] ([UyeId], [UyeAd], [Cep], [Mail], [Kul], [Sifre]) VALUES (5, N'Alev', N'55565', N'ktjkgj', N'Furkan', N'123')
INSERT [dbo].[uyelik] ([UyeId], [UyeAd], [Cep], [Mail], [Kul], [Sifre]) VALUES (6, N'Alev', N'55565', N'ktjkgj', N'Furkan', N'123')
INSERT [dbo].[uyelik] ([UyeId], [UyeAd], [Cep], [Mail], [Kul], [Sifre]) VALUES (7, N'Alev', N'55565', N'ktjkgj', N'Furkan', N'123')
INSERT [dbo].[uyelik] ([UyeId], [UyeAd], [Cep], [Mail], [Kul], [Sifre]) VALUES (8, N'Barkın', N'', N'55', N'Barkın', N'123')
SET IDENTITY_INSERT [dbo].[uyelik] OFF
GO
SET IDENTITY_INSERT [dbo].[yorumlar] ON 

INSERT [dbo].[yorumlar] ([YorumId], [OtelId], [YorumAd], [Yorum], [Gizle]) VALUES (1, 0, N'allll', N'sssss', 0)
INSERT [dbo].[yorumlar] ([YorumId], [OtelId], [YorumAd], [Yorum], [Gizle]) VALUES (2, 0, N'allll', N'sssss', 0)
INSERT [dbo].[yorumlar] ([YorumId], [OtelId], [YorumAd], [Yorum], [Gizle]) VALUES (3, 0, N'allll', N'sssss', 0)
SET IDENTITY_INSERT [dbo].[yorumlar] OFF
GO
USE [master]
GO
ALTER DATABASE [traveldb] SET  READ_WRITE 
GO
