USE [master]
GO
/****** Object:  Database [Cofaral]    Script Date: 28/1/2022 14:44:18 ******/
CREATE DATABASE [Cofaral]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Cofaral', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Cofaral.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Cofaral_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Cofaral_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Cofaral] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Cofaral].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Cofaral] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Cofaral] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Cofaral] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Cofaral] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Cofaral] SET ARITHABORT OFF 
GO
ALTER DATABASE [Cofaral] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Cofaral] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Cofaral] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Cofaral] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Cofaral] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Cofaral] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Cofaral] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Cofaral] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Cofaral] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Cofaral] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Cofaral] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Cofaral] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Cofaral] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Cofaral] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Cofaral] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Cofaral] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Cofaral] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Cofaral] SET RECOVERY FULL 
GO
ALTER DATABASE [Cofaral] SET  MULTI_USER 
GO
ALTER DATABASE [Cofaral] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Cofaral] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Cofaral] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Cofaral] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Cofaral] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Cofaral] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Cofaral', N'ON'
GO
ALTER DATABASE [Cofaral] SET QUERY_STORE = OFF
GO
USE [Cofaral]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 28/1/2022 14:44:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[sapcode] [int] NULL,
	[name] [varchar](50) NULL,
	[presentation] [varchar](250) NULL,
	[laboratorio] [varchar](50) NULL,
	[droga] [varchar](50) NULL,
	[tucuman] [int] NULL,
	[salta] [int] NULL,
	[chaco] [int] NULL,
	[precio] [decimal](10, 2) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73062, N'TIO NACHO', N'TIO NACHO SHA PROT VERANO X415', N'GENOMMA PER', N'PRODUCTO COSM?TICO', 66, 10, 9, CAST(323.87 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73060, N'CICATRICURE CORPORAL', N'CICATRICURE CR HIDRA/INTENS X400', N'GENOMMA PER', N'PRODUCTO COSM?TICO', 33, 13, 25, CAST(402.25 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (69160, N'SUPRALER M', N'SUPRALER COM M X30', N'PANALAB SA', N'MONTELUKAST+LEVOCETIRIZINA', 0, 0, 2, CAST(1936.00 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (69132, N'NUTRISON PROTEIN INTENSE', N'NUTRISON PROTEIN  INTENSE X500ML', N'NUTRICIA MED (DISPRO)', N'PROTE¡NAS+GRASAS+CARBOHID.+ASO', 0, 0, 0, CAST(1567.51 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (69130, N'PRESIMAX A', N'PRESIMAX COM  A 50  X30', N'BAGO DISPRO', N'AMLODIPINA+LOSART N,POT SICO', 80, 20, 5, CAST(1363.57 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (69129, N'PRESIMAX A', N'PRESIMAX COM  A 100 X30', N'BAGO DISPRO', N'AMLODIPINA+LOSART N,POT SICO', 48, 18, 11, CAST(1527.41 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (69128, N'INMEDIAL BODY CREAM ESTRIAS EWE', N'EWE INMEDIAL CR X150', N'EWE PHARMOS', N'PRODUCTO COSM?TICO', 0, 0, 0, CAST(621.04 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (69127, N'LECHE DE ALMENDRAS EWE', N'EWE LECHE DE ALMEND X200', N'EWE PHARMOS', N'ACEITE DE ALMENDRAS+VIT.E', 11, 10, 0, CAST(276.44 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (69117, N'AJO 1000+C GARDEN HOUSE', N'GARDEN HOUSE AJO 1000 COM  X30', N'GARDEN HOUSE', N'AJO+VIT.C', 9, 4, 3, CAST(456.45 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (69116, N'CARTILAGO DE TIBURON G.HOUSE', N'GARDEN HOUSE CARTILAGO TIBURON X30', N'GARDEN HOUSE', N'CART¡LAGO DE TIBUR¢N+ASOC.', 0, 0, 0, CAST(646.66 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (69115, N'COLAGENO HIDROLIZADO GARDEN HOUSE', N'GARDEN HOUSE COLAGENO COM   X60', N'GARDEN HOUSE', N'COL GENO', 203, 41, 77, CAST(514.77 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (69114, N'GARCINOL MAX GARDEN HOUSE', N'GARDEN HOUSE GARCINOL MAX COM X30', N'GARDEN HOUSE', N'GARCINIA CAMBOGIA+ASOC.', 0, 0, 0, CAST(583.02 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (69113, N'NERVOCALM GARDEN HOUSE', N'GARDEN HOUSE NERVOCALM COM  X20', N'GARDEN HOUSE', N'VALERIANA+ASOC.', 0, 0, 0, CAST(329.88 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (69112, N'POWER BRONZ GARDEN HOUSE', N'GARDEN HOUSE POWER BRONZ COM X30', N'GARDEN HOUSE', N'VIT.E+ASOC.', 4, 4, 2, CAST(458.62 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (69111, N'ACEITE DE PESCADO GARDEN HOUSE', N'GARDEN HOUSE ACEITE PESCADO X30', N'GARDEN HOUSE', N'ACEITE DE PESCADO', 5, 0, 11, CAST(479.78 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (69110, N'CHIA 1000 GARDEN HOUSE', N'GARDEN HOUSE CHIA 1000CAPS X60', N'GARDEN HOUSE', N'ACEITE DE CHIA', 8, 0, 0, CAST(1037.39 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (69089, N'DINADOM', N'DINADOM SPRAY NASAL X5ML', N'DOMINGUEZ DISPRO', N'DESMOPRESINA ACETATO', 14, 22, 0, CAST(5822.62 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (69088, N'TIO NACHO', N'TIO NACHO SHA ULTRA  HIDRA X200', N'GENOMMA PER', N'PRODUCTO COSM?TICO', 6, 12, 12, CAST(232.05 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (69087, N'TIO NACHO', N'TIO NACHO ACOND ULTRA  HIDRA X200', N'GENOMMA PER', N'PRODUCTO COSM?TICO', 7, 12, 9, CAST(232.05 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (65502, N'BAGOVIT A', N'BAGOVIT A PRO LIFT DIA+EMULSX120', N'BAGO DISPRO', N'VIT.+ASOC.', 0, 0, 0, CAST(914.94 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73054, N'FARMACLEAN MASCARA PUNTOS NEGROS', N'FARMACLEAN MASC-PUNTOS NEGROS X40', N'EXCELENTIA', N'PRODUCTO COSM?TICO', 0, 10, 14, CAST(238.02 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73053, N'VANSAME', N'VANSAME EMUL X260', N'VALUGE FARMANET', N'VIT.A+VIT.E+UREA', 7, 0, 1, CAST(895.71 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73052, N'MOTIONAL LAX', N'MOTIONAL LAX CAPS X20', N'SAVANT CONSUMER', N'SODIO,PICOSULFATO', 13, 1, 0, CAST(423.20 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73051, N'BIDECAR', N'BIDECAR COM 6,25  X60', N'BALIARDA', N'CARVEDILOL', 2, 2, 2, CAST(934.34 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73050, N'BIDECAR', N'BIDECAR COM 6,25  X30', N'BALIARDA', N'CARVEDILOL', 9, 5, 4, CAST(628.11 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73049, N'BIDECAR', N'BIDECAR COM 50 X30', N'BALIARDA', N'CARVEDILOL', 5, 4, 0, CAST(1334.71 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73048, N'BIDECAR', N'BIDECAR COM 3,125 X60', N'BALIARDA', N'CARVEDILOL', 5, 1, 1, CAST(577.15 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73047, N'BIDECAR', N'BIDECAR COM 3,125 X30', N'BALIARDA', N'CARVEDILOL', 1, 4, 7, CAST(341.89 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73046, N'BIDECAR', N'BIDECAR COM 25   X60', N'BALIARDA', N'CARVEDILOL', 2, 7, 1, CAST(1450.51 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73045, N'BIDECAR', N'BIDECAR COM 25   X30', N'BALIARDA', N'CARVEDILOL', 2, 10, 0, CAST(946.12 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73044, N'BIDECAR', N'BIDECAR COM 12,5 X60', N'BALIARDA', N'CARVEDILOL', 6, 1, 1, CAST(1210.02 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73043, N'BIDECAR', N'BIDECAR COM 12,5 X30', N'BALIARDA', N'CARVEDILOL', 16, 3, 1, CAST(772.61 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73036, N'NUTRILON REDUCIDO EN LACTOSA', N'NUTRILON REDUCIDO EN LACTOSA X400', N'NUTRICIA BAGO DISPRO', N'PROTE¡NAS+GRASAS+CARBOHID.+ASO', 94, 0, 0, CAST(2585.79 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73035, N'NUTRIBABY 4', N'NUTRIBABY 4 LATA X800', N'ETHICAL PHARMA ROFINA', N'PROTE¡NAS+GRASAS+CARBOHID.+ASO', 64, 0, 0, CAST(846.28 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73034, N'AMINOTERAPIA ADVANCED', N'AMINOTERAPIA ADVANCED COM X30', N'RAYMOS-MEGALABS ROFINA', N'CISTINA+BIOTINA+HIERRO+ZINC', 3, 4, 2, CAST(1423.80 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73033, N'AMINOTERAPIA ADVANCED', N'AMINOTERAPIA ADVANCED COM X60', N'RAYMOS-MEGALABS ROFINA', N'CISTINA+BIOTINA+HIERRO+ZINC', 3, 1, 3, CAST(2562.84 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73032, N'RUBOX', N'RUBOX CR DERMICA X30', N'CASSARA PHARMOS', N'OXIMETAZOLINA', 18, 12, 29, CAST(936.88 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73031, N'CREMA HIDR.Y NUTR. EL MONJE NEGRO', N'EL MONJE NEGRO CR HIDR/NUTRI DIABET X200', N'LERSAN PHARMOS', N'MALTODEXTRINA+ASOC.', 14, 3, 0, CAST(496.80 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73023, N'LETROZOL MICROSULES', N'LETROZOL MICROSULES 2,5 X30', N'ONCOFARMA SRL', N'LETROZOL', 0, 0, 0, CAST(6834.30 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73022, N'AMPK NUTRI VEGAN PROTEIN', N'AMPKNUTRI PROTEIN FRUTILLA X506', N'FRAMINGHA PHARMA', N'PROTE¡NA DE ARVEJA', 13, 10, 0, CAST(3120.80 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73021, N'FOSFOLEA', N'FOSFOLEA POLVO SOB X1', N'ELEA - PHOENIX DISPRO', N'FOSFOMICINA TROMETAMOL', 45, 22, 9, CAST(871.50 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73020, N'ISONIAZIDA LAFEDAR', N'ISONIAZIDA LAFEDAR 300 X30', N'LAFEDAR DISPRO', N'ISONIACIDA', 3, 0, 0, CAST(371.39 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73019, N'PARACETAMOL BAYER', N'PARACETAMOL BAYER COM 500 X30', N'BAYER POP', N'PARACETAMOL', 0, 0, 0, CAST(234.80 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (72776, N'VITAMINA C LAFARMEN', N'LAFARMEN VITAMINA C 1GR X30', N'LAFARMEN', N'VIT.C', 16, 0, 0, CAST(480.00 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (72775, N'COOL GEL', N'COOL GEL GEL OFTALMICO  X10', N'MAX VISION ROFINA', N'CARBOMER', 3, 5, 3, CAST(665.31 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (72774, N'ROSTRUM', N'ROSTRUM COM 25 X60', N'CASASCO FARMANET', N'QUETIAPINA', 9, 14, 11, CAST(3722.39 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (72773, N'MACRIL OVULOS', N'MACRIL OVULOS X6', N'ANDROMACO FARMANET', N'MICONAZOL+METRONIDAZOL+ASOC.', 39, 0, 13, CAST(555.20 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (72772, N'NEUMOCORT PLUS', N'NEUMOCORT CAPS PLUS X120', N'CASSARA PHARMOS', N'BUDESONIDE+FORMOTEROL', 0, 0, 0, CAST(4733.73 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (72771, N'NASITRAL', N'NASITRAL SPRAY NASAL X25', N'CASSARA PHARMOS', N'SODIO,CLORURO+CARRAGENINA', 779, 600, 242, CAST(1009.25 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (72770, N'OXA 75', N'OXA COM 75 X30', N'BETA DISPRO', N'DICLOFENAC S¢DICO', 6, 22, 1, CAST(1536.29 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (72769, N'OXA 75', N'OXA COM 75 X15', N'BETA DISPRO', N'DICLOFENAC S¢DICO', 14, 20, 5, CAST(825.93 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73979, N'FINALIT', N'FINALIT SOB X60', N'FINADIET ROFINA', N'POTASIO,CITRATO', 3, 2, 3, CAST(1918.78 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73967, N'ONE TOUCH DELICA PLUS', N'ONE TOUCH DELICA PLUS LANCETAS X25', N'SIDUS DISPRO', N'ACCESORIO', 2, 5, 5, CAST(318.72 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73966, N'ONE TOUCH SELECT PLUS', N'ONE TOUCH SELECT PLUS TIRAS X25', N'SIDUS DISPRO', N'TIRAS REACTIVAS', 20, 6, 5, CAST(2066.00 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73965, N'ONE TOUCH SELECT PLUS', N'ONE TOUCH SELECT PLUS TIRAS X50', N'SIDUS DISPRO', N'TIRAS REACTIVAS', 11, 2, 6, CAST(3726.69 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73943, N'REMEXAL', N'REMEXAL COM 20 X30', N'CASASCO FARMANET', N'RIVAROXAB N', 3, 5, 4, CAST(5823.94 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73942, N'REMEXAL', N'REMEXAL COM 20 X28', N'CASASCO FARMANET', N'RIVAROXAB N', 10, 8, 14, CAST(5435.68 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73941, N'REMEXAL', N'REMEXAL COM 15 X30', N'CASASCO FARMANET', N'RIVAROXAB N', 2, 2, 2, CAST(5546.79 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73940, N'REMEXAL', N'REMEXAL COM 15 X28', N'CASASCO FARMANET', N'RIVAROXAB N', 8, 6, 5, CAST(5176.91 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73939, N'REMEXAL', N'REMEXAL COM 10 X10', N'CASASCO FARMANET', N'RIVAROXAB N', 0, 0, 1, CAST(2662.64 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73938, N'ROCIAMIN 550', N'ROCIAMIN COM 550 X30', N'BERNABO', N'RIFAXIMINA', 23, 23, 10, CAST(2970.24 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73937, N'ROCIAMIN 550', N'ROCIAMIN COM 550 X10', N'BERNABO', N'RIFAXIMINA', 14, 14, 5, CAST(1179.36 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73936, N'GRAVITON', N'GRAVITON COM X60', N'PHARMA ALIOTH', N'VIT.+MINERALES', 36, 0, 0, CAST(1154.23 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73935, N'GRAVITON', N'GRAVITON COM X30', N'PHARMA ALIOTH', N'VIT.+MINERALES', 8, 0, 15, CAST(674.67 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73933, N'ROSUVASTATINA RICHET', N'ROSUVASTA.RICHE COM 40 X28', N'RICHET', N'ROSUVASTATINA', 5, 0, 0, CAST(2895.46 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73932, N'ROSUVASTATINA RICHET', N'ROSUVASTA.RICHE COM 20 X28', N'RICHET', N'ROSUVASTATINA', 4, 0, 0, CAST(1612.72 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73931, N'ROSUVASTATINA RICHET', N'ROSUVASTA.RICHE COM 10 X30', N'RICHET', N'ROSUVASTATINA', 5, 0, 0, CAST(918.26 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73930, N'PENICILINA ORAL RICHET', N'PENICILINA RICHET COM 1500 X12', N'RICHET', N'FENOXIMETILPENICILINA', 0, 0, 0, CAST(633.17 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73929, N'CEFTRIAXONA RICHET', N'CEFTRIAXO RICHE AMP+SOL 1G X1 I.V', N'RICHET', N'CEFTRIAXONA', 3, 0, 0, CAST(725.92 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73927, N'5-ASA 400', N'5-ASA SUP 400 X30', N'DOMINGUEZ DISPRO', N'MESALAZINA', 8, 0, 0, CAST(4037.68 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73926, N'VIASEK', N'VIASEK SOB X12', N'EUROFAR DISPRO', N'L CTICO, C.+ASOC.', 3, 3, 1, CAST(561.99 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73925, N'VITAL 2 NF', N'VITAL INF 2 POUCH X1K', N'NUTRICIA BAGO DISPRO', N'PROTE¡NAS+GRASAS+CARBOHID.+ASO', 11, 903, 140, CAST(843.31 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73924, N'FARMACLEAN', N'FARMACLEAN PANTALLA AZUL X15ML', N'FORMULAB S.A', N'PRODUCTO COSM?TICO', 24, 12, 12, CAST(588.43 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73913, N'CICATRICURE BLUR & FILLER', N'CICATRICURE CONT OJOS BLUR FILLER 2X1', N'GENOMMA PER', N'PRODUCTO COSM?TICO', 0, 0, 5, CAST(672.58 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73912, N'ASEPXIA CARBON', N'ASEPXIA AGUA MICEL CARBON ACT X400', N'GENOMMA PER', N'PRODUCTO COSM?TICO', 43, 7, 0, CAST(420.00 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73911, N'ASEPXIA CARBON', N'ASEPXIA AGUA MICEL CARBON ACT X200', N'GENOMMA PER', N'PRODUCTO COSM?TICO', 0, 0, 0, CAST(297.82 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73897, N'DROTAQ HP', N'DROTAQ COM HP20 X30', N'BALIARDA', N'TADALAFILO', 1, 1, 1, CAST(14004.13 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73896, N'DROTAQ', N'DROTAQ COM 5 X30', N'BALIARDA', N'TADALAFILO', 10, 2, 5, CAST(4931.07 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73895, N'DROTAQ', N'DROTAQ COM 20 X4', N'BALIARDA', N'TADALAFILO', 6, 3, 1, CAST(2116.74 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73894, N'DROTAQ', N'DROTAQ COM 20 X2', N'BALIARDA', N'TADALAFILO', 5, 5, 3, CAST(1098.93 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73893, N'DROTAQ', N'DROTAQ COM 20 X1', N'BALIARDA', N'TADALAFILO', 15, 1, 0, CAST(596.81 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73892, N'IMIMORE 3.75', N'IMIMORE CR 3.75% X6', N'PANALAB SA', N'IMIQUIMOD', 2, 0, 0, CAST(1828.00 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73884, N'PROBLOCK', N'PROBLOCK COM 5 X30', N'LABORATORIO ECZANE PHARMA', N'BISOPROLOL', 0, 0, 0, CAST(546.98 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73883, N'FENOSANE', N'FENOSANE CAPS 200MG X500', N'LABORATORIO ECZANE PHARMA', N'FENOFIBRATO', 0, 0, 0, CAST(8178.45 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73882, N'OMEFORT', N'OMEFORT CAPS EXPEND 20MG X490', N'LABORATORIO ECZANE PHARMA', N'OMEPRAZOL', 0, 0, 0, CAST(2363.90 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73881, N'CARBON ACTIVADO ECZANE 500 MG', N'CARBON ACTIVADO COM EXPEND 500MG X350', N'LABORATORIO ECZANE PHARMA', N'CARB¢N ACTIVADO', 0, 0, 0, CAST(2862.61 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73880, N'CARBON ACTIVADO ECZANE 250 MG', N'CARBON ACTIVADO COM EXPEND 250MG X500', N'LABORATORIO ECZANE PHARMA', N'CARB¢N ACTIVADO', 0, 0, 0, CAST(2258.10 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73867, N'STREPSILS INTENSIVE', N'STREPSILS CAR INTENSIVE X8', N'R BENCKISER', N'FLURBIPROFENO', 153, 0, 6, CAST(7969.08 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73861, N'AVENO INFANTIL', N'AVENO GEL BAÑO INF X250', N'ANDROMACO FARMANET', N'AVENA+ASOC.', 0, 8, 5, CAST(897.34 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73860, N'ECELON', N'ECELON LOC LIMP P-SENS X260', N'VALUGE FARMANET', N'HUMECTANTES+EMOLIENTES', 3, 3, 4, CAST(1042.41 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73859, N'ZOLOFT', N'ZOLOFT COM 50 X60', N'PFIZER DISPRO', N'SERTRALINA', 53, 3, 1, CAST(2681.12 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73817, N'SL B12', N'SLB12 COM 1 X60', N'DOMINGUEZ DISPRO', N'VIT.B12', 21, 2, 0, CAST(2737.03 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73812, N'ONE TOUCH SELECT PLUS FLEX', N'ONE TOUCH SELECT PLUS FLEX KIT', N'SIDUS DISPRO', N'ACCESORIO', 9, 3, 16, CAST(1297.97 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73811, N'PROSTOKLAR DUO', N'PROSTOKLAR CAPS DUO X30', N'BALIARDA', N'DUTASTERIDE+TAMSULOSINA', 9, 6, 5, CAST(3053.42 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73810, N'BETRIOL', N'BETRIOL UNGUENTO X30', N'ANDROMACO FARMANET', N'CALCIPOTRIOL+BETAMETASONA,DIPR', 21, 2, 7, CAST(1728.80 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73793, N'CICATRICURE CORPORAL', N'CICATRICURE CR-CORP FIERMEZA X400', N'GENOMMA PER', N'PRODUCTO COSM?TICO', 27, 33, 22, CAST(402.25 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73792, N'CICATRICURE CORPORAL', N'CICATRICURE CR-CORP A.ESTRIAS X400', N'GENOMMA PER', N'PRODUCTO COSM?TICO', 62, 38, 38, CAST(402.25 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73786, N'SIBLIX', N'SIBLIX COM 15 X30', N'BETA DISPRO', N'ARIPIPRAZOL', 4, 0, 0, CAST(1861.30 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73785, N'ENANTYUM FORTE', N'ENANTYUM COM FORTE X20', N'NOVA ARGENTIA ROFINA', N'TRAMADOL+DEXKETOPROFENO', 34, 6, 8, CAST(1199.62 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([sapcode], [name], [presentation], [laboratorio], [droga], [tucuman], [salta], [chaco], [precio]) VALUES (73784, N'LUDASTERIN', N'LUDASTERIN COM 0,5 X60', N'FINADIET ROFINA', N'DUTASTERIDE', 30, 2, 3, CAST(4069.46 AS Decimal(10, 2)))
GO
USE [master]
GO
ALTER DATABASE [Cofaral] SET  READ_WRITE 
GO
