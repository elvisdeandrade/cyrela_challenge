USE [master]
GO
/****** Object:  Database [PortalCliente]    Script Date: 24/06/2021 00:03:52 ******/
CREATE DATABASE [PortalCliente]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PortalCliente', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PortalCliente.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PortalCliente_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PortalCliente_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PortalCliente] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PortalCliente].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PortalCliente] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PortalCliente] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PortalCliente] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PortalCliente] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PortalCliente] SET ARITHABORT OFF 
GO
ALTER DATABASE [PortalCliente] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PortalCliente] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PortalCliente] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PortalCliente] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PortalCliente] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PortalCliente] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PortalCliente] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PortalCliente] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PortalCliente] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PortalCliente] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PortalCliente] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PortalCliente] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PortalCliente] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PortalCliente] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PortalCliente] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PortalCliente] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PortalCliente] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PortalCliente] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PortalCliente] SET  MULTI_USER 
GO
ALTER DATABASE [PortalCliente] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PortalCliente] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PortalCliente] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PortalCliente] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PortalCliente] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PortalCliente] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PortalCliente] SET QUERY_STORE = OFF
GO
USE [PortalCliente]
GO
/****** Object:  Table [dbo].[ControleSessao]    Script Date: 24/06/2021 00:03:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ControleSessao](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[DataAcesso] [datetime] NOT NULL,
	[Hash] [nvarchar](256) NOT NULL,
	[DataExpiracao] [datetime] NOT NULL,
	[Cliente] [varchar](18) NOT NULL,
	[TipoAcesso] [int] NOT NULL,
	[LoginAtendente] [varchar](100) NULL,
	[TipoSessao] [int] NULL,
	[Origem] [int] NULL,
 CONSTRAINT [Portal_PKControleSessao] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[log_navegacao]    Script Date: 24/06/2021 00:03:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[log_navegacao](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[DocumentoCliente] [varchar](18) NOT NULL,
	[DataEvento] [datetime2](7) NOT NULL,
	[TipoEvento] [int] NOT NULL,
	[TipoAcesso] [int] NOT NULL,
	[IdAtendente] [uniqueidentifier] NULL,
	[Pagina] [varchar](50) NOT NULL,
	[Atividade] [varchar](255) NOT NULL,
	[LogErro] [varchar](500) NULL,
	[Origem] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ControleSessao] ON 
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (539, CAST(N'2018-06-27T00:00:20.667' AS DateTime), N'f0cd1134cfd8400f34d5ad0b8606b473d328b6653d1886d9332d27dc59fe1c10d70ba1a72d5050894ade458957a6aabf4711da720555010a16254ec3394b3971', CAST(N'2018-06-27T01:30:20.667' AS DateTime), N'111.111.111-11', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (540, CAST(N'2018-06-27T00:00:27.993' AS DateTime), N'cfdd4760e51fda8f268706468306199cd781be72417b364cfd33aed9c40d6dbc2c0eb7079c3994970dbbd36dcb1910671e8b884c149dd7b6e79a39dee27482ae', CAST(N'2018-06-27T01:31:44.807' AS DateTime), N'111.111.111-12', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (541, CAST(N'2018-06-27T00:03:40.817' AS DateTime), N'9895b5f5ef307ff986bb2e22af5573d30b302f9fca30b55305d881193a6a18b6e0a4d01c5d1f93a2192a7f72c1fa05616ee9d36dec53497398f70cb73282c1e9', CAST(N'2018-06-27T01:33:40.817' AS DateTime), N'111.111.111-13', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (542, CAST(N'2018-06-27T00:05:09.650' AS DateTime), N'0d3dfd5923f81bff38aef2efa1809f4e5851169d859cb9ab114fc094f30517ab63b847b5922bd7bd490e14e3d533125c1e49dc9b416457ccffdbee0dbdec41cf', CAST(N'2018-06-27T01:35:09.650' AS DateTime), N'111.111.111-14', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (543, CAST(N'2018-06-27T00:14:46.413' AS DateTime), N'6fb868671668c9334fab13e3f0641b5d65b1f873762c0e2d224d8843c2a2a2ce7ea0b2f405111c98cb2daf19eae6eb12f750537ffcb9ad3134c1da6ea9dbee77', CAST(N'2018-06-27T01:46:23.797' AS DateTime), N'111.111.111-15', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (544, CAST(N'2018-06-27T00:16:48.197' AS DateTime), N'9e0937f267211056f6814083d997c216068aa352fefac8a15129a2ecd29a4192aaa601d5a6ca9f8a909fbcf6ac8530f6cf5cf286f637dd1561b6cc7207655e7c', CAST(N'2018-06-27T01:46:49.557' AS DateTime), N'111.111.111-16', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (545, CAST(N'2018-06-27T00:17:26.567' AS DateTime), N'66271be67feb3e540734917e489539be3063bf15aa95e96bf7ea029328db4db26bd11c546411a5fd39151105ddb7c9a008ab1bf2aff8e13b23de08bd27a62d50', CAST(N'2018-06-27T01:47:26.567' AS DateTime), N'111.111.111-17', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (546, CAST(N'2018-06-27T00:29:28.900' AS DateTime), N'27e5fa1b760c0a0226f581b4b508b670a74f58633065d0fb6cd141aa5aae14018113afd666216f68c06da2fb15f2f931ed44f07386ee391307d490b5c1cccf31', CAST(N'2018-06-27T02:05:03.820' AS DateTime), N'111.111.111-18', 3, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (547, CAST(N'2018-06-27T00:38:15.350' AS DateTime), N'cd1a1d4178278002d09ab4ebacadac6caa7ace610fc88b7bebaeda9c563f81c089158348b2cefa0c8b21755a8f73f2c629a74b8917ad6aefbe929ff47058c0a7', CAST(N'2018-06-27T02:08:16.693' AS DateTime), N'111.111.111-19', 3, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (548, CAST(N'2018-06-27T00:54:29.943' AS DateTime), N'148867f691e1d3637b8f1e377b5fc4990a813a6b54913e3070228fd8104ae10228bee3ac33cc4f1268d2ae4663fb33ba50bc276ecb86a97248096d9c531deab5', CAST(N'2018-06-27T02:27:23.410' AS DateTime), N'111.111.111-20', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (549, CAST(N'2018-06-27T00:56:09.467' AS DateTime), N'c620ebe6e79544fa2e0417303957a0961eb914e794dbfcb79bfee125aa3f88b7a5fa664152ac96b51b347f12d8744c11f10255d7881f6dd7ae8995d3dbb6465d', CAST(N'2018-06-27T02:29:35.080' AS DateTime), N'111.111.111-21', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (550, CAST(N'2018-06-27T00:57:12.870' AS DateTime), N'0e2f84a10ffa284f5518785dfb40884e9cf1b4d95121ef45bc81d06ea650f64c4ec559e00377df3e40ec277c42ed02abf69a1c0aaa24eb56bc52ef1d55a08f53', CAST(N'2018-06-27T02:29:10.920' AS DateTime), N'111.111.111-22', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (551, CAST(N'2018-06-27T00:58:05.540' AS DateTime), N'07c4f3d82eb602cec77847f1f41dc758c985fea2bf59fe09fe011d17f12b50e2b8ac92a35462b3caed394967769bffd42b3e76cfb82436779a8c2872116793db', CAST(N'2018-06-27T02:28:06.990' AS DateTime), N'111.111.111-23', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (552, CAST(N'2018-06-27T00:59:51.110' AS DateTime), N'973ce7cd3e6f2e5173a81972b196f8a5f8c27a5dffccf72982a7da3c9c18c33f3f54c13677960ec692a7f5295f1841c1a04a1c203a1cc4bd493eef128e066d34', CAST(N'2018-06-27T02:36:17.000' AS DateTime), N'111.111.111-24', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (553, CAST(N'2018-06-27T01:00:36.137' AS DateTime), N'4640861fdd6fa7e90f4c188d1fdfb090a4064b6579e570cbf4a0189f10618bd12693b6ef160663ec6bc0cf3fd6b73eecbe0eb3eee55ccdcd2b78bb252921b5a6', CAST(N'2018-06-27T02:30:37.437' AS DateTime), N'111.111.111-25', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (554, CAST(N'2018-06-27T01:01:06.517' AS DateTime), N'ad092f21e945e8972d3f14b4c8cfaf6f66dde99ce65a284153a15b74d1a697ce6bad93532082c24a9b484e13e57ca9c5704c4592b3fd8acdd238c702758ec176', CAST(N'2018-06-27T02:31:07.863' AS DateTime), N'111.111.111-26', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (555, CAST(N'2018-06-27T01:01:25.433' AS DateTime), N'a49dc599ca92e37d41f5f28305e6cd1b54dc55e8215f76ea03ba0efbb2f6557ec8772cce900b1a4b9fcedbc6bf508916198d612f8e532e94e992f4c87cf5b55e', CAST(N'2018-06-27T02:31:26.653' AS DateTime), N'111.111.111-27', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (556, CAST(N'2018-06-27T01:02:07.100' AS DateTime), N'3f1558a6f3891ba7589814d428de282ea54cf80af5159e7cddd7c8a3e6f340d1f43694335c8b57524efc27a4ea684fbac081e69166c7e876d3fe5adf0739e798', CAST(N'2018-06-27T02:32:09.027' AS DateTime), N'111.111.111-28', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (557, CAST(N'2018-06-27T01:03:21.993' AS DateTime), N'18c3b8124343dcacfce74942147f235c37efdd6504d4cfb95bc286f2256246a99d89c1d666f152f2f97298e31b564ad6d57bf13b65b0249d51c4bf6939def805', CAST(N'2018-06-27T02:39:12.677' AS DateTime), N'111.111.111-29', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (558, CAST(N'2018-06-27T01:03:30.450' AS DateTime), N'6b6f629c7ab8ab9effa548d4e5f30484d95722d54e7e4dc8bbb1e47f16e05d17f38f5d32c4496d247c863b6c782d534eb63565869b53ad5ab82f3163eaa10f65', CAST(N'2018-06-27T02:33:31.590' AS DateTime), N'111.111.111-30', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (559, CAST(N'2018-06-27T01:04:09.327' AS DateTime), N'339645cfd04f79dd9d25718bde3199686a7ba968eb66f114050d0356e814ed91b67171175bc67f43253638e50db13f3a6d490d13829147352ac297934d0c7f91', CAST(N'2018-06-27T02:34:10.460' AS DateTime), N'111.111.111-31', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (560, CAST(N'2018-06-27T01:05:14.940' AS DateTime), N'ab4e88e24465da67388a72c3c58c83d88d6d3b296e221de944e21fde6b8476119d15c2f523af1c158bc5b28f6dde69de11b3e4cbeb5b8668411b9640f899ef3d', CAST(N'2018-06-27T02:44:10.643' AS DateTime), N'111.111.111-32', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (561, CAST(N'2018-06-27T01:09:39.820' AS DateTime), N'1528be4e70ff15be3d1699b304a64f885a677c5788cfa4ca75c7efbfcd2371ddbe5dbb6a7248d1a041274b9b5943ffbfd6bb98f2e0e0db28e6c8a32655782ef0', CAST(N'2018-06-27T02:41:45.263' AS DateTime), N'111.111.111-33', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (562, CAST(N'2018-06-27T01:11:04.393' AS DateTime), N'69d28a8528f719e9764732314e2de19d4df288c667108c909d5223f28848d08951a9afe3381da0883ddd35e4a67e3d889c639a95aa98d8a9ad953570c054032f', CAST(N'2018-06-27T02:41:05.770' AS DateTime), N'111.111.111-34', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (563, CAST(N'2018-06-27T01:15:09.880' AS DateTime), N'd492fc4ee59698cbd4865a1b1130a3f59e6e89dee7d1633c471bdc76b3d8e54a2bcc1189cc1e67d2661ed256b94665bdbd5e13874edcecea488293fc00fd34bd', CAST(N'2018-06-27T02:45:43.997' AS DateTime), N'111.111.111-35', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (564, CAST(N'2018-06-27T01:16:17.017' AS DateTime), N'733a6f5e15f44913a05a7a6852998ebdd5904dcf994e01da7557f1611bcc429f6dca8869039c4f9d6002ac83ee7c18982303cbd1f064532506d2148d38aa843b', CAST(N'2018-06-27T02:46:18.083' AS DateTime), N'111.111.111-36', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (565, CAST(N'2018-06-27T01:27:19.103' AS DateTime), N'd4db29e17cba1a231e9cc0692dcda08c9f4a8e0fb3496196f1a1ecd4028511bf81904917c7296ca7307b2b036e9f8389e4118e2ee50afbed1c11eee07d5dd729', CAST(N'2018-06-27T02:57:22.003' AS DateTime), N'111.111.111-37', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (566, CAST(N'2018-06-27T01:59:13.413' AS DateTime), N'eeca12a7864e037ffcceff249144af82a29a55f1a72f54c02c500969d0ed1702c873306725edde07ea187965f949cd791f5cab82c19a9c08eb46bcdc4378c5ce', CAST(N'2018-06-27T03:37:56.360' AS DateTime), N'111.111.111-38', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (567, CAST(N'2018-06-27T02:08:06.963' AS DateTime), N'1f5990c8c457201079f1a5a068981702206f3099c49f697551a07821f4989dfe2e650184233b3700933776b48bfe4a24083b01a39bb648ec1ef8025e2f785de6', CAST(N'2018-06-27T04:02:47.720' AS DateTime), N'111.111.111-39', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (568, CAST(N'2018-06-27T03:05:35.363' AS DateTime), N'd46e12ab8618f92509dc1a244c8d129fec0bfbdf3cd2f4cdbbac70c025083be4b34792129bf0380778d8002bbc1ba3255b7178f1bd097a3a7c6f56ee9d00b7b8', CAST(N'2018-06-27T04:37:50.433' AS DateTime), N'111.111.111-40', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (569, CAST(N'2018-06-27T03:07:54.157' AS DateTime), N'ffbad7c8bf55bd003ae8897ec6150b6359a33bd4e4d0253459796f14623b22f29bf1a1a8293a4548f3ddee28a21c6c3e173e47f29224289411d9f76d92aae61a', CAST(N'2018-06-27T04:56:05.047' AS DateTime), N'111.111.111-41', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (570, CAST(N'2018-06-27T03:27:46.237' AS DateTime), N'12955ab8b1a93b9ab602fc002e5db663082afd44a472542ed8f1d3fb739106919a6388257da326a970a2b25e83268f425f8eda87c967403f41ddcece96bb599f', CAST(N'2018-06-27T04:59:18.430' AS DateTime), N'111.111.111-42', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (571, CAST(N'2018-06-27T03:29:20.770' AS DateTime), N'85851909538f42332abb63804c7448f5ebbcfff6dea1d9ec1135ac901349b0e7e2bbde06eb04e68c102f10d414641cb418b01135d2335d8e2ecf8cbf7ac55041', CAST(N'2018-06-27T04:59:22.153' AS DateTime), N'111.111.111-43', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (572, CAST(N'2018-06-27T03:29:43.790' AS DateTime), N'bb0d22be7c5840bac2f3ba608bc8ce97f900c58b01828342b18e3de7e3d942742a4009854647a9b53bea4c14c5ec17b9d9b8bb565c5034090bb33feedf11ecfb', CAST(N'2018-06-27T05:00:27.263' AS DateTime), N'111.111.111-44', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (573, CAST(N'2018-06-27T03:31:15.100' AS DateTime), N'a0e711eaf282663279c9065a7ee45746a0eac2cd7669999ff20459e38681f01e5b4884f2944c172b7ff8469c4c932b059b5fbaaa43274f31e81aeee82164fd9a', CAST(N'2018-06-27T05:01:33.150' AS DateTime), N'111.111.111-45', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (574, CAST(N'2018-06-27T03:43:35.723' AS DateTime), N'aca2c5529fe9ba4a903a9b1a8d07f4c0bed00cfa8549185d1d15768f1b5e5e4cc39af3dce303adf306697826faa4f7da49708e060edc23b60aed1af002e006ca', CAST(N'2018-06-27T05:18:11.890' AS DateTime), N'111.111.111-46', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (575, CAST(N'2018-06-27T03:44:56.540' AS DateTime), N'73f45a88f054de9f20975da4cf418b4759ffc0b31f1c9f4477c4206d35579312755205c14d3d6458a994c8372bb2e2442f6b66eb0ac648c5c5b1e816e1ea73f6', CAST(N'2018-06-27T05:14:56.540' AS DateTime), N'111.111.111-47', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (576, CAST(N'2018-06-27T03:48:25.930' AS DateTime), N'd01329c0d1413a9ef4595a519e413537552eedb6b1366384081498fef6615a2ba7e3d4fa0759a9f91c2c6514c96ffba1c67f2c9153deb4ff35a14e21caafe499', CAST(N'2018-06-27T05:38:31.440' AS DateTime), N'111.111.111-48', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (577, CAST(N'2018-06-27T04:45:29.537' AS DateTime), N'5ea61daed494bafbbc71397aa1be5fd1591ad271a79aa3699e0915000dd5ffabf5f04834812b25aba73206b7ec0b31843ceb320e8b57eb6cc59dd9b1a294c690', CAST(N'2018-06-27T06:17:57.570' AS DateTime), N'111.111.111-49', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (578, CAST(N'2018-06-27T04:48:00.487' AS DateTime), N'19775d84f58552ad9b8c5173543b1b4066e44f74f21ac4f6c46f288c9e088e2ddbbc599092a4958aa4e303e7d519ef7e934ba87da505bf8128516300ed34c805', CAST(N'2018-06-27T06:18:00.487' AS DateTime), N'111.111.111-50', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (579, CAST(N'2018-06-27T04:48:24.057' AS DateTime), N'd5d74e44f875ff7a30dd1f625681879a0f25a982cee3492700ea38bfda1b7c191b730e1ed4707f157b36665afb81df958d13ef2529b125f35a0ccdbbf1885ae2', CAST(N'2018-06-27T06:18:26.167' AS DateTime), N'111.111.111-51', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (580, CAST(N'2018-06-27T04:53:21.717' AS DateTime), N'9193e2a417fea9fff1d94994c45fd95fca37a142ec176a7ce38785528cfaf9c3e216f544e1fadbcb76834cb338942e056ce111e9d391a6cb5f6ba27310c8cc12', CAST(N'2018-06-27T06:33:20.353' AS DateTime), N'111.111.111-52', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (581, CAST(N'2018-06-27T05:04:53.890' AS DateTime), N'56a5507810812d33f24187e71e025aa1ec9e6f0d079bd8267bdabfbb90b9e9d9ffea66d2059cf10b443f201a2e060f01b2e9ae872262b55bd71136a512a43662', CAST(N'2018-06-27T06:34:53.890' AS DateTime), N'111.111.111-53', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (582, CAST(N'2018-06-27T05:07:22.240' AS DateTime), N'30f1db7add6ab8a4fea9f684b1a632db07f2ee08ec3fe72612430d5665f8426ab4d0bb333de248625a60418d674eb7058cdbda8f2469892016b3eef7dd4b0e88', CAST(N'2018-06-27T06:39:55.193' AS DateTime), N'111.111.111-54', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (583, CAST(N'2018-06-27T05:13:47.133' AS DateTime), N'6fda4625b49c7087c218269263e7ba44542e78da7f19fea0d65668244b587d2d106c2e2efdb745920828f673adc182ea4bfa591edaee0bca1bc28f633419f046', CAST(N'2018-06-27T06:45:37.160' AS DateTime), N'111.111.111-55', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (584, CAST(N'2018-06-27T05:15:49.610' AS DateTime), N'c3030c5f840d1b9fa9a3e3a4200e3e55c598d4a7528857be456f99458b1793c3e9fc3b6167d8deedc4b27474fa02c13be7d535d84624919cf804ebf13c2b3134', CAST(N'2018-06-27T06:45:50.877' AS DateTime), N'111.111.111-56', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (585, CAST(N'2018-06-27T05:20:55.730' AS DateTime), N'9d5bdd90e510ccd61fd2b0c9a53d945e4579f33296e64ccf8d4828bac839ae4465757f150411d0ffb7f08a0e3c091d7970fa2416062535c2f6cc7c7140762fe2', CAST(N'2018-06-27T07:04:29.660' AS DateTime), N'111.111.111-57', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (586, CAST(N'2018-06-27T06:12:13.227' AS DateTime), N'ae83c513068c010f188713f7be093523b433ed5f8ecfc21de05a177818e2fc15bd01b47bbd044424436856dce16c619c7c5f3df1d5f4fdba98adf282dea12742', CAST(N'2018-06-27T07:43:55.527' AS DateTime), N'111.111.111-58', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (587, CAST(N'2018-06-27T06:14:39.330' AS DateTime), N'c8954284d0e49451a4183373de32565276ca2bf5cf1f2893afd9b92b9bcfcac841b0d721106e2b2e63f45531aae98d37078c8db9fc5b4f82fb8ebad95a44bfe8', CAST(N'2018-06-27T07:45:32.110' AS DateTime), N'111.111.111-59', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (588, CAST(N'2018-06-27T06:20:31.840' AS DateTime), N'1375c2058afa8336d434b98c84c3808b903a46a5c85303bfe0af933e619b3ea00504917eb51b4c42d93670561aceb5e6b309d4ba2b2f7b3167653c3b838a7b5b', CAST(N'2018-06-27T07:52:26.643' AS DateTime), N'111.111.111-60', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (589, CAST(N'2018-06-27T06:22:45.447' AS DateTime), N'680d4401f5660a065589faf7c6b933ae81b4ab2769d782cea6e0b73841b025b085b293b89ac7bcb0e93483ee66a29a0a4275ca5b36d13840654259ebf02a10cc', CAST(N'2018-06-27T07:52:50.320' AS DateTime), N'111.111.111-61', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (590, CAST(N'2018-06-27T06:30:44.933' AS DateTime), N'5c2627be8fbebff33fb9ffc51bdcacc078593516c0c0c0c6ddfbb834818cc545e60d6144fedc8e48ad86c5f2d06aabbcc9e983c2d02d6138bc87e94e7e0d9d04', CAST(N'2018-06-27T08:02:42.123' AS DateTime), N'111.111.111-62', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (591, CAST(N'2018-06-27T06:33:07.120' AS DateTime), N'f5c1baeda5acce7cdc31154f4df5e32c4c57cab5f78091c75b184fc6655f132301f6e453ce4a2c2326ac2c10371ecb4c2ed9102661a516801af8d38a00275d54', CAST(N'2018-06-27T08:03:56.330' AS DateTime), N'111.111.111-63', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (592, CAST(N'2018-06-27T06:54:57.413' AS DateTime), N'142bd4abcca349b6370098829845a70a49e4f2581d97b716e6176980f880e8d0a12c450a735425f421484440bc558bbb0b8ca188f24ce236e30d02d6134ca044', CAST(N'2018-06-27T08:26:55.407' AS DateTime), N'111.111.111-64', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (593, CAST(N'2018-06-27T06:57:22.213' AS DateTime), N'a3871a21232081aadbf30297e161c58771639749af1f5016b6df1a77209f08dbc4e32e7815603e30a73e4ceee3a9ab6491638bd3a77e6c85fae08b2ca99e77b6', CAST(N'2018-06-27T08:27:24.320' AS DateTime), N'111.111.111-65', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (594, CAST(N'2018-06-27T06:57:34.327' AS DateTime), N'bf16f0027b23e9dc10556d68b1ffb98457d039c61d47ee21e172092b560dfd25459bf8414153982c46bdf3b1acc83d8bcc2e3c61006d89f552636753c454a6cb', CAST(N'2018-06-27T08:29:14.790' AS DateTime), N'111.111.111-66', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (595, CAST(N'2018-06-27T06:59:27.970' AS DateTime), N'2ffdeb56feecffeb7961bdfa6d0e23eb90bd41f1a249a42bcac44cc41f33357a30a5133280d1383dfde7b2c36ff441debf05a34a0f94018ccc24bb6747315981', CAST(N'2018-06-27T08:31:47.683' AS DateTime), N'111.111.111-67', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (596, CAST(N'2018-06-27T06:59:29.820' AS DateTime), N'8787d12b41b6e8199da692322361ff6e7d44b17f57fa6501e4a24abdbaad0deace9ba49f02959d39874ae11e6f3f9b340111ead72135440e2ceb076527821ecb', CAST(N'2018-06-27T08:29:31.213' AS DateTime), N'111.111.111-68', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (597, CAST(N'2018-06-27T07:02:41.000' AS DateTime), N'c98e88b163894374101da68731f8f18e353faaeb9711e3ce74835ce76f7a9e3e4d5d7980b44e01a24ac4abe7bed914a589148dea1f88b2aa95a8df4edd2f6674', CAST(N'2018-06-27T08:33:53.043' AS DateTime), N'111.111.111-69', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (598, CAST(N'2018-06-27T07:06:26.897' AS DateTime), N'5e9ae75b8b7065d90adf5b5cba09f7bf34ae121781aec69171c46194c9c9dab10110737f1137f5e2b1fd4f082e64810a8e3bfadd137aa7691bbd0ed433bf69a0', CAST(N'2018-06-27T08:37:08.387' AS DateTime), N'111.111.111-70', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (599, CAST(N'2018-06-27T07:15:25.983' AS DateTime), N'7f007b38612c3acb5d369b0c767bcb0f3924e518e4109bb7f95af668421c3db37152475e3735a86c2cfcea8c543a1cc793762c4d4ac3c7c37aece7fa4c729fa8', CAST(N'2018-06-27T08:48:04.960' AS DateTime), N'111.111.111-71', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (600, CAST(N'2018-06-27T07:18:25.243' AS DateTime), N'e0a7984493ff6e38f9c626334c06054b376f61a2036a80df82901244c120e8c4dd89d909c6f6a0eadbd6529a2c339093b4def399a2cee4a8dd7a8df9d6106107', CAST(N'2018-06-27T08:48:26.850' AS DateTime), N'111.111.111-72', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (601, CAST(N'2018-06-27T07:20:13.910' AS DateTime), N'613bc7220784609e1f318b1af4ce26c15cf83ad9d49882a87b3b71e8dec86bebfd187cec62c5ee06a8bb89b409884c452ed2d6192d40f0e11efcbb40217ccb7b', CAST(N'2018-06-27T08:52:48.653' AS DateTime), N'111.111.111-73', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (602, CAST(N'2018-06-27T07:21:47.910' AS DateTime), N'e4b60a036c06ef3bda4c1e0df499d2865bd46ce1ef1963249279bc875e259bb38deac11f2873bfb8c68576016e284a347f5a6b975a2c9c4abe88dd7c1120161f', CAST(N'2018-06-27T08:51:47.910' AS DateTime), N'111.111.111-74', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (603, CAST(N'2018-06-27T07:22:31.253' AS DateTime), N'3f401f595d0d5fe35990b59cd5299dd1daeb6ce7c57dd56882ceccec9aa7ef0b29bf163438fee953efb8d8e098c6a2d6e2d5d19902633a3226405632147e0758', CAST(N'2018-06-27T08:52:31.253' AS DateTime), N'111.111.111-75', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (604, CAST(N'2018-06-27T07:23:01.010' AS DateTime), N'27d2be04fbd0b6cbae90b5cc5607fbdd1d12164f5c7a3cb84058f874734912c79d29bee60c823e05466986d1f204f0d2f4242455f6a40b2ee3b4775b6821cf98', CAST(N'2018-06-27T08:53:02.710' AS DateTime), N'111.111.111-76', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (605, CAST(N'2018-06-27T07:23:32.567' AS DateTime), N'b7ac8f0a97333363be23b83903f3c849ea4087e02a4dd56494ce0ee7b06d8f49acb28bb750389025f3896db202c10b57e202d8c74fb30798e8a9d26d340df658', CAST(N'2018-06-27T08:53:32.567' AS DateTime), N'111.111.111-77', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (606, CAST(N'2018-06-27T07:25:56.773' AS DateTime), N'8efb044c8041f3626e66b1879aef28b8f1e2d3fa22fd349d7705b8ff32739d28e6fdc6e8c61dc95c9b3fa7619239c1c3649e61c53e12ba404933ae77846a7bb2', CAST(N'2018-06-27T08:55:56.773' AS DateTime), N'111.111.111-78', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (607, CAST(N'2018-06-27T07:26:55.560' AS DateTime), N'663460967de200a4362c25cad0b99302794fd9751cd80236b60e51c2024d73f2e383a36f5839e9cbad984468fad9ca6366dc2b12bf0d4b0e5c9ef2beed5841d3', CAST(N'2018-06-27T09:29:24.730' AS DateTime), N'111.111.111-79', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (608, CAST(N'2018-06-27T07:27:07.860' AS DateTime), N'33c9943c2a9b52ec1617daf1c0d7154fe257d122b805b013210bfae07e1f528cec632a04140e5995aa585c16cbceeca293a856c4e788e827559718874df22ae1', CAST(N'2018-06-27T08:57:07.860' AS DateTime), N'111.111.111-80', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (609, CAST(N'2018-06-27T07:30:01.277' AS DateTime), N'94225bda3c8f3954aa7086e69dcd7ce76889104b3d917501a0fd4aafa90b59f8236cd05a0bc40d333cf355a7d7bf602f56218a20732cdf1154c6d403110a80ae', CAST(N'2018-06-27T09:00:47.510' AS DateTime), N'111.111.111-81', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (610, CAST(N'2018-06-27T07:30:58.397' AS DateTime), N'6c7a23fe1b1f3da06761551f1f32681bcf1c6eab8b598a59c1cfb0deabd459feb380d1e37083d441ac8615c6e7f60cfcf3b3ccfcc817872f5e101270a2249fc6', CAST(N'2018-06-27T09:00:59.683' AS DateTime), N'111.111.111-82', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (611, CAST(N'2018-06-27T07:32:16.570' AS DateTime), N'4308aa0b3a7194e0745753d569ccc18c7da704858226ff2cebf07675931118c19700aa8887d0c289a225608c8a159919a1b754c68dd7acbc00e4c8521be8e8fa', CAST(N'2018-06-27T09:05:02.683' AS DateTime), N'111.111.111-83', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (612, CAST(N'2018-06-27T07:34:06.453' AS DateTime), N'aa7cdd3a737d967c7a2d48d74ee2e48de821ae8e546da84a2139f4e52b2a4ceae41693f9f452c8cb5c69770a171640f6aac69ccf79867badd4a275162cebea6b', CAST(N'2018-06-27T09:13:51.613' AS DateTime), N'111.111.111-84', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (613, CAST(N'2018-06-27T07:35:10.760' AS DateTime), N'0b2d4961912fa73cd6957838b0c4f431ae1d30c6a6b9f488725665bf65940a13c571f2699659aab0c5dc62ef3f7cdadf6a25a7c6e1434a2fbca268faee024fb4', CAST(N'2018-06-27T09:05:11.887' AS DateTime), N'111.111.111-85', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (614, CAST(N'2018-06-27T07:43:10.707' AS DateTime), N'22a226609b2cac02974a24bb3b1b8d5ef260b1e451ba64bf45f50651d8d5e3a4d2ec6bcd41c8ed5634a67b50d3e3867f7bafd48908096ffa7e5a1f0a3eae67b3', CAST(N'2018-06-27T09:14:37.737' AS DateTime), N'111.111.111-86', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (615, CAST(N'2018-06-27T07:44:03.430' AS DateTime), N'81d44d3157e540f7be7b020ada391c60b1e20e656dbb8bddb16840fa524289d7e4de5c6f607e839aa184155bb4dae5a292f98c8da04c095bdf7506ef3565e9f2', CAST(N'2018-06-27T09:22:32.353' AS DateTime), N'111.111.111-87', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (616, CAST(N'2018-06-27T07:45:01.180' AS DateTime), N'9cfd50bf7286c809ed12f9094769cbbd428003e411f3cd59eab5b1932a84f66d4d2b88d104541f1d354abff667d2735f57d56b5e732701e3ab1ad0a207732aa8', CAST(N'2018-06-27T09:15:02.320' AS DateTime), N'111.111.111-88', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (617, CAST(N'2018-06-27T07:45:57.370' AS DateTime), N'671fe61674a2e6910990fd55187dfd2abd2d70b82157f918d6cc46d72309e9c20108372f1f28371560bc04404d56849e417ba11754698b480408c8414c36126a', CAST(N'2018-06-27T09:15:57.370' AS DateTime), N'111.111.111-89', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (618, CAST(N'2018-06-27T07:46:51.417' AS DateTime), N'698b7dc715a1a4d40cd90176f7f92e1dc5a342233af6d9b1b4c6bebf7dade27f912facdf272e3fe3663ff222bf8e70ea97164d80647072056c27fa2c6acd5b62', CAST(N'2018-06-27T09:16:51.417' AS DateTime), N'111.111.111-90', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (619, CAST(N'2018-06-27T07:47:17.307' AS DateTime), N'e60b3fce1cd0225da40e549a5724b66c890529c4e1887ee6e2e211650160e3a04af3bcd7e1583434e1edee8d48f95d828c0936ee8466183cc8f05cdef9c1f96c', CAST(N'2018-06-27T09:21:43.437' AS DateTime), N'111.111.111-91', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (620, CAST(N'2018-06-27T07:47:32.580' AS DateTime), N'd7cce3043855fd7b2e916d4909727452f396897fa40574b7beb40e46205934387edd3403cd5042bb3da6a522f3ad2d88e5a7f88edf82476daf95c3323b5d05bd', CAST(N'2018-06-27T09:18:39.523' AS DateTime), N'111.111.111-92', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (621, CAST(N'2018-06-27T07:50:04.147' AS DateTime), N'8902717e29257de12157b34e965aa1e2c39d9bdfdc5376582346d4b2f9b1889e133851b2e5bd0021753c5b46cb9ccc933c5600a3302520c62ed2befed55d3fcb', CAST(N'2018-06-27T09:21:23.063' AS DateTime), N'111.111.111-93', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (622, CAST(N'2018-06-27T07:50:08.440' AS DateTime), N'e6e47f97d6d47dda62eb1cf55f88c69f849bdd9d1c410a6a80c587b52779a2abed5c993ee780b38460a8b55041ba6846b731c3f98cb5967d1ef7426e4a9fa4fb', CAST(N'2018-06-27T10:11:52.340' AS DateTime), N'111.111.111-94', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (623, CAST(N'2018-06-27T07:50:19.553' AS DateTime), N'd3251957780e3c2f8a3e213d2367bdfe3e4c999ceb67fc9346f9ebaefab7e3fad67d04595aa0cd0ce3caa68d63d829feaec47a2556236872d5d848b41114f1d9', CAST(N'2018-06-27T09:20:21.337' AS DateTime), N'111.111.111-95', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (624, CAST(N'2018-06-27T07:52:24.047' AS DateTime), N'293f16d47424d571347418cab06781bf0c40725ff1385f38e1d6bf2d36f16df49444f899ebe8308ad3e132d8899a761a4402cdad0b2575dbaabac3dc39a9610c', CAST(N'2018-06-27T09:40:15.613' AS DateTime), N'111.111.111-96', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (625, CAST(N'2018-06-27T07:53:50.937' AS DateTime), N'b2900235c6f99c283291c9df4fea55a17e52888180395a741084f09691a3169f3129c4886b163637a16af34b5092d41f0ee71b88b99ab12607b2cea597931d5c', CAST(N'2018-06-27T09:23:50.937' AS DateTime), N'111.111.111-97', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (626, CAST(N'2018-06-27T07:55:11.403' AS DateTime), N'01ccab70f62f70d810c9b46e6fe46a07dace54d8bdb112f82047e7a12ec0618f78e62c821e4007fa584dc79c119e54683ce6aa5bb47534db137b374b96a48a0d', CAST(N'2018-06-27T09:26:13.557' AS DateTime), N'111.111.111-98', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (627, CAST(N'2018-06-27T07:56:12.900' AS DateTime), N'8feec6c46c1e361bfa0054f69c8a9e11fa77ee872666b37325d532e0f5ade86a6cd073018f07aa0878db146f9c730b0424f137f9f684a0060b0bfa391971635a', CAST(N'2018-06-27T09:26:12.900' AS DateTime), N'111.111.111-99', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (628, CAST(N'2018-06-27T07:56:28.840' AS DateTime), N'3f6a58a64aa2fd3ec470013b1e941f9842350d2f7d8272c6b5ad1fa955ea38f3f28ae6ef5c01b91c5feae7123807a58f88ba1ede2ddb7fbb6e3b2d6b9533108a', CAST(N'2018-06-27T09:33:38.913' AS DateTime), N'111.111.113-10', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (629, CAST(N'2018-06-27T07:56:55.460' AS DateTime), N'73ae049e5ec5dd97377608b985005b496f99e27d8d2413a87a9275a889e6905fbd7c6f9363ebac77ed9965c167c21cd7456ce3be8c61e30ae53bbf6272197552', CAST(N'2018-06-27T09:26:55.460' AS DateTime), N'111.111.113-11', 1, NULL, NULL, 100000016)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (630, CAST(N'2018-06-27T07:57:03.140' AS DateTime), N'4a356bdcd2bb593cdef103f8b056bf4f4f3435cb42d77c739c1458e6a7edc4d69431b8efee642e05e9ebc01d41b297b997e55231162a3e397883933cc2df459b', CAST(N'2018-06-27T09:27:03.140' AS DateTime), N'111.111.113-12', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (631, CAST(N'2018-06-27T07:57:58.043' AS DateTime), N'192db45eecd3d62c01469980c246ba5ce826c3c34f35ac9f90003f5d7839494adfeaaab8791911231f10c7df591aef922cc562e8a5386f5cf3cf994d429f3e2f', CAST(N'2018-06-27T09:27:58.043' AS DateTime), N'111.111.113-13', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (632, CAST(N'2018-06-27T07:58:54.093' AS DateTime), N'b9be485e268bcce024aa9d75170ac60f6f4410a1d7434f7d17af19b560128096933adea96df5fcc71f7b83e2b1734ce1e33ed6e165b1e41d092f2f1409cc67d6', CAST(N'2018-06-27T09:28:54.093' AS DateTime), N'111.111.113-14', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (633, CAST(N'2018-06-27T07:59:36.947' AS DateTime), N'32205bf62989ca711bc627d1adaab4f5637849883f87a48fd67b99bd796337c617a1439fd8aa6cb9d57ea71a4e0abd5ddcab2d9d0945fd171748ebbff184d18e', CAST(N'2018-06-27T09:57:55.067' AS DateTime), N'111.111.113-15', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (634, CAST(N'2018-06-27T08:00:10.787' AS DateTime), N'45a5032bbd7954d142df4e19bb7bf662b90d02fd62e48cc312d4122ec850e0df3078c7a02141e4e1e30ad9925fdbeb6237b56d4c6d8271cd206b20e9bbf7a64e', CAST(N'2018-06-27T09:30:55.170' AS DateTime), N'111.111.113-16', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (635, CAST(N'2018-06-27T08:01:03.763' AS DateTime), N'50cf1eee417627e87aaa9aea059867637611a0dbd8fd1c045e0679b2df3509b1619158381e8817dcef9c934388696b01781db5408476e9652c422aa20d276fc4', CAST(N'2018-06-27T09:35:45.863' AS DateTime), N'111.111.113-17', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (636, CAST(N'2018-06-27T08:01:29.253' AS DateTime), N'8fa4d606d094196a0987a34c74685cc14a03396a8897214dc402ae065b75b632f0c91a83ebf3b18caf98794d6584208b7b57d0989f3af43f2137fc72c01f38d5', CAST(N'2018-06-27T09:33:17.693' AS DateTime), N'111.111.113-18', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (637, CAST(N'2018-06-27T08:01:53.007' AS DateTime), N'5f3c5065a7fa18fd387ecb8d8a01e747889035c2c0157d7ca825aa56d9de275cc002d7cd862394786f8aba6c2f91b74dba4a19a26df51c77085576b61a9077c6', CAST(N'2018-06-27T09:59:01.423' AS DateTime), N'111.111.113-19', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (638, CAST(N'2018-06-27T08:02:26.173' AS DateTime), N'da44213b693b25919801b4055e3756c90f595607499c2f4384a35b5b2a51490995ea5e2ac7f8231ea86ba362d20b10115fbc44ed747417d4fcd04469cbc67659', CAST(N'2018-06-27T09:40:35.920' AS DateTime), N'111.111.113-20', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (639, CAST(N'2018-06-27T08:02:52.577' AS DateTime), N'f52ed53d2b302514d09b2bb0a51c70aec9b8849f75a054507a5ed559d525ad2462e637361ff2ae442495f697dae827be1ef18f40c21b859bdca29d3699d77d79', CAST(N'2018-06-27T09:41:23.540' AS DateTime), N'111.111.113-21', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (640, CAST(N'2018-06-27T08:03:09.010' AS DateTime), N'3c7fce7970204c7b98e1018f4358e466d6053ab4f759424c77b9eb7ab9d5c4bd9297d37dc1feec82d60477808da7f315d5a7cbd3713d2dcefd299e4dbc809a36', CAST(N'2018-06-27T09:36:05.193' AS DateTime), N'111.111.113-22', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (641, CAST(N'2018-06-27T08:03:35.570' AS DateTime), N'36790ae5b046eb5f08052cdf7f9123a728e23ab1220b4caf8568dbe4c22e8298189392bae42743cc028e180662d9bffcc7a99314b654d52087b2a04fcd54148a', CAST(N'2018-06-27T09:34:40.923' AS DateTime), N'111.111.113-23', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (642, CAST(N'2018-06-27T08:03:54.460' AS DateTime), N'f8e000c3d33de6efc26b72c006ebd3bfa56335d1ca9bbbff8ceeff6ecc241414a95b14bfac8ed8f89e2bea72af7dd0668f70253302b3539a7f893a701c30e83e', CAST(N'2018-06-27T09:35:35.990' AS DateTime), N'111.111.113-24', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (643, CAST(N'2018-06-27T08:04:07.580' AS DateTime), N'466b86aa5bd3d6ee3c095331e03bea641ea2faf586772c0929ae1842ff8cdc411c72a874c553714da61c08b1dc9e51e578a02dc434c0801c43e81b54f104d0ff', CAST(N'2018-06-27T09:37:32.107' AS DateTime), N'111.111.113-25', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (644, CAST(N'2018-06-27T08:04:10.963' AS DateTime), N'fda0f060dab51009f854986f1a98236332aa336ea757e4532ff99bc9167eedca06fc6131f706a11c26ca08e8e3951d92612cdb0a9d478318137ee2be6d75485b', CAST(N'2018-06-27T09:35:39.937' AS DateTime), N'111.111.113-26', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (645, CAST(N'2018-06-27T08:04:42.003' AS DateTime), N'737f4766892b1afc96948f9eb050a2cd8b9e0711906191b86bb060d4be58540be1ba8550768e3de2e05e5132de0d4199a99a11ca90ed057ca0e9b9842b40135c', CAST(N'2018-06-27T10:00:51.030' AS DateTime), N'111.111.113-27', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (646, CAST(N'2018-06-27T08:04:49.120' AS DateTime), N'8d40bfa2b7ad964cb9dd8f1d99b015037a32beba457cba8c94581645a65589983c03e266ab98df4c0abc7e8ae535acddfe970a6f446e1bd56b7d089cde04e955', CAST(N'2018-06-27T09:42:42.863' AS DateTime), N'111.111.113-28', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (647, CAST(N'2018-06-27T08:04:51.740' AS DateTime), N'e84be7bbac1bf07e061c14866d0f37887498b8b1251f69e0404a704abcd5b3d07c667647ec126853b45d58730210bb24e66c299f16dd47a87772951819326748', CAST(N'2018-06-27T09:46:20.250' AS DateTime), N'111.111.113-29', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (648, CAST(N'2018-06-27T08:05:26.183' AS DateTime), N'6ca13a30ecf95489d387eff95111f5743760f5ff3dd1dd6fbb6779c4f57ab922da3ac345c65de9c8bd207d03915badd3bda2e719b3ed4575051d5c7561efe134', CAST(N'2018-06-27T09:37:51.557' AS DateTime), N'111.111.113-30', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (649, CAST(N'2018-06-27T08:05:30.050' AS DateTime), N'a00e430ebb146487f6d98c3c3b358f554099f0e10de17f87e9202f467b4ce483d829bc22b5585e33566837ef6856ab4d632c980d95ff77c842c9f268c97c377a', CAST(N'2018-06-27T09:59:53.617' AS DateTime), N'111.111.113-31', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (650, CAST(N'2018-06-27T08:05:44.583' AS DateTime), N'48cd7bd10ee2f60926cfc3bf6400cc67df1b25c394311fa5314adda8628520ff7b1b02362c6a435515b231e2c24d5620473018706b256d82597609b28c5dbbd4', CAST(N'2018-06-27T09:35:46.277' AS DateTime), N'111.111.113-32', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (651, CAST(N'2018-06-27T08:05:46.097' AS DateTime), N'd8d3b69069271730e01e1c1e5323b6d5f1715770be5826f16e53c54325af2038d177344ad108abfc71bf17c18c5d8403c3f2bad468e31f344e125dfa9e711c86', CAST(N'2018-06-27T09:35:46.097' AS DateTime), N'111.111.113-33', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (652, CAST(N'2018-06-27T08:06:07.850' AS DateTime), N'a0e953ba8f7623e4faa429a7604274615f04d4739fd198a5e1374c21ae7ebb0f40da9e9cb0ba6a0b6a197743027006a9fac475af787a76685074484b9776cd5a', CAST(N'2018-06-27T09:48:09.353' AS DateTime), N'111.111.113-34', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (653, CAST(N'2018-06-27T08:06:29.983' AS DateTime), N'a4007315590e23df45858c122705b2448e6f4f9fd21b9d846756d09c493062823ae0a64b319effcbf4d41292921740b7556e57d4df3e61f1875e7b1bb8f44c9d', CAST(N'2018-06-27T09:36:29.983' AS DateTime), N'111.111.113-35', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (654, CAST(N'2018-06-27T08:07:42.570' AS DateTime), N'6aa6ac238012eca07860356c2639ab7a482bb99d3d3a6386c647d72181767a612b095537b25f2abe898d7ac1f095cd587ba78c26e7ce9f0ce732e5217ba9ee02', CAST(N'2018-06-27T09:37:43.583' AS DateTime), N'111.111.113-36', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (655, CAST(N'2018-06-27T08:08:06.450' AS DateTime), N'59bd9752a36f5a6972a8914eb4960d71e574a529bec39bb74cb949d8d5d930fa598cba46dfc70fabd45e4663c0e718998edf3cdf59f2ecf1546a4a2ba8ab2ca8', CAST(N'2018-06-27T09:43:44.737' AS DateTime), N'111.111.113-37', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (656, CAST(N'2018-06-27T08:08:21.790' AS DateTime), N'1e54fa4842cd558fc616014ea56a1f01c1ff6a95cc0ecff2b63cb1fa1e5c3012369b31646a1eea54cb8320b010129556cd23f94f846d02c9ced57a6ccfe10690', CAST(N'2018-06-27T09:40:10.120' AS DateTime), N'111.111.113-38', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (657, CAST(N'2018-06-27T08:09:05.923' AS DateTime), N'fcd45cdc7d3951074c6b1fdc7fe5aaccfea69247e4230151aafc519181815829d90ac67db634d891f465f3b5c2cbd080ca0e1043b9bde6c2e6197cba586d0ec5', CAST(N'2018-06-27T09:39:08.203' AS DateTime), N'111.111.113-39', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (658, CAST(N'2018-06-27T08:10:39.110' AS DateTime), N'2207d8b4780d41c8ba20dd119da3c1151460be030333b10620c4aa07d9fe964d4e158c9c1c88ed4ebe8df2f222b576f31d04fa2b521b4c760b581c4d1b18a0dc', CAST(N'2018-06-27T09:41:37.543' AS DateTime), N'111.111.113-40', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (659, CAST(N'2018-06-27T08:11:37.033' AS DateTime), N'526a5048853d4139e16eec8cc6804c9c535d4707f62e5384396cc736842a2a8318aa9aeb0ec9f0cccf2f03e86d7501c42712c71e175d92f0249991d0233fb9d9', CAST(N'2018-06-27T09:41:38.430' AS DateTime), N'111.111.113-41', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (660, CAST(N'2018-06-27T08:11:47.263' AS DateTime), N'b96509844d264b08c4036ea830424e58f8333ffd4a024e6c2ad22fccef9ab1de1ed4166dc6823c3c8c82bbe73a73c53a3a7ca11495d680ff0516157860843122', CAST(N'2018-06-27T09:41:48.693' AS DateTime), N'111.111.113-42', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (661, CAST(N'2018-06-27T08:12:18.240' AS DateTime), N'bfcd8b299182ce247240bf643faa1c95179ff64d1d65e9182412a6c1f76b0dadc0cd88ad0194c3ef49429f7a1f796d7fe10a67d2ed463aa279c4049a06aec83c', CAST(N'2018-06-27T09:45:35.670' AS DateTime), N'111.111.113-43', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (662, CAST(N'2018-06-27T08:12:49.240' AS DateTime), N'b0bc410a5a2e6b04b3dac99281b63e5fb35ca2ffdaea0605f0aed011dd8b3934db0b9b6f1967f74da57338dfe4acf2b35987f03f469cfe5a81bb24e136c3a943', CAST(N'2018-06-27T09:44:04.550' AS DateTime), N'111.111.113-44', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (663, CAST(N'2018-06-27T08:13:05.787' AS DateTime), N'b82568c18a94dc19ab519056efb5081c0eda18ca5eee5a6b577eff6add23d6884f38476873a1f17d7332d066726eb3312985bbd2713730a1c8cd84c10d236060', CAST(N'2018-06-27T09:43:52.190' AS DateTime), N'111.111.113-45', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (664, CAST(N'2018-06-27T08:13:08.013' AS DateTime), N'07eec711376aca9bef3695bdef403add299d43ad4804c0edec943e7cbf63e4ec4e405daa307714289d19498f1e071171816b505d0a7b0b912ca42b6c9cf31448', CAST(N'2018-06-27T09:43:09.190' AS DateTime), N'111.111.113-46', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (665, CAST(N'2018-06-27T08:13:20.657' AS DateTime), N'48f77f63c200a51dfa36921899c365a75b2ce98df6967cf874681769be2292ee7d3334b4a7c2a40c8ce7a89016001b2adda19a27a2cf67ea044e2c693031e0a7', CAST(N'2018-06-27T09:43:22.207' AS DateTime), N'111.111.113-47', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (666, CAST(N'2018-06-27T08:14:00.077' AS DateTime), N'bef1b299ee9458ccbbff6bca082353253fa7c775b22e1ebf5a22d4dc42ade1ebb029ed96aaa66b1c16e4d5aa86fb740346fcf67ec8305b51a92e5b8e9481bc33', CAST(N'2018-06-27T09:46:38.230' AS DateTime), N'111.111.113-48', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (667, CAST(N'2018-06-27T08:15:49.297' AS DateTime), N'4ed3d209e7f45f840d85a48936d30487bc1313ad45eee70cf118208dbf4fa02f740fb2c35c3ca9ecbae3371917a78a682dc943c5a2b847330a0f347ca70d921d', CAST(N'2018-06-27T09:45:49.297' AS DateTime), N'111.111.113-49', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (668, CAST(N'2018-06-27T08:19:03.933' AS DateTime), N'44981aecff63670c84bde77a3bb2843055fffd8e9cc0ecc0bf376bd10ec114a2d6970dabccdbcb2025965734c0091e8a16742e757243dbad1c0e4ffd944830e7', CAST(N'2018-06-27T09:51:02.880' AS DateTime), N'111.111.113-50', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (669, CAST(N'2018-06-27T08:20:31.093' AS DateTime), N'24ba99e2a0aee9aa02e8e98073047efc77900b71a3e3bcbcb6a9f7fa03a158f55c291ce41a0d0b0290c4eca98e8d10a3363208f102dfa6c043dc0dc72a015a35', CAST(N'2018-06-27T09:50:32.480' AS DateTime), N'111.111.113-51', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (670, CAST(N'2018-06-27T08:21:16.890' AS DateTime), N'1676ea4363926fd60211916fa09692f01b30834cd636f53e03763362505fc142f5e78affbb93b0288af24f64a9fd3ab85ba1c4214238e86d3c8e4ea77b4f74cc', CAST(N'2018-06-27T09:57:30.970' AS DateTime), N'111.111.113-52', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (671, CAST(N'2018-06-27T08:21:38.240' AS DateTime), N'8939ad7fb22f9de54406d71166a0f4f0758dc404ff3e371a54d433ab48faeb8afa1fbdd9c9ea239a72147c724ecf7585cbfc86d2a3214e24bfbfcbb1211fbb55', CAST(N'2018-06-27T09:51:59.270' AS DateTime), N'111.111.113-53', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (672, CAST(N'2018-06-27T08:22:31.953' AS DateTime), N'b2df403f5a692eda5b221482b5256d460e498080a23cb6ef72896463e77d7dff0dce4aabad7e63c950bfa602cdddf43f96c3050b58e34f4340028c3ccbbcb08c', CAST(N'2018-06-27T09:52:31.953' AS DateTime), N'111.111.113-54', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (673, CAST(N'2018-06-27T08:23:10.053' AS DateTime), N'b57f0691dad161769663d7d209f0cca85f8cac0c215614ac479b3add683264cfacfaa288f2565c1eba3a139bbebb14a2b42d460fdb1fdbde94a273112dfb6e27', CAST(N'2018-06-27T10:05:52.913' AS DateTime), N'111.111.113-55', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (674, CAST(N'2018-06-27T08:24:24.383' AS DateTime), N'21f989e7cae231584db986503e66b3f61099d11a5dfdcb843270192e9b971c5c20e9136c38cb5b2e03694ae0fd8aefdcbf58beb2afb1db4aa35be2b29daa7d6a', CAST(N'2018-06-27T09:54:24.383' AS DateTime), N'111.111.113-56', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (675, CAST(N'2018-06-27T08:25:25.873' AS DateTime), N'450dd55d10c601c66ece7491add9ecf78e99d0d0aba3a6599a3287ab55fcc1e24c4bcb9d7c75be5a84bc6593b24854dd0270d174fd7da4d0e716fb51e31ee30d', CAST(N'2018-06-27T09:55:25.873' AS DateTime), N'111.111.113-57', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (676, CAST(N'2018-06-27T08:25:46.470' AS DateTime), N'0a3bd8d83bfeab64d127709a2851f86b07fdb988c147f012642c0da306ff52694915639bb6ce9c27355338ba1043f5d69310311952c35fce0d0df199f401f7b7', CAST(N'2018-06-27T10:00:58.233' AS DateTime), N'111.111.113-58', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (677, CAST(N'2018-06-27T08:25:48.117' AS DateTime), N'273498ad2b565407c38b5a7749a7fb3e57e08b5e66d0d4a015b145fbe8fe04c800be28ce2e5df190ac1e82a632a2ec132de85422373735f5af9bbd1911e9f9bd', CAST(N'2018-06-27T09:58:48.017' AS DateTime), N'111.111.113-59', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (678, CAST(N'2018-06-27T08:25:53.320' AS DateTime), N'8df0013f549a418f19596d2c93dc2fe53113db61327b911961ae5352556c549dcc7ddeff9f6a743ca56beddfa1282351de0f08731bf0d06499775ec630453554', CAST(N'2018-06-27T09:58:42.840' AS DateTime), N'111.111.113-60', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (679, CAST(N'2018-06-27T08:27:23.520' AS DateTime), N'd745051c4ffa51ca8ac68cd53838b35e8c3b29c45f8ba61d3cedbcd77a3f5fbd6650555410bdceaed09e2bf95fb7cea553ed1b29cfcea859e6e5370e390a6178', CAST(N'2018-06-27T09:57:23.520' AS DateTime), N'111.111.113-61', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (680, CAST(N'2018-06-27T08:27:46.010' AS DateTime), N'd2004083b53ed7621e8a8850ec728d23f2ec199526f5818b8542568ea8060e800835540f8008db8f0421b5121206b7979d116c496cf48d5c06947cde344640f8', CAST(N'2018-06-27T09:59:44.070' AS DateTime), N'111.111.113-62', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (681, CAST(N'2018-06-27T08:28:04.380' AS DateTime), N'7f179f105a6616b536446fdf360706f8069baa7434fabc054055ec6ace612ace2725f4ac9b54702d449f84c7fc44e5804e89e0ea2f48069eed81a4597fc2e49a', CAST(N'2018-06-27T10:00:13.597' AS DateTime), N'111.111.113-63', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (682, CAST(N'2018-06-27T08:28:20.943' AS DateTime), N'f507a26f2acee6b88c36f0d3199f6f0e625c9033a4bec792db370bcb45a06c1f462a75e1d9eea62b53c5c60dc7f7e0f5b0efe8ba1c16c311fba71a97a672d40a', CAST(N'2018-06-27T09:58:22.183' AS DateTime), N'111.111.113-64', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (683, CAST(N'2018-06-27T08:28:56.440' AS DateTime), N'8471be507b6bcc1b25e27fe353150835bc97dcad46a7c6dc18963698a0134c5f5f565462e6681b4e7bb86e3afbbcacafd4acb56db42974bc4f4800a18b0e38d4', CAST(N'2018-06-27T09:58:57.763' AS DateTime), N'111.111.113-65', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (684, CAST(N'2018-06-27T08:29:13.590' AS DateTime), N'7b62aa8483b500065f512a1edf025d499ca5bf406d8ff3029c25a09553be0e5c67b8ae33d349580db4aea38e0285a84c08bb1ebee849353d5fbb28e28761d6a0', CAST(N'2018-06-27T10:02:56.997' AS DateTime), N'111.111.113-66', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (685, CAST(N'2018-06-27T08:29:15.097' AS DateTime), N'2277b5492e3c65dc74f4d80feec69488c453207644ac1689bd659b298a1bfe9620c5e2192a425be37ad11f7a5a0dc0946e2038405b8a5ff1e0f2e77d519171c9', CAST(N'2018-06-27T09:59:16.737' AS DateTime), N'111.111.113-67', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (686, CAST(N'2018-06-27T08:29:16.307' AS DateTime), N'80788d2c05d863ca5bbeaaf2d73aee410626a13cb8eb858a5ba52dcc889ebc949553acb94cd560d0e8167bb1a2272404c1da5822cafad09d0f516c4d181fba9a', CAST(N'2018-06-27T09:59:18.550' AS DateTime), N'111.111.113-68', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (687, CAST(N'2018-06-27T08:29:19.703' AS DateTime), N'2bbe3b0573bd298aaf88c8b85dbba8f5cd4ea5a581b48ed4c9f9eaa465227c11171eb3bd4316f7057e18ba5bfcf22b7ecf0d00988924666b9c4933126a59d191', CAST(N'2018-06-27T09:59:21.300' AS DateTime), N'111.111.113-69', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (688, CAST(N'2018-06-27T08:29:58.297' AS DateTime), N'8cb2f6bab81e014c3ade6175e6df6f52fffd59eca9f6181f47903b1baeabc49eb319c23a682bbee8287a08a12849747ee08abdb7fe45426e3eb11ee61cbfacc7', CAST(N'2018-06-27T10:00:00.207' AS DateTime), N'111.111.113-70', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (689, CAST(N'2018-06-27T08:30:13.017' AS DateTime), N'1e03b8fac2c79f37c562d60d58c5573e488d70c6c9d42530e82fe73484b4162891477bc15e10ea91be36fe1dd4e14e4c83ed32c8ef136b0571b1d98acf353b14', CAST(N'2018-06-27T10:00:13.017' AS DateTime), N'111.111.113-71', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (690, CAST(N'2018-06-27T08:30:20.003' AS DateTime), N'7f9bac0e03ee77ef75c71c1714d0d7c07439459aeb4b0b3a2eeb7fc137f024ec6f8a3881509f25c122aba57ceb0ce7d52775f4a77fb27b5bf6d5cdfc74efe9c0', CAST(N'2018-06-27T10:00:21.907' AS DateTime), N'111.111.113-72', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (691, CAST(N'2018-06-27T08:31:12.460' AS DateTime), N'3f8cb10c50de426cf5582e5af9833a0e24f31299e14019c8689544f16a91319e389fc5dcd380906c9ad1d02153790dc755d789ff821ff63a7c2e72c2a657b7c0', CAST(N'2018-06-27T10:01:14.347' AS DateTime), N'111.111.113-73', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (692, CAST(N'2018-06-27T08:31:48.903' AS DateTime), N'9502238b893257a364eb8b2581a26d40c03b673c863a6547b794f271c0a83a3b2bdaf1fff6fe88d986c7550365b4e86af4dd4fa641acde6fe80c9fff37a9d894', CAST(N'2018-06-27T10:01:50.290' AS DateTime), N'111.111.113-74', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (693, CAST(N'2018-06-27T08:32:42.480' AS DateTime), N'906a40f1280f4da82d3a552c24e5b116af9dda1d4153d04cbcc9e6a976a7e3f3086b362c1a0815c5fbe4259107ecfb45530c7ea953cf713f9a41072bfffd905d', CAST(N'2018-06-27T10:02:42.480' AS DateTime), N'111.111.113-75', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (694, CAST(N'2018-06-27T08:32:59.333' AS DateTime), N'13cc01137ed392b72cef74b89fd7591a37dd036c97436c6e3380399c40ad16c8c1394a95048c44087502bf28ef36dfcf26006f8c26c61b86f75b2e46cec944e1', CAST(N'2018-06-27T10:02:59.333' AS DateTime), N'111.111.113-76', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (695, CAST(N'2018-06-27T08:33:05.833' AS DateTime), N'1d8c0bf34638142e440813e45b6e1e5e7bdc204e6052c76b11e2668b4c06fb740599a7434ae7bcab63880e61a6ab2b0facc04b63a3c6dcdd60e605ce08f05233', CAST(N'2018-06-27T10:10:50.243' AS DateTime), N'111.111.113-77', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (696, CAST(N'2018-06-27T08:33:25.873' AS DateTime), N'5f90c6140da5572bc44036291bb28fd7a50bb47abd0a5667e25a036c8b4854dbd09f89e3e109ae657bcd3a9bc782107ef24e60237b083dcd06d6c339f99741c7', CAST(N'2018-06-27T10:03:25.873' AS DateTime), N'111.111.113-78', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (697, CAST(N'2018-06-27T08:33:28.540' AS DateTime), N'd9ea1515bd2b9c981e9b432993c95c497a18210eca5193cc290440aad6fb52b9e838df55ea0fe0d3697d7c1e8c61c9d9441f065f1e865c12c486cf87e24a50fa', CAST(N'2018-06-27T10:03:28.540' AS DateTime), N'111.111.113-79', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (698, CAST(N'2018-06-27T08:34:12.027' AS DateTime), N'3e37fc5ec5b06cf6969a380d6c0aeca9f428e1f7623431c57604ca3d3b2f8e8ab7521d4540ecae197954201cc404e470f82bd5ea77aed9f552daf1ba02bffc43', CAST(N'2018-06-27T10:05:27.137' AS DateTime), N'111.111.113-80', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (699, CAST(N'2018-06-27T08:35:00.737' AS DateTime), N'5fe712b4a0e75efea8e7a6ccd09b54b72f3be7b8df7b5dfba3f3f7ea3536b963efd759a25c1b667bb0a9d78c4c53d59b4ba760902eef5a1ad74ad305c73881bb', CAST(N'2018-06-27T10:05:43.460' AS DateTime), N'111.111.113-81', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (700, CAST(N'2018-06-27T08:35:34.553' AS DateTime), N'268b3425cefd80fbdfe6d9eeab54a289341ba0bac62c8314fe00c0c37e4f5cf8ddb0ea7196cb2b22dc529f37c7abd7d6b494be82bffd892170d4e649356e5c26', CAST(N'2018-06-27T10:05:36.150' AS DateTime), N'111.111.113-82', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (701, CAST(N'2018-06-27T08:35:41.550' AS DateTime), N'd6f79a3dd28c37a6bc68991d1ef2fbda34e12390f920fb02b62e30d340ee305bed75e3a82708b261b1a064e22029d8ade7141e462e021b31ab0251276c6cb791', CAST(N'2018-06-27T10:05:42.547' AS DateTime), N'111.111.113-83', 3, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (702, CAST(N'2018-06-27T08:35:52.947' AS DateTime), N'97748833cf908f5e0f08ff5cfdaf8dc2f7b369ba7ae102b646ce27949518db869ef531f6004235211676866d169439d50bd90a9fad8f20f0968e1355d9bc660a', CAST(N'2018-06-27T10:05:52.947' AS DateTime), N'111.111.113-84', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (703, CAST(N'2018-06-27T08:35:54.887' AS DateTime), N'2114fa8ca8347fa931497dbe0b122e9625c2c811a9a069276bf924ff6d24341bed9728fc78e47a43e6e0926b30f9951e88f6ea2484f8fef5b47fea33c930ea2e', CAST(N'2018-06-27T10:07:15.387' AS DateTime), N'111.111.113-85', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (704, CAST(N'2018-06-27T08:36:19.787' AS DateTime), N'690dfc2633d2cd03ce11a7a21d14e3548bbcdca24a7f8e2c8800a92d1bfd0bbfce901c2088b0ba882ed9038119f219c209564027f04c2e09217fb4467e6ebb3f', CAST(N'2018-06-27T10:09:34.970' AS DateTime), N'111.111.113-86', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (705, CAST(N'2018-06-27T08:36:37.900' AS DateTime), N'b8ee60d386fc738d486e02dc085ac5c5e578d9b9893602737fe70f5f876e3e90a42d8c154a9b1cd89fa6ecc3461c9e98cd524b39fdaf1581003a54cc7198a273', CAST(N'2018-06-27T10:07:41.950' AS DateTime), N'111.111.113-87', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (706, CAST(N'2018-06-27T08:37:49.263' AS DateTime), N'7c9cbae238ca991cb91bdee5c23394a0ee51442145c9034aef4833740658675f3ed2ad7d1eb511c053f0cdce37650e20d3aa65e16a9e27596aad3c261c66cef5', CAST(N'2018-06-27T10:08:59.367' AS DateTime), N'111.111.113-88', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (707, CAST(N'2018-06-27T08:38:34.863' AS DateTime), N'e15f405aecbbabd6112d76d2524b86a6436e65b39db24a2c5e5db7170704b11e51ad74f285aed0245947c5d5857fd556972fc43c1cafd7d1e0c28f980222d3e3', CAST(N'2018-06-27T10:19:41.357' AS DateTime), N'111.111.113-89', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (708, CAST(N'2018-06-27T08:38:38.097' AS DateTime), N'e26878f07e6a8133c5639fbde93459496f497e59fef38bac397e2a06649dc30e082476aed6603bb37e1e75d9b16731804058c3e94351551d705924915506b4e2', CAST(N'2018-06-27T10:17:03.553' AS DateTime), N'111.111.113-90', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (709, CAST(N'2018-06-27T08:39:11.860' AS DateTime), N'f0b0c237543d43cd04b880e50f81c3c5be4063d5bfba1ec34131dbba6cd0fcff3033c309d5450ce634b49a0423adcef0c76a3d8553d26b9713568b5581f76d2e', CAST(N'2018-06-27T10:13:28.580' AS DateTime), N'111.111.113-91', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (710, CAST(N'2018-06-27T08:39:46.840' AS DateTime), N'8a5b8d6ff654435212a5e6fd5b21f32bfbb0023d6080e9592db1abac3ce9c9d9bb452967410cc8065c01dd577af8aafd055fc290c6f96c651df28939b9d227f2', CAST(N'2018-06-27T10:09:46.840' AS DateTime), N'111.111.113-92', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (711, CAST(N'2018-06-27T08:40:02.013' AS DateTime), N'cf938972ace66f872e34d1d968685695f0897cbb5c074357662ead6c40a0e5e69d74e8c1ed038492e72b9bf075e1fabe111dfa225c867c775638c61159730f1c', CAST(N'2018-06-27T10:10:02.013' AS DateTime), N'111.111.113-93', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (712, CAST(N'2018-06-27T08:40:02.780' AS DateTime), N'be6f754fd6fcff538fef7057c00a78ea9002cd20f7a8423cd0db87496978b36e8311c28ad9df5ca4119aefa882bde869b2cec2525fdb879c029383560f2ccd6b', CAST(N'2018-06-27T10:12:48.520' AS DateTime), N'111.111.113-94', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (713, CAST(N'2018-06-27T08:40:55.407' AS DateTime), N'9faf6b7417250bc513079277541bcdea54ebb38fbf1382a072805e04ac1ab3bd2e61cc0404a43db297da1851b2c42f8ff44f8aebe1b0a29e1e0c3d6f3fdc0ea4', CAST(N'2018-06-27T10:12:16.060' AS DateTime), N'111.111.113-95', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (714, CAST(N'2018-06-27T08:43:02.500' AS DateTime), N'5cec12c84fd8c1c48acce22240e84b70eb0e9efb7b51c061514491d2a07280dfdf3a3f5232120624f4367ca95e843b188e6c75f9731a62c3b50f2f74265858e4', CAST(N'2018-06-27T10:13:03.633' AS DateTime), N'111.111.113-96', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (715, CAST(N'2018-06-27T08:43:06.590' AS DateTime), N'eedbe34339d1aebece6b01ceb5b60c04e6b87a2db5bf9f0936bcf3b10b00ff65cad5c10fe91fd8b2862f4e210df8cc2bd630847188c4c180f60c44d8bc16b74e', CAST(N'2018-06-27T10:22:43.390' AS DateTime), N'111.111.113-97', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (716, CAST(N'2018-06-27T08:44:30.680' AS DateTime), N'e8b8385ab43a140244326fc745515f1312d596e74ae51b111e87c2673d701f3dc4c9a52c28b351262e02e0b51542b92ed151179602d081bae7332f154c32d6be', CAST(N'2018-06-27T10:16:46.420' AS DateTime), N'111.111.113-98', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (717, CAST(N'2018-06-27T08:44:31.497' AS DateTime), N'3dbd52d943cd0424956be3133bf9d4f0a50907fa62a0cecaf71adf330e346528384d1ef3825dc63e4ce8f9e7dfd00af94a009e787cc8385ffcde54a66f0fb22a', CAST(N'2018-06-27T10:46:28.803' AS DateTime), N'111.111.113-99', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (718, CAST(N'2018-06-27T08:45:03.640' AS DateTime), N'e1c8bcba15258a88df48fba8c025734397ef38cc13b04e88948e0db5b9ae255730c013fbe8b9098afe1b4b7a24eeeb299dfc9b409250d63fe470924bdc73b224', CAST(N'2018-06-27T10:17:54.990' AS DateTime), N'111.111.114-01', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (719, CAST(N'2018-06-27T08:46:56.163' AS DateTime), N'30a5709eea95e59e3940e51d0ae5d9f4aa6dbe59a58591673963b9007a78e018553a8db43d7a0c0e6d9bf65b5e7134951293cf7db282c119a8bcc04d33ded691', CAST(N'2018-06-27T10:17:32.463' AS DateTime), N'111.111.114-02', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (720, CAST(N'2018-06-27T08:46:57.187' AS DateTime), N'4fb3f44e3272ae339481745f73e61f4ff090133796c14627b4c7863ee522ad64e9ee2edda29763f8c24e584ed43976b6d5d5faae98504f219de0ca7f7529119f', CAST(N'2018-06-27T10:19:46.443' AS DateTime), N'111.111.114-03', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (721, CAST(N'2018-06-27T08:47:16.980' AS DateTime), N'd7596d6282058bc6fa26d72be33e1b6cf1b704117ec8fea88c6075f361c3d6fedff3adf69f3889ea1f4e713d0c770dbc47394b2d7ffd2493b858f92eceddad28', CAST(N'2018-06-27T10:17:18.560' AS DateTime), N'111.111.114-04', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (722, CAST(N'2018-06-27T08:48:30.850' AS DateTime), N'a883fe887ca85ecf64040956083378d9ddf6ccd25d72097afde975dc3161d182c17a6787dfa7a7d66f3750ec64689f6bea9423851bc7877f9caecce734052f67', CAST(N'2018-06-27T10:18:32.493' AS DateTime), N'111.111.114-05', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (723, CAST(N'2018-06-27T08:48:39.357' AS DateTime), N'd5085b19b9bfc7bacd67f0ed396e6bfbaf61ce5bfb709da8d005460b2d6bbb7fde0c31306fb12a554e030e49e64354489485176f47cf82015421127c6212f3f4', CAST(N'2018-06-27T10:20:08.883' AS DateTime), N'111.111.114-06', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (724, CAST(N'2018-06-27T08:49:18.207' AS DateTime), N'70e0ae9f936196a1eab1dcb427aee36a5b18dc788838dcaf2d743d532772a40324de1628793168200e5a5a404ef6f2fdcc66a9844ce067640ed3f6dbb9853704', CAST(N'2018-06-27T10:20:44.123' AS DateTime), N'111.111.114-07', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (725, CAST(N'2018-06-27T08:49:54.893' AS DateTime), N'946897cd790719e7cf32cedf69ca7b0f3c760d3eb426ec0bfac3d06d50192a3bcd7d81a304ac267a682f0a18daf9c1aa97db2f80e8061d6785fa687b6ab995f8', CAST(N'2018-06-27T10:21:18.747' AS DateTime), N'111.111.114-08', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (726, CAST(N'2018-06-27T08:49:56.450' AS DateTime), N'0c2d2d62b8a77e9bd5ab08e2bcbe23ee668f1c55a9bf5d0cd2b077f4fae82edaaabf8b50aa77f0ce156c7e874705af2b1b6cc16fc9b980aab692c130b92553b8', CAST(N'2018-06-27T10:25:28.493' AS DateTime), N'111.111.114-09', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (727, CAST(N'2018-06-27T08:50:22.617' AS DateTime), N'fafe56a07609d562a6feba6d01b58fe3131ea8b6bd9881def841269a365345448a108118df8d204aa3463fc5eb9d251dadac3cdca116de39dac67ec6f5610605', CAST(N'2018-06-27T10:20:24.827' AS DateTime), N'111.111.114-10', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (728, CAST(N'2018-06-27T08:50:26.483' AS DateTime), N'0f0e1480147fc80b359433c9d84b51f41f31a67fd1532405e04600faeae4304fc4ac2afcd12206364f0f007d92afe54233824490c929e508d99d490ca63d5ca7', CAST(N'2018-06-27T10:22:14.330' AS DateTime), N'111.111.114-11', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (729, CAST(N'2018-06-27T08:51:08.827' AS DateTime), N'857dbf29a2a48b71c14afb7cd9a2cc4813fb62a8a50534ce7aed64abc7536e2e3d951345deffb333d44efeaa59c1c88e78daadea4c9a763101ded7a05892b524', CAST(N'2018-06-27T10:25:48.567' AS DateTime), N'111.111.114-12', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (730, CAST(N'2018-06-27T08:51:48.793' AS DateTime), N'2742954a0d5ae174ea60d91f7586e7cb56a30482eea83b30e8697f50c750f9892b3f18d239bba1b28ebb24a87f90477e875b4a80727bbc6d2e966ddddb2ae43c', CAST(N'2018-06-27T10:23:28.067' AS DateTime), N'111.111.114-13', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (731, CAST(N'2018-06-27T08:52:03.243' AS DateTime), N'd5a00e2f1b1d88c9131c3f1cea87fd06eff01e1fd9a0e0b39cc0febdfd2ea6d6e63b097f5203dc262bb7028deb4fab236af47ccd7c9ca647ed36a5c45e4dd287', CAST(N'2018-06-27T10:23:18.547' AS DateTime), N'111.111.114-14', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (732, CAST(N'2018-06-27T08:52:34.650' AS DateTime), N'959f958a597a0f310067460ff072cbb9f4f56ca4ee61fa6f942038402c902472d91d2ada5c6dcebc36cf8983d6340fbc7804a14971f91508d6d942161f79f74e', CAST(N'2018-06-27T10:30:07.463' AS DateTime), N'111.111.114-15', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (733, CAST(N'2018-06-27T08:53:03.190' AS DateTime), N'12bc61c88bf125bb2f6a7306a40e8f0a5530e0579b49c9766fbd224300b8146d82f2f6492b47b0003d2537d66994656d909b729d422bf26f9c5c2e853aaa6517', CAST(N'2018-06-27T10:24:28.723' AS DateTime), N'111.111.114-16', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (734, CAST(N'2018-06-27T08:53:31.877' AS DateTime), N'3cb55e8e360e02641de80906c662cbbba7b32e0e071b016e904e47ae567c9cac002f2b84bb5d3baf79875c59d6cb454e51fff0e76a760119c052798e99b4c433', CAST(N'2018-06-27T10:23:33.873' AS DateTime), N'111.111.114-17', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (735, CAST(N'2018-06-27T08:53:44.640' AS DateTime), N'b8905109dca2c73e025762b2e78003a6f5a30e056012554635f37ca20aab6327551f8f9c19e58f108949c3e6629537deb032a3d8f67699cca837c969c1769bf6', CAST(N'2018-06-27T10:23:45.993' AS DateTime), N'111.111.114-18', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (736, CAST(N'2018-06-27T08:54:11.360' AS DateTime), N'88fd0baf255164191068534dd207b96c527a456b9e6a34979260de3b41b89cf83a5716dafc1e576646c9c24a3b348f2c16156190d118edc985498a8e6498f005', CAST(N'2018-06-27T10:25:04.183' AS DateTime), N'111.111.114-19', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (737, CAST(N'2018-06-27T08:54:31.353' AS DateTime), N'69217975fba4a2ae7bcd7a74ca91ac9fb9bd3df6878557b7e03c5f0e1d8008566ea91e08a2cfb792e8088961a910325d96fa756a173fa588bc9e378f1246f00f', CAST(N'2018-06-27T10:26:00.643' AS DateTime), N'111.111.114-20', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (738, CAST(N'2018-06-27T08:54:40.053' AS DateTime), N'46257c3524a3c81504d6e6735983f214fe8837787dc4d7ae0ba717c56eb3685e987c5a24ededec1650a623065c238addc5bb63979c8c2eb4910fe21a84ece241', CAST(N'2018-06-27T10:24:41.150' AS DateTime), N'111.111.114-21', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (739, CAST(N'2018-06-27T08:54:59.357' AS DateTime), N'42cda0b00824443de4b62435065361444e673b1920505e0fc0355f7dbde9c5427f84598832f93a3ffbb1d035b6b49a6600952de430799ae71785852f8e1bd593', CAST(N'2018-06-27T10:26:31.960' AS DateTime), N'111.111.114-22', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (740, CAST(N'2018-06-27T08:55:11.023' AS DateTime), N'8a5341a963e0a847d773c3649c803c63f6f9cf3f19badd355b5737f46923c0665002ae07e134168ebfebe97594044f9c555bde274d56d003b267835600ce7ccc', CAST(N'2018-06-27T10:27:13.770' AS DateTime), N'111.111.114-23', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (741, CAST(N'2018-06-27T08:55:25.590' AS DateTime), N'2e69e9a91daa09109331d029432aa6e9edc9edc37fda27bae5a56b8e4ec6fbf5d4e0514359167fa67a6eb5c6660627fdf29ec16d6b4428ee64f0b53471d5046b', CAST(N'2018-06-27T10:25:25.590' AS DateTime), N'111.111.114-24', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (742, CAST(N'2018-06-27T08:55:37.660' AS DateTime), N'1a02561aa05d580afc031bd088bb4594ddd261b4f2ef736bc33aaeee8e02d7f4b1da658377db758460e41c4f999f6b16f9f53536a16cf510942636232e4b1862', CAST(N'2018-06-27T10:26:18.380' AS DateTime), N'111.111.114-25', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (743, CAST(N'2018-06-27T08:55:56.817' AS DateTime), N'd830f09d93d10a359ba28da74527ebaa2e9eed89bf686698c842fa4fb4be7214a397fba15304b884b91fbda4cdee24c962f9f189376727cba5634f51c0133e67', CAST(N'2018-06-27T10:25:56.817' AS DateTime), N'111.111.114-26', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (744, CAST(N'2018-06-27T08:56:19.847' AS DateTime), N'69c814a9513331c40ee8341de186be6c896f88aa640fe7a807b188f2e420af2806d476b554afec24715e58694dfe189b2aecac0c8d2123c5c66c6252ab0459d3', CAST(N'2018-06-27T10:27:28.033' AS DateTime), N'111.111.114-27', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (745, CAST(N'2018-06-27T08:56:28.180' AS DateTime), N'9e88f0327d6f4b73ffd08506fd70ed3a9cd3bcf003bedcb3a22c625b2565438aa40762384beb64461f260125e5818fd10815567746e6910f14bd73d39f95f80d', CAST(N'2018-06-27T10:31:20.467' AS DateTime), N'111.111.114-28', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (746, CAST(N'2018-06-27T08:56:43.120' AS DateTime), N'a819013f2736367886bed5ace292fa1e2d30c57b0acfa5c8c347514953c65c1ca8bcf0606530e6d85a7029778741b8c0d52532ff67bde9b5ea51dc0be803b67b', CAST(N'2018-06-27T10:26:44.520' AS DateTime), N'111.111.114-29', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (747, CAST(N'2018-06-27T08:56:52.370' AS DateTime), N'0deaabadbe691db5b4fd246570be5ebd3356434bf767e5b78006952a8d36cc721f50063e7a6ec3bab033706fb57e2b35c9253e86fb5270e0a9645c8fb762b5b8', CAST(N'2018-06-27T10:28:30.883' AS DateTime), N'111.111.114-30', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (748, CAST(N'2018-06-27T08:57:06.527' AS DateTime), N'1cd7101cbe3dda94069d951fd1a8bddfcb07be4f56a6c1de2df8ca91979b7144e9cf7495ab9223c829df1114effd1a5bb39e895802a28ab8f460395159a9e6be', CAST(N'2018-06-27T10:27:06.527' AS DateTime), N'111.111.114-31', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (749, CAST(N'2018-06-27T08:57:34.883' AS DateTime), N'f3358bb4a8c97232b09a4b46c3918b50d2141385a1b365c38d5e9bdba987e8edee125c86d5d5e2b9be0e77aff2c43220db1af03b02503b7183ebecc49085db21', CAST(N'2018-06-27T11:31:04.363' AS DateTime), N'111.111.114-32', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (750, CAST(N'2018-06-27T08:57:36.677' AS DateTime), N'868f1bd962d17f7542b7c714e5909765782b42825e4b9df2a88eda1b9e1041034087193d1607120a151b955fd730e75fbafdddf1a4c295de102919d71f668751', CAST(N'2018-06-27T10:28:10.797' AS DateTime), N'111.111.114-33', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (751, CAST(N'2018-06-27T08:59:47.017' AS DateTime), N'014536e7b8fd5398da76b891fcc3aef0540b3bb9643cd524e8e06e32e98d7bf84b0e816ac22988251c530f7cb1a6c5e2bafac110bdaa7439b285d0793f66479e', CAST(N'2018-06-27T10:31:44.703' AS DateTime), N'111.111.114-34', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (752, CAST(N'2018-06-27T09:00:29.847' AS DateTime), N'102ffb603462efcf23867c7604aaf4b82dd3bbd8bd1f39734ee0d1265b4ec731d7583c64ed5e0cf5401d305f6e079063a88bcb7eeccaabe4382f4a7cda544da2', CAST(N'2018-06-27T10:30:29.847' AS DateTime), N'111.111.114-35', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (753, CAST(N'2018-06-27T09:00:49.090' AS DateTime), N'599ee4f44b75e0417992ad618856c90d9602639412a463a1164808d314b066eb5189e7dbab9640b03eb0b348e8fca3be670e527e3e9c455e1bc1f614b87c5438', CAST(N'2018-06-27T10:35:37.727' AS DateTime), N'111.111.114-36', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (754, CAST(N'2018-06-27T09:02:21.220' AS DateTime), N'64c4421c74c504146ca9ee6d5d10b0e673cd90ebf20910f1b703d4ec4129d30ecbc04805a6b57bf0d7f121f27f622cacb6dcca6485582249969121f33fd860fb', CAST(N'2018-06-27T10:32:23.850' AS DateTime), N'111.111.114-37', 2, N'86B1C894-C326-E811-80C0-005056955165', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (755, CAST(N'2018-06-27T09:02:24.753' AS DateTime), N'53ff6b733e121c63d54ca9c2dd4fbd4638f6e599cb3ec6580f86347d00fa4fbe9e6f10c61285b0ce83a4f56b94143a443b3ac4b0b7d3dc294ba44aa05dc45525', CAST(N'2018-06-27T10:34:09.583' AS DateTime), N'111.111.114-38', 2, N'45EB21A7-941C-E811-80C2-00505695E94A', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (756, CAST(N'2018-06-27T09:02:29.350' AS DateTime), N'3847ead610f81cfe97a43ad71ee05a79cde38ef72094df28b2c6171316c07b3c6c8288622b3bda95e95ec4fba13c5cd3f657f99e2eab58b81bf338992533e282', CAST(N'2018-06-27T10:33:26.943' AS DateTime), N'111.111.114-39', 2, N'0210AE60-8C1B-E711-941D-001DD8200001', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (757, CAST(N'2018-06-27T09:02:32.270' AS DateTime), N'5a8e1c6991c40d133f132dfd91fbd91521c9f7bb44da332dc7035dfa6d43ced264b8b084b0443504da28ec5108bde4171e640a426f73e55a267cbe0802dffd35', CAST(N'2018-06-27T10:32:33.813' AS DateTime), N'111.111.114-40', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (758, CAST(N'2018-06-27T09:02:45.260' AS DateTime), N'a70a94cd0cf553d8eead50eecc97b5c9467b38f3c4c2f6e2bc483f8c8ffd3c998f98c0486ed1ba08ac3f8a7d8e62dd63203c3dc1872bc02313d7d0f157b47803', CAST(N'2018-06-27T10:35:53.510' AS DateTime), N'111.111.114-41', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (759, CAST(N'2018-06-27T09:02:52.687' AS DateTime), N'8c97d64a0e29ebee686739c6f56bd52ad7dd5b09723266c06f805ceae908d62cf8ae23268286894f5a7ca50b0ead32335f5367676bd375b4b0c018007476e15f', CAST(N'2018-06-27T10:33:02.690' AS DateTime), N'111.111.114-42', 2, N'FC870FE2-941C-E811-80C2-00505695E94A', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (760, CAST(N'2018-06-27T09:03:12.570' AS DateTime), N'977c1ccdb333ba59aeeb4b095a6879458c622ffd145b4581b2760d67ef7dc9d1061966fa63919d3a439cdaa0f88addadcf08ca164a5a9755cfa61ae63555716e', CAST(N'2018-06-27T10:35:00.943' AS DateTime), N'111.111.114-43', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (761, CAST(N'2018-06-27T09:03:53.257' AS DateTime), N'c5fb310bf570e05697e2582f3e0950e7f2d23069a4e907a5cfddc2a35001419162089e750bfe323d7afc86e55a78e2ad98210d9e6d9c4073e0ac755a8b8b9f86', CAST(N'2018-06-27T10:34:01.767' AS DateTime), N'111.111.114-44', 2, N'FC870FE2-941C-E811-80C2-00505695E94A', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (762, CAST(N'2018-06-27T09:03:56.640' AS DateTime), N'b952abc0446e35c958058609b17f484cfbe73c68ca60b22df1eb368b785e7fceefb42929d0e5785d0bb157c70bf14f69d14e7d1d81cb776bb5277e0c27a4ef21', CAST(N'2018-06-27T10:33:56.640' AS DateTime), N'111.111.114-45', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (763, CAST(N'2018-06-27T09:04:03.037' AS DateTime), N'2af24334ccdb770d4380f601138d2aa119a05b04d751df27e6fdb50ba613dfda88a91518fd490eed0c99fde542b4ebfb20aa2b8cfb140526bcd3e96e2eb87fe4', CAST(N'2018-06-27T10:34:03.143' AS DateTime), N'111.111.114-46', 2, N'0210AE60-8C1B-E711-941D-001DD8200001', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (764, CAST(N'2018-06-27T09:04:15.277' AS DateTime), N'e18deb17b752d608ade785882bb23bcd89a04a1ab13da7d858ec8cdd5e3c0a33dfeede4f6665bd660275298a6843699b0a8b0f725eb5791ed7e1936993affe20', CAST(N'2018-06-27T10:34:16.017' AS DateTime), N'111.111.114-47', 2, N'0210AE60-8C1B-E711-941D-001DD8200001', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (765, CAST(N'2018-06-27T09:04:20.923' AS DateTime), N'acde8c876f8120c8527d9c66534caeb26233c0e06a0b61abc8c4e3cde9d48bd4bfdfc35de1d5bcf1d1e634b19481c81969f4a905d1f12d1d0af1a254e42750dd', CAST(N'2018-06-27T10:34:58.200' AS DateTime), N'111.111.114-48', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (766, CAST(N'2018-06-27T09:04:39.033' AS DateTime), N'475257346a9fb04cbab446508ebc7b0823e9a0ccda0f8f25b55d68358563c93aa1959ddb9e12693fcff822a7a1da5a2bc1479e101718c1ec445b4f90597f7e64', CAST(N'2018-06-27T10:34:52.200' AS DateTime), N'111.111.114-49', 2, N'0210AE60-8C1B-E711-941D-001DD8200001', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (767, CAST(N'2018-06-27T09:04:45.763' AS DateTime), N'603577f984dc6fcc87b2f978f0a7cab1319f7396325aa47ea7c0521748755574b2905ab66801fc38973a79b92e98285fa04ff24a6eb90c6e4692fcfa5a6c2328', CAST(N'2018-06-27T10:39:06.187' AS DateTime), N'111.111.114-50', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (768, CAST(N'2018-06-27T09:04:52.497' AS DateTime), N'0b970cf29e7ca41e1beb6c9c4b3cb216235594d62079c7a722caf583923183361692fef03f08aaee111ce387c1dfc5b69a769142bf29d146c7a7370ffb40c066', CAST(N'2018-06-27T10:39:46.637' AS DateTime), N'111.111.114-51', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (769, CAST(N'2018-06-27T09:04:55.220' AS DateTime), N'720c9cbb0e500f6f2b282b105ba2ec848cbbaea6ff4ddc1081e49d4284644a28275c4e448efe48cede00e40cf5970ce4b597b634e0ac33a33d50c4473d7a9f6f', CAST(N'2018-06-27T10:37:09.813' AS DateTime), N'111.111.114-52', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (770, CAST(N'2018-06-27T09:05:02.370' AS DateTime), N'496929657859402500067af0a0a99be23f1a061e09728db2ede1238676e6f09489f94efafa8623148a56fd089f6dee16e392bbef7d36c58ac4511230f032ac63', CAST(N'2018-06-27T10:35:02.370' AS DateTime), N'111.111.114-53', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (771, CAST(N'2018-06-27T09:05:11.930' AS DateTime), N'8be88de04088d0a4670972d48643dab9404f1c3f7a920478d6388e423ca01bfeb0534b25f4b860284ff63f40af6916ff0121266c7c90e954ca8bf93a1d0ae4c3', CAST(N'2018-06-27T10:35:13.287' AS DateTime), N'111.111.114-54', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (772, CAST(N'2018-06-27T09:05:13.000' AS DateTime), N'5dafa40f5fc1d939b2ff8f36da390da9718e1738b443344b42c43b4e7eadb1cb8d580df31ffb2bc587fa3ed82b984b5695da5549b18f0e3912cf904c48b0c5ae', CAST(N'2018-06-27T10:35:14.460' AS DateTime), N'111.111.114-55', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (773, CAST(N'2018-06-27T09:05:17.943' AS DateTime), N'a11ae5664b6f0af5e439a0cbfc720124394b018213677906553ce3170c4e6bec9a0df17234dcc0fb3787910cca399563888ea101fd13dcf8e808e5cfc884361f', CAST(N'2018-06-27T10:35:18.680' AS DateTime), N'111.111.114-56', 2, N'45EB21A7-941C-E811-80C2-00505695E94A', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (774, CAST(N'2018-06-27T09:05:22.930' AS DateTime), N'd24a817463e06deff7bc32645560aafadd8fc8bd53ea99ec44d59002bf36763022040290cb366caf8c99baf10398c9d804ede8fa29051136b36590a590ef615f', CAST(N'2018-06-27T10:38:59.533' AS DateTime), N'111.111.114-57', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (775, CAST(N'2018-06-27T09:05:53.543' AS DateTime), N'4ed6a87ce0cc9e0b903b4ef9d032cf319bf6b7f84a3e85f54d00f51d5ba8c5deb8276000ed742426a72313a421ac3deef89b011425afbf637850c5dbfd28b2a5', CAST(N'2018-06-27T10:35:53.543' AS DateTime), N'111.111.114-58', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (776, CAST(N'2018-06-27T09:06:21.483' AS DateTime), N'0f4b2f4ede31ac5d1215854c22cf6ebc2a527692d59cc0f27b9ab68493c11a110edb112812181b6b7718be07e64c2b626b461181a305650f85057d3c2f0dfa2e', CAST(N'2018-06-27T10:36:28.707' AS DateTime), N'111.111.114-59', 2, N'86B1C894-C326-E811-80C0-005056955165', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (777, CAST(N'2018-06-27T09:06:32.813' AS DateTime), N'b0e45007e2a4203deee3aae2a3b961fc747d1e2fd7ea5c1d40fae9c1ceeb1138417a53ce75cabea62939bf100e9d87ab3c9bf09b4be701d59842cd87524fe3bc', CAST(N'2018-06-27T10:36:32.813' AS DateTime), N'111.111.114-60', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (778, CAST(N'2018-06-27T09:06:39.083' AS DateTime), N'201bcacce37d3a7def6f7e39bdc5d07fbca30481870bcfc4cbfc970d45b14f4d70a885cad19aac136e49912ace08c253e4f6180c7895b5c9a4cc4f8c8e41e3f6', CAST(N'2018-06-27T10:36:39.083' AS DateTime), N'111.111.114-61', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (779, CAST(N'2018-06-27T09:06:42.890' AS DateTime), N'5d6fd3e71ed7dbc104e0974714d864aeaf7caa7079efd57f9e5297a07882aee98269f3cec994d4446921cd6a0d81cd75cb5283f26074c45e3e2b61a56cc09d87', CAST(N'2018-06-27T10:41:22.890' AS DateTime), N'111.111.114-62', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (780, CAST(N'2018-06-27T09:06:43.850' AS DateTime), N'b9414884f3560eb0dad7f64ce997e1401a36e29408f707e582ff9153ab325c4b5f55cf3c7fc78cf9b4c3573b390e38eb7498380e25f1ae380067b9038154c803', CAST(N'2018-06-27T10:36:43.850' AS DateTime), N'111.111.114-63', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (781, CAST(N'2018-06-27T09:07:02.300' AS DateTime), N'a27600483d8fd93bf1c371d8b3234b3ee98a04291088ddb15df6261e9b8133172afbbe9d7ba718896951bbd7feffadf4eb797502021ca6670c9d3fd8b6e55d5b', CAST(N'2018-06-27T10:37:48.153' AS DateTime), N'111.111.114-64', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (782, CAST(N'2018-06-27T09:07:16.300' AS DateTime), N'0cc8dec311d178344e89cc176aad087d9e5a19c6958c5049312639b9dbeaf159127d9100adbabf9be76578a26bab76e4334e23c231d9758ad3accd3edd0c2c72', CAST(N'2018-06-27T10:40:10.100' AS DateTime), N'111.111.114-65', 2, N'5AF05FF8-091B-E711-941D-001DD8200001', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (783, CAST(N'2018-06-27T09:07:28.460' AS DateTime), N'cdb04a708e406aa1c2d85bf5185f2927cb5f645fa8bf4a3e47d1084d02d049386dc1d64f0bf2cfd24872d82caf3ab1c1007b02774b852d674942cf1e6b35fc43', CAST(N'2018-06-27T10:38:37.420' AS DateTime), N'111.111.114-66', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (784, CAST(N'2018-06-27T09:07:55.860' AS DateTime), N'71cb3aba050ecd35cbc42288f302df75e7003eb4195306628b61f713c24f7f67745f99ca5ad02e7da398fb138f5fbd5d5aaa26bf94344225726618ff908bad6b', CAST(N'2018-06-27T10:37:55.860' AS DateTime), N'111.111.114-67', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (785, CAST(N'2018-06-27T09:07:59.613' AS DateTime), N'1a5f6091857d3bdea890cc9090c21a4793e7a012d7b502acc9e441daab94d6f3496133415b8d3a8cdc79e4b5a489b882dc09f7eba5ec5b6c195fd5b0b3068399', CAST(N'2018-06-27T10:37:59.613' AS DateTime), N'111.111.114-68', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (786, CAST(N'2018-06-27T09:08:04.727' AS DateTime), N'11acd8ad5cc327f66bd89d897b9c14289be0ce3ef9b798703dcd60dbc7d1f149b1962fa0a0193773f4272963a86fd94a7d3cb987da9f1cbb6a7aded7be14ad74', CAST(N'2018-06-27T10:46:37.860' AS DateTime), N'111.111.114-69', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (787, CAST(N'2018-06-27T09:08:12.567' AS DateTime), N'b08e6d37c00a6deb00748f019a50393981a435a1bdc16808440b53e9fccb6542d43d9673b333242f8be86e1676a33b334b10ca12a29a7a947ca07124c74e3f06', CAST(N'2018-06-27T10:38:12.567' AS DateTime), N'111.111.114-70', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (788, CAST(N'2018-06-27T09:08:13.420' AS DateTime), N'a73c03804a28eaa0a791a48ff75a50ee6f2476cd586ea8f56eb297c8ef5f1dbb0696896400059413d1db87120e045f17ff002b1f845186cc7d4670e1ddeb0ae3', CAST(N'2018-06-27T10:38:13.420' AS DateTime), N'111.111.114-71', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (789, CAST(N'2018-06-27T09:08:27.900' AS DateTime), N'451f92e796e3c347766bdb70411648238aab37415ab631063afe5df1cf9c2c3e1c9af547ccb6066f81b5397c926e009414d3889357972097ba94b78752211712', CAST(N'2018-06-27T10:40:31.607' AS DateTime), N'111.111.114-72', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (790, CAST(N'2018-06-27T09:08:46.563' AS DateTime), N'a97d238407c0496773c3e307bfca5a801785c764b8ccce40cc1280c867bd0714da85b6de92cebce228877721d156c266fec5c3729da2e72d7a34e7722119a1b6', CAST(N'2018-06-27T10:39:22.293' AS DateTime), N'111.111.114-73', 2, N'9E4720CC-E4EA-E511-9409-005056200001', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (791, CAST(N'2018-06-27T09:08:58.987' AS DateTime), N'21054ae60735443d3ac530c75bc123bb53160aae5b4c18e21862787fed0b4e2228cfbaaf98a12a92e7f0688a18dcfa988647f181fe81cf49cf8ba3419c3effbf', CAST(N'2018-06-27T10:38:58.987' AS DateTime), N'111.111.114-74', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (792, CAST(N'2018-06-27T09:09:12.833' AS DateTime), N'40dc8af6cc1f30ea76366993d897774a826a623e3937f23503286632e35637fc6463516b39023eff712bf7a6b6489b5051e70212e4afe03fc8107f44889dcf4e', CAST(N'2018-06-27T10:39:14.210' AS DateTime), N'111.111.114-75', 2, N'86B1C894-C326-E811-80C0-005056955165', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (793, CAST(N'2018-06-27T09:09:26.843' AS DateTime), N'0af9fd13355acdfa9d3b0eb747d479411f361037ad3bb3edb130ec873384300d0948426cea21b31994795e0ad203faaabdc4d1011bf86c5b0ae0d54a75451756', CAST(N'2018-06-27T10:39:28.317' AS DateTime), N'111.111.114-76', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (794, CAST(N'2018-06-27T09:09:32.167' AS DateTime), N'339497f2b564c09ac180aff204953d5b69c65796d063690d2f3f6a924edb5293d0ba0931181d3f57d7015980497babaa12008c1df085d00f70a5a2c643d05795', CAST(N'2018-06-27T10:39:34.080' AS DateTime), N'111.111.114-77', 2, N'FEF5D6DD-12DC-E711-80C0-005056955165', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (795, CAST(N'2018-06-27T09:09:33.233' AS DateTime), N'956009169744e48ac02b664dd2f53c933564f6e79e00275c909c5c8458e776b6c7e3f3aeb0afc28cf5312aafb782c0cd9c462ceb94bb9fb31afa1aa829ceac48', CAST(N'2018-06-27T10:40:37.953' AS DateTime), N'111.111.114-78', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (796, CAST(N'2018-06-27T09:09:45.250' AS DateTime), N'27b7259cee25f362f4419eee12fddde11d791160cff641f9f1e95e4d73f96254903ccf368f181d1fabdb4b1de11ec6b53b3da577eb7d57ec02bf24bcd657e5f7', CAST(N'2018-06-27T10:39:45.250' AS DateTime), N'111.111.114-79', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (797, CAST(N'2018-06-27T09:10:06.600' AS DateTime), N'1286dab28a2e5b5fee5c697d9a52f165aff5aa89dadca88f06730c530d3775689248fcedd7e120f663d2889b22c8996c315f99da1a5e2488cce765ce412c55aa', CAST(N'2018-06-27T10:42:20.323' AS DateTime), N'111.111.114-80', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (798, CAST(N'2018-06-27T09:10:36.940' AS DateTime), N'58c042e1b6b594b7d0415337f5898db37c0786ecab2be26ae2bc0e270ccbc9931b4683219d3db9d9aa38b2bab047e9f9a4faae15088ffc7f0512afc643ffea1c', CAST(N'2018-06-27T10:44:21.870' AS DateTime), N'111.111.114-81', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (799, CAST(N'2018-06-27T09:10:45.237' AS DateTime), N'bdce50d2f04c2bc7913c1c93dd577a269e9ccefce5d66d5902d560c9f8713a5a7d6c1d88c725b7c395e6949c0775f6dceaa36a0e49a819ceced3833967fbd625', CAST(N'2018-06-27T10:41:42.903' AS DateTime), N'111.111.114-82', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (800, CAST(N'2018-06-27T09:10:53.120' AS DateTime), N'e5a2dda70abdfda9bb5808768c0b9c4bd1b0f61512b70e493c321b6ecedb4732047975153ae7e76235b3e059ba73a885e183416973f6b1abacae3818f744dbc6', CAST(N'2018-06-27T10:44:05.890' AS DateTime), N'111.111.114-83', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (801, CAST(N'2018-06-27T09:11:17.460' AS DateTime), N'c691b5c7fcf84979d3602f4d4a1a0ef5f686d1eec8d19583547d68f87c07693ccd1a4cfd0b3f154ba0ca11210105824f20bd82b494f4c69ad8dbe3944b9a9e2d', CAST(N'2018-06-27T10:46:22.287' AS DateTime), N'111.111.114-84', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (802, CAST(N'2018-06-27T09:11:37.363' AS DateTime), N'9d039fadfc51d7be28c07fb2cb74f4f46796509d3cf1df956257050746d447610d64a3aaed73d604e97bb62fd72fa5831aac447983bb60752030274b631bbaa5', CAST(N'2018-06-27T10:41:38.893' AS DateTime), N'111.111.114-85', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (803, CAST(N'2018-06-27T09:11:44.110' AS DateTime), N'aff86d84a47974a028274fefb9d61ab07babd673f2afa15a95a94dfbc69f31ddc526d7c993c367fca64b5e436f2af3a0f516a4dfa001338e56afd6c5c632dbf4', CAST(N'2018-06-27T10:41:44.110' AS DateTime), N'111.111.114-86', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (804, CAST(N'2018-06-27T09:11:57.627' AS DateTime), N'0dfefc17c69a8e1c016049cf0f67a8efe61b4729e9110f54f6c313e6cd5a1fc7afd24fd08f53f37d952f198389fa62568a36e05051419496b2cf90ea7831cc45', CAST(N'2018-06-27T10:59:07.213' AS DateTime), N'111.111.114-87', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (805, CAST(N'2018-06-27T09:11:58.757' AS DateTime), N'9971db993764e55f7ea57ad22a7af3d9fdcd113a186d871d6ecb1edbac8268d8e8e7310f5abc02e61cf3f3259ce4e699cba375969870c3277d0ceab8a805cf3d', CAST(N'2018-06-27T10:42:00.007' AS DateTime), N'111.111.114-88', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (806, CAST(N'2018-06-27T09:12:14.047' AS DateTime), N'0c6f1bb2e1603b8ce009b8099a9a6b4653b85f5898494e6703bf137f28a1ff803723684afe437cbdbfb7e1031503ccb57bcaaa865086062e2a65e3b1a01a718c', CAST(N'2018-06-27T10:44:32.863' AS DateTime), N'111.111.114-89', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (807, CAST(N'2018-06-27T09:12:23.957' AS DateTime), N'f65e742044c7bd24cd485275d3ee43672924ffa6b6ed9b4eec7ee8b2b8dbdd692b19cdf9929025e91e6ca7f1a22837428cbcaf20ffacc473356d42e00c22f7da', CAST(N'2018-06-27T10:47:16.110' AS DateTime), N'111.111.114-90', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (808, CAST(N'2018-06-27T09:12:33.913' AS DateTime), N'16211f5702eb81591d0b4322440d833698e12728b4b0e2203c27baae4e0d9177fdd6bc8f2916e9e9ae2bc8f8d80d97e33a999ff411dbf98ee9a4f20aa12d786e', CAST(N'2018-06-27T10:42:37.187' AS DateTime), N'111.111.114-91', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (809, CAST(N'2018-06-27T09:12:39.240' AS DateTime), N'311639fc787649552ac2f7d25df7d3ae4f861bc37b73c8b958316993fd15622d2e6acc8114dbc88f81bdb7d8a547c685cdb190d3992da7e577308fb6e215f383', CAST(N'2018-06-27T10:42:39.240' AS DateTime), N'111.111.114-92', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (810, CAST(N'2018-06-27T09:13:12.690' AS DateTime), N'd75d38350c026f65e42734dfbcd5e9496f679530678aae3e05577a571749e98494c5e6ce1e8914b21246f6ca1d5ea818086bf48c542c4fd85f20605423bad99a', CAST(N'2018-06-27T10:43:13.880' AS DateTime), N'111.111.114-93', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (811, CAST(N'2018-06-27T09:13:15.470' AS DateTime), N'57b4823f255b669c045bd0b9a8050c86835890d4b0e4f4c4f3bf38096f5756a18141ba2eafb0d85bec5bb82be0fcff23fa8ab94bfa111b1e4bbb4b0863781db2', CAST(N'2018-06-27T10:47:03.250' AS DateTime), N'111.111.114-94', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (812, CAST(N'2018-06-27T09:13:39.037' AS DateTime), N'bc65a4fbb59e213272acc37885cbf8a968f0342feb98eeefe4e00e44f225beedd398bf333cafdd0995230072992d30a11930440394d9d15f90acac188da03b54', CAST(N'2018-06-27T10:43:40.100' AS DateTime), N'111.111.114-95', 2, N'30ED4F63-7972-E511-9406-001DD8200001', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (813, CAST(N'2018-06-27T09:14:15.590' AS DateTime), N'55872bccca4b3a5285d3a9ea608bd3e995300bd6e7cb2dafacda8c4918d52765f57d34238bf4dfdf96232ad5eb5f3d88aa3f9b70a663621cae02238f6c8b907a', CAST(N'2018-06-27T10:44:17.697' AS DateTime), N'111.111.114-96', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (814, CAST(N'2018-06-27T09:14:33.613' AS DateTime), N'baa758343dee2538788045520623339abeee97528652d491b38a58614486d071a9418b1a46c863a574f163f4ba463ca157f30000362cf899842896f0e5f9fec4', CAST(N'2018-06-27T10:49:53.923' AS DateTime), N'111.111.114-97', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (815, CAST(N'2018-06-27T09:14:52.383' AS DateTime), N'593e5b195404a27bb206f5ed9bcb602639536c868952fb4eeb6d5813b69ece72e4d7ef12b46b74505bb1c739d804c4f42e6f689eca865f6172083f6ea9f600bc', CAST(N'2018-06-27T10:44:54.660' AS DateTime), N'111.111.114-98', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (816, CAST(N'2018-06-27T09:15:40.043' AS DateTime), N'5dbc5952f8877d3f3fcf27ada9ac6130de06f88764021996f2bacbe01f933641298d32f2a1e4108cc9f27a916216d6781f0d71e6320a0208b4666756957e039c', CAST(N'2018-06-27T10:45:42.067' AS DateTime), N'111.111.114-99', 2, N'91B28C72-3F76-E811-80C0-005056955165', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (817, CAST(N'2018-06-27T09:15:52.873' AS DateTime), N'd04a4bbf3134bdc7f4b9d4bf7d6bad2ae77371600e86c8fe64f80e6a2850503509328ecedcfb38704c81227f558eec3d91cd5a4d75e65c8d78bb7647a08cecd5', CAST(N'2018-06-27T10:55:13.437' AS DateTime), N'111.111.115-01', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (818, CAST(N'2018-06-27T09:15:59.893' AS DateTime), N'129ce6adf34407f8b28bf43bf74913d8adc603d0f25822f426185bdd34d2e42a3beed4fd5c96c0ef2f9237b4b18c38ceef76290d987655fbaeedda9ae2425f08', CAST(N'2018-06-27T10:47:53.780' AS DateTime), N'111.111.115-02', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (819, CAST(N'2018-06-27T09:16:50.227' AS DateTime), N'731ff16e36ef440fe6f67cb0440377d24203bee9abbbc24b37d88325d00fdc217523efa5f5a148dfd609eadbc5b7352f1b68dd65b07079917f2cc6e263badb38', CAST(N'2018-06-27T10:54:46.367' AS DateTime), N'111.111.115-03', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (820, CAST(N'2018-06-27T09:17:55.153' AS DateTime), N'c0f507a38825011cfde5bc81157153bd48627121a66fe42032f30c0aa2b8dc3feec9c0df00f5598ced5b9420a7d3616759dc524a14dc5c544d70e61347604d38', CAST(N'2018-06-27T10:50:16.677' AS DateTime), N'111.111.115-04', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (821, CAST(N'2018-06-27T09:18:21.190' AS DateTime), N'6835ba68f3397fe26e92eab88715d1dbc0f119670db5f5c8f7942c939c7cc7a886b75d09f64a91b39bc4a06b1d2f85dba58cc9f59bc740e8cef4a09ec785b1a5', CAST(N'2018-06-27T10:48:22.483' AS DateTime), N'111.111.115-05', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (822, CAST(N'2018-06-27T09:19:57.717' AS DateTime), N'2c507a6dc2e7360c758a6e228c15a80a0aa1cc98ceb767a55db0534f341b0bb6548b150e108f94d47e7f92184195ec4c6d27a9f499192af4b125bc6c9db778b2', CAST(N'2018-06-27T10:49:58.770' AS DateTime), N'111.111.115-06', 2, N'2BFFED18-4329-E011-A2DB-0026B97E0079', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (823, CAST(N'2018-06-27T09:20:37.233' AS DateTime), N'b84ed2f7635c21b354256cd9dd2cd85bc4d9680761a2e8de9bfb55b251a0d65f64a470c121512ae421f1b599193e300db1b95441d0e3eb2d01e31299ed705c68', CAST(N'2018-06-27T10:50:56.770' AS DateTime), N'111.111.115-07', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (824, CAST(N'2018-06-27T09:20:39.687' AS DateTime), N'1d6483fa3c44be7a1cef544182e9efe08bc87e331bc38bf0ba5ba15c531afa4fcd29e1f7719e72f1b4c0d849d3522e8884d675e760d9271650624c8592b4b6e2', CAST(N'2018-06-27T10:50:41.260' AS DateTime), N'111.111.115-08', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (825, CAST(N'2018-06-27T09:21:01.763' AS DateTime), N'a778d2639a19e83b44ce7650742afef68259d9cc98e899e02f31590fa089f3f2280f8220f0472bf0dddf3945a7a482fa444214fa3651e60d3de9fe1c40570321', CAST(N'2018-06-27T10:51:03.120' AS DateTime), N'111.111.115-09', 2, N'91B28C72-3F76-E811-80C0-005056955165', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (826, CAST(N'2018-06-27T09:21:15.750' AS DateTime), N'2aefe32f0433e94749ee00b4b9a07dc53eb61d296c514a1198228ad5128b8947cd9d648367aab2717be1530148769e9971b962e88847712350910c6adde95346', CAST(N'2018-06-27T10:51:17.360' AS DateTime), N'111.111.115-10', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (827, CAST(N'2018-06-27T09:21:48.830' AS DateTime), N'c1cab9630979d9dd3fe8f9b70f01c21f4bdfe5a58b9d290b35e0ca29af98618a8fafceeab2f72b0b2d74c6a9fe381090d6e7b5464bcbb215b0929611720be51e', CAST(N'2018-06-27T10:53:05.230' AS DateTime), N'111.111.115-11', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (828, CAST(N'2018-06-27T09:21:58.397' AS DateTime), N'0ac6b8c90198e49fccb4c9bdeae16de507503c4916a18f292755953af47c35e2c2145690dce5abc26c0060d0baa78e2987e66e7686c04d0da05db19aa06802b4', CAST(N'2018-06-27T10:53:53.867' AS DateTime), N'111.111.115-12', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (829, CAST(N'2018-06-27T09:22:15.243' AS DateTime), N'bf43e236d8c9154f1527204dc534af074eada3ae3779f1f4ca1a034461337d5f9d2a2d22b380bb91fff897feaff63ea0c1e87a66505bbd11ad397380e063c72b', CAST(N'2018-06-27T10:55:02.567' AS DateTime), N'111.111.115-13', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (830, CAST(N'2018-06-27T09:22:23.457' AS DateTime), N'a0701bc5662f3b51122f77178e7c614c670046c9b51ea8e24824752d7db001ef03cfcbee3c903ce862d720c4548ee32d8521570a5a5687e7d7559c114e2ba677', CAST(N'2018-06-27T10:52:25.257' AS DateTime), N'111.111.115-14', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (831, CAST(N'2018-06-27T09:22:23.697' AS DateTime), N'4d9226049c181a04a274731c5361d0b94b6876e6bf802720449036e6d8d1bd5f5c893ebf39f27ab235c38c2e519ef7ef29371cf2920aba9f93bd61e7ca68eda1', CAST(N'2018-06-27T10:52:57.880' AS DateTime), N'111.111.115-15', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (832, CAST(N'2018-06-27T09:22:30.420' AS DateTime), N'08eb1f612e96ee04b2c524ce1e4b96b2f39196e56e05c84a127819bcb588032600f1a7e9585bece40ac370db346156faeb8aaaf32cb7da83f67e3666c21219cf', CAST(N'2018-06-27T10:52:31.920' AS DateTime), N'111.111.115-16', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (833, CAST(N'2018-06-27T09:22:36.303' AS DateTime), N'7f85c31b37026e921a8c42e4c4a699993f3198d1ae55544c656437f02fa19650715b4bc26ea905a6c3ab1c3fa5d068258a638c32fdf7b59d305bb959d89ea2b2', CAST(N'2018-06-27T10:52:36.303' AS DateTime), N'111.111.115-17', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (834, CAST(N'2018-06-27T09:22:55.617' AS DateTime), N'94be029ce7786668ad6027e85c46af5c051d205514a3bde4893038ba5c6f5093126685f88805a9fb4797aca63b44122b8219d4fd369eaa46266f868d6f40ec9e', CAST(N'2018-06-27T10:52:55.617' AS DateTime), N'111.111.115-18', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (835, CAST(N'2018-06-27T09:23:08.387' AS DateTime), N'0e7a8e2e5f8ab24417482106209f8788378e6b64cc19b4ee353c01829a0df0fb51dd8a9c959dbf0696ce1b3520679f5abcda1d93f06e6f3690749ef8f6381019', CAST(N'2018-06-27T10:53:09.797' AS DateTime), N'111.111.115-19', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (836, CAST(N'2018-06-27T09:23:39.563' AS DateTime), N'862289e88536e7e9aa2010b5589f6fc52fbdb355c290f15e22b0d0988089c3a47e2dc8644890e8ce803d482f2d48de83da6e8de9675e25f639cef4899e7489d5', CAST(N'2018-06-27T10:53:41.147' AS DateTime), N'111.111.115-20', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (837, CAST(N'2018-06-27T09:24:20.897' AS DateTime), N'd84f01c7aeb0443fc8ab90d1c5ed7362c7f9cf11d45ba6d18916b0d52ea40fb90d95124791904c06a50fa08141d4172fc375348f52e7285621bb7bdefe592940', CAST(N'2018-06-27T10:54:20.897' AS DateTime), N'111.111.115-21', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (838, CAST(N'2018-06-27T09:24:26.357' AS DateTime), N'41a0db54ba662d459b0b9d1fb7247c78acd18fafbcfd23243c4e44e348cd1854bc94f9c60055dde46699f8e07e5acb671db3e77747ed7c14724262b420059740', CAST(N'2018-06-27T10:54:27.277' AS DateTime), N'111.111.115-22', 2, N'9E4720CC-E4EA-E511-9409-005056200001', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (839, CAST(N'2018-06-27T09:24:41.190' AS DateTime), N'0fedd48e0b5ab3703a8ab96d3de9ca9d50b883f4383c8cba1bf404bc2969808c44f360c9a6035a0be8f1ef49c6916aa10b077f04c2bc87b9e8561a587cd6afd4', CAST(N'2018-06-27T11:03:58.693' AS DateTime), N'111.111.115-23', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (840, CAST(N'2018-06-27T09:24:41.310' AS DateTime), N'3849fc752dd8a77999780ef6d912b3ded7343b4cc0e641d503efd5538b4fb0940f34f8d987e62157d5b2b07308721927b69f6488da36b3e1221e5004f8b5d89a', CAST(N'2018-06-27T10:54:42.987' AS DateTime), N'111.111.115-24', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (841, CAST(N'2018-06-27T09:25:06.217' AS DateTime), N'ef88d912a59fb965093adadab5ba0c8d0d0f470dfff878c5ea721b289f7eec8475c48f733fb11dfaccb90cd94ead6f2dc3f307d0b11ca303a035326118b079c8', CAST(N'2018-06-27T10:55:30.457' AS DateTime), N'111.111.115-25', 2, N'5AF05FF8-091B-E711-941D-001DD8200001', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (842, CAST(N'2018-06-27T09:25:09.447' AS DateTime), N'7cb9135fdd0f00ccfaebf495287d0d706221f2d67192360131132baa91ecabe8da35eb0258e25072c26d57ac76fd4a120de27364dd8b85316baa15fd23fa9431', CAST(N'2018-06-27T10:59:55.617' AS DateTime), N'111.111.115-26', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (843, CAST(N'2018-06-27T09:25:11.573' AS DateTime), N'31651b6ebb5879972428ddec0909521b77091705dca861dd409b4c0099f55a51f899bd92aadb28f0c123348474ed5d96256d790cecc97d7c623e58b1c5eb0367', CAST(N'2018-06-27T10:55:13.677' AS DateTime), N'111.111.115-27', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (844, CAST(N'2018-06-27T09:25:12.207' AS DateTime), N'ed310733f1a6e8c01d36d2df04d03dc8ee831d9501e37ada4a0e562340b3ef225d1757053051234ca2f106c78f4d30a12722b8ba326620bda5f5057b8f0e7b06', CAST(N'2018-06-27T11:02:45.973' AS DateTime), N'111.111.115-28', 2, N'3D630CC5-A001-E611-940D-005056200001', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (845, CAST(N'2018-06-27T09:25:28.310' AS DateTime), N'0ce0922a8694e8c23c9953a59e254a1882025c41eb04399d6a6ead805e0bdbc600895a23bb7b72ae64f63f70b8519bdc2c40240b094a5145f80cb8b262e6d19f', CAST(N'2018-06-27T10:55:30.330' AS DateTime), N'111.111.115-29', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (846, CAST(N'2018-06-27T09:26:24.123' AS DateTime), N'ef5c5390a9a26afa5509e2ca386cb07731bec8dfa23047ac53c245852b5bcb3c171310c5b0c366d5e5fca172f0e433c62916f4a2e8757da5a2a104e1ba207492', CAST(N'2018-06-27T11:01:11.190' AS DateTime), N'111.111.115-30', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (847, CAST(N'2018-06-27T09:27:22.087' AS DateTime), N'd2ce740ac8f33e098392faaf3bcee2b8d39ffa89c58722b2c4878351f24d430d44cab8789989c0317d06424dfa7784ab26d58629024c4ce3a78348c09dae6351', CAST(N'2018-06-27T10:59:01.610' AS DateTime), N'111.111.115-31', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (848, CAST(N'2018-06-27T09:27:29.973' AS DateTime), N'2732cbec43bc25577c45a3ef3949a07b37bd75811d97d06ba87e8b68383a941a99c2e6a02b2f6b7bac7ebed2a12ceab9eba07a5faf9044e8f1ab6484ef171e47', CAST(N'2018-06-27T10:57:29.973' AS DateTime), N'111.111.115-32', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (849, CAST(N'2018-06-27T09:27:41.060' AS DateTime), N'2b745258227c65afd38c1369708997dd4b0f8ae4a050c3f67f98f19a1fb86b27356d32d3e178b32bd6237e82ae3171c57cfbd8357abf839a4d0da5512fcd05f5', CAST(N'2018-06-27T11:04:32.953' AS DateTime), N'111.111.115-33', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (850, CAST(N'2018-06-27T09:27:41.300' AS DateTime), N'05e40f9f9cd5f885bec38244cb01c7f4a3e52ca9baeca70d063c351a4c49d48922ddef9b3fde0699d9a5f201cb65816f85557d47b82d4204d1482c8529b51705', CAST(N'2018-06-27T10:57:42.617' AS DateTime), N'111.111.115-34', 2, N'AB74C070-89F6-E511-9401-001DD8200008', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (851, CAST(N'2018-06-27T09:27:50.953' AS DateTime), N'f3da5562d00f2bd1b9e7eb4258d0b3e580f81a8c877a9c68b10d0582a9416aa1b24f6968ffb384f19e98f614f95b74fdbf5e87d7c1f84343d40e8b577c216208', CAST(N'2018-06-27T11:05:20.723' AS DateTime), N'111.111.115-35', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (852, CAST(N'2018-06-27T09:28:08.267' AS DateTime), N'c4b5ad0841cef163ed0276d97903aa8a8661b1a93806c5d56ecc7d2aed79edbd1a5a2ab161b3d39701a8bae2be406a77a54865f4859b832bf24e7c2781a7c495', CAST(N'2018-06-27T10:58:09.527' AS DateTime), N'111.111.115-36', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (853, CAST(N'2018-06-27T09:28:25.440' AS DateTime), N'8a610544b47c6de0d9168905e7465f0fb6c495220898bc7ae64e3c27baea2df0b9ddd6709741841a4279a68fdc07b0d598b7d651454f20526c46a959ce392c8b', CAST(N'2018-06-27T10:58:25.440' AS DateTime), N'111.111.115-37', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (854, CAST(N'2018-06-27T09:28:32.603' AS DateTime), N'4d04c85a123bd3597fcd9671c157c66424aca00207185de405118f7276ebf6ca26bedea8dc63e309a92d5260dae38ba54899c3b7f920e0123bb823ec042b785c', CAST(N'2018-06-27T10:59:38.320' AS DateTime), N'111.111.115-38', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (855, CAST(N'2018-06-27T09:28:35.013' AS DateTime), N'cdfe2020bad4558c38eabc1f0c4fbc95780e93fbfb1df5d072bea33ce82812d41d874488cd3b4ff8e2728d603d5219505b94726a3a728df377cdc024edf66c64', CAST(N'2018-06-27T10:58:35.013' AS DateTime), N'111.111.115-39', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (856, CAST(N'2018-06-27T09:28:59.620' AS DateTime), N'e7431235affdd4e0d1f013f652341d881d9c76505765e99ef3b682f75648b30807b75b8092dcd28cdc905f69cbcc341cc20addf0bfb8dade097539dda31f892f', CAST(N'2018-06-27T10:58:59.620' AS DateTime), N'111.111.115-40', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (857, CAST(N'2018-06-27T09:29:31.750' AS DateTime), N'fd7b68d203b094cacd92c1c437619a416a055fbc77924a6acb9cbc44238cc37ec2f0be461cf0986ceedcf9170e96f6addd1251b166f2776c7233c5bcf161be9f', CAST(N'2018-06-27T10:59:33.093' AS DateTime), N'111.111.115-41', 2, N'5AF05FF8-091B-E711-941D-001DD8200001', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (858, CAST(N'2018-06-27T09:29:40.560' AS DateTime), N'834a7144bada25aab48fe24764f31a7c4fd88c02cc9687df6bd9cb50554658de16f973396f62ef4dc10529d32ee2806a796a18645b18e499f2d474248a9150ad', CAST(N'2018-06-27T11:08:25.953' AS DateTime), N'111.111.115-42', 2, N'5AF05FF8-091B-E711-941D-001DD8200001', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (859, CAST(N'2018-06-27T09:29:43.760' AS DateTime), N'd247dbcbc8899c71ac4f05dd60bc1009885ddf62bd6846a5607240b6e7b207d8f64e198fea573d68889a4da8d1ae11ca681fdcdeb0ec6e4e3109523c6f8dba31', CAST(N'2018-06-27T11:03:41.377' AS DateTime), N'111.111.115-43', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (860, CAST(N'2018-06-27T09:29:55.827' AS DateTime), N'2a1f56650acba2f0a3f202e11e3c545dc793d9407878a36e86ab14367dd507fd6a0779dd5dac89c2244f8d51faf76b2479e35d6e8eb1bc806fa79870472260c3', CAST(N'2018-06-27T10:59:55.827' AS DateTime), N'111.111.115-44', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (861, CAST(N'2018-06-27T09:30:06.090' AS DateTime), N'aa946ab05d8f7742ac89cd153c18a7162b68e99ff19985a4e2410ecc6d9c98b4e29c6fd6400016967ecd2d24adfc5e8120168fae2e1823aa59d182111f0cff2e', CAST(N'2018-06-27T11:05:18.533' AS DateTime), N'111.111.115-45', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (862, CAST(N'2018-06-27T09:30:28.957' AS DateTime), N'7a6a3ccb5ba698533d9d38550ed2ec5e3d3321c716b499241acf85c91a180557de13e40e546480d9dd6ccd976aedea1e6287808fdb769b6768c0817ddcffa5df', CAST(N'2018-06-27T11:08:16.850' AS DateTime), N'111.111.115-46', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (863, CAST(N'2018-06-27T09:30:53.100' AS DateTime), N'5de82c4a7f9f5df80de2ce3e04998dfebb2b969bb1ddfbf33e864032225d939714d5d628810b0c73fad4beda6a841fd5637fdb5eb6f1a8ebc5da7595d6aa20e4', CAST(N'2018-06-27T11:00:53.100' AS DateTime), N'111.111.115-47', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (864, CAST(N'2018-06-27T09:31:51.410' AS DateTime), N'ac7d73391595d81818eefdd031c95d0e2493f8391dafe9a2ae0bebf46ae6a223920f30ebe6ed15f18a215b097a4ea21e9b52fcc28351362c7915a50e8f34f9a2', CAST(N'2018-06-27T11:43:10.327' AS DateTime), N'111.111.115-48', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (865, CAST(N'2018-06-27T09:33:00.807' AS DateTime), N'90e88030bd73095be3fe27d90b079ef89a134a444d113b2192c8152f6a167ce669a91fc18c908546f6f09e8e35e78f0206a1d1a1be42223c852e7a701e160882', CAST(N'2018-06-27T11:03:02.387' AS DateTime), N'111.111.115-49', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (866, CAST(N'2018-06-27T09:33:05.063' AS DateTime), N'e62b4d4eea544d6b3e7f45f4cfde260913cb37c79bb8238ba441d967434cdd5f2ff8a9cc54955f43d626231807803e5b09fd9c0e0e7918dbe3be1a76756db5a6', CAST(N'2018-06-27T11:03:13.693' AS DateTime), N'111.111.115-50', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (867, CAST(N'2018-06-27T09:33:28.400' AS DateTime), N'45ba8774356b94db8f92c0aaabe64593e8580c3f9421eaea13c02bfe4e795f35711a021d9697965f4c7bdca01ac386dbeffbe66558f9d4ecda6e8a7d1f9e5799', CAST(N'2018-06-27T11:03:30.210' AS DateTime), N'111.111.115-51', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (868, CAST(N'2018-06-27T09:34:58.700' AS DateTime), N'92f96d5a708b8c4d3fca7c77bc427a3bb78d90261958a11ed48fa59792571e59fcedf979bedef059281a0a872daf474b3604ba0fdea922707e67568f40d15380', CAST(N'2018-06-27T11:05:00.360' AS DateTime), N'111.111.115-52', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (869, CAST(N'2018-06-27T09:35:06.423' AS DateTime), N'3b21f8fb76dbd27319caf17a1253eb5a78f699da1548f379dcd54d17ad56eac47586bd8108d0a4ae5be4f070860d783f7d30fff8ec1df0472df76d3ec15698b7', CAST(N'2018-06-27T11:06:06.807' AS DateTime), N'111.111.115-53', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (870, CAST(N'2018-06-27T09:35:06.607' AS DateTime), N'1bbbd878b835b751a15bc097a7310e65e5f63c856e92d80cfdc5ca0208afcecadb59dc1542f3296ae2847129d6976ccd8be54b8b759f6693d28f412a883bb127', CAST(N'2018-06-27T11:07:02.550' AS DateTime), N'111.111.115-54', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (871, CAST(N'2018-06-27T09:36:10.957' AS DateTime), N'aa9afb335b653471e052f9401a8e2d7668c80cefe8d6a825876f95d1c0dd6f505dc7fe39d0313e9eb492ea09c3612ccde616645522a807a3bb58257bf0bf565e', CAST(N'2018-06-27T11:06:10.957' AS DateTime), N'111.111.115-55', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (872, CAST(N'2018-06-27T09:36:26.583' AS DateTime), N'5ff25263ec40cb8cf961771c91d94ef2b1ddbf113a9f3fa40dcfc5cb58a02ecbe1bef73609203610467070f672d51eece3dad211551f3cbca6245d22fb4d9abf', CAST(N'2018-06-27T11:08:46.687' AS DateTime), N'111.111.115-56', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (873, CAST(N'2018-06-27T09:36:51.883' AS DateTime), N'09a35409edae64906f2f512ccc806c58bca78e5becc7d352e904dc6808e91b6e72d6bd34901dd5da00eb7e08a04c7353ca28dd598db1bb0c1d269b751dbab347', CAST(N'2018-06-27T11:06:53.537' AS DateTime), N'111.111.115-57', 2, N'9C025DEA-44DE-E011-AA72-0026B97E0079', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (874, CAST(N'2018-06-27T09:37:00.130' AS DateTime), N'6f02147af9e93d110f58af72c63c19824856be683ad0d990e87a75b8eda3472e788c5860c10ace99de856b834c50bc05946290d1ca2dc5da23daee2e279a5ed0', CAST(N'2018-06-27T11:07:00.130' AS DateTime), N'111.111.115-58', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (875, CAST(N'2018-06-27T09:37:05.193' AS DateTime), N'f3b8411032710bd3ab7d858c7b622ceaea656c3d4c47bb34d9e3caae31674443ba2b5641205dd42c38325cd51c122ce9495f0f1730fcdd8840ca537b4f5a4266', CAST(N'2018-06-27T11:09:33.533' AS DateTime), N'111.111.115-59', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (876, CAST(N'2018-06-27T09:37:14.360' AS DateTime), N'd713bbe17fccaf0e6f20a9bf577326cb0c97e5aa80eddbfdaf12c52a3d87bc2dfcad3c847f9e1d5e3023fe1b9b58dcac922148a38d59849e098c0a98eccca4a1', CAST(N'2018-06-27T11:09:46.523' AS DateTime), N'111.111.115-60', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (877, CAST(N'2018-06-27T09:37:54.070' AS DateTime), N'2c6e5d2ef31acddeacb90cd2c4e65cc3877113d629cc0c1673fc26a02100808cb16cefa38838cbb712171e30a6c995e2ce3ba041c72c366589df8a04a64fc1b4', CAST(N'2018-06-27T11:08:48.053' AS DateTime), N'111.111.115-61', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (878, CAST(N'2018-06-27T09:38:17.680' AS DateTime), N'ff363382a96386f4b0fe8249f1b1bafd384d17a50328ce1de73b2a3334f3cbc6a6d393c9fce1f27b83ea52d0bdcdbf57a6555115fbb44593e10de6d20669eecc', CAST(N'2018-06-27T11:08:32.460' AS DateTime), N'111.111.115-62', 2, N'2A76FDC8-663A-E311-B421-02BFC0A801BB', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (879, CAST(N'2018-06-27T09:38:18.703' AS DateTime), N'ec25180d37c7393a6dd05b4e022636d35d1ef323f49d27ed6d1db2760d5be277fda1117b3b4724bc6a135d88b8039bdec43d9200944543e49063ecc7aceb7a24', CAST(N'2018-06-27T11:08:18.703' AS DateTime), N'111.111.115-63', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (880, CAST(N'2018-06-27T09:38:38.780' AS DateTime), N'4ae879dc32f9c27d4f29e6bef3bb978fe96e39aa1def66c58d8f69dc0c894df9fb0f35301eee11e53daec7ae257e0b6614c6e9dd8d837942887242c5beefccee', CAST(N'2018-06-27T11:08:38.780' AS DateTime), N'111.111.115-64', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (881, CAST(N'2018-06-27T09:38:55.407' AS DateTime), N'53a71a52b20a1d8e870b52a5c7da180079b0b77b0151525dbfee68b02b58bcd50ff8e4314bf6150f1c3d728d9008ce45a6bec7aa5913335f972b01c90ae2b0a6', CAST(N'2018-06-27T11:09:04.180' AS DateTime), N'111.111.115-65', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (882, CAST(N'2018-06-27T09:39:00.157' AS DateTime), N'e5f29d066c9f85640426e30502439a2e3f93770a9ebba0c69b153a9b7e2ed58d5cbdb3eb1a74fb6f6d90793f42dec2d89eeec65e5ae5507ad19d2885993d96f4', CAST(N'2018-06-27T11:09:00.157' AS DateTime), N'111.111.115-66', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (883, CAST(N'2018-06-27T09:39:10.113' AS DateTime), N'fa1e8f6ac49113749b32411215999d984b349492565edb528f9c7faac99b2510ff7e1f62eb45eccb8e5199adc0f3ca0c393bd909c5f459d1bf3e493b61f23570', CAST(N'2018-06-27T11:11:49.717' AS DateTime), N'111.111.115-67', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (884, CAST(N'2018-06-27T09:39:32.747' AS DateTime), N'3ebe84db2dd78e6d9a45c3a6030a6dd5c50a7e0b3050feac54352fb9501e0ae98313f4290c47738b9e10f2f8602fff69cc699f0d584bfeab48fdd3b059023479', CAST(N'2018-06-27T11:10:20.193' AS DateTime), N'111.111.115-68', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (885, CAST(N'2018-06-27T09:39:53.947' AS DateTime), N'8a391b9511bfa95b655e519a6410a3cbe4f2fb26169c72769d1a54d83213d59bb249ec40ab0a4c7d32653debe8c549dd561131988461f10d65a67dbad27218d5', CAST(N'2018-06-27T11:11:54.640' AS DateTime), N'111.111.115-69', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (886, CAST(N'2018-06-27T09:39:56.907' AS DateTime), N'c6693e4b7a35d7c697bd70c9aa6b37cee70c58ecbf18a031c2c9c24d8244f64b88f843fb711693fe3a0fdec8e909aac9e776ab74c178e8bba9ec1238f7c979d5', CAST(N'2018-06-27T11:10:45.240' AS DateTime), N'111.111.115-70', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (887, CAST(N'2018-06-27T09:40:02.097' AS DateTime), N'4cff83e3c602cb72fb6835a6cf8289154606027427361a7bcd630c6398369ac624d2497c6e7928c04fc860b79241584e57a681296ba7da0214c9f7f6c264dd55', CAST(N'2018-06-27T11:10:46.720' AS DateTime), N'111.111.115-71', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (888, CAST(N'2018-06-27T09:40:14.390' AS DateTime), N'ca0717e21205d6b336deeb3fa78195a828549f3ef41bf635a5ea4c73466b15d9fe55a6904987df2fa2eb8c912c32ae79d40f56142aa5d839a96c89220df6e9a3', CAST(N'2018-06-27T11:10:14.390' AS DateTime), N'111.111.115-72', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (889, CAST(N'2018-06-27T09:40:28.040' AS DateTime), N'774d5fb2e49fb09f5e11803956995173b3a63ede6712b1fa09b2353ea3da2b2361ebb497c45c402f76d3e302c8cb80ddd94a8cda34c81fb69e5a7a71ba7c0161', CAST(N'2018-06-27T11:16:10.310' AS DateTime), N'111.111.115-73', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (890, CAST(N'2018-06-27T09:40:58.093' AS DateTime), N'da223eacaf91664c11ab2db56aebe3a7ce99561fdbac21746b75fce3b579beb1c3c4489e79167dbd992edb4ae8c8095d07cc165735777f3e12204b8cae833f9a', CAST(N'2018-06-27T11:14:56.500' AS DateTime), N'111.111.115-74', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (891, CAST(N'2018-06-27T09:40:58.750' AS DateTime), N'c74e284d52bcef7ecd18a440f8af1f62802c33228e76f776c9afda7e79ae92ec9d68d00420e3889e5d24e13be51fa4fbdcca868f4498ec1c83f927604de35b07', CAST(N'2018-06-27T11:26:11.300' AS DateTime), N'111.111.115-75', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (892, CAST(N'2018-06-27T09:41:30.983' AS DateTime), N'35e3982033cf1e2ec9e5c3fced55e7c3efc8b99c91a733dcfc6ef209be937a79d38377544848e9ab133004e6f1421062317341bcdba8a5b165dd8905e4136f3b', CAST(N'2018-06-27T11:11:30.983' AS DateTime), N'111.111.115-76', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (893, CAST(N'2018-06-27T09:41:49.220' AS DateTime), N'e214eddce9380f94243b79e833a56819a4fa42c80cfad7931202d1312110f851dba8b4590133f9e10275ad967daf08f46f6e59895b8501060e108b1b33625737', CAST(N'2018-06-27T11:11:50.640' AS DateTime), N'111.111.115-77', 2, N'9268D056-7972-E511-9406-001DD8200001', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (894, CAST(N'2018-06-27T09:42:05.320' AS DateTime), N'2015c26275a07a7ab18e91533ba006e18c62187a840516e8cfd9288d9ed45ffb4493d27008f0716ac3d7a93e525523504c11996a70195f2481da6441dfd39ec1', CAST(N'2018-06-27T11:12:06.767' AS DateTime), N'111.111.115-78', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (895, CAST(N'2018-06-27T09:42:09.210' AS DateTime), N'4c79071dea142c8f616dab833912ca4332bf2df75d9c61cafe03138bf6dc3d3a4b9fd107713c4ce87946b938313e49288633a39ba0cf2392bddc4e739b013f6e', CAST(N'2018-06-27T11:12:10.800' AS DateTime), N'111.111.115-79', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (896, CAST(N'2018-06-27T09:42:15.537' AS DateTime), N'6216cfc6cf36269a1b6ff59ba0bda6c6f3bed7b7e714edf61d079654830b5d9d8921593e618342f1a4ec69b537dfed3160c7476035fb09c48df7c8a30941ff2b', CAST(N'2018-06-27T11:12:16.520' AS DateTime), N'111.111.115-80', 2, N'3A7FB741-0C6A-E611-9414-001DD8200008', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (897, CAST(N'2018-06-27T09:42:20.143' AS DateTime), N'4f8d9f1647b5329f9f6a6db875149c531101ac53a853f427acf11fd571b604b78e1cd348abceae21acc7c086d1d992d75c85d493548560d1ddaf43b194f56062', CAST(N'2018-06-27T11:12:31.600' AS DateTime), N'111.111.115-81', 2, N'A2CADC92-2E68-E811-80C0-005056955165', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (898, CAST(N'2018-06-27T09:43:10.290' AS DateTime), N'd5958613997e32d3529abf75812e918772036946405cf115dba1fb210de6575df9e9501c4c84c298ff33e18cb3339d9b5b373a199ff804e50361a2abffb9a50f', CAST(N'2018-06-27T11:13:11.310' AS DateTime), N'111.111.115-82', 2, N'A2CADC92-2E68-E811-80C0-005056955165', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (899, CAST(N'2018-06-27T09:43:16.620' AS DateTime), N'19244f351ad4e9d7df80deede982a2e2d8141223dd07c5b7f8813f95a784a8295432140be79ec4165f7cf2122f9d1b2685779e6fa2e3142cb3c9e3e0ce9bf9b3', CAST(N'2018-06-27T11:14:22.160' AS DateTime), N'111.111.115-83', 2, N'9268D056-7972-E511-9406-001DD8200001', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (900, CAST(N'2018-06-27T09:43:22.177' AS DateTime), N'05659f86d5cbe6ae42170924567e0df8702296209bd68e813b2cc55f3016c76a566b183e331143ec97bba9c421865a4016178daaf15babeff5d928d53e626334', CAST(N'2018-06-27T11:13:22.177' AS DateTime), N'111.111.115-84', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (901, CAST(N'2018-06-27T09:43:33.337' AS DateTime), N'f458266f309bb07f2f90b7e389e3a3b36de4700c73d3c6bbec47cc4e5a73bbcac967899f64549ac9139d1cc5d137c7bb53aebd0d425736475c7b126fef7764d2', CAST(N'2018-06-27T11:14:49.727' AS DateTime), N'111.111.115-85', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (902, CAST(N'2018-06-27T09:43:37.670' AS DateTime), N'6a0d1e1eab1ed6093b6121369a418bab581220ffcb9b27b0df5894a3f02c2c89afa936a3d63014485f5a2c281d247221a42c65c2f107c9b8dee63f6e77b559ca', CAST(N'2018-06-27T11:13:37.670' AS DateTime), N'111.111.115-86', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (903, CAST(N'2018-06-27T09:43:42.660' AS DateTime), N'd6b0c93cbac2778cc07dd0aba8f7141e1ab7f8d14858ecb55fdc1893797f183e3d078252467f74968f4cbe585de1f09a1bdeb95040e8b962a2ebc0d104a94290', CAST(N'2018-06-27T11:13:42.660' AS DateTime), N'111.111.115-87', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (904, CAST(N'2018-06-27T09:43:54.760' AS DateTime), N'fce5d476329b717b4f820472f5b555a46b3858e9870d5a4c70d662a20f38970adc38735ffd9b557d318eb8a949e6b29574900a7e26aa259dd460edfa01bf10c9', CAST(N'2018-06-27T11:13:55.543' AS DateTime), N'111.111.115-88', 2, N'3A7FB741-0C6A-E611-9414-001DD8200008', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (905, CAST(N'2018-06-27T09:43:55.820' AS DateTime), N'b618b86f717233a2e8a8a9eed5ad48dccd9d4d2b4e835482abcd97b789adc224c519ee4ffbc232ccdbcc1dc0eafbd3aa1223d0d8914b1e60e7a27e5e02685dcc', CAST(N'2018-06-27T11:15:27.607' AS DateTime), N'111.111.115-89', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (906, CAST(N'2018-06-27T09:44:00.820' AS DateTime), N'ac9ec4438bb81ab1719556220becd03094e81ddbaff28076060d5f0439b7ac46914e511a29da9a922757c468551dc17a68e989d482fc692e89f11e1fd11969cc', CAST(N'2018-06-27T11:14:00.820' AS DateTime), N'111.111.115-90', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (907, CAST(N'2018-06-27T09:44:08.390' AS DateTime), N'd0cffa0b767f00cf2c2136e5c745b635afc3796c0d9cde155617635c62b1f129f7345fd43a1602cb1ddb7f9d573dd4c23ec7e33798190a382e48e309c980d2ee', CAST(N'2018-06-27T11:15:42.167' AS DateTime), N'111.111.115-91', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (908, CAST(N'2018-06-27T09:44:12.873' AS DateTime), N'427ed1e812b22b1755947e447d0be10f744d340194da2c51ed85c3c8d8cdafaa2e20ced05649c7832a95b1bbcef00de65dab8fa96f77de47e8bd7d26aa85f51f', CAST(N'2018-06-27T11:14:12.873' AS DateTime), N'111.111.115-92', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (909, CAST(N'2018-06-27T09:44:41.730' AS DateTime), N'f8f491ddcf39cfeae3ead1be74ee5508fe883d8965aea890ee2de48f9c50bae0c64204caf8a50ea6662acaa24b1ca8b45c0f69d1e084fab38edb56746ea6c7c4', CAST(N'2018-06-27T11:18:17.327' AS DateTime), N'111.111.115-93', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (910, CAST(N'2018-06-27T09:44:57.393' AS DateTime), N'621677410f9a1eb827b79a9f9e6b327e24122ac896fdd4ee9ce1faee72292bb1cede882288b5f065137589aaa98d669b0020f2f1ff4f2b10de6163920fcbea85', CAST(N'2018-06-27T11:14:59.457' AS DateTime), N'111.111.115-94', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (911, CAST(N'2018-06-27T09:45:10.997' AS DateTime), N'54a16a55996cea165b4d7ec250bb5b66351342b332d09e343fc6ec0f66669ae4bdc6f766ad64fcd120e81aba21f775135a265dcb09c704b5ec657830e9650b82', CAST(N'2018-06-27T11:15:12.657' AS DateTime), N'111.111.115-95', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (912, CAST(N'2018-06-27T09:45:12.940' AS DateTime), N'2f8799d725093bcc80cb38ef4c15dcb1df0e4018625026cebb955bf7d0b9983de11f09870fe2fee5b12ec861b4e56bed0879b81b1aa6563202211033c9cfae4a', CAST(N'2018-06-27T11:16:18.227' AS DateTime), N'111.111.115-96', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (913, CAST(N'2018-06-27T09:45:17.377' AS DateTime), N'40e76ade6b3ab2f767275c225282ad9a920386f887293416ec3618d37cc7326d1c072b63bc6c2fb3f2e213dc63207bf5982784a951559405fb2b23e2a05a72ce', CAST(N'2018-06-27T11:16:38.257' AS DateTime), N'111.111.115-97', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (914, CAST(N'2018-06-27T09:45:51.667' AS DateTime), N'feb419bbe2a262b54bd052d97185ddfde3dd74199c9e6500e6b741056aa95054b4469644080b8add5bddffb1fda1bf9867c9d9542e9a70464ac3d26daa5c80c8', CAST(N'2018-06-27T11:18:04.390' AS DateTime), N'111.111.115-98', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (915, CAST(N'2018-06-27T09:45:54.213' AS DateTime), N'd3984b12c5c7307791981509eb3027a3a48675d3ff42062d3e103a25bd289a1ef77a491c043b05c03fbb88d9f90efb10cfc545ce5cb05ca085c7b2ade6beb46c', CAST(N'2018-06-27T11:15:55.597' AS DateTime), N'111.111.115-99', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (916, CAST(N'2018-06-27T09:46:03.543' AS DateTime), N'526b73bf315d5c6624f9500bcaa86cdb10b15e96fc5a28c94a85f555312874e6fb0c6653dea896cd71ba89ff7f802212a60f64bf306edaa2241c773ce9209759', CAST(N'2018-06-27T11:16:04.707' AS DateTime), N'111.111.116-01', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (917, CAST(N'2018-06-27T09:46:35.260' AS DateTime), N'd2b1e4d4b59ea7229af26058cab54a32a515cbc7251ebd3e9b6dd4a49a3e68cd5d6fc990c5e3c3c5a191b0be4de22e084a659b1ba7bc6bf2c015f43544931bf7', CAST(N'2018-06-27T11:17:26.683' AS DateTime), N'111.111.116-02', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (918, CAST(N'2018-06-27T09:46:35.410' AS DateTime), N'4282cc712f6222e17a9a680045e68f88ee371262b930397e41887e2e493c707e47b11cf3e837ed9bf07e9f1eb883d5f08d45b1ae9cfbcad2cb15fae2eb5d4a0f', CAST(N'2018-06-27T12:39:14.030' AS DateTime), N'111.111.116-03', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (919, CAST(N'2018-06-27T09:46:54.993' AS DateTime), N'750f178344f3be20f872f5b80bac16481d41f96b44aebdf583e964f6e67ecdeb19b210989067dcfdc3db2ef24d228e9bbe0e7508150048efe6254229f511404d', CAST(N'2018-06-27T11:16:56.007' AS DateTime), N'111.111.116-04', 3, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (920, CAST(N'2018-06-27T09:47:01.797' AS DateTime), N'a75672f8977cb77e289fd90c3222b72be9e1c53bf40b0f3077a5c5d4bc73560caca3e1eff3d719327a2363834a2ab091ebf988cfc0098d8cded7501be94ee4b0', CAST(N'2018-06-27T11:17:13.547' AS DateTime), N'111.111.116-05', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (921, CAST(N'2018-06-27T09:47:14.413' AS DateTime), N'6c156129c79461dc6a4599a2bb51ad6afa47faea25f720f2aa65f87372c51d1c4b6dba4fec4815242dd19913ed9f30d3a9e4b92a5a6f71c4b8c2d0ffdd9c36c7', CAST(N'2018-06-27T11:17:14.413' AS DateTime), N'111.111.116-06', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (922, CAST(N'2018-06-27T09:47:43.717' AS DateTime), N'fd3bbd8e49be809cf19a1284185479387fc116e9ca74193776b7962bd0947f029e6eaec95eaabc76a4384a1e683ffca6a0b339c61509e0566bcd1b39b4f11dd4', CAST(N'2018-06-27T11:23:11.783' AS DateTime), N'111.111.116-07', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (923, CAST(N'2018-06-27T09:47:46.170' AS DateTime), N'35b5b74f0a802fc860eb064d43268708b84e2130f75cf48bc55e76c03979b468bf778774f08767615d663e5f8699100ad60e10d75f2c4036b1a804144b7da035', CAST(N'2018-06-27T11:17:52.680' AS DateTime), N'111.111.116-08', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (924, CAST(N'2018-06-27T09:48:27.690' AS DateTime), N'b69a92ea4269ab25ba1a17343ec781b4c35782b07c1fcfadbe980f67e097f7d97451b6e37ee9de8537ca665225715ac7ac2836bd601b24c187fb67dc19f0ad8f', CAST(N'2018-06-27T11:20:29.373' AS DateTime), N'111.111.116-09', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (925, CAST(N'2018-06-27T09:48:42.930' AS DateTime), N'b998576393940e7d5e5e931434967cf965f5fbd3cd5e692d370b2c9f331a93bcf57c5c00a89f7393f748f9e66f99efb2ff04fbcd18baeb0527a355a94fd4f663', CAST(N'2018-06-27T11:21:57.717' AS DateTime), N'111.111.116-10', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (926, CAST(N'2018-06-27T09:49:12.800' AS DateTime), N'dde13062ba1de451fee6968d92bb673bf0440b2b21a0b8d80c36c5e2780bed0eca23f4cec1d5a77a6c0ce778fe2f05aee2ac446b095f7037af3dcefad70e9a3d', CAST(N'2018-06-27T11:21:00.420' AS DateTime), N'111.111.116-11', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (927, CAST(N'2018-06-27T09:50:09.613' AS DateTime), N'51f8d5e09e3a8af5b1ae61ff851d8fee1f451482d457b8477cda0bbf1771ede776ede6b949d66f27a1b5d503ebf998d1ac9240284a75f60be7b730f25287b84d', CAST(N'2018-06-27T11:21:23.440' AS DateTime), N'111.111.116-12', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (928, CAST(N'2018-06-27T09:50:18.480' AS DateTime), N'7fa5ae087f119d3e86bcf278587bafc9c20dd50e2c2ff7674e263b431214cdf3d311aca05d0e1bb0c84941b7a5f7460888709c1e0db5e83258fd7bf746ad39a1', CAST(N'2018-06-27T11:20:48.593' AS DateTime), N'111.111.116-13', 2, N'1FA6C7F4-653A-E711-9428-005056ACE682', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (929, CAST(N'2018-06-27T09:50:46.667' AS DateTime), N'2ae1c25eaed4b60852609827c5fb86b8468015ee0fcede112a8a28fd434fe550a529ef39372ace1304ec31a3f903ee84ac6f65bdc0c5df343326fa448b7db237', CAST(N'2018-06-27T11:20:48.500' AS DateTime), N'111.111.116-14', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (930, CAST(N'2018-06-27T09:51:07.133' AS DateTime), N'a743c5cfb095521f074ff2a5515512528ba8eb7a4e857c3fcb710435c76d2e783f8d30b151420354a65b06edc4a77ab19d2c29e0c6aed17e25cc5aa6b486b071', CAST(N'2018-06-27T11:22:48.867' AS DateTime), N'111.111.116-15', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (931, CAST(N'2018-06-27T09:51:11.300' AS DateTime), N'792ec6e9c3db89e15e227ae1f60225872d7338240b903ed7c429890f2ceb8954c8ba30621e0fdc3ccbb860ef372619d4ad3b59883bd27b47412a2638f0cecf92', CAST(N'2018-06-27T11:21:13.690' AS DateTime), N'111.111.116-16', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (932, CAST(N'2018-06-27T09:51:35.893' AS DateTime), N'27b082818593093b070a4e02e3c8ce10b4cd8720167ffad2b6e0ad6a200693529764b826bba36489e113db06beaee782ecb63793f8fc5a693d65ae8476c19d37', CAST(N'2018-06-27T11:21:37.623' AS DateTime), N'111.111.116-17', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (933, CAST(N'2018-06-27T09:52:05.660' AS DateTime), N'446ebb299eb2b94e8088171d707106b970b8aa204e806e45bd31f18a2d509484e318355f5a8e0241ac82a1eb3d7ffe129de65bf628aff9e8de1da167e02ac652', CAST(N'2018-06-27T11:22:07.270' AS DateTime), N'111.111.116-18', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (934, CAST(N'2018-06-27T09:52:21.927' AS DateTime), N'f4dfdf781f7850779a23e924a89fbf98114db4dc95abed4a7ccd068c176601f708c617f95c8ee7676613cc18aed8ea8d6a85441dd5c03d6366a5d69453321f5b', CAST(N'2018-06-27T11:23:34.450' AS DateTime), N'111.111.116-19', 2, N'3A7FB741-0C6A-E611-9414-001DD8200008', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (935, CAST(N'2018-06-27T09:52:34.757' AS DateTime), N'a818a353bd9433741b3a202c5ac53c933571f28a43d001a51532e64a4db7727040a0c3b28cdfad065271eb8a4727c3a2407708c98d18f716f989e6deaaacc099', CAST(N'2018-06-27T11:48:53.837' AS DateTime), N'111.111.116-20', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (936, CAST(N'2018-06-27T09:52:55.010' AS DateTime), N'02641ee802013c964852ada9e12e1e8d57f110dc670a75a2a041e6de7c83bb0f79b04b5a249cad5ebc96ba60667360cc06be73427b53bd7e46a470ffa9329bf9', CAST(N'2018-06-27T11:22:55.010' AS DateTime), N'111.111.116-21', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (937, CAST(N'2018-06-27T09:53:06.010' AS DateTime), N'5c28c64cba04a0274e145d81d1d7d50c31a0f8d25f8275da9dd477a6edb02a29958f9395fd435fddcff0527f962a09f6a9a5b420b6ff1c6ccff80ba54747e34f', CAST(N'2018-06-27T11:23:07.910' AS DateTime), N'111.111.116-22', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (938, CAST(N'2018-06-27T09:54:51.133' AS DateTime), N'a588d14130c3e292fc333780a2e479c395d56f15a730d586086ae420b32931fab53ad411ea3c0e66e2f0015e293413c1f57461672922a3072ac417a7485e1aad', CAST(N'2018-06-27T11:26:04.440' AS DateTime), N'111.111.116-23', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (939, CAST(N'2018-06-27T09:55:11.750' AS DateTime), N'52dfbe5a7c02e7a94d85af551c72c6de418cb4e835491fca883ac62c5c46529ffc83ba9da3d148616dcac33bf6d120eac9b4290f1036b255af5ad4373f1447c6', CAST(N'2018-06-27T11:35:14.630' AS DateTime), N'111.111.116-24', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (940, CAST(N'2018-06-27T09:55:13.580' AS DateTime), N'c9a24b710e219248e39fc37c578e4b887b5a47507bcc8b2871d2b6212d0bd36589f6ecac3b7d1d5d951e77d641c1098f4f38d84a22cc9768bf54add15ba097ad', CAST(N'2018-06-27T11:28:13.373' AS DateTime), N'111.111.116-25', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (941, CAST(N'2018-06-27T09:55:38.120' AS DateTime), N'7fcbd2814dcbeb79eb0ff5ae793d10eafc4a8009191d95afca53136bef626dcf2fc214f1fc13f0d69e2d831abb9a64cae2f4b54a8f8312b43cbf7c385aab0d9e', CAST(N'2018-06-27T11:25:38.120' AS DateTime), N'111.111.116-26', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (942, CAST(N'2018-06-27T09:56:03.210' AS DateTime), N'66facf03cdddb3dd95ef991a701db40725e9f2dc25f0cd0adecc3d32778d7f64db83948f77b7b609c114028fdcb13b4a82635765a0bd64d0352fb76269bdc053', CAST(N'2018-06-27T11:27:12.353' AS DateTime), N'111.111.116-27', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (943, CAST(N'2018-06-27T09:56:05.673' AS DateTime), N'6c202de9cd1f2c363a8108c2b9692d87927f3083e2087960550e2b249203e0ea19bad899fee70fce8c9390c0105088804cf9a248cfe42b45dabe6c88b8b38315', CAST(N'2018-06-27T11:26:15.213' AS DateTime), N'111.111.116-28', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (944, CAST(N'2018-06-27T09:56:07.563' AS DateTime), N'0f5fce00372055c89d0c790b3ab4b6287be5f1400446f9a8746a9dce78c9213e17da36a4e8610d8b6a94275b9fa2084889c11a9bfae4628c738ed2f475e59197', CAST(N'2018-06-27T11:26:07.563' AS DateTime), N'111.111.116-29', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (945, CAST(N'2018-06-27T09:56:09.567' AS DateTime), N'bc8f4b056885d34f29df27887dfdf9f60334ac572a0cc71407bee86d0f525e7eee12acc8f47a5e6d30c48dbc347eee513fe9e62037ef24ef894f12ae0ea6c048', CAST(N'2018-06-27T11:35:36.023' AS DateTime), N'111.111.116-30', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (946, CAST(N'2018-06-27T09:56:17.047' AS DateTime), N'35983e5e93d4bea3cb84adbb04490ccb645f7db8831eebcf55f87ee95c5ce7932028d4eeb981e767a502a7a2b9b575c83544afc8b100f448173b0b8f7c0ef2b0', CAST(N'2018-06-27T11:30:52.473' AS DateTime), N'111.111.116-31', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (947, CAST(N'2018-06-27T09:56:18.170' AS DateTime), N'73a77303679874011eac4a61e383373c4fdcee8cab95b8403c0dd27d55c5bb092e51d74d7b16d4578c74e8357dc991d8433c65348dc65937dc328cb224f7e45b', CAST(N'2018-06-27T11:27:17.670' AS DateTime), N'111.111.116-32', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (948, CAST(N'2018-06-27T09:57:18.310' AS DateTime), N'f5b1d3360aef60f394d393212a490e8e2cee2e15fb7486adbcef89566305897f2e96a2ff86e81e3d1ed3b98326b0641798c3c4f740a391569e48d0b9c4b52cb2', CAST(N'2018-06-27T11:27:18.310' AS DateTime), N'111.111.116-33', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (949, CAST(N'2018-06-27T09:57:51.903' AS DateTime), N'9354558e494ef3aee94f85b47d2d73f3e9349d1301130f8ca72a98687d57051f45848c6d2e7fd51392f0acd69322c54af161b7e6565e08338ee97b9c81782cdf', CAST(N'2018-06-27T11:47:54.627' AS DateTime), N'111.111.116-34', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (950, CAST(N'2018-06-27T09:58:25.037' AS DateTime), N'aedad2118f816bf964b60a1068b0030126fe2e08204d16dbecde4694c5d3ce02735514349fce228c3e3734a9c432e5076c1622427360c49ac6553852d8cc4322', CAST(N'2018-06-27T11:28:25.037' AS DateTime), N'111.111.116-35', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (951, CAST(N'2018-06-27T09:58:35.773' AS DateTime), N'f9cd4d3117469cf499e5feb938571767fbbaa314a424d76c456087dc93e86472c174acc8953ab1d20512da4939dd81b3d2b98e252663faa1558ecada0af77412', CAST(N'2018-06-27T11:29:58.537' AS DateTime), N'111.111.116-36', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (952, CAST(N'2018-06-27T09:59:31.197' AS DateTime), N'76ebee021ee0283b47541cae733150bde7b022240f810d621d76461dafbd70a9819082e42779f7005080780a07613ac6d81fb38770fdab6714474b0bf719f96b', CAST(N'2018-06-27T11:54:40.477' AS DateTime), N'111.111.116-37', 2, N'EF5497B4-76D6-E611-9419-005056200008', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (953, CAST(N'2018-06-27T09:59:33.570' AS DateTime), N'1660ce1716e6a2d779c0316fd344bfe07faf6d7a33bff777edc8f9cb671bcafd622807b4171334389641b450b3cae95bfafe2ae1f7fd4320d62509c627029679', CAST(N'2018-06-27T11:29:33.570' AS DateTime), N'111.111.116-38', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (954, CAST(N'2018-06-27T09:59:47.247' AS DateTime), N'606ac08640f9ad891f80cda362bc57cdb58823d5384ea32913047f9635c8c883015d4b41b6ce3b571e8f2c76a82aebe1e63499404fe98a829569e8ab6d2d66c0', CAST(N'2018-06-27T11:32:46.250' AS DateTime), N'111.111.116-39', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (955, CAST(N'2018-06-27T09:59:47.497' AS DateTime), N'128291437c7b79e7b541c695cb273d4d6ff2bb0edbd534a8870452c2f655f03b7cbb735cadbada1b0be113a41e134014cfb872cedaa7cdbf3e478ad8f7e108e7', CAST(N'2018-06-27T11:29:47.497' AS DateTime), N'111.111.116-40', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (956, CAST(N'2018-06-27T10:00:06.930' AS DateTime), N'496b4a268e0965401f760fa82f347ca365e37a35d70e07c2fa233e52fb656c007ecea4002f6f0dace4242763fdf6fec2e2a088077ba0f9efe55c80fc2ebe4452', CAST(N'2018-06-27T11:36:44.420' AS DateTime), N'111.111.116-41', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (957, CAST(N'2018-06-27T10:00:07.257' AS DateTime), N'4a971cf57f49951179eb4bb6460f26cf5c8d20be91e1e8c2fd7582def0a44f49525440071cc7cb0e6d45a0f0e422338c40e4c3251fb28aa1a62d492c0feb6a79', CAST(N'2018-06-27T11:30:08.863' AS DateTime), N'111.111.116-42', 2, N'3D630CC5-A001-E611-940D-005056200001', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (958, CAST(N'2018-06-27T10:00:10.040' AS DateTime), N'0722c881b3cd06a40837fab319cc480ddbfd8d7fc230d0dac49cbfd8bff919ef17e410a4521f55b87cee8fb37f6a34bc15d64a0204e814780380f069588cf277', CAST(N'2018-06-27T11:41:27.013' AS DateTime), N'111.111.116-43', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (959, CAST(N'2018-06-27T10:00:41.683' AS DateTime), N'33144a885328ac875dd244616938e9d8b19a0a4b21a954109103978e0e45c74544bd4082e965d6267393ef0a2e28a148ee4872d765e54e1ab31f7cd4fe28b7c3', CAST(N'2018-06-27T11:30:41.683' AS DateTime), N'111.111.116-44', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (960, CAST(N'2018-06-27T10:01:01.923' AS DateTime), N'3a0778a52113d288bd0f0acda1dab4d6de4657648c16193952bc26f07c1263ed43ab39255062b3ad3ba95d15590205c29e1802820ced5c351e2682440f2012f4', CAST(N'2018-06-27T11:31:02.893' AS DateTime), N'111.111.116-45', 2, N'3A7FB741-0C6A-E611-9414-001DD8200008', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (961, CAST(N'2018-06-27T10:01:11.817' AS DateTime), N'd469f08cdb4649e5a5c6935cde7cdd8194f26ba1b9290527027a657110561df7dd1abb4e6c1068dd7fac56fa4a87959a1211352749ac311d71f2eca93278d7ca', CAST(N'2018-06-27T11:34:33.350' AS DateTime), N'111.111.116-46', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (962, CAST(N'2018-06-27T10:02:00.983' AS DateTime), N'bddcafc223504b6083758a338ba0abb9ce9f7c822924777d4f00c9b39f5eddf68f4ec4fb88b44d390ac1d2c432a325b39a4e629def1832b47785ada754f6e83a', CAST(N'2018-06-27T11:32:00.983' AS DateTime), N'111.111.116-47', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (963, CAST(N'2018-06-27T10:02:03.813' AS DateTime), N'e9280fc4a320c4b5e5bd32eb0825488e16b90eaf7ea3758585d6bf8fb0ad171a00ee4db4607ea53c3a597868fc549c36a35dc9bfcf5ed12201753c47bbb8ac91', CAST(N'2018-06-27T11:36:43.360' AS DateTime), N'111.111.116-48', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (964, CAST(N'2018-06-27T10:02:07.603' AS DateTime), N'9f6616764228c3ff17eb536618465ee784db99ee673f12f186f1cab783759b7081d3c544ea9ac300b86f8825b0db9288d68c67fee52f49ea7553aac0753c71cd', CAST(N'2018-06-27T11:34:13.547' AS DateTime), N'111.111.116-49', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (965, CAST(N'2018-06-27T10:02:13.753' AS DateTime), N'ad6305fe43c4b167a7ff1f9215aca46c1da536b3cc520b2e20e8814c7e130522be9961c5c5b4ab7d7b839a5477667d7aeb47cefaf0e4bde9a450d40363bcf142', CAST(N'2018-06-27T11:32:13.753' AS DateTime), N'111.111.116-50', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (966, CAST(N'2018-06-27T10:04:16.127' AS DateTime), N'c63726ed3b627adc64a9de95c7e759c9b7c5d500bc41c4a823592b1e785cfcb0873c7d42b1be113b6246ffeb317291bb7c66c9536319897c26f495542654d1a8', CAST(N'2018-06-27T11:37:43.800' AS DateTime), N'111.111.116-51', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (967, CAST(N'2018-06-27T10:04:45.873' AS DateTime), N'207d574a32e66c17ea79f29093108862511e074a86b244695ee3160a81f73aa6e8dff61d8a55d1cecc215b5e4368f446690fdf1457ada9465b5d023341ae490e', CAST(N'2018-06-27T11:34:45.873' AS DateTime), N'111.111.116-52', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (968, CAST(N'2018-06-27T10:04:49.170' AS DateTime), N'60548d0415019a4487cb6c45cf4a6622c75aa8cd76ea5de4cb45cfbb66d90d670ebb2194b2f4c4ecc7934c42201491772be343087e32eb7d1785a161eec12807', CAST(N'2018-06-27T11:39:19.897' AS DateTime), N'111.111.116-53', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (969, CAST(N'2018-06-27T10:05:28.443' AS DateTime), N'fe10779d6ac40c5b5d0e10f83dfbfaaa7c7fcf857671369c9e4733e113481335d9b475c0e7181d8eff8bba66fdf92f8f39f78287653758a23b8de9ff9d617542', CAST(N'2018-06-27T11:36:32.003' AS DateTime), N'111.111.116-54', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (970, CAST(N'2018-06-27T10:05:51.413' AS DateTime), N'c4b3f8c57997bba2bc698c9a3c21fa1647cb59b8e334ccf4085fed632ab0f8bb72ac91b1079d33d188714e030029d9a6def5373f6f0aebe5ca3041c44a7e3ace', CAST(N'2018-06-27T11:45:51.897' AS DateTime), N'111.111.116-55', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (971, CAST(N'2018-06-27T10:06:45.313' AS DateTime), N'4eff6ec598dbe5812d396ca65e87ffaf4dcce9bc4ed2023262d6f5744d2b99158c6f0f1c61be143bb7d289143f3fadbc1e5874ca0eefd782c7d190fe47764b6c', CAST(N'2018-06-27T11:41:40.963' AS DateTime), N'111.111.116-56', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (972, CAST(N'2018-06-27T10:06:58.360' AS DateTime), N'a4858c72a6634850f68df5a873bb03a860c747febacf816143125bd411cca5d4bfe8e04c3a390979955cfde56c8971d74b093d77bd03cac06890cefd6ee65ce0', CAST(N'2018-06-27T11:38:40.817' AS DateTime), N'111.111.116-57', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (973, CAST(N'2018-06-27T10:07:32.257' AS DateTime), N'f28ba6022470660c0dfe8b35245370fc3d76d3dfeec14a92c9a347aca508ea074c9deeb4f898a4ea34d4e03865814cc08d4e879b30e57453988e9ddbb1009d80', CAST(N'2018-06-27T12:02:38.910' AS DateTime), N'111.111.116-58', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (974, CAST(N'2018-06-27T10:07:41.170' AS DateTime), N'165d7a4345d7a9ad96e91a1102d98da8b898dd66d1cbaf812bb31f825ee097cd772965f725e04c51370b0ac2554debc9744f3330ced597a38193629083ac35ec', CAST(N'2018-06-27T11:37:41.170' AS DateTime), N'111.111.116-59', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (975, CAST(N'2018-06-27T10:08:45.273' AS DateTime), N'c0acf26b331ea53633e790f1e99a5b3552e4d2fa3e645cabda4c199fbd6343fc548382795ffba5469c7de53d13086d719541fcb0a45f546eeb1de3cdad373925', CAST(N'2018-06-27T11:41:14.813' AS DateTime), N'111.111.116-60', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (976, CAST(N'2018-06-27T10:09:11.173' AS DateTime), N'013d4e7c7e82be2958d916615d69046f5dd4b7d237361b474f7a3286d1ada8e1d94159ca893014dffd406633bb52e082e17a5b50b917a49a4d66a0e25f2b7eff', CAST(N'2018-06-27T11:43:41.160' AS DateTime), N'111.111.116-61', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (977, CAST(N'2018-06-27T10:09:20.263' AS DateTime), N'9c3eb3573a412ce9e5420da50dbb09cf2d47e93ffe7a7e4f80f4de634e7fcc02e439df4c770d9fc969bf074ea316205c9ccdf72c7d7de70905bf057306f327c5', CAST(N'2018-06-27T11:41:53.853' AS DateTime), N'111.111.116-62', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (978, CAST(N'2018-06-27T10:09:35.443' AS DateTime), N'eff7ac639f5a4c286580157af3a6e22e05756aa4b1a031ce975901d731c7a70569fd10b86f3090a8b0cd6f5d8380693652fed84daf31cf9b29029a8c37c3d778', CAST(N'2018-06-27T11:40:16.503' AS DateTime), N'111.111.116-63', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (979, CAST(N'2018-06-27T10:09:36.340' AS DateTime), N'f0c48166ec4b9ec790907fc83857519a20c1bc9015ca82ac415799f1a1118071bdd2e70d031701107e9d5238375b25248c97e61821174d8078a17ab4c1e91b89', CAST(N'2018-06-27T11:39:36.340' AS DateTime), N'111.111.116-64', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (980, CAST(N'2018-06-27T10:09:51.100' AS DateTime), N'cbf6276dc76fcfb8b91a77ab597aea6e72a5c53fdef804528cf49ef2ead3d015e01602f7c46f392141eb44b2c7b9e523aa968af1c539d4cb5ba521e2e378a702', CAST(N'2018-06-27T11:40:10.083' AS DateTime), N'111.111.116-65', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (981, CAST(N'2018-06-27T10:10:07.350' AS DateTime), N'a81f6ad4c4f076b97114ec24f33466c4e4b10119e03bef99325863a5f42354b675dc584506dfba25f2af285aa4b2db09eaa3751b3a0196701be1ba90cec2c111', CAST(N'2018-06-27T11:41:56.953' AS DateTime), N'111.111.116-66', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (982, CAST(N'2018-06-27T10:11:48.450' AS DateTime), N'606aae539310f4aa2d673f0ad2fd1d1a92bca07faff72807e5979535f5144fe9e0f4a591abfd9b83d13bc9a671a4cf297453ec927cfa87053e389107c56ad81b', CAST(N'2018-06-27T11:42:26.900' AS DateTime), N'111.111.116-67', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (983, CAST(N'2018-06-27T10:12:04.383' AS DateTime), N'9db6d5d206816daef6500f74adb5dd28357e393033c239f5ce34162a768871fb5d3358df1ed1ec96320639d2925085f168c24dd1ce44b07f5a3f2cfdd815e32b', CAST(N'2018-06-27T11:45:12.533' AS DateTime), N'111.111.116-68', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (984, CAST(N'2018-06-27T10:12:37.097' AS DateTime), N'86ed4550a5d68265ff266ae4009633eca151da52efd6ae3c5d1dae033a311f18162b89d036e0d4860151537a70617df34cbd802b637497705e420b870a9cabf3', CAST(N'2018-06-27T11:42:39.143' AS DateTime), N'111.111.116-69', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (985, CAST(N'2018-06-27T10:13:21.143' AS DateTime), N'9bbf48b367f2789f55f70f2ff4e9f8a34180804a8e32b0ce9c2ab0265b3360b05aa74016e5ebe1a24ac12c4ccb076998d4a848aa5df2d0a1684e4fd736e6683c', CAST(N'2018-06-27T12:06:47.763' AS DateTime), N'111.111.116-70', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (986, CAST(N'2018-06-27T10:13:28.187' AS DateTime), N'd93cace761a4abeaec08af2eda4ecadb60ad03051828ab8118696d7a20c994de1e3f57565a31eb5abe80fbff6796f00b85ff44d2b85abfe1ad59d4d3065619c7', CAST(N'2018-06-27T11:43:29.800' AS DateTime), N'111.111.116-71', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (987, CAST(N'2018-06-27T10:13:34.213' AS DateTime), N'a68d14dfe6ab8a94799cd0266a2a537eb9eb5b8aa8d6a6a2ad9536cf44ce015e6cdb4e73b118390469cfe84472aca1551d98e4ff705ec179fa153dc32ce00d42', CAST(N'2018-06-27T11:43:35.730' AS DateTime), N'111.111.116-72', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (988, CAST(N'2018-06-27T10:13:53.690' AS DateTime), N'e5e6acb3ae13c8a19c3d6417b8423fd543e509683daa5adc2fa26548d88954fc23e569c8a3ca3a07d7ccfcea735570817ce60f32af1996a8c0988e314ce5e5d3', CAST(N'2018-06-27T11:57:01.887' AS DateTime), N'111.111.116-73', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (989, CAST(N'2018-06-27T10:14:28.920' AS DateTime), N'e938113b93572ee5be135a753814acfc1a5990d59363d0975832463995100c591511e98d30d99b96251318d3e292ca84d6d6f382036d7a4d52fd3f7b09127012', CAST(N'2018-06-27T11:44:28.920' AS DateTime), N'111.111.116-74', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (990, CAST(N'2018-06-27T10:15:11.557' AS DateTime), N'3f3677aee8fcc9c1600475903fa4523641bf2f46316bc2cd6f7d13899f568493ac6b0eb415a6930af7164706f7ace2adfebd8ff3b163f14d59fe079a1f90174f', CAST(N'2018-06-27T11:47:59.837' AS DateTime), N'111.111.116-75', 2, N'780DE954-B16B-E711-9428-005056ACE682', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (991, CAST(N'2018-06-27T10:15:15.163' AS DateTime), N'5e5024d04bd675a632fbed644123fd282df2a06f6be4e267ddf636923b4be8fd427e803386d70017fe8ae52a481496d57a5104f04bdbc067836e704e090e2957', CAST(N'2018-06-27T11:45:15.163' AS DateTime), N'111.111.116-76', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (992, CAST(N'2018-06-27T10:15:21.663' AS DateTime), N'429e7aa2554ec6d5b10c96a979c63c78b6efbfc075932271c9522d7b156931347838a2aabd85d798e38b1e10e26ec7e396b30e91c5ffa6c2db665bbf0c2a32c9', CAST(N'2018-06-27T11:45:21.663' AS DateTime), N'111.111.116-77', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (993, CAST(N'2018-06-27T10:15:32.290' AS DateTime), N'228c8fce9bbb464aa22faf8802b8c32dd39b021386fc58ab18224e10f48b5931c9bdddacd54afa3ac5751998a181114bebb8da421229104aa086c4d4bf322f13', CAST(N'2018-06-27T11:45:32.290' AS DateTime), N'111.111.116-78', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (994, CAST(N'2018-06-27T10:15:34.533' AS DateTime), N'be5bc16ac3bf8a709a61bdb84f2341793da8d8f3f472c32c3e4160e513ee5d4e46034383b1f95341721ae4f4781a3c32792714621d53486ea102e65c8c079ec6', CAST(N'2018-06-27T11:46:16.577' AS DateTime), N'111.111.116-79', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (995, CAST(N'2018-06-27T10:16:25.867' AS DateTime), N'345b8a2a28338f050fee6d4640ff1f501d76f497fde3a7f710f8df6771eb90f236ccb010d50e9b647396f09188ec3e688e59f39f7898f01e18d3f196a9962a29', CAST(N'2018-06-27T11:46:27.473' AS DateTime), N'111.111.116-80', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (996, CAST(N'2018-06-27T10:16:29.137' AS DateTime), N'426a344834e531a2957244b397e9b1058ced82bea10947dcc1c034abb4e04524cb17cd5225d4e559739cb3ffb874eb991d6129739f39f2598a963bcebc236e9a', CAST(N'2018-06-27T11:46:36.600' AS DateTime), N'111.111.116-81', 2, N'3A7FB741-0C6A-E611-9414-001DD8200008', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (997, CAST(N'2018-06-27T10:16:58.827' AS DateTime), N'b1a8c28d62edbed52d92b70e6467d34ceee8788ba5d4460a4fddbcbbe69816a6cc5ab9b7c1751c383bbd23103c8ec11af9cbc230eaee5363f37af387416aa953', CAST(N'2018-06-27T11:47:00.747' AS DateTime), N'111.111.116-82', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (998, CAST(N'2018-06-27T10:18:13.820' AS DateTime), N'b79a72a9db23ea1b4fe302bf464d2c748e3dcc4bfdb1eb12ae8798d947a549db7823a9d55be49854d5e90606c7863cda1bef2a4bfd380afcd8896ecc13ca767a', CAST(N'2018-06-27T11:48:14.707' AS DateTime), N'111.111.116-83', 3, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (999, CAST(N'2018-06-27T10:18:19.433' AS DateTime), N'8258417c0ff14365298f373e26683337b0d6eeae958afea670dc76116b9011cfeb35e3cf276280f87cd916a32fc6bc9f34e9e5d2a64dab50ea5c939f6e3bd3c8', CAST(N'2018-06-27T11:48:59.280' AS DateTime), N'111.111.116-84', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1000, CAST(N'2018-06-27T10:18:35.897' AS DateTime), N'b70530a3bc2735d74eda664aa9e2b5c6f905ff1c29f7c622e056f83ad19d14df92dc99035ecd871a28ffe4e61d960d50aa61e7c08cad875ac1a44bf38fea2043', CAST(N'2018-06-27T11:48:36.517' AS DateTime), N'111.111.116-85', 3, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1001, CAST(N'2018-06-27T10:18:43.520' AS DateTime), N'4ecbd308ab1ea57e3f749d6413d85049e8ae8540d7ed3a01b5d03c6fce22b47fb25963c328b504e1bfe301f6966df1995df0eaea10ad5ebfcbd18622a29834e5', CAST(N'2018-06-27T11:48:45.287' AS DateTime), N'111.111.116-86', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1002, CAST(N'2018-06-27T10:18:54.630' AS DateTime), N'ea0dce94b94fcde2251e2c78b2b67138a0c027704f9739e3ccc08a80ecf2ecda0ee1bbdcac465cf6a17c68742cda97f18466064449a99ce090d5b09f767552d9', CAST(N'2018-06-27T11:49:23.970' AS DateTime), N'111.111.116-87', 3, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1003, CAST(N'2018-06-27T10:19:01.370' AS DateTime), N'a501df60e9e1d8caebabb9799309f94c8ffe90eda65ce3e4965e3d9414fc8129d6dfef9181d403699b2a40bd41629927a34e0c9d8983101f9502383c5989d378', CAST(N'2018-06-27T11:50:23.183' AS DateTime), N'111.111.116-88', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1004, CAST(N'2018-06-27T10:19:01.700' AS DateTime), N'7ae3c312620fcf3da4df171b17a432df38eb67af03e626d7039288459ababab722afbea6d66036d3add7213f2d6055bc9053214d8a08ee979a2e201d0a629d5b', CAST(N'2018-06-27T11:49:03.217' AS DateTime), N'111.111.116-89', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1005, CAST(N'2018-06-27T10:19:37.260' AS DateTime), N'6287ce7d38aef4dd1aa0d288f31b9f51e73049f2a230063692ab37cad32ead19a0f7bcb9af7f6366b4f90652c227a89620ab4070c3a8ab6f6303dbf319f40518', CAST(N'2018-06-27T11:49:37.260' AS DateTime), N'111.111.116-90', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1006, CAST(N'2018-06-27T10:19:50.843' AS DateTime), N'6f33e6e1547d0cfe886769fc166052a01896eca9768685d2bdded99b7ae368178566af720bd8ee2c495a2aa56ae5a74ebaaf7e6ed76345fb45ecadef550b0848', CAST(N'2018-06-27T11:49:52.620' AS DateTime), N'111.111.116-91', 3, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1007, CAST(N'2018-06-27T10:20:20.177' AS DateTime), N'04cdff79001efc3f3293053ffebdda8a47981aa96c4170089ac083cc2bc243c187bf44d477a636287da1d7a76450f8f33effa8fdcf478679a4dac5bd298cd1a5', CAST(N'2018-06-27T11:50:20.290' AS DateTime), N'111.111.116-92', 3, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1008, CAST(N'2018-06-27T10:20:28.220' AS DateTime), N'0882758df94a5c1ab8aff41dc8495454d0bbead93dcc0dfeffb1ab8241c806df760b7aceca686f6c98127110fd4ed3c5e987e66cd636b65ba7f1b2cfa97330ae', CAST(N'2018-06-27T11:51:50.647' AS DateTime), N'111.111.116-93', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1009, CAST(N'2018-06-27T10:20:34.253' AS DateTime), N'1488926a49ee9f23c952c7673fd9fc77f864cec0124454af53316387aec321a419912f1d64083a83f31b094adaba974f04ce8a2ebd935fb3b39eacf4f01626a3', CAST(N'2018-06-27T11:50:36.240' AS DateTime), N'111.111.116-94', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1010, CAST(N'2018-06-27T10:20:37.867' AS DateTime), N'35975af0c8fef88808f6b702214d72f5ab75083607254c9e2fe11cb35c49b67178624388831f59d3dd17f573c9dc5d2815b6ce26e8eb08cd614e2bd88907a40f', CAST(N'2018-06-27T11:50:37.970' AS DateTime), N'111.111.116-95', 3, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1011, CAST(N'2018-06-27T10:20:50.120' AS DateTime), N'4d9fd5e641c82be9dd73ae7c89e6905c1ff3929281984b49166e05897a51bd7304a6970cb5524c4bcc23b8bd1648626d7d08794dbff2827540afcec909f6c408', CAST(N'2018-06-27T11:50:51.687' AS DateTime), N'111.111.116-96', 3, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1012, CAST(N'2018-06-27T10:21:02.697' AS DateTime), N'be538b713171fdef290b144eb13c41a30823e7b102b3dfabaf993c3c2b219f9566d57d8fcdc8bbecc0cda6905b00b61e418a20faa3116d14995cd52248a90c5e', CAST(N'2018-06-27T11:53:08.823' AS DateTime), N'111.111.116-97', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1013, CAST(N'2018-06-27T10:21:36.967' AS DateTime), N'859c06f071ab834c90aeeeb5b9710d23f8d4debf80d926a60e7b9c228eee5ecfc2690356c0c7e8c840607785a420914a63891d8209afc676b968c8dcd3713771', CAST(N'2018-06-27T11:53:35.133' AS DateTime), N'111.111.116-98', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1014, CAST(N'2018-06-27T10:21:38.497' AS DateTime), N'f660a233d7e0ca39ee04225021fd1d0cc71ee8700bb5883f3188419f9e53dcfc870a164f84be7b625a0b5f5d896b74bfeef0a2cc13df7caefd00bdecf84983e0', CAST(N'2018-06-27T11:52:26.683' AS DateTime), N'111.111.116-99', 3, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1015, CAST(N'2018-06-27T10:21:38.850' AS DateTime), N'5d08a4fa004944d713bb2ebd1165db60f166464454c3e31651cb670bcb1a7c74bd5ff28275270f2ba9db33c9fe3207c8afd174edd54c386615c2dcf199786c71', CAST(N'2018-06-27T11:51:40.473' AS DateTime), N'111.111.117-01', 2, N'CA4C4CEE-CBD7-E311-83B0-02BFC0A801BB', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1016, CAST(N'2018-06-27T10:22:02.740' AS DateTime), N'43cd10362ec7b73d4bbb2bd24a5505936e9d1cad658a8b5a933f165c491e690bd784433af806772261b1bf74ce65234718de45921bfa09be8f9708b25e1909f8', CAST(N'2018-06-27T11:52:04.180' AS DateTime), N'111.111.117-02', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1017, CAST(N'2018-06-27T10:22:10.543' AS DateTime), N'3caac40f62b893bfc7f252d6330db79b926af3fd1ca1cccf6b70393a842e1c951479eb88dcc09bbf86e8a839b1882de1358b476ada0157dfcdd5420b02faf930', CAST(N'2018-06-27T11:53:03.077' AS DateTime), N'111.111.117-03', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1018, CAST(N'2018-06-27T10:22:31.280' AS DateTime), N'09820b6ad0e2721a22e4c1fbfcc734dfbff9b93d6f0d39e12e0f15873f066db866d4f9995cf7157bd291362e8494dab7e03042873144b8808e8e5178c6c228bc', CAST(N'2018-06-27T11:52:31.280' AS DateTime), N'111.111.117-04', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1019, CAST(N'2018-06-27T10:22:42.370' AS DateTime), N'93281cacbf0b3b1771bbc9891da98ec07c638f4fcc8148a934b2b15cabc0b8c4c82b9521a64e9e9d14166d0593334bd4328112cb23f87b9b225a06ebfb8dc856', CAST(N'2018-06-27T11:52:51.987' AS DateTime), N'111.111.117-05', 3, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1020, CAST(N'2018-06-27T10:23:06.123' AS DateTime), N'55b9e6c0deb47e85dc287dfc6f4000229a13ed284962ddb68858778deb98be02b208c62a945215d459d6696670a694778f700b079675d8eb14d30d9d2c6be925', CAST(N'2018-06-27T11:53:07.377' AS DateTime), N'111.111.117-06', 2, N'3A7FB741-0C6A-E611-9414-001DD8200008', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1021, CAST(N'2018-06-27T10:23:46.827' AS DateTime), N'a80fe2dd2934d5b4484a30c25fd960e717aa9746fbbab98e63f76ab2c673b12512448a6a995bde39bf0279c814984f2a58dda359c2df216fde529b3c04ccf622', CAST(N'2018-06-27T12:11:05.510' AS DateTime), N'111.111.117-07', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1022, CAST(N'2018-06-27T10:24:13.850' AS DateTime), N'7f50573a883dd8a10d3543198cd387f9a38ca5ab8ef54312513532f7e13a6acca34d61da09f3373f3659bcadf8b14b950e6f55e1b51104920f6211bda30dac1d', CAST(N'2018-06-27T11:54:15.603' AS DateTime), N'111.111.117-08', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1023, CAST(N'2018-06-27T10:24:17.627' AS DateTime), N'245a7d4a14c20a9cd96a21b439a7f978e6f70b15ed762f003c7c51f4f9f7e29fbc78b487ba59685cc2c8a8c5901ffed7a1aa942eb5531f0cb07439222aa398c8', CAST(N'2018-06-27T11:54:34.083' AS DateTime), N'111.111.117-09', 2, N'27168365-8D1B-E711-941D-001DD8200001', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1024, CAST(N'2018-06-27T10:24:27.007' AS DateTime), N'23a43da19e9d559b20a1690c51fd7a5efb659be12fcf33f90e8a3bc462807cd7f2c8394b6f6b058b07f7e8849ea71baaf516d7c46381a221043e5c8b4aafedfb', CAST(N'2018-06-27T11:54:28.143' AS DateTime), N'111.111.117-10', 3, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1025, CAST(N'2018-06-27T10:24:38.270' AS DateTime), N'1351402a6f71d5662aade08273500f023160dbc77776372103265a35cc23f5e1ad38a21761e6f0c1f6aebd4731e6f396c710359292f4daa0c1e56bf88c4b86ec', CAST(N'2018-06-27T11:54:38.270' AS DateTime), N'111.111.117-11', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1026, CAST(N'2018-06-27T10:24:43.830' AS DateTime), N'01bbbcb8b55b8d97e0dcab8e742420dd20c1fb4c12ed1ef66f95833353da8a6190937302161759269a6afbfda90b6b947dc1a1c691dfda5440504ecd63a36226', CAST(N'2018-06-27T12:13:07.900' AS DateTime), N'111.111.117-12', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1027, CAST(N'2018-06-27T10:24:54.360' AS DateTime), N'a99742ec7e85cbcdbd4831088d05419f717dd2c2944679b1b02969d751f03b2e4d3c0953a59eedcb0d131802ad54fdbebc6ec17c516c355d008f42f25aaa310b', CAST(N'2018-06-27T11:54:54.360' AS DateTime), N'111.111.117-13', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1028, CAST(N'2018-06-27T10:24:57.310' AS DateTime), N'60ae73841b9b5328095df1580b60ed7aa596958f29e8191089fba1af90ca5cef8f54990cf6505aca692947271cc06a42deb45024f336b89aef690bdfab0e2c2b', CAST(N'2018-06-27T11:54:57.310' AS DateTime), N'111.111.117-14', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1029, CAST(N'2018-06-27T10:25:02.310' AS DateTime), N'103d227d60dc2b9a5992f084d09af2e5a29ff71dbefaa0746d40e2d5b038d78a68c407e4ed58275b1be51aa77c8840da03da4abb5e91d0f515fe72da726ac99f', CAST(N'2018-06-27T11:55:04.100' AS DateTime), N'111.111.117-15', 2, N'91B28C72-3F76-E811-80C0-005056955165', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1030, CAST(N'2018-06-27T10:25:10.617' AS DateTime), N'998a591cbc37d45e9eff7b09f9eefc18ab8288fc5ba427cf6e6ed625ded7ad49b62fb3009fd9b3d4c35e33a96f12a3361db12ef340c3c69142017297d7f290a7', CAST(N'2018-06-27T11:55:11.947' AS DateTime), N'111.111.117-16', 2, N'00A18920-CBF2-E111-B994-0026B97E0079', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1031, CAST(N'2018-06-27T10:25:48.970' AS DateTime), N'1d440dfd6d9ff78bb8ca976da124439d73221790cc6f26e256724a9d953ff657e18554137d67f79d05c5e1bd4983f0db00d03106c150d482fa37bfce4b7885c3', CAST(N'2018-06-27T11:55:50.220' AS DateTime), N'111.111.117-17', 2, N'27168365-8D1B-E711-941D-001DD8200001', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1032, CAST(N'2018-06-27T10:26:57.580' AS DateTime), N'7a126886ddaa6bf30990880c5a52958bbfb838360b49285e1341e7da19300ba4467aa277167c34dd50aba1aac0d06b70b800e0c6f055753281e632f47e8ccbfc', CAST(N'2018-06-27T11:56:58.583' AS DateTime), N'111.111.117-18', 2, N'3A7FB741-0C6A-E611-9414-001DD8200008', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1033, CAST(N'2018-06-27T10:27:23.737' AS DateTime), N'e1e535916d106d5d7204c96e8166491e7314ae5ea683f518ca7ee0fc530e56cf46ed40552bc98203a829609953093de49a2499648ba824435d0c901d723376ab', CAST(N'2018-06-27T12:44:59.077' AS DateTime), N'111.111.117-19', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1034, CAST(N'2018-06-27T10:27:31.953' AS DateTime), N'2dfa034bf3266ab69b0a0442b89d62ffe3ba8841b9f2f04fb711c785f26fed6f1ca8c6d675684963774d9638fc94a0c9ee4dd232c434f0552a1c12dc148be2d2', CAST(N'2018-06-27T12:06:46.993' AS DateTime), N'111.111.117-20', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1035, CAST(N'2018-06-27T10:28:02.230' AS DateTime), N'8d3f5c5e9a4aefe8e36a4d865dd39b898fbc23b787428b1410a9c0e2740ca0870a78a30520917ef6f3236c043e2dc3e556880c41a30464987f115b88b8ff0da4', CAST(N'2018-06-27T12:40:20.680' AS DateTime), N'111.111.117-21', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1036, CAST(N'2018-06-27T10:28:10.897' AS DateTime), N'351fb87e1d14cb8021cf0656abe50ea0cec1b865465e896547b7524b7b497c3d648c6761c8af4420160627104fc176234c76ce6efa1f720d9be7e1307e501dfe', CAST(N'2018-06-27T11:58:11.703' AS DateTime), N'111.111.117-22', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1037, CAST(N'2018-06-27T10:28:43.107' AS DateTime), N'5b451af29111c130a49ed6eb266bd8215e7ae85c40c0cc02d0c6a674cceccbaa4b8a19453bd801d6aa9509b4cf3e889541cef6e1eef4797a16e40d3945fbf7a9', CAST(N'2018-06-27T11:58:43.913' AS DateTime), N'111.111.117-23', 3, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1038, CAST(N'2018-06-27T10:28:46.893' AS DateTime), N'1663e5d0a2b3d192f8b64035b1ce7a74f56b5bcdbef02408ec47594ddd3d89002abb9eafa4a5817786ecccd615d91d5e158d86305237168bac673802ee2baf33', CAST(N'2018-06-27T11:58:57.300' AS DateTime), N'111.111.117-24', 2, N'B675FDC8-663A-E311-B421-02BFC0A801BB', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1039, CAST(N'2018-06-27T10:29:01.610' AS DateTime), N'460f58c2444647639752fa59cf7e651736253c7bd318e4602197e831a268e0141b0e92c150cb79984588db692424b8de19e07f90196ff34d1881d476b2399eb2', CAST(N'2018-06-27T11:59:02.583' AS DateTime), N'111.111.117-25', 2, N'3A7FB741-0C6A-E611-9414-001DD8200008', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1040, CAST(N'2018-06-27T10:29:08.400' AS DateTime), N'c019d7c8a6c85c62f0aafda291b0dfd5165c1aee3ff8a0413aca80550d414f61c3d4487de1e25dc895ee4183eda12b94d4551b00bbd45619df6db95e04720e2a', CAST(N'2018-06-27T12:01:02.637' AS DateTime), N'111.111.117-26', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1041, CAST(N'2018-06-27T10:30:00.140' AS DateTime), N'7e3e04913d8e15821a95ffe98590e8c05ceecd2df393db15917f1103e5f32224429a5400c010a907c07fea379410b93c3a9596832e50f314e4a16b3e9e73d6d3', CAST(N'2018-06-27T12:00:24.900' AS DateTime), N'111.111.117-27', 2, N'00A18920-CBF2-E111-B994-0026B97E0079', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1042, CAST(N'2018-06-27T10:30:12.757' AS DateTime), N'f01238d03a6df9a1e853051c95c2ec274822c6552c76d23f0cb6d66e0f5454d729c53e63033891b417d7104855762cfde3e56179af1d4a26365261c22d1d7cbe', CAST(N'2018-06-27T12:05:02.383' AS DateTime), N'111.111.117-28', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1043, CAST(N'2018-06-27T10:31:11.157' AS DateTime), N'fd94ed2eaff57508504929101d95bc50a66bfd91576cbd2270bb5959aeec82c3add09d7f37183d70358930fd1375402a983728d6b26cdc26555b45a0c3a7bed6', CAST(N'2018-06-27T12:01:13.450' AS DateTime), N'111.111.117-29', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1044, CAST(N'2018-06-27T10:31:16.690' AS DateTime), N'3f444d0058862b3da63b4a539f0de306d0d8248cc732c46772b4212701940bff5f8b74d128499d737d6b36228bf813c913cfe23e4d8d4c5dbc86380000ef5013', CAST(N'2018-06-27T12:02:29.063' AS DateTime), N'111.111.117-30', 2, N'B675FDC8-663A-E311-B421-02BFC0A801BB', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1045, CAST(N'2018-06-27T10:31:38.670' AS DateTime), N'd649ce58b242c3bf59643d07780f43b156bcbab67140da4aa6208186e081884478b1cbbdb8162fbacb0560d897b5d7027fc23e5558039d94907dc108e39e48bd', CAST(N'2018-06-27T12:04:00.827' AS DateTime), N'111.111.117-31', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1046, CAST(N'2018-06-27T10:31:39.147' AS DateTime), N'0ce7f5b1024157f416ac197d588b2271e7d76ffd44e2bb4fc30b38f9c862dac539670ba697a0fe2eb38740f75e0352a21db801bfdf311ef80d1c7289830005f4', CAST(N'2018-06-27T12:01:40.263' AS DateTime), N'111.111.117-32', 2, N'5AF05FF8-091B-E711-941D-001DD8200001', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1047, CAST(N'2018-06-27T10:31:46.297' AS DateTime), N'fdeec2a05e9f29078743d6e6ccd2c418090f0dad848b1aa5c11b966714a601b9045a594fd90eeb0ef23b72028a0e290eadcc148e20396c90c1dcd85777cf04bb', CAST(N'2018-06-27T12:04:14.180' AS DateTime), N'111.111.117-33', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1048, CAST(N'2018-06-27T10:31:56.467' AS DateTime), N'fb4170d16e92e39a5cf34eca3a2919557b45dc1521155a470aaf5694c95f5b5fe11728340c4c74c43724b18d526bed750b8416457c35f2761c3e2bc56d7d6c2a', CAST(N'2018-06-27T12:01:58.357' AS DateTime), N'111.111.117-34', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1049, CAST(N'2018-06-27T10:32:21.673' AS DateTime), N'1d285381d80d91218a626a10adf9a5897d24fbde26da479f9213d52f991d01cdc773d393e689de822c10fd22fe0d7c8f49519701e997f96e7c73e87e1fab0d20', CAST(N'2018-06-27T12:17:29.863' AS DateTime), N'111.111.117-35', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1050, CAST(N'2018-06-27T10:32:25.150' AS DateTime), N'f48332b13deb8ae9ad6339d0fe4af021fabfbea2788515d43f2ef1ddf259b1697ebf8243012fb6905ce71e220bf322c1a4b542ae6d0a36212556a50301481006', CAST(N'2018-06-27T12:02:26.010' AS DateTime), N'111.111.117-36', 2, N'16340015-EE46-E711-9422-005056AC7EA7', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1051, CAST(N'2018-06-27T10:32:29.100' AS DateTime), N'c05af3fa30427416019ed3b5c30d90ef24791ef3bf8711e5c4363b09153b6009133f589bc01af0eb316da6366b4576c8fdd492e91261dd406f928026c76c3a4a', CAST(N'2018-06-27T12:42:26.683' AS DateTime), N'111.111.117-37', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1052, CAST(N'2018-06-27T10:32:44.697' AS DateTime), N'efc33e1bb9d10edff65e0494a5af55378d131a77cad052fba9d47c440433be88ef91ab161ccf9eda23e127d241ed5e9ff41e01e83a5afa617a7bf6ce44467a46', CAST(N'2018-06-27T12:02:45.603' AS DateTime), N'111.111.117-38', 2, N'3A7FB741-0C6A-E611-9414-001DD8200008', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1053, CAST(N'2018-06-27T10:32:49.330' AS DateTime), N'8c91fa83afc16f707e282eca8b396700362793e3314b0c699b4dac99fa37a0fd5fa900b882a4e38a66f64b094d499c0069b6978e685905da1a4755c7dc70bd14', CAST(N'2018-06-27T12:16:53.300' AS DateTime), N'111.111.117-39', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1054, CAST(N'2018-06-27T10:33:23.953' AS DateTime), N'c85d6b008a911e49c25c0506298ed0d4b822d4d5374fb97bb0bc2420c07adb97422d3770d87a50971ce555ce091bc5db87fb0b644fef39ca2207e34249b9127f', CAST(N'2018-06-27T12:10:57.800' AS DateTime), N'111.111.117-40', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1055, CAST(N'2018-06-27T10:33:29.457' AS DateTime), N'1a2625ad06f8d444dd3d7150e4dd2064c8bf6dc34ecf544acc8a4aaca364624bca1cb96b8d72c52570c48dde12061c05d1df09fbcd06a452d2ec006231238f73', CAST(N'2018-06-27T12:03:30.347' AS DateTime), N'111.111.117-41', 2, N'00A18920-CBF2-E111-B994-0026B97E0079', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1056, CAST(N'2018-06-27T10:33:33.470' AS DateTime), N'5a1244805cfd50e59a495e58fcfcf67b99035ec4b674fb2d5a02964bc44a70b44d25ff7092d342e90c717e29dea6dfdbbba366f3b4c5a15bf15bb8c416c993fc', CAST(N'2018-06-27T12:03:43.333' AS DateTime), N'111.111.117-42', 2, N'B675FDC8-663A-E311-B421-02BFC0A801BB', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1057, CAST(N'2018-06-27T10:33:44.400' AS DateTime), N'b46873cb45512fed0278b31323a746d34fa3898b4e8a08920f31fc0ce33d5bcab83614c0ff1ad22ce4668e65ee2dfaaf1e9bceb54e9e9b14607c0bc2fd39cb8c', CAST(N'2018-06-27T12:06:47.977' AS DateTime), N'111.111.117-43', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1058, CAST(N'2018-06-27T10:34:19.653' AS DateTime), N'b1e4876fda58490665ad1f1d4e8c887e232df9f7ec56a31e3919e1483ba97bb8ac695a310b66cab8fc7bc235678e7426e6b1ce2941ac3ae2851c457834871582', CAST(N'2018-06-27T12:04:21.530' AS DateTime), N'111.111.117-44', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1059, CAST(N'2018-06-27T10:34:26.857' AS DateTime), N'b2dd34c9325e490e92b020c95bddced1ca05cf44db2eb1adadb83b93877dae490c4a9c8a9082d373dbf85187997881e2ae1709e973ecc7231d681dcf57fb350b', CAST(N'2018-06-27T12:09:58.433' AS DateTime), N'111.111.117-45', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1060, CAST(N'2018-06-27T10:34:32.033' AS DateTime), N'4ce83a8927e293ae55d9f8b11e9696194a9f256d2d34a95876d40a51b25197afbb83cc5ecf0cab09976342cfda867ac701d0c228d57392610dec5d0397afd2d7', CAST(N'2018-06-27T12:04:45.153' AS DateTime), N'111.111.117-46', 2, N'B675FDC8-663A-E311-B421-02BFC0A801BB', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1061, CAST(N'2018-06-27T10:35:09.807' AS DateTime), N'd897a34cd322da6933e401b9f8a7319c40b669912f2e016b3c0021c9add9744605010c8f34ffa800626dc1ab1f86a20dda7bd92a97151f1bad3d878f867f542d', CAST(N'2018-06-27T12:05:11.960' AS DateTime), N'111.111.117-47', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1062, CAST(N'2018-06-27T10:35:39.883' AS DateTime), N'cf60c876c53c0cc28bf4f28cf9d3cd719f959b1bd090ad999a889b52e54e9180fc3c76f0c0ff73cd8effd4fb6a9f7d31c0b27f09a192d17f7629068401a699e9', CAST(N'2018-06-27T12:05:41.510' AS DateTime), N'111.111.117-48', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1063, CAST(N'2018-06-27T10:35:39.900' AS DateTime), N'c6de31ddca7741a2a968be98ab6b7d6c26ece950e10e95708dd5a508e7edf8a0cf622c0018f2edad4f45d5dfd42ca33ca84f5cc7e9be25fcc2fa4263d827695b', CAST(N'2018-06-27T12:05:40.480' AS DateTime), N'111.111.117-49', 2, N'9E4720CC-E4EA-E511-9409-005056200001', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1064, CAST(N'2018-06-27T10:35:45.970' AS DateTime), N'161644974caea4330098767273597883a6384a241d3992a315cea5dd3c88766d78600ea6267875b69f8dfd260feb1aeaeab670ba4ddb87d4a52a675fc19592ea', CAST(N'2018-06-27T12:05:46.850' AS DateTime), N'111.111.117-50', 3, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1065, CAST(N'2018-06-27T10:36:10.313' AS DateTime), N'f85a6758d12f26ba94c36454e53a483e4308495a9b3ff71f3b358770bd88dbd102ff09efecdc4b82e36d6e144b356d8b2a44fc236cad27681c8a9eef4ef513e3', CAST(N'2018-06-27T12:06:53.827' AS DateTime), N'111.111.117-51', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1066, CAST(N'2018-06-27T10:36:58.710' AS DateTime), N'b311bfdc31c551231482393aed6a204f53566facc0571338bb9c906956cd71da55653a9a432befc117ab0c3d4af9ecc377fd9c6d0d5f760db827326a88840dc0', CAST(N'2018-06-27T12:07:00.257' AS DateTime), N'111.111.117-52', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1067, CAST(N'2018-06-27T10:37:06.077' AS DateTime), N'991daa335e51f561de09fdcda3e8ed52477b24ad981512edebbf9f181682666ec575668282c8695c326ba8a97c7254a025b23abd043496ececfbd3c36a9288ac', CAST(N'2018-06-27T12:08:59.163' AS DateTime), N'111.111.117-53', 2, N'5AF05FF8-091B-E711-941D-001DD8200001', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1068, CAST(N'2018-06-27T10:37:25.983' AS DateTime), N'e9d0b0e6eb3ddca9f34c7d9fcd40c89015205aa378e027b9ce08a7ff8f6fc41496c5220f59bfee3ef84aa8faa29e7fea9e18133fcb43a88db77780244c61cf6c', CAST(N'2018-06-27T12:08:58.817' AS DateTime), N'111.111.117-54', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1069, CAST(N'2018-06-27T10:37:33.403' AS DateTime), N'687d878677200e682429b8f044f2f43851cd9def158eb069a9003e2d889c4cc4338f1c9adb47b9257aeff1c274ecf37487e96ef8106cb9e1b1c00c597278f807', CAST(N'2018-06-27T12:07:33.403' AS DateTime), N'111.111.117-55', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1070, CAST(N'2018-06-27T10:37:48.893' AS DateTime), N'06386b2522f0b6dc4c95cfa9bd1729cb588365a589f16e01dacc6e5aaf310c65248586afda275c9720e8bc3b1cf72902a991db8f8c116277d21b0b4855a42c43', CAST(N'2018-06-27T12:07:50.550' AS DateTime), N'111.111.117-56', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1071, CAST(N'2018-06-27T10:38:41.783' AS DateTime), N'e9446807cee1f2fb7ffa3f0c04715a5ceecd2cdff4ee3165160c52ada644b4df1ec2afefdd69872f8ad6cbedcd1e0ce08d70274ba9340c89a9f61eaa8ca11e63', CAST(N'2018-06-27T12:08:41.783' AS DateTime), N'111.111.117-57', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1072, CAST(N'2018-06-27T10:38:54.167' AS DateTime), N'7bf2946d886f6721dc27d3e355e85cb5a7824c10b56d0a6f17b192d1312bcc25a6c1aa5cdca9debcd140f5b70294744bd9ec1a388a3adc67de1440f973cb52b0', CAST(N'2018-06-27T12:37:35.447' AS DateTime), N'111.111.117-58', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1073, CAST(N'2018-06-27T10:39:07.250' AS DateTime), N'4ca3210a67dc8008b7ac644d894913f50f3d9f1987bbd3f5bd141b0b4ca7279d4daed8d1f2488bc762b73c8e6052c2e90bfa8493ce2664603546f763c049764b', CAST(N'2018-06-27T12:09:08.290' AS DateTime), N'111.111.117-59', 2, N'B675FDC8-663A-E311-B421-02BFC0A801BB', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1074, CAST(N'2018-06-27T10:39:11.973' AS DateTime), N'c269370aeb97d14ad049451793859fa8c41ec311d0c62c072b0dd66cf8a7634c459869504dc67d697bfde8a37c9ac36e2b54dac1f2eeaaddaf5071fab8e5aae2', CAST(N'2018-06-27T12:09:13.100' AS DateTime), N'111.111.117-60', 2, N'D4F8F8FB-7934-E011-93F9-0026B97D92FF', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1075, CAST(N'2018-06-27T10:40:07.817' AS DateTime), N'edef044521b117cf5cb061c447fb880e802b17130fa61097f5322cecaa7a9811312fa4d5b6ec6d63b9025db10212bb789704e747027cfbde7704ddea19b38259', CAST(N'2018-06-27T12:10:09.220' AS DateTime), N'111.111.117-61', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1076, CAST(N'2018-06-27T10:40:43.150' AS DateTime), N'8c93fa331984877862713f391ea2a6bbedc8a437bdb13bcb0c389180f72316c93ee9d9f9991323d6f4d65893184f0f302272b80051dd1a70454bdead39ebd82e', CAST(N'2018-06-27T12:10:44.083' AS DateTime), N'111.111.117-62', 2, N'00A18920-CBF2-E111-B994-0026B97E0079', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1077, CAST(N'2018-06-27T10:41:28.420' AS DateTime), N'55ac7b13ecd077738226291a2a2311b1cb7eb4f8a82cd333a8306f658065a9b81d8328a7ccb65237ec86cb4da60d15b2598bdb05194bb76d49c2bdfef24ba456', CAST(N'2018-06-27T12:11:28.420' AS DateTime), N'111.111.117-63', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1078, CAST(N'2018-06-27T10:41:38.700' AS DateTime), N'3f86bb323e8c2d583a6e628d2938cb8d88f86c81cb7b4d589f892bd4df031d6d531ba63a9ff67c256629f37c0dd7224b84a4b85b430d96dec0c127cc5d395da0', CAST(N'2018-06-27T12:11:38.700' AS DateTime), N'111.111.117-64', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1079, CAST(N'2018-06-27T10:42:06.343' AS DateTime), N'da8143bd4f599aa4faba36121c46e50fd785d305e58ae84733717959d207209958a86abd15684010beb6b34c1546658837fdd109ccf7ac56f66b447b2bad4ffe', CAST(N'2018-06-27T12:12:06.343' AS DateTime), N'111.111.117-65', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1080, CAST(N'2018-06-27T10:42:24.250' AS DateTime), N'4ea5fa5ac736658e7220867db5479fff3f134f3c249ec373fe80e4a5a3eba56ee99196550c9871558dae55e9912f262a4ed90b82eac8b037e16387b0fda95f00', CAST(N'2018-06-27T12:15:08.513' AS DateTime), N'111.111.117-66', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1081, CAST(N'2018-06-27T10:42:40.243' AS DateTime), N'1abe06ed12c81252cad699c5a5c12b4930718b36bf8c698742f98cb67fa56ba4470a569376280c647b9f42effc2acaaad84587a16fd606de37770e8b26194cef', CAST(N'2018-06-27T12:12:40.243' AS DateTime), N'111.111.117-67', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1082, CAST(N'2018-06-27T10:42:47.297' AS DateTime), N'd22a8ac1c693063fda88f7d63ae006435051f04ae98df463da60f57f931c5e8e347a08e076596347c77da1c3fcda63aeedcecf5292c1718dfe119a316e0bfc28', CAST(N'2018-06-27T12:13:39.923' AS DateTime), N'111.111.117-68', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1083, CAST(N'2018-06-27T10:43:16.223' AS DateTime), N'e2846399402b174f7788b7247e2c86e936a3dc10739ac87cb589125ce8ef4ad4e6a54107cdd6eba47b05ed90f52852ea89090bed71b0e47f5989df7e0e03f2bf', CAST(N'2018-06-27T12:13:17.513' AS DateTime), N'111.111.117-69', 2, N'02E876E7-4030-E711-941B-001DD8200008', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1084, CAST(N'2018-06-27T10:43:23.190' AS DateTime), N'903b8df58f8598cc25be4bcd521638c75e844f9fb584ed0ece753a045993cc2a3062b57a600ec47a7cfea5027f1320db4100d51e1a87f60ee78a3393d8584bfc', CAST(N'2018-06-27T12:13:24.780' AS DateTime), N'111.111.117-70', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1085, CAST(N'2018-06-27T10:43:23.777' AS DateTime), N'4ee0f33804e7353267906c512986ea0d3b7c71bbfbd28a9ca4b9746fd796f70afc6145648ff57cdfcaa57730d30c8fb78db1a474d32ab489ea5b2c034e46745a', CAST(N'2018-06-27T12:15:23.090' AS DateTime), N'111.111.117-71', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1086, CAST(N'2018-06-27T10:43:57.373' AS DateTime), N'f6cffcea0288f25ccba9cbeae785bf231b8b1322edc1d8b683db90b45f7f4ea05b91ae63ffa4f8cba2f7f601f9ebbc4af321b8c372a30c049c62625d823d4ab0', CAST(N'2018-06-27T12:13:58.850' AS DateTime), N'111.111.117-72', 2, N'FEF5D6DD-12DC-E711-80C0-005056955165', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1087, CAST(N'2018-06-27T10:43:58.447' AS DateTime), N'91c50240a4a3deaf17ac1a9bafab64994d60022764a77ce792b7a11342d99da21d2149986b647f8615f1ef1e18481a671f70c02cb69b23f0234e7cbb98a23f75', CAST(N'2018-06-27T12:16:45.553' AS DateTime), N'111.111.117-73', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1088, CAST(N'2018-06-27T10:44:13.827' AS DateTime), N'07cf51eb245a359794b53b2e11455ff638c5a4726ee3409188f9d2c343ad180f785d6195ebe95cd614c726c216338cdcdd9b4c0fbf9c1e58481f27be1e457c4a', CAST(N'2018-06-27T12:14:13.827' AS DateTime), N'111.111.117-74', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1089, CAST(N'2018-06-27T10:44:20.250' AS DateTime), N'0bfa80ddc9d8efddb0286f28f1e088480268458f21fe3c32c2b177594790f852524547d976b56985c86df7c6501365edf3f78a91fa38a214f1f6527b8739d2c4', CAST(N'2018-06-27T12:35:28.417' AS DateTime), N'111.111.117-75', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1090, CAST(N'2018-06-27T10:44:25.067' AS DateTime), N'79e6e7cc7ca391d48a87700e5c05946eaf643c71e10a0cf6505a957dcd996627d4c1084a39254186c8fb9d473fcceaece8073400e80cbdf7c7d886a7c4e1552b', CAST(N'2018-06-27T12:14:26.220' AS DateTime), N'111.111.117-76', 2, N'FEF5D6DD-12DC-E711-80C0-005056955165', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1091, CAST(N'2018-06-27T10:44:49.580' AS DateTime), N'455f29b8e0b33175c2e8d8291316c00a9266e09290efa0116dfb676cf7e5a6f86b99a5f7c8b1f8ddd84466411cb1b127f8d75cbe7838ac8f0e671f2828f8ea76', CAST(N'2018-06-27T12:15:01.340' AS DateTime), N'111.111.117-77', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1092, CAST(N'2018-06-27T10:45:25.663' AS DateTime), N'a47f4b2924fa866690164652d5a62a7c866da1e30e37db72c89c80c7e09c2d0a2b923aa45b6656c281c0a640bd1c32585ec3103621c8c19d5609dac4958abc16', CAST(N'2018-06-27T12:18:52.410' AS DateTime), N'111.111.117-78', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1093, CAST(N'2018-06-27T10:45:31.607' AS DateTime), N'e9a30010cf1967a9ce46f94517f8fe513465268fdfe729fdf01bdd4be7f4e28f3f32747972d49a700018a1bf559d1bd0c4bbe320671574f82507e7fd2bc9b215', CAST(N'2018-06-27T12:15:31.607' AS DateTime), N'111.111.117-79', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1094, CAST(N'2018-06-27T10:45:55.683' AS DateTime), N'243fb361ce66b36181294f1c878b63459af9f9a03b182826e70156713cfb9f7c001f4c1efdf00ff5fc50c8f70996ad80841ee8a78807687884c80463eb32a7c8', CAST(N'2018-06-27T12:21:04.083' AS DateTime), N'111.111.117-80', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1095, CAST(N'2018-06-27T10:46:14.023' AS DateTime), N'bdd775a24b655cb1eb1a8f9e56f75071e84f2696450be04fd823c63415fecac414355a23a69e99bbe75ab18fcc7870d99b3746f08c9cbe5dd0a9b680b6cfdacf', CAST(N'2018-06-27T12:16:14.023' AS DateTime), N'111.111.117-81', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1096, CAST(N'2018-06-27T10:46:20.197' AS DateTime), N'233a8ce908341ae5662e89814805824a075417e2778216d5cd10a68da222b5ff29cb78b4df9353a09c0a97ac6de8a0b7afacc4cee5e63b0c41bae7f91e6264d5', CAST(N'2018-06-27T12:21:52.860' AS DateTime), N'111.111.117-82', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1097, CAST(N'2018-06-27T10:46:29.947' AS DateTime), N'f7a55bc5a6460eceef49d1f199731429cf948c42e514c191626fe625f25400863e6a36aba032870ad124c2685a44da308658a83a70e92d044f290ba57a73053a', CAST(N'2018-06-27T12:16:29.947' AS DateTime), N'111.111.117-83', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1098, CAST(N'2018-06-27T10:46:37.907' AS DateTime), N'ccdb89f0336b9bfdbed106d63d6a1f0564dcbdb5e4f0139080087b99387421c935a3b4fd6093190a603ec5d77ede2aeb6ad91a5edbe4ba54afa4770c8c2c4c5f', CAST(N'2018-06-27T12:16:37.907' AS DateTime), N'111.111.117-84', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1099, CAST(N'2018-06-27T10:46:53.097' AS DateTime), N'363a5f7d5d3827fbb5119c0ff403f54e3f6fe17f0e72d7724ae9522f424f493425a816e382f7e9c3309ccb1d8576c953572eecfc424680be941479ab8a901c3c', CAST(N'2018-06-27T12:16:53.097' AS DateTime), N'111.111.117-85', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1100, CAST(N'2018-06-27T10:47:21.580' AS DateTime), N'1c9082c94bf16c252e3103d4215d1507d409182c8566594322eb64c5cc276a38cc8b2eaf6586c1d55981837df47b8d4dc4cdbe0033af45eb2850c7703d041aea', CAST(N'2018-06-27T12:17:21.580' AS DateTime), N'111.111.117-86', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1101, CAST(N'2018-06-27T10:47:29.520' AS DateTime), N'80b1474f42ad14d044960f855a05599ee627021dc03bf0deaa5f761b6044545c0a46d2ed8862ad9144a35785e3f1db0b2e4a2ec5cbe60a157af858d0a2da73ae', CAST(N'2018-06-27T12:17:30.127' AS DateTime), N'111.111.117-87', 2, N'7AA52A9D-B618-E711-941A-001DD8200008', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1102, CAST(N'2018-06-27T10:47:46.290' AS DateTime), N'8c8aad004e582e3cd5348f6fc1d3e4a999a4e2d67c2822274735150c4c3c19524b1f02b879209ef8b50b62fcfeede3df5274164684fb8b65f66fd2eb39124f80', CAST(N'2018-06-27T12:24:51.033' AS DateTime), N'111.111.117-88', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1103, CAST(N'2018-06-27T10:47:48.957' AS DateTime), N'4205c6f1ba2ab82337d01db30d75d9caacf04e95bb56882afc8156e2dd8ef82570908dd2cc005bc6bf5bfc9a8d3f80e55d8c66397128b306de76e98293a79ffc', CAST(N'2018-06-27T12:17:51.750' AS DateTime), N'111.111.117-89', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1104, CAST(N'2018-06-27T10:48:09.637' AS DateTime), N'1d9c6528f99eb563b379ad5308fac96c32227ae2bcd335826c7abec73f53dce959c403303f0b9977daf0ff655f9e9e02e782be101da22275ba9aebf5dc1fa898', CAST(N'2018-06-27T12:18:09.637' AS DateTime), N'111.111.117-90', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1105, CAST(N'2018-06-27T10:48:43.197' AS DateTime), N'e74d3f9fd00052cd39dbdb9d1961c94ab3665d0f277e53266de140ca8629c0920a22a11b91df2ab49c87e541fc1ec67e0bc6be50320930fbfbfeb853b68ac166', CAST(N'2018-06-27T12:20:52.763' AS DateTime), N'111.111.117-91', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1106, CAST(N'2018-06-27T10:48:53.250' AS DateTime), N'b8e13ad4b40d4fbf9d128298a4be541c87e44a4ec47ebf025bc3a66e694587bae565737f3b9c63ed0c6b62baf681719c4356c50da73bf6fb4845ed52ed235729', CAST(N'2018-06-27T12:21:39.217' AS DateTime), N'111.111.117-92', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1107, CAST(N'2018-06-27T10:49:05.070' AS DateTime), N'fa96cfd5c04cde01274f6dbe6da50e1c8017d6439f15ff6f2d46c41a6d7e0c9bad53de046d96f5b8394a8f319dcf60b662455f83db11c1e2098461c252d76efb', CAST(N'2018-06-27T12:20:12.823' AS DateTime), N'111.111.117-93', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1108, CAST(N'2018-06-27T10:49:08.593' AS DateTime), N'9fc59f170f5a6c3f1c908169d9a1c2159dbcdc8bad7b8dbd49d8249831d63d003800f2eb152afcd76bfb05552fc6d275856f711cd49ea262aac4ecb94d82369f', CAST(N'2018-06-27T12:24:32.380' AS DateTime), N'111.111.117-94', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1109, CAST(N'2018-06-27T10:49:11.530' AS DateTime), N'0ff58a802d15320a62e1ca78bb7834168483149f79c27f4114c5684c6d62c6d8e3cd45783371a7f6203f6fe1ddcd78773303fe29bf1c3a3308149769148db321', CAST(N'2018-06-27T12:19:11.530' AS DateTime), N'111.111.117-95', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1110, CAST(N'2018-06-27T10:49:34.313' AS DateTime), N'749c7de5ee6bb9431246110cafb9b87cd2cb89b7d177e03614fe730a21a91dc4615b1fc38ebe6bb3bb1777c17d52ab136cbd82ec561ee4f552c44d59e6c7bcfc', CAST(N'2018-06-27T12:19:35.903' AS DateTime), N'111.111.117-96', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1111, CAST(N'2018-06-27T10:49:38.767' AS DateTime), N'cab2c118c989424dc09b38f0199bd86b691500f4699b744e1bee057b0e31c33494f7580d0fc489ba901b484f58bf43fe42149374fa01a73f5ecfaaa1c5afde43', CAST(N'2018-06-27T12:21:53.420' AS DateTime), N'111.111.117-97', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1112, CAST(N'2018-06-27T10:49:39.717' AS DateTime), N'224394a3a854ece8afd5143ec3739f74cad0b1b0f0c04013cd95e0cf9df19c15c402a7c257ea0fffda35c4179809ce440338cf8f7bfb8ac87f41663ee421a1fa', CAST(N'2018-06-27T12:19:39.717' AS DateTime), N'111.111.117-98', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1113, CAST(N'2018-06-27T10:50:50.197' AS DateTime), N'9193fbe9cb730f0e9a524430a8f905420875c02467086dfac7ff79dbc216d4bc83c904af9159d74f94e1851cb6a6301381bea12224f774f90faf10bb69fbca92', CAST(N'2018-06-27T12:20:50.197' AS DateTime), N'111.111.117-99', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1114, CAST(N'2018-06-27T10:51:05.107' AS DateTime), N'46597b1d2fc799ef3181ecc1555f43dd6002cf0e5aa16143e64b02f816584bed8718eb9f31eb091609382aa0339b0fbc51da65b73523d929f20331a41bb5f73c', CAST(N'2018-06-27T12:29:31.607' AS DateTime), N'111.111.118-01', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1115, CAST(N'2018-06-27T10:51:26.917' AS DateTime), N'edfbdc472e1d616333797b8eecfd0116cdd4da3a9cebad2903cfed45df5da0c3c6d5616c525cfe4e4ed2bf560979ff848469ebef5cdc6469cd3220a54e43d9b2', CAST(N'2018-06-27T12:21:28.377' AS DateTime), N'111.111.118-02', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1116, CAST(N'2018-06-27T10:51:28.540' AS DateTime), N'77a983408b8c669c4673e2fd613412905c56a8a74d5f9874965c07cd459d6949c19e6aacaca8a1a9f2fc523b22ff03211a048a5629176b28d5ecb7d61375bc49', CAST(N'2018-06-27T12:21:29.780' AS DateTime), N'111.111.118-03', 2, N'72FAD97D-9248-E811-80C0-005056955165', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1117, CAST(N'2018-06-27T10:51:58.830' AS DateTime), N'b2a90c3a8052fd60e887bc4e7603652b59b8b202e119a289af3fb20f40cfbcc918848e2d50153a52ed099021c997c59ffb500e22d659c114a90d445c735dde1b', CAST(N'2018-06-27T12:22:00.387' AS DateTime), N'111.111.118-04', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1118, CAST(N'2018-06-27T10:51:59.577' AS DateTime), N'ff897f2ede6b509ccecf203ba29bca1135673064de896d9d4d9cf8e6b1f46794f7fef2064c360e14a63c49d92984d14bfac686f7f46298ac8dbdee89cda67090', CAST(N'2018-06-27T12:25:17.520' AS DateTime), N'111.111.118-05', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1119, CAST(N'2018-06-27T10:51:59.770' AS DateTime), N'140d56c29f04c9eba78f6fc7cf5ac785349f14260bec9d09aff7976575bc117a9aadb6b64de44800415a86177202608a878fca22a9effccd263ae94e53800000', CAST(N'2018-06-27T12:21:59.770' AS DateTime), N'111.111.118-06', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1120, CAST(N'2018-06-27T10:52:08.907' AS DateTime), N'f805994e5ba4852576e092b0c42aa756a3e5757ce4761da795195cd82b1f8f1caf34644306c56134e96d5d68ed6021d5328811bea99e32bb2c298c6f38e0dce7', CAST(N'2018-06-27T12:22:11.370' AS DateTime), N'111.111.118-07', 2, N'27168365-8D1B-E711-941D-001DD8200001', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1121, CAST(N'2018-06-27T10:52:12.253' AS DateTime), N'3f600b4cf7dfd2388a804d80a47be84e760b99690e497f832ce03db62a913b91d0ad62c4b9de96f1fcae0fea1de0a274fa1e454d69863e0023b7f7b4a6b1b561', CAST(N'2018-06-27T12:22:12.253' AS DateTime), N'111.111.118-08', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1122, CAST(N'2018-06-27T10:52:33.913' AS DateTime), N'fc3b088b318b3f07e6db2cc43c6ef8b4235678ab78bbb8a79b983776bce27c9d646b276e03c48b8fb1cd654d4aee3f39a0d7e826d29241b94702adb894184e3e', CAST(N'2018-06-27T12:22:41.277' AS DateTime), N'111.111.118-09', 3, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1123, CAST(N'2018-06-27T10:53:06.390' AS DateTime), N'4a00ab7a759743406d95a531bf3a8cf6c48cffe7f513c7fa1d5bdbd63c56e55b5e22176c13df01f15f7bd0821f021671d55d0c7a0bfee3edd16367e4d0492e6b', CAST(N'2018-06-27T12:23:06.390' AS DateTime), N'111.111.118-10', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1124, CAST(N'2018-06-27T10:53:08.700' AS DateTime), N'fbe66c4cf5ab7fabe8f3e746186caabe04ca5c017a323a7a73707d489a34b68e1a1d502214563eb2be4e128dee092731ed2217d69c1605681de61c298ea328c1', CAST(N'2018-06-27T12:26:45.190' AS DateTime), N'111.111.118-11', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1125, CAST(N'2018-06-27T10:53:17.937' AS DateTime), N'6a3912e1fb475c92bd943445586cc722fb012018f54dcd7d8eb1a1da182a9996aad878bbb0627a65469c52f76d8899048f01a63b30b183625fc10683f32c0d48', CAST(N'2018-06-27T12:23:57.640' AS DateTime), N'111.111.118-12', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1126, CAST(N'2018-06-27T10:53:23.340' AS DateTime), N'bcca4839199095bdd6d8ed5e6e62a5ff291b5e4d61bcafa9a1c3d7b9927918786b020f6007a5ea0635bad3e8a0630eaa1bb9740ec97bb39af507df62cb6c05cb', CAST(N'2018-06-27T12:24:01.473' AS DateTime), N'111.111.118-13', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1127, CAST(N'2018-06-27T10:53:57.180' AS DateTime), N'2edcad881790566453ae687b1b5f2b806c6d6a404cd80ea0f955c688d97468e24a30daad0e1bc659f06cc40efee0960f30122c1e80d7fb0e507ef3908c4922b3', CAST(N'2018-06-27T12:24:59.037' AS DateTime), N'111.111.118-14', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1128, CAST(N'2018-06-27T10:54:15.337' AS DateTime), N'f9c7d25c17d8a2a5169a6647a73cd2ebb32b795cd7e7ef01dba016fd898dbbe847332c1eaa5b3cb25cc72e6fb75065f2d23157bff6630b230ede3982f1b36777', CAST(N'2018-06-27T12:36:37.270' AS DateTime), N'111.111.118-15', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1129, CAST(N'2018-06-27T10:54:34.080' AS DateTime), N'b1a9dc59ee61d6a3adec6fa42c4f842f8e87a31b263427c055984da986b81932c9b8af879febf0198cd01cec88493262a0cc871e56555268f2033b1d73efc422', CAST(N'2018-06-27T12:24:58.300' AS DateTime), N'111.111.118-16', 2, N'780DE954-B16B-E711-9428-005056ACE682', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1130, CAST(N'2018-06-27T10:54:35.123' AS DateTime), N'faca5180597029fa0502cec2ce5b2208e0e9bc7757df5114e0553446f27df231eb8ad211f6693c52665ef1a2cb683ab081bffa866a56ba2f31a8a412f93c4f94', CAST(N'2018-06-27T12:24:59.073' AS DateTime), N'111.111.118-17', 2, N'1B9E5A38-92DE-E211-860A-02BFC0A801BB', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1131, CAST(N'2018-06-27T10:54:47.723' AS DateTime), N'add00a0eb10f9ee9c52de76ee0364ef0357ec84fc79c57f506d5e15ae1d7ee4b1620495aec0155330afbbee74d3842ba9cf59de483dce7ad08331efacfbbd0c3', CAST(N'2018-06-27T12:24:55.570' AS DateTime), N'111.111.118-18', 2, N'27168365-8D1B-E711-941D-001DD8200001', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1132, CAST(N'2018-06-27T10:54:49.407' AS DateTime), N'8d52dfe7742e22f70f166f7c22dd228954f790d63582cbd77c8e727acb1812eec842821e24db8b3516222c50171246474b8a57fd3f5a34f55fde816cb682f127', CAST(N'2018-06-27T12:29:51.077' AS DateTime), N'111.111.118-19', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1133, CAST(N'2018-06-27T10:55:05.113' AS DateTime), N'df4417b0830a8d8fb06885c0f46ff5f5589e2b348b67ac7c4f1cc805fb47491fd975b3e48e7ba151a3e87e4cb83aaacfde6114971049b1961f9081daf89271a3', CAST(N'2018-06-27T12:32:47.717' AS DateTime), N'111.111.118-20', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1134, CAST(N'2018-06-27T10:55:12.190' AS DateTime), N'aa73383869b4993008106e9fdbacf227fc48ca5ef4d0e4e773d69b910473410da60d86e176e306b6854278f912a4ccc898a2403cbd4387f4e0e89b6eca5feb27', CAST(N'2018-06-27T12:25:53.827' AS DateTime), N'111.111.118-21', 2, N'1B9E5A38-92DE-E211-860A-02BFC0A801BB', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1135, CAST(N'2018-06-27T10:55:12.520' AS DateTime), N'aa73383869b4993008106e9fdbacf227fc48ca5ef4d0e4e773d69b910473410da60d86e176e306b6854278f912a4ccc898a2403cbd4387f4e0e89b6eca5feb27', CAST(N'2018-06-27T12:25:53.827' AS DateTime), N'111.111.118-22', 2, N'00A18920-CBF2-E111-B994-0026B97E0079', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1136, CAST(N'2018-06-27T10:55:25.427' AS DateTime), N'48ff815597a3ca6197e243b9372cb1c60e62d7ad1779cbf2a359df9ce8898ec5da898f71ae42cdc2cd71d7858a55db6c7c5be8092be27c0c3c16016600279e4b', CAST(N'2018-06-27T12:25:26.887' AS DateTime), N'111.111.118-23', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1137, CAST(N'2018-06-27T10:55:45.100' AS DateTime), N'bab4c7ba87c09e43ba57afff9dca089503554a7be41527d4aa50be6cd0789624a687744f878b5a24e082a899a9f734e81df30e50505e240404b980eff2a62500', CAST(N'2018-06-27T12:41:10.933' AS DateTime), N'111.111.118-24', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1138, CAST(N'2018-06-27T10:55:50.577' AS DateTime), N'7ab924a9c16031b1220c87a4d4af90a9c82b8a06dc547cf88c5c1db07b9e1314b9661de69efb54ed5af3f71524be1fc04a02b14e86b43ff9a0f32be2ce52e18c', CAST(N'2018-06-27T12:25:59.510' AS DateTime), N'111.111.118-25', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1139, CAST(N'2018-06-27T10:55:59.567' AS DateTime), N'20e4a00935a5c9ba7dff86e94f649118df600e881457c11f6d9116a88fa6560f919dae4b06fdbd47593d7c1461d1984d74ac91aac1d13f46d861ad50f5593141', CAST(N'2018-06-27T12:26:15.963' AS DateTime), N'111.111.118-26', 2, N'1B9E5A38-92DE-E211-860A-02BFC0A801BB', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1140, CAST(N'2018-06-27T10:56:25.843' AS DateTime), N'f0b17fbdf541a0816e6b6e6db357bc2e57abc2d342f4eb410874d25429e1d877a8aa051cccbeded7e2935be31040c147a8c7cb10a08e229f6cc6ea1a06d54bc7', CAST(N'2018-06-27T12:26:26.450' AS DateTime), N'111.111.118-27', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1141, CAST(N'2018-06-27T10:56:44.040' AS DateTime), N'c7d3756884439582403c691634c54eb4aa05984c1aa2b7c63cdb28edd65cb2dff66cb9ae0ac5e0b3de769e4d547fa5428a7d30391bffbe6eda184d8bd14e68aa', CAST(N'2018-06-27T12:26:45.103' AS DateTime), N'111.111.118-28', 2, N'72FAD97D-9248-E811-80C0-005056955165', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1142, CAST(N'2018-06-27T10:56:59.050' AS DateTime), N'4969b31e0e79c5422ea184cda4d6266bf1007745bfea1e2c83e3f22f9b654aea7cff0b36b15d739428117dc01947fa96c14229f7d62e5f90a44538474074e827', CAST(N'2018-06-27T12:26:59.050' AS DateTime), N'111.111.118-29', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1143, CAST(N'2018-06-27T10:56:59.253' AS DateTime), N'9dadc85dd6360b6bccdaaebfd04770b094b23520b1ba1f8f9dda9e2915fcda8a136b2e08d31725c5922a095aa0175e143bb1b2c9bbf0b4af51ea8a727dd28127', CAST(N'2018-06-27T12:27:40.097' AS DateTime), N'111.111.118-30', 2, N'1B9E5A38-92DE-E211-860A-02BFC0A801BB', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1144, CAST(N'2018-06-27T10:57:03.203' AS DateTime), N'a50c31d41f7f5f08cc891f865dc4ca7d292978bface73b722acd6c4594d0672ed8b06516ac2e42dbae4452032ceafac850a5cfdeb17532375bc58299b21cfa3d', CAST(N'2018-06-27T12:27:04.860' AS DateTime), N'111.111.118-31', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1145, CAST(N'2018-06-27T10:57:10.627' AS DateTime), N'519bc6de8e418634de0cc62b0ffd63fd71c1d5a981bd7a0cd99894e3a02a5ad1096e8821f2d044ba966512add49625dc6ccc4a9220898dc44464f6f90174ef81', CAST(N'2018-06-27T12:32:32.140' AS DateTime), N'111.111.118-32', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1146, CAST(N'2018-06-27T10:57:13.967' AS DateTime), N'1c3acfa3cbf2de523597b52166ba7ca6274141eaab2f4a49297ea6e432cd70bf46580eaf8fbc6ab7bd08ed33f70d0463d8f9eb68caf2185556ae14cb0401e863', CAST(N'2018-06-27T12:27:15.340' AS DateTime), N'111.111.118-33', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1147, CAST(N'2018-06-27T10:57:15.900' AS DateTime), N'dd6562835d0ae6c7a3ad400c3698a32ecf5ade684f4f32b8fef47e3069a1552fdfb2d4e0e0b7d3aba0d8d30e9e90fdd72a8f8d8ce26aa469be20db0c2455fa5b', CAST(N'2018-06-27T12:28:25.120' AS DateTime), N'111.111.118-34', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1148, CAST(N'2018-06-27T10:57:18.043' AS DateTime), N'c41020a3610d99d423eb308ca3d8f9adfd7d0807860e7e79b3795829d26446ba8767587f898c6ec1db0c0cf2808fc473b9e76b6df11ab33b523855dc9880b880', CAST(N'2018-06-27T12:30:16.113' AS DateTime), N'111.111.118-35', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1149, CAST(N'2018-06-27T10:57:29.487' AS DateTime), N'5cac1561f44113c17245a26e71ef81bcad7e46fdb31771addc6b0558a9fe4fa13e346a62826db410feba0f0980a54420ce370f7b1027c35cb5d8f98e8a5352a0', CAST(N'2018-06-27T12:29:46.130' AS DateTime), N'111.111.118-36', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1150, CAST(N'2018-06-27T10:57:52.993' AS DateTime), N'953f24bc89a3299ea7096eb0d21b6274840dfc2a5dfb3f173701ed6fc96f46d85b7dc1919b6b09120774e6345d93d4bab89d0aee07a8669f52f0c5596e6c2789', CAST(N'2018-06-27T12:27:54.097' AS DateTime), N'111.111.118-37', 2, N'1B9E5A38-92DE-E211-860A-02BFC0A801BB', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1151, CAST(N'2018-06-27T10:58:40.700' AS DateTime), N'21233a2615db043ca61528665d926ddd256f7359d321fe6752b44caa80f9d2c2f2583f19f624c0d456157390805a51c86fd1d42ad102ae82a9a245f3b691bae8', CAST(N'2018-06-27T12:28:42.090' AS DateTime), N'111.111.118-38', 2, N'27168365-8D1B-E711-941D-001DD8200001', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1152, CAST(N'2018-06-27T10:58:56.070' AS DateTime), N'bb86820d2ec985db08c92bcdf6c04dcdf8615ce3c8cb7c85e5677019f9f56d81682b604613b9e2a89368baa922f5d369ec6e77cb45adbe1e87fd5642b7eeb5cc', CAST(N'2018-06-27T13:46:41.520' AS DateTime), N'111.111.118-39', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1153, CAST(N'2018-06-27T10:59:01.117' AS DateTime), N'd4af5cd46ea90629475a19989569d6d5639de0b37ed14ef0f56883d6f46bd8f4f9d9c3df0e67d4aff6a98bca557898c3014e89ca8f3359c1dff563a194c0b8d4', CAST(N'2018-06-27T12:56:18.257' AS DateTime), N'111.111.118-40', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1154, CAST(N'2018-06-27T10:59:08.100' AS DateTime), N'f5a99ece865473db38337a56aceb5afa6e546dc9ae3231e9b3983b9d59648ed26a4bb0d7afa9a48202ff30dc2c925abb60aa137b343777c23f8e1bec085eb9be', CAST(N'2018-06-27T12:32:34.450' AS DateTime), N'111.111.118-41', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1155, CAST(N'2018-06-27T10:59:25.057' AS DateTime), N'362c106ea8aa22b93eb7f3be93ee2f5c86412d5f8697dffc3ebd1f4194caa220604d3c8eb5b4671e71e927d31520477c34b9699e1cb568b227023daa1fedd9f6', CAST(N'2018-06-27T12:36:51.290' AS DateTime), N'111.111.118-42', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1156, CAST(N'2018-06-27T10:59:25.720' AS DateTime), N'fa03d6f5d7fa19a9c726cb53d9bf7895d58d0b0cb620a84b31a985627643329c42daf0b43a712e0b9e1fb82d35dd1fc93dc6b00b20af6d81149f2c310fd391c5', CAST(N'2018-06-27T12:29:27.483' AS DateTime), N'111.111.118-43', 2, N'AB74C070-89F6-E511-9401-001DD8200008', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1157, CAST(N'2018-06-27T11:00:01.037' AS DateTime), N'b5dadc76d28c1c83ee6f5088867f969b3429203bca898f7453e61390302afb62859dddc6ecda9531896aa68442e055ffc624e09be2070dc4c37fa5373867ea9d', CAST(N'2018-06-27T12:32:09.190' AS DateTime), N'111.111.118-44', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1158, CAST(N'2018-06-27T11:00:03.420' AS DateTime), N'25d97c1e7c5aac1f3dd32bbdd62375fdf5bf87710eea2647ea187edfb3e80269826218c72b5c992e7a0f0bce38f7eb336da2642b8ea5bf85b7e730c98c381ed9', CAST(N'2018-06-27T12:30:05.153' AS DateTime), N'111.111.118-45', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1159, CAST(N'2018-06-27T11:00:10.570' AS DateTime), N'6e394148076d2213945d1294cebadadd6f03688f9848a9a66934be67fc808c98f0c4f6602f0a9606c10c9197b000f136d3244de5407bc84799fd7baee41008cc', CAST(N'2018-06-27T12:30:19.733' AS DateTime), N'111.111.118-46', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1160, CAST(N'2018-06-27T11:00:22.450' AS DateTime), N'df1dd9eb38a598abeaef9893edd6beaa401e0960ff231e5ff86eb5fb8fad22d90dc17ae64da9c39e1f0e324d86e2a3a82b2192be47f7aaebed2a83fa75ce4321', CAST(N'2018-06-27T12:42:12.153' AS DateTime), N'111.111.118-47', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1161, CAST(N'2018-06-27T11:00:27.800' AS DateTime), N'e16bc983d6eb5963b898e94a0cc773bab7c1de51e6071c6187c5967dcd21d6374abc74a386b5582293adcbbe6f1d8df63f5d350faad0e311f3ca45303f5459e3', CAST(N'2018-06-27T12:31:49.840' AS DateTime), N'111.111.118-48', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1162, CAST(N'2018-06-27T11:00:30.840' AS DateTime), N'074f8247902328855851ddd364b9b2c018e2999c7270bb6e5009d34d25008ad3d98ab5d799a422326a5ee59ac37bd60fce6258f324f87267ab158b34465d3d02', CAST(N'2018-06-27T12:34:02.797' AS DateTime), N'111.111.118-49', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1163, CAST(N'2018-06-27T11:00:41.127' AS DateTime), N'dfc82b0ac4150a76717e27552e96f40b205caf68db45e408afd2d02780e2e672d363eb78e213b732fe26bae43a28880a7aff0d99d206bc4cadce5f9fe200cf0b', CAST(N'2018-06-27T12:30:43.033' AS DateTime), N'111.111.118-50', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1164, CAST(N'2018-06-27T11:00:42.917' AS DateTime), N'2d585d5659affd1100bcc976cf57da08b809731f880f8ad38231ac5e8dc06919e57be6a6b59477810f88551ce87247cced5f89dbf3ff354d160825b3f6d50b22', CAST(N'2018-06-27T12:59:53.210' AS DateTime), N'111.111.118-51', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1165, CAST(N'2018-06-27T11:00:54.960' AS DateTime), N'3524505326e6c0df176c3636756a55661ab172d6808f630911e1294125a66794e05640e472dba30c301ee660cf19c5742b934318783c642f5160d8ebc8402969', CAST(N'2018-06-27T12:30:57.220' AS DateTime), N'111.111.118-52', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1166, CAST(N'2018-06-27T11:00:59.100' AS DateTime), N'f8d5f089028063e204f81bec4a9f1590844a0902d2550f44996e75044c18fc3958a0a66d0d1a286c8b48e4203a2a004e340d990970b60a4e80b26babf93e9101', CAST(N'2018-06-27T12:31:00.657' AS DateTime), N'111.111.118-53', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1167, CAST(N'2018-06-27T11:01:04.003' AS DateTime), N'1afe69a07ade578ab1e6e090b41f4ae53b337c6ab3585e701af8ada598fe787a94b36e9833baa3053c3a33199ea75c97ef0d4689020173bac781a23026967548', CAST(N'2018-06-27T12:31:06.997' AS DateTime), N'111.111.118-54', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1168, CAST(N'2018-06-27T11:01:04.563' AS DateTime), N'88bdcac936bf1ee3f678f9179014e9818f7c3a1ac1a74ac4aeddc5c66f5781c82fdf0c256984919b9b0afc7a31ae8a9612aed383a86fcf091748c445aea8054b', CAST(N'2018-06-27T12:49:22.897' AS DateTime), N'111.111.118-55', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1169, CAST(N'2018-06-27T11:01:12.333' AS DateTime), N'd13c1d9f3a248811688be16a31eaa655e80c7519fc44beb2d0d1f734062e953997e90306f136607d7a946c785067cde2f97c31722f6db3f3e198ebe96b57edbb', CAST(N'2018-06-27T12:31:12.333' AS DateTime), N'111.111.118-56', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1170, CAST(N'2018-06-27T11:01:16.087' AS DateTime), N'18586451cd05ab9e57d94a1844671f89b4e7b49b10a24da918e61cf675c99834dfab4d776573c0c6c0e4446d08561d3f506e1bbc1b8e2cac1d1b192ede6d6f2d', CAST(N'2018-06-27T12:31:16.087' AS DateTime), N'111.111.118-57', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1171, CAST(N'2018-06-27T11:01:25.633' AS DateTime), N'45a6be0f4bf01114d7755a17ae24f24239200bd51d7b3f537db5099909b30a7ab8c7d61ab8dded7c5c5dceebcd3c2a212a7390a63ba3dfcdef9e6d8fea04878e', CAST(N'2018-06-27T12:36:54.680' AS DateTime), N'111.111.118-58', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1172, CAST(N'2018-06-27T11:02:04.400' AS DateTime), N'1a203769a983e69165a73ace803ff9770707c90927a6a6b7ebba906c3ade37faacf93101d239bb79ddac31c8e53ca92f0f7c916a125951f7e53602ff9f8e616f', CAST(N'2018-06-27T12:36:18.930' AS DateTime), N'111.111.118-59', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1173, CAST(N'2018-06-27T11:02:15.803' AS DateTime), N'c8b725072626682a9f815be37eee36af67eb2a43b07e4be27b23318e793bc77036f93ead420502944feec40b3df1f725291505cd958b77d32347d0bbbc7271b3', CAST(N'2018-06-27T12:36:53.183' AS DateTime), N'111.111.118-60', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1174, CAST(N'2018-06-27T11:02:51.180' AS DateTime), N'e64912db5993189d449e73182c1af26cfe0e035b1ef564076699ada78d39314b00fbf8d28fddfb911ebf179e1c0c114eda67a3a7fdd4989c5e4eecbc150843e9', CAST(N'2018-06-27T12:32:52.610' AS DateTime), N'111.111.118-61', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1175, CAST(N'2018-06-27T11:03:07.460' AS DateTime), N'60da8495da861dea6c624bdd938e12545b34af56b65c49561d29095844fc974bf7e6096f13401194b39d5cb94d99bc49c625a7296d2b957305b391d0ce0c89c8', CAST(N'2018-06-27T12:33:09.547' AS DateTime), N'111.111.118-62', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1176, CAST(N'2018-06-27T11:03:27.287' AS DateTime), N'd9e3857849b5a85218d509c26fa4be0446340687beec033419c590b057856bcc29d9d37d13e9747edf69889c364c41d12a5d0d5391ae77b4ec4d291c8369f869', CAST(N'2018-06-27T12:35:17.923' AS DateTime), N'111.111.118-63', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1177, CAST(N'2018-06-27T11:03:37.620' AS DateTime), N'1e5d4007aebb51ae17e3d06bc8d2ed52ed77f1117253520385eccb6fe30cb4d2e05020f86ffd63346c14de95c0b8449b568707cab0881a94d0dd94227d62395b', CAST(N'2018-06-27T12:35:56.300' AS DateTime), N'111.111.118-64', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1178, CAST(N'2018-06-27T11:03:56.227' AS DateTime), N'67322150e74b58c5bb035b445c68e801921db42096f0d4f51a3c9e189b4a8d43423427d60313794ec8f72edd4490d79619d1c800018bfc306be4789620d2ef40', CAST(N'2018-06-27T12:34:03.480' AS DateTime), N'111.111.118-65', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1179, CAST(N'2018-06-27T11:04:00.170' AS DateTime), N'0dba2ca8b2fa2578c9bfc19b0938d9638743f42e500754b53da0dae6486cde5acf53826f1e24f349608515bacf2223e3c20fd717f4aa506a1d5ef9bd599a4c15', CAST(N'2018-06-27T12:34:00.170' AS DateTime), N'111.111.118-66', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1180, CAST(N'2018-06-27T11:04:43.110' AS DateTime), N'f1152b02680292d4ceb8ea6a77206467c68b84678342d5877a7beedc03bd4c079eadfeb0412f3728d0fae1d7b3c0946a54a4a90f8940b0d6fd097085be149cf4', CAST(N'2018-06-27T12:34:43.110' AS DateTime), N'111.111.118-67', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1181, CAST(N'2018-06-27T11:05:37.330' AS DateTime), N'515bac9a8771fcd0e6057ff5ef62bf77110a60226f2bba825462a7817996561013b69e017f365dc9ae3196d78537695df6a91f8f8837d3615f2167f3d2bf0d14', CAST(N'2018-06-27T12:37:16.170' AS DateTime), N'111.111.118-68', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1182, CAST(N'2018-06-27T11:05:58.937' AS DateTime), N'6b2f3572923049b75fcf76a000fd6984ba958b185c3896aa2aa2c15ea094376914616e05ae04ee0bf4b40c8aa704c9c7c39e7bb38a9d7853b3d3c94b53645de0', CAST(N'2018-06-27T12:35:58.937' AS DateTime), N'111.111.118-69', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1183, CAST(N'2018-06-27T11:06:01.743' AS DateTime), N'db26ab7f63282f5df50f9662e6a7dfef114e97b2ec3831103e28a65291e85885316399a0152cdd68424386a07337abf8bcecc6987ec2a23d6858b1c3250d15d6', CAST(N'2018-06-27T12:36:26.577' AS DateTime), N'111.111.118-70', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1184, CAST(N'2018-06-27T11:06:11.300' AS DateTime), N'3dee08b7f2f761ae392f9c726a3dc0d89ab618006a0cb65f15a33d61b6d2be2fd4b5a762ff4d8227ad0872d113008c758e7249047d95dcfe30fa8b21119a90c6', CAST(N'2018-06-27T12:56:41.127' AS DateTime), N'111.111.118-71', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1185, CAST(N'2018-06-27T11:07:02.820' AS DateTime), N'bc8ac571ce3be7aee63085b5d7b1cbce765a860ae2ea23998fa4b62d1cbd3144960040628e787ecbe5d377ed3781e5c6b6b4e631e77c8bc0243a674c61e638e5', CAST(N'2018-06-27T12:37:04.060' AS DateTime), N'111.111.118-72', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1186, CAST(N'2018-06-27T11:07:10.057' AS DateTime), N'3b6fdcfdaf0f03f0fdb69247b14fb166c278d4ee42bcba3b8ac3dc4f095597e877a75223056ed5d8ca1db2ca892efc4aaffafa110e04ff5c34dcf24f297275a6', CAST(N'2018-06-27T12:40:53.897' AS DateTime), N'111.111.118-73', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1187, CAST(N'2018-06-27T11:07:11.970' AS DateTime), N'13cb34305bda733be27fb62abfe30e0830a6ed277aa651c505d3c6214baed3b3dd2e777869a204cb594d2c15a496cc4937cd6d7b1f5fe98aa7bd82bf823a3da7', CAST(N'2018-06-27T12:58:10.360' AS DateTime), N'111.111.118-74', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1188, CAST(N'2018-06-27T11:07:27.990' AS DateTime), N'7726fe9f9eb9d7b6489e6fe004d047d96de97ef007155f22fa932138c2880e235ca2659135f26e5c86b0758a8639bbab0a467dee23ac5d24bebae1282364a559', CAST(N'2018-06-27T12:37:29.063' AS DateTime), N'111.111.118-75', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1189, CAST(N'2018-06-27T11:07:31.247' AS DateTime), N'903bc0959975ab1396f3abdf074fece1f0771363889589c789fb0891105f916afc467c5495afdab8897375c1206987d235bf4642a4f6966c202ed8dc9ceb2047', CAST(N'2018-06-27T12:37:31.247' AS DateTime), N'111.111.118-76', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1190, CAST(N'2018-06-27T11:07:34.900' AS DateTime), N'03ed6fbd7013e04fd788da1b5b648b9acc54e887a599f54af4c1a5bec5fd84fc06a1eacc6677ebf2e799d312f5e6f8d4ed3c6a5c6fc9b58e3194fa7ee4733ae2', CAST(N'2018-06-27T12:37:36.067' AS DateTime), N'111.111.118-77', 2, N'3D630CC5-A001-E611-940D-005056200001', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1191, CAST(N'2018-06-27T11:08:02.990' AS DateTime), N'8c53e24b0f4b85c74703cc789bc166e4d7795fed1ca0d7542069daaa403e67551b22f483900c89769366685e862476e23da90b131ec6a15a8a2224f57879102e', CAST(N'2018-06-27T12:38:02.990' AS DateTime), N'111.111.118-78', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1192, CAST(N'2018-06-27T11:08:06.487' AS DateTime), N'fcfba741fefb4107c8b4bc246300493e793754acfc10832e7a1e8f86288f192b7f4285feb9e4d80f7258b2c57763be5dbb26e974ca9c6aff1b66050d72af52b1', CAST(N'2018-06-27T12:38:06.487' AS DateTime), N'111.111.118-79', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1193, CAST(N'2018-06-27T11:08:12.453' AS DateTime), N'b5c398731b020d2e82dbfdf820993fa0d5a8cc723acba7e35bc979c89a04c74f94be8d1c7810e97617cff6a651e5004351d7774d073373bfa8741d3c77dd9dbe', CAST(N'2018-06-27T12:39:31.900' AS DateTime), N'111.111.118-80', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1194, CAST(N'2018-06-27T11:08:37.487' AS DateTime), N'1630c0187892788f69ef04e562cbf2546800d76c6ea57acee51e42a745655e1b6280b906666fcbe162d0e7f5588132d24eb5813035ac6807d4f3467b0d008160', CAST(N'2018-06-27T12:38:37.487' AS DateTime), N'111.111.118-81', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1195, CAST(N'2018-06-27T11:09:34.377' AS DateTime), N'0643669608f07d989fc6b7bc36fb0d2de72cc0d440ded800e6dcd36a16c01d21edcd7169bc4935fa9616398cd7d2e41d38d906b2ded5e00e7419d60e03b2f7f5', CAST(N'2018-06-27T12:39:34.377' AS DateTime), N'111.111.118-82', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1196, CAST(N'2018-06-27T11:09:38.837' AS DateTime), N'87369659c13a5fbca075ddea916176014013bc03a62da06c965660b8b2cbecce93edd2283cf2743e90c304ed4be40059cafbde0a35ab3e48fb3fa8e8d7dab667', CAST(N'2018-06-27T12:39:38.837' AS DateTime), N'111.111.118-83', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1197, CAST(N'2018-06-27T11:09:50.127' AS DateTime), N'7051a2f6dce579cd26ad2ff0547b42f0d969627c09fdf9d6fb6d52350e4de6708e2b3ffaf29504bdf5564bb3762fd3af3bf178f31ee14316b5f85083f35b82a8', CAST(N'2018-06-27T12:41:41.600' AS DateTime), N'111.111.118-84', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1198, CAST(N'2018-06-27T11:09:52.670' AS DateTime), N'74b54d606255477fec40cf8027ca91fe8a1574062389c510803842c48530899529a193f7ae1f8d4032b42509da73381358250c3192602c356e54a1a7bcb20d0e', CAST(N'2018-06-27T12:55:04.573' AS DateTime), N'111.111.118-85', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1199, CAST(N'2018-06-27T11:09:59.080' AS DateTime), N'c29d758d2ba0e058caf84b6916419f8901aa5383b1f84afd7821b1d6009bc9f47d1b610868d1348c971f31560e9629c6ab718362b52134ccc016709b4df0078e', CAST(N'2018-06-27T12:47:15.130' AS DateTime), N'111.111.118-86', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1200, CAST(N'2018-06-27T11:10:04.793' AS DateTime), N'f30d9dec2f3d4ff80b67bd7c2615a40363243df91f9bbec5d586354fe0b640d5479abbaf7ccef23ed6eab58868e89b441cb0b380c109f69036fa1643ef9a7d01', CAST(N'2018-06-27T12:40:07.890' AS DateTime), N'111.111.118-87', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1201, CAST(N'2018-06-27T11:10:24.087' AS DateTime), N'951eece0c85d0ebb77bb43afceeef6ff2af3b21992d1a73f042a2fa571d9469fb08649ca7aedacfd249e2f96c9ed52945599fe69f083acba067797c7fc41d897', CAST(N'2018-06-27T12:40:25.043' AS DateTime), N'111.111.118-88', 2, N'72FAD97D-9248-E811-80C0-005056955165', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1202, CAST(N'2018-06-27T11:10:27.687' AS DateTime), N'dd8c67901c0251a379f84342bf602bc4ce6ef8a9ac9a205d5de82987ca7a12c29b0aa5b823617d70ae42737cdecfb56394a9566f2127272bf00bed07a8e36257', CAST(N'2018-06-27T12:40:28.573' AS DateTime), N'111.111.118-89', 2, N'780DE954-B16B-E711-9428-005056ACE682', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1203, CAST(N'2018-06-27T11:10:48.873' AS DateTime), N'50e40637457e3e1dc4eb6558c4b451f91f6286b34942c75b53cafe351efd3073bb4144e85ffd279c6afc4f432ab8852286eda4d6942018484b86c1f1f956f651', CAST(N'2018-06-27T12:42:48.050' AS DateTime), N'111.111.118-90', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1204, CAST(N'2018-06-27T11:10:52.330' AS DateTime), N'dfb776f90545dc6a7befbcbf1b34b7e3de6b971f73a00589091f742479c6f9e017b4a81e5d90527a525166a6162786fe72811ca89674c4b90914db5239deb5b7', CAST(N'2018-06-27T12:41:14.257' AS DateTime), N'111.111.118-91', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1205, CAST(N'2018-06-27T11:11:19.253' AS DateTime), N'6106636b972c01651bf97c1b3b7d18dd3d0f5c01f9dcf5a7bc6a4cbbb2f959b4e917cf65a61e5efca4a696b475c934df1da0d0f50d97315a668c752f62eff78e', CAST(N'2018-06-27T12:41:21.070' AS DateTime), N'111.111.118-92', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1206, CAST(N'2018-06-27T11:11:54.950' AS DateTime), N'50e57df96acdff6fe6599ce7663860968ebe2f691f610fbbb31f1d419115b8127c2249153c264717a6cf2ac7c1ac047484f5cded6714ae3b6c7394b04f0342d0', CAST(N'2018-06-27T12:41:56.933' AS DateTime), N'111.111.118-93', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1207, CAST(N'2018-06-27T11:12:17.390' AS DateTime), N'b63d08ae8ca95d0910f8ad9cf7222906d32e7abeccc0bfddb52d167a2d45d75d9b3f6c38749935d47f0502b80a42dbd55929775e104084f6ec4dc8d3a74fc22d', CAST(N'2018-06-27T12:42:18.197' AS DateTime), N'111.111.118-94', 2, N'780DE954-B16B-E711-9428-005056ACE682', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1208, CAST(N'2018-06-27T11:12:45.230' AS DateTime), N'49329d2bc8fcbeee2554575e146b79bbfef16c63c4d22a5a53bbaf3f1e6712e15c06c6f2d156dad3e3062e0934e5b0fc64076e5cfa20988d2c24224f3e32ef80', CAST(N'2018-06-27T12:42:46.630' AS DateTime), N'111.111.118-95', 2, N'325C65C1-0C6A-E611-9414-001DD8200008', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1209, CAST(N'2018-06-27T11:12:51.387' AS DateTime), N'b1b4c89972ba2c428490dca5b54154095a20764006aa1c00d21abe579baa0ef70c0c7f512568a0def9ef0dbd0abf76d4089cedb6be53fb4aade05220c4ee89fb', CAST(N'2018-06-27T13:06:29.423' AS DateTime), N'111.111.118-96', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1210, CAST(N'2018-06-27T11:13:09.640' AS DateTime), N'e53485d66ed2a06f40a2547a1e55d57d377de8bd0bd02ee2af9cf2002b776678a8c40988f34c9779a8b48ec352d1637a040be87279b2628dbe24096f8123865d', CAST(N'2018-06-27T13:01:15.457' AS DateTime), N'111.111.118-97', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1211, CAST(N'2018-06-27T11:13:10.230' AS DateTime), N'f784407c53860e4c4d447d13d5d9b55eb96eb34c52301d7d4fae9c0e663cbdac24050a43fbecd4ab46891c7ea1a22ba955b62ce4695f54b89355fd5fb5523a32', CAST(N'2018-06-27T12:43:11.943' AS DateTime), N'111.111.118-98', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1212, CAST(N'2018-06-27T11:14:11.480' AS DateTime), N'84b05d36d9240397e4972cf704a4ea606ac8daa6cd085f9c044218d84c7c668e30308f2bfc3ca944d5bfedec828fef00d207f3cc08e7d205fd13a1a68eacad2f', CAST(N'2018-06-27T12:44:13.797' AS DateTime), N'111.111.118-99', 2, N'91B28C72-3F76-E811-80C0-005056955165', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1213, CAST(N'2018-06-27T11:14:25.747' AS DateTime), N'3396980233bcde68f3337f920a07ba60360d95a7ea5b6f6be04baa574902250ca4f39fd0d881aae99de5719a9224b5f394b294d47167b10f72f95900b008bac6', CAST(N'2018-06-27T12:44:26.920' AS DateTime), N'111.111.119-01', 2, N'B675FDC8-663A-E311-B421-02BFC0A801BB', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1214, CAST(N'2018-06-27T11:14:31.330' AS DateTime), N'12242431581d0066520e5fb1cf8c11f311cf8adaf9de444a30bb79fd23fecd19d1dd70cf5b45356f78413f9baf2e58ba7aa0f363354aad76d2cee63e9eb28039', CAST(N'2018-06-27T12:47:29.660' AS DateTime), N'111.111.119-02', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1215, CAST(N'2018-06-27T11:14:41.543' AS DateTime), N'98291b7a300d80effac75dd55ba6358e8a772fe74b01ada698da2c05c19170b1d042ead1b293980d5a19eab1c5dd43e8c4852a7c495f816232c0f004833a325c', CAST(N'2018-06-27T12:44:41.543' AS DateTime), N'111.111.119-03', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1216, CAST(N'2018-06-27T11:14:49.890' AS DateTime), N'912861030f2ffa286ab0feb7030c2956fbc62f6578e71cd4d3e21b1f3e3df0482992f7a11cc0be6c42328d79262de7a85a4c075a356694c1ad412d804d381e9b', CAST(N'2018-06-27T12:46:48.227' AS DateTime), N'111.111.119-04', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1217, CAST(N'2018-06-27T11:14:56.133' AS DateTime), N'794eb88abea0c5867a090b9bf9dbd16753958e27d9e6d5fa3106fb52538c1aa0be33af94229b2c6fa22b93ff273e93dc300ce8e29ad27bee7379b344f35549b4', CAST(N'2018-06-27T12:45:02.720' AS DateTime), N'111.111.119-05', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1218, CAST(N'2018-06-27T11:15:01.910' AS DateTime), N'ac67cddb1fddf7900ef041b450319aad90ee29b49285f9693a5578f206917a52942e7cb4f3ace162f297de133304acb3a70342a481b00c2fa7c72682f12df504', CAST(N'2018-06-27T12:45:16.550' AS DateTime), N'111.111.119-06', 2, N'B675FDC8-663A-E311-B421-02BFC0A801BB', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1219, CAST(N'2018-06-27T11:15:07.443' AS DateTime), N'634bee67da9acbb39337aad4d74078dc65927b9a52f9dd293418393a7ebc64b0ea1354c53dccd5008e20f506c2ecf9f7c3bfa8c13243386fc34529da42592ef5', CAST(N'2018-06-27T12:49:21.173' AS DateTime), N'111.111.119-07', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1220, CAST(N'2018-06-27T11:15:12.707' AS DateTime), N'9292f3ef7c0c8ed3a5bef3a0d8557b8f17948c998a85eb6368fab82031a87f3d62b8f0c82bbe7980d382e89fdf74427edf5b727ef3bd183668b1373ad9bb7be6', CAST(N'2018-06-27T12:45:14.247' AS DateTime), N'111.111.119-08', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1221, CAST(N'2018-06-27T11:16:28.227' AS DateTime), N'5e2fbff0469651fa35fe73cfcf832f1400569db19b15a939a542e1a9ed23220a1066df8b2fe2343e206df2aa1e4e2bcf7e4811e1caab355a36986cbda9fe826d', CAST(N'2018-06-27T12:48:23.990' AS DateTime), N'111.111.119-09', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1222, CAST(N'2018-06-27T11:16:35.377' AS DateTime), N'79d3823b6174279b2a599fb5619b81575616c17324ec057e012f85a8e20a424f4c2179fff4a7b592030a24bc922e98ef2e1bb58c1035cb749c2f6bb0ac0779a6', CAST(N'2018-06-27T12:46:37.023' AS DateTime), N'111.111.119-10', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1223, CAST(N'2018-06-27T11:17:30.027' AS DateTime), N'3ae1909355b9a6985a6bb6d3603623c52547ce3d93939a37047261930ff6ff80f135e7a621bfb5e6f6c0cb4a7a61476c1eafb0b154d7109feca6d0102631ff92', CAST(N'2018-06-27T12:48:40.523' AS DateTime), N'111.111.119-11', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1224, CAST(N'2018-06-27T11:17:44.467' AS DateTime), N'24a710131ebeee92276627dbde9b260ab1428e2efc5e92f5db2209b0e4be9e9dc1c415c3bca561734bb69559dfb7e114225ca2329c526769a29e9d170f480fd4', CAST(N'2018-06-27T12:48:56.533' AS DateTime), N'111.111.119-12', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1225, CAST(N'2018-06-27T11:17:57.043' AS DateTime), N'95d85759e2e420ccde62c47246f8e0aa9a6e457ecc54b68d543fac7e0a99f83e47960b1d19d2f46af626b9ccc7a7f3f12d70d878e24b9f781cc4dc6de945d75f', CAST(N'2018-06-27T12:52:30.830' AS DateTime), N'111.111.119-13', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1226, CAST(N'2018-06-27T11:18:00.980' AS DateTime), N'7fa811b23916f488099a57c2b28628acc4e2d474926c969fdc5273ad330e5411488e2bef39765b75fb006fa22ee83909de6bdf184728488a5dab65b717d67352', CAST(N'2018-06-27T12:48:03.137' AS DateTime), N'111.111.119-14', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1227, CAST(N'2018-06-27T11:18:34.727' AS DateTime), N'5c2ca9ce5221d72d0e646a0e4c6443e931c13cbd1ad5e8b788ef535cbb45e821cdbc6e4ce6100e54c44e386da7c8c2074508d25e9241ed11a05ae3f912e6e706', CAST(N'2018-06-27T12:48:34.727' AS DateTime), N'111.111.119-15', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1228, CAST(N'2018-06-27T11:18:36.630' AS DateTime), N'e43ab02a2aec7ba1460945d170cc2ac1974271578609d3053ed476245d1cb57fd83ed56674244065ae9465aa01e73327a3a559bf8dd791a88932ae14435ca657', CAST(N'2018-06-27T12:51:34.893' AS DateTime), N'111.111.119-16', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1229, CAST(N'2018-06-27T11:18:43.663' AS DateTime), N'95c62a7f51856a85e9eb0862b7c69a14670bd5fa6bd2427f726681cc92653774434938f77f37050923456164930c6232f942863251cb2401e04f7a501b05248c', CAST(N'2018-06-27T12:53:07.647' AS DateTime), N'111.111.119-17', 2, N'B675FDC8-663A-E311-B421-02BFC0A801BB', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1230, CAST(N'2018-06-27T11:18:50.613' AS DateTime), N'02f61e67514d750e814a2412eb7f1a371aded99d1e769cd4145c52b9521df3e0503551d533bd2fd31e14e3755f923c27dc4c3f12e6aa5155d50cd4f8f2050e86', CAST(N'2018-06-27T12:55:07.710' AS DateTime), N'111.111.119-18', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1231, CAST(N'2018-06-27T11:19:34.217' AS DateTime), N'84dcb1aabb4b6a45abdad93d1cf613ace63ce1f86c7f917d8e05e13354df260bc717078e98a5af522a635b77466b9bcb0f232d53b2b065e9a4719fde474ed5e6', CAST(N'2018-06-27T12:54:15.723' AS DateTime), N'111.111.119-19', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1232, CAST(N'2018-06-27T11:20:18.903' AS DateTime), N'ae07c060d8bf71fa7206189be7b541362fa15a3f198636101aa0daeaba6de2d98bb73bb41f8dd6934ba7b168e3976a88f1496312baeb560959782f964a2aef3e', CAST(N'2018-06-27T12:50:20.423' AS DateTime), N'111.111.119-20', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1233, CAST(N'2018-06-27T11:20:19.923' AS DateTime), N'ff48818182ac75334a32d8d41775e9d44ffcb942378f21795f5243a8ffcbc2c326833380e81d266d8fa72970d4d0de2875c4de3366b4d0dbdfe85e8efb3ad3d9', CAST(N'2018-06-27T12:50:33.197' AS DateTime), N'111.111.119-21', 2, N'72FAD97D-9248-E811-80C0-005056955165', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1234, CAST(N'2018-06-27T11:20:29.463' AS DateTime), N'a2cbef7f93be3ac7eec1d242289c70f65f2a67b657767a9f9f74615bc77fe782c6e094845ae989abf17df9cc5647fb6b1f002aaa473e5dde4892ee9aa441fd6f', CAST(N'2018-06-27T12:51:27.647' AS DateTime), N'111.111.119-22', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1235, CAST(N'2018-06-27T11:21:12.947' AS DateTime), N'43bc30daa7647483ead65c4c9627b8054b29c460e2acfc78025f40fb6b26972f65f7b49869cb0dbadff34d3ff5088464845e60840960d98ca438307ff5e7d7a6', CAST(N'2018-06-27T12:51:14.167' AS DateTime), N'111.111.119-23', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1236, CAST(N'2018-06-27T11:21:34.277' AS DateTime), N'5f0b410f65ce9b865d92c3095d964c3a7c1543e9d62f1f06dbdb2f841de02210bb9c80197e9927d173b53b678eef135c78bf47c403feea7fcd6f28040c4fdea6', CAST(N'2018-06-27T12:57:23.880' AS DateTime), N'111.111.119-24', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1237, CAST(N'2018-06-27T11:22:04.907' AS DateTime), N'023bb3dc1d8dfb5e61f5e5df8eae4bb33fb1ad420081c3d8f8ea445b840327742c78ded15dcb84216e50231c76220a71864db9fa37830929a76273f695aaf4fe', CAST(N'2018-06-27T12:52:06.503' AS DateTime), N'111.111.119-25', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1238, CAST(N'2018-06-27T11:22:12.017' AS DateTime), N'3accb2d1e855bea11d8ade133c15f766d4e3b089f233de4a9e312b58271714191c11e852f9836bc32f65c7af45cd6eebb894992cdbd335ffe6581a664d8fcc51', CAST(N'2018-06-27T13:19:05.857' AS DateTime), N'111.111.119-26', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1239, CAST(N'2018-06-27T11:22:52.863' AS DateTime), N'38b4647f082df665d15b830f58df207cdf9774682d6a05a2afa5b74aba17584c217a0213cccfe482b10822fcaf86b8e7ef237ac778de23af37a2dcfbdfcedd23', CAST(N'2018-06-27T13:32:57.623' AS DateTime), N'111.111.119-27', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1240, CAST(N'2018-06-27T11:23:17.350' AS DateTime), N'4eb456dff299c22e8dc99f5985e21a9874f20d7e65156b1880f23eafe14c40c3ce7cd7252279b7b1a469e187283e5656fab436673214c7193780219c27918d8e', CAST(N'2018-06-27T12:53:48.667' AS DateTime), N'111.111.119-28', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1241, CAST(N'2018-06-27T11:23:26.330' AS DateTime), N'925f1da308e0b981802329951d4fe65ec99dd4503cb05748a6ca4b8762d0a9feacd52541eeecfffac29ee9df14953d3206f17d30cf57cd299ab250ba845d78d8', CAST(N'2018-06-27T12:53:27.390' AS DateTime), N'111.111.119-29', 2, N'AB74C070-89F6-E511-9401-001DD8200008', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1242, CAST(N'2018-06-27T11:23:33.753' AS DateTime), N'98eef99d1bae0b7aac991ff26de082cd514c4424d4930cef85169b4f8c57ee8ea6e134fc92e1ea2e1866b958301d389ce448c00a30cb4de90e9267b66cc2b77c', CAST(N'2018-06-27T12:53:33.753' AS DateTime), N'111.111.119-30', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1243, CAST(N'2018-06-27T11:23:40.050' AS DateTime), N'035a3d5fdcc54206fbcbe33713d14b15d420273f49d761eebc3839d8a986125e941fe1ddc6c9e4f8afe9d8fee6bc7876ff7779337a0e3d1302d7135d30151794', CAST(N'2018-06-27T12:56:05.283' AS DateTime), N'111.111.119-31', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1244, CAST(N'2018-06-27T11:24:02.903' AS DateTime), N'0d8b361c14c4493865298e00b3589b6a174a3a334a0a4f2c897a747705f9a4a5d87a32d016f54b9908ff5181320a5fb446e14089051ffde1d1d4f31581d416cf', CAST(N'2018-06-27T13:19:15.130' AS DateTime), N'111.111.119-32', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1245, CAST(N'2018-06-27T11:24:15.327' AS DateTime), N'b7c079b5dbe5738d9fccddcf4eeabdd7208ef8ead6228f568f74a318211455291aacf0952c2e418057572297b9c656c1370bef6bbc4fdfce3bd387ced6d4540a', CAST(N'2018-06-27T12:55:53.933' AS DateTime), N'111.111.119-33', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1246, CAST(N'2018-06-27T11:24:33.850' AS DateTime), N'e3b4d5f01ddccc9eabc60de59d5c35118c7afedfd259586aa5d0b3392dbe92d60dae459452fdb61d2b4c788edcc0dcbb0e8d0a348de1000d3480849ef2f5f305', CAST(N'2018-06-27T12:55:24.307' AS DateTime), N'111.111.119-34', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1247, CAST(N'2018-06-27T11:26:02.063' AS DateTime), N'd73e112ed4d33e5eb825a93a6ec3ef7187ce965129da5e268bfb190c1cc9faf7c3c44b0703dd64397dfcf54539054c9664a812570c30fec0a24238f0ecc17caa', CAST(N'2018-06-27T12:56:04.000' AS DateTime), N'111.111.119-35', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1248, CAST(N'2018-06-27T11:26:08.057' AS DateTime), N'62a511b6a0252b1d2299cbe2c2cf09d826fd2b1baf5ae44e92c9637f1d2e491c40b69a70e72a80fc91db0024b2f7b7f206e553c5f7f1134cf6c2df6e9bcc025f', CAST(N'2018-06-27T12:57:46.443' AS DateTime), N'111.111.119-36', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1249, CAST(N'2018-06-27T11:26:12.973' AS DateTime), N'd6429f83e04b0f459f09bc9e9ea65ee368001ad89dd599e552462c72a6a2d4964f3a581c68738ad41028606a4ccb629c91521c9935caf50e6f89904c2430f512', CAST(N'2018-06-27T12:56:14.110' AS DateTime), N'111.111.119-37', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1250, CAST(N'2018-06-27T11:26:21.150' AS DateTime), N'c6a96e32467b8e412a39ec58cdf1ecc315e27078087b06ec887ffe78fc6e60da3a2e0282c44d1d0da6b6953b17e3ffb2ad062a0c2e7f813020a2177f3739274e', CAST(N'2018-06-27T12:56:29.513' AS DateTime), N'111.111.119-38', 2, N'B675FDC8-663A-E311-B421-02BFC0A801BB', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1251, CAST(N'2018-06-27T11:26:34.273' AS DateTime), N'5eba2d68ccd1cd41065f357dcfc135c74604811ac4678e1da59b1eb713371b7668f21ac436398163791dfb5699aeb03e3daf92a45b477853c27906dd711fcabc', CAST(N'2018-06-27T12:56:35.350' AS DateTime), N'111.111.119-39', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1252, CAST(N'2018-06-27T11:26:40.733' AS DateTime), N'3cc286bb49732d5394091f18f22cc85700d1c1d2938dfc4ef286b233e91cf5b96353547537542131f87f610e91c5880fe4a08242d2729481e806fc586644bf54', CAST(N'2018-06-27T12:59:42.753' AS DateTime), N'111.111.119-40', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1253, CAST(N'2018-06-27T11:27:16.400' AS DateTime), N'1cf33948e1a062163bca49570d595557a91ccd2a6d6c72ec036a9b3391baad34e643e92ca1a2a22ff9e2bff8da68a8dc7fe4cf4e4692bc5bec9fb5f10139c5d5', CAST(N'2018-06-27T12:57:17.027' AS DateTime), N'111.111.119-41', 2, N'91B28C72-3F76-E811-80C0-005056955165', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1254, CAST(N'2018-06-27T11:27:56.663' AS DateTime), N'1f2ad82b0a1ede933064050c730a6e035ecd57b23beb384fe20e3c173ef4bb7143c5a10d3bf5f94ac7494bb7a433017c64d16beefcdb11a7ecb877ee31949633', CAST(N'2018-06-27T13:01:00.930' AS DateTime), N'111.111.119-42', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1255, CAST(N'2018-06-27T11:28:25.733' AS DateTime), N'6da14e27b85fe59eaa00c144bc756680f50c009f8c60a2f3cf98af0444de1346e3eb2abc875b20cf4a82b44d68a12bd24481e5d1444d899055751a933c6a2415', CAST(N'2018-06-27T12:58:27.090' AS DateTime), N'111.111.119-43', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1256, CAST(N'2018-06-27T11:28:41.513' AS DateTime), N'a3dc8949c15b313ffa4baa660123f7c7ef4276e58d05e28bec3d4154640cf40efc9357a621bf1955da6b181d27cbe276de261f3c36e20d63d82f9b4bf6386a56', CAST(N'2018-06-27T12:58:41.513' AS DateTime), N'111.111.119-44', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1257, CAST(N'2018-06-27T11:28:55.837' AS DateTime), N'd9090dd0c5a5f9226dd000f423085bfffdcbe440f2829d875e54afec0ecb5438b9a9ab6ab6c8281fb26b589fd8966e5edef7417e5b33c52dce9b15974072e2c9', CAST(N'2018-06-27T12:58:55.837' AS DateTime), N'111.111.119-45', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1258, CAST(N'2018-06-27T11:28:56.790' AS DateTime), N'a595522179035d169776d49b537fda0eb171f19add3f9e157f181bbc77cad26d91a1dcb344eab5161dbe8faf891be363b949c8fb5fef482ec9cdc97e0a44e6a4', CAST(N'2018-06-27T12:59:27.110' AS DateTime), N'111.111.119-46', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1259, CAST(N'2018-06-27T11:29:02.760' AS DateTime), N'90a13ce971ec886733c32d1cfaf394f15b7b4b4df49ca456c09b01cb31204ef7dd560678801602e95874b7d455a2fcc0f1f7bf890f1dbf0db11b4e5ffebb9994', CAST(N'2018-06-27T12:59:02.760' AS DateTime), N'111.111.119-47', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1260, CAST(N'2018-06-27T11:29:22.873' AS DateTime), N'487680e346cb6b9354ce251a34e84a5c0ca3b3cc110b79b415573dc1a82e12d90f7630954a70a8763aca2ac5530c795c7f5dc429d30706e0117953b95ada5cca', CAST(N'2018-06-27T12:59:24.197' AS DateTime), N'111.111.119-48', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1261, CAST(N'2018-06-27T11:29:29.943' AS DateTime), N'e7c88fb906ff2750e2a802d095aad228f1cfb018dfa4e7471741c506e837e7e3496c3067b474f044818c6986196e8acb0c280df6b3f107e4f6eb10d90d9a00dd', CAST(N'2018-06-27T13:10:23.327' AS DateTime), N'111.111.119-49', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1262, CAST(N'2018-06-27T11:29:43.470' AS DateTime), N'54c51476f38ac3be231a6acd50821e5d77a38bc35e3b0bcefb0519cf124eca4390a9c4ea057b8c2c49f349d74983cd7c6febd2ab6ccaf1c434d709cf1f1a65a0', CAST(N'2018-06-27T12:59:44.883' AS DateTime), N'111.111.119-50', 2, N'72FAD97D-9248-E811-80C0-005056955165', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1263, CAST(N'2018-06-27T11:29:56.270' AS DateTime), N'c0fe856d502fb91000a1e73b6937c3f3ecb8e5c05447030a94c44e73bb740d05ca78ce34e026add4bee28ae2cf42a0bf56645c260640bdb89d5ebb1483d9493a', CAST(N'2018-06-27T12:59:57.547' AS DateTime), N'111.111.119-51', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1264, CAST(N'2018-06-27T11:30:06.480' AS DateTime), N'abebca547237611c4408fcf1bcdcbd62a30fddaffd581fbcc630a513f6114c135116534cae8630d6b8509e60d84eaefecd40edeb7a04adfafb38703b9acd7c84', CAST(N'2018-06-27T13:17:51.183' AS DateTime), N'111.111.119-52', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1265, CAST(N'2018-06-27T11:31:13.893' AS DateTime), N'943db925490c5c26399210444133b74e9971f913660bbabc5507bec88edbd2502673ecf3d8c0edebc7459e527bdb1dd2df8f8e7e25388e1fbc958d268c21843b', CAST(N'2018-06-27T13:01:15.773' AS DateTime), N'111.111.119-53', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1266, CAST(N'2018-06-27T11:31:22.997' AS DateTime), N'919bd7d199eda011f7461c531395d44113ffd056f54dab5f5240f3cc839a788dda2fd7682bbe51c29f4ded3754d5daf063b29830c544a1cbb05d971674acd29c', CAST(N'2018-06-27T13:01:22.997' AS DateTime), N'111.111.119-54', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1267, CAST(N'2018-06-27T11:31:23.820' AS DateTime), N'2c2f1b68a43125ff3e4c96cb1daed30e8756d5fb1dff837fbc272248dabc332b0afbf8b15c490ca7bf60fbfbc8106581728cd1f361c551760e3d19cecfbfec8a', CAST(N'2018-06-27T13:02:00.833' AS DateTime), N'111.111.119-55', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1268, CAST(N'2018-06-27T11:31:33.267' AS DateTime), N'493f0cba49100b5ac72335a817d33a4dcc09e28bacd98cd7d851f5c6bb3d9c62cf0a2275e31618199863e7bed6be765fa49d671d9b090ecf674323f50640a52e', CAST(N'2018-06-27T13:03:38.503' AS DateTime), N'111.111.119-56', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1269, CAST(N'2018-06-27T11:31:52.497' AS DateTime), N'30fe37b48610ad83dad83421d6f5230aebe717ee371e98ca43bf83bb288850ef57e8460f80636115a87a87387c7666f25792a6c7f290fe4b0b8d3667e6f01d2c', CAST(N'2018-06-27T13:01:53.987' AS DateTime), N'111.111.119-57', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1270, CAST(N'2018-06-27T11:31:57.843' AS DateTime), N'9a4244d8290df8ae33f61607bf3757464ced7b2f95c165e62c0dc5f833e49eda9e081e59e0f7c455ea0148b194e69f5e6d6dbf83fb948a3d3a589b2dc675746f', CAST(N'2018-06-27T13:01:57.843' AS DateTime), N'111.111.119-58', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1271, CAST(N'2018-06-27T11:32:53.867' AS DateTime), N'4548f46c9f008cd037226fc2bb051b5cf519746f0ed177ebcc01b700c59171a1cf10a1503119a0cd57b41c1214b5c82d6b4acc29ffb79272950f3ebb1408cde6', CAST(N'2018-06-27T13:02:55.453' AS DateTime), N'111.111.119-59', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1272, CAST(N'2018-06-27T11:33:00.627' AS DateTime), N'773cbd37edb248ad6b360fca5b33dea3ebc67a22fc9d7c6bc2e63f0bc248bf40fb42f0c2ee1b78b0089c1d03891c8f29e2a67b24707828dd1c4053f2cf45e377', CAST(N'2018-06-27T13:03:01.633' AS DateTime), N'111.111.119-60', 2, N'97B9F977-E350-E111-B22E-0026B97D92FF', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1273, CAST(N'2018-06-27T11:33:29.557' AS DateTime), N'38163f3020e26c1a0ce566d83c3cc88fc56d5ff00c6fdb7e8f8a5c0606f2956e3fe6cc02e842d7d5a0a8062df789df68ee0a9ac2aced4b6ba1c16f0c1fb13a6b', CAST(N'2018-06-27T13:03:29.557' AS DateTime), N'111.111.119-61', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1274, CAST(N'2018-06-27T11:33:50.750' AS DateTime), N'd1e9d033c741e067d06402848151cb02d1d05d25a33c62e1924cac33f53539bbc32e481ad5b03914cb37121f72bc19307de1c4da2baa334c82616772758cdef9', CAST(N'2018-06-27T13:04:51.047' AS DateTime), N'111.111.119-62', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1275, CAST(N'2018-06-27T11:34:12.640' AS DateTime), N'263a6cfaa8f6471124b8a676edc1dbc8a9a328672dd596ee92064aa64af8aa1dd38b38629907d3f847b4149452457ae51d14379d2096d9549a9014a8b77151a7', CAST(N'2018-06-27T13:04:13.920' AS DateTime), N'111.111.119-63', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1276, CAST(N'2018-06-27T11:36:43.503' AS DateTime), N'cbbd4fc1b73c61173eb77c98033f90f85b3b4c3d3b921ca862b96639b0ffc99a5df3033e9865ec904b50a50a2ccbeae1d9981923fa620ed9a25e47852babd1a8', CAST(N'2018-06-27T13:08:45.033' AS DateTime), N'111.111.119-64', 2, N'9268D056-7972-E511-9406-001DD8200001', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1277, CAST(N'2018-06-27T11:36:50.630' AS DateTime), N'3a54d3698af43ce0237a74c17439d60ed2c09d855319f01feb4cbc2c6a3cc47ecd39a277b7f116fea27992f78d2c900e8f49b2d84fb1ef712a0a6fc9f31b91b3', CAST(N'2018-06-27T13:09:39.527' AS DateTime), N'111.111.119-65', 2, N'72FAD97D-9248-E811-80C0-005056955165', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1278, CAST(N'2018-06-27T11:37:32.243' AS DateTime), N'8876abe18d0a4d6bc50dcc53808e9987da2ecd11c96025f8d1c1a91b5c26e38eb0674f85ce3f04b06fb1dbce8504d376a8265883f4845acc0a2a9a84c77e4a34', CAST(N'2018-06-27T13:08:50.380' AS DateTime), N'111.111.119-66', 3, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1279, CAST(N'2018-06-27T11:37:44.550' AS DateTime), N'0e306aa07e5ae171fd818c8630927587e74ae73db68e02efead0f9ed5bc50f39187056f9263e52cd3b189e7c8e77ccb5d8a3905ad192f547b6d5a5c0233f43a0', CAST(N'2018-06-27T13:07:46.010' AS DateTime), N'111.111.119-67', 2, N'27168365-8D1B-E711-941D-001DD8200001', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1280, CAST(N'2018-06-27T11:38:51.283' AS DateTime), N'06fc4f0b2f7f48bd7bc65c01070f0bc8639a0072ba087bc67d96584edd5c0865bdfcb1ca75f5750655480dd4404791603059f40c8e6ffc41e56c5903297c3ded', CAST(N'2018-06-27T13:10:42.730' AS DateTime), N'111.111.119-68', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1281, CAST(N'2018-06-27T11:39:40.470' AS DateTime), N'b605c954f482294548800c87a331fae8c4de3498733b30e318fd57a29bbc3dcf1049512401e6f8300deab0e32265d90afac86cb3d61f200e1a208adfe0ac3adf', CAST(N'2018-06-27T13:09:42.093' AS DateTime), N'111.111.119-69', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1282, CAST(N'2018-06-27T11:39:43.200' AS DateTime), N'067dde2f713ae4806265892bccc3927c35628840cc3b28876b3585e7b32ac5df659ecc95c6f14617c9a63bba0ddb863ae888c3df80d363ea6fcaf62d65f90bea', CAST(N'2018-06-27T13:10:06.893' AS DateTime), N'111.111.119-70', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1283, CAST(N'2018-06-27T11:40:23.263' AS DateTime), N'9f8e075b5c8a64973b984053f2e6cebccd7e89f275d973e378ecb37f0f7d36f589d1e6586f5c79f3284c3cbc1f5fa234106a0c5a3110d27375b9f948bd8147a2', CAST(N'2018-06-27T13:10:23.390' AS DateTime), N'111.111.119-71', 3, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1284, CAST(N'2018-06-27T11:40:37.370' AS DateTime), N'00237e539ed42b72cc6b1acaa1364892f690f3593a5b3bf85a32482c4b6078f913e9900a48591bf94bf4ec9c8ff587b402e130a101e3d00bc681e4cb5fae8dbe', CAST(N'2018-06-27T13:11:18.290' AS DateTime), N'111.111.119-72', 3, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1285, CAST(N'2018-06-27T11:40:46.957' AS DateTime), N'f156b59f055b822e2991ee46a4213a4c23a643496152d91a9ca07b450054c9b911ec01efdd2aa2869c451e88fcb1f3f9398fcf76ee55a01d6a993100888bbc41', CAST(N'2018-06-27T13:10:46.957' AS DateTime), N'111.111.119-73', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1286, CAST(N'2018-06-27T11:40:57.173' AS DateTime), N'0c44320e753a3cf02fe247a8d5294e151a91a563666224d45236d6987e69b9960a9e9b179eb522aae7fe0afb0a72bdd6efe0958380add7bd6de66f7a17f77bd6', CAST(N'2018-06-27T13:10:58.220' AS DateTime), N'111.111.119-74', 2, N'3A7FB741-0C6A-E611-9414-001DD8200008', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1287, CAST(N'2018-06-27T11:41:27.047' AS DateTime), N'95e5b34b1ab37818a30b4850018acad4ac0da7a9dc4847091625f39ea077e8d3c29ca802ad89bddda1835995acf7596c295499577c978f893648cabe4f712fb7', CAST(N'2018-06-27T13:13:11.740' AS DateTime), N'111.111.119-75', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1288, CAST(N'2018-06-27T11:42:00.997' AS DateTime), N'6be4cde8221b46348d70aaa6dbd88b73fe734f969b619f2ff2f0594b4186c2e2a2e15cd96094d2468881d9f756d5d13336209472da07adcec3c752249c7d69fc', CAST(N'2018-06-27T13:12:02.553' AS DateTime), N'111.111.119-76', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1289, CAST(N'2018-06-27T11:42:43.840' AS DateTime), N'79a086ac6ad91bc516d0ec4e5a8eadc2aba3f8d1f6c2297d952cca5e6463475d9deaa96388e19f548d376f310306a29f7fe09d4ce1ffd4b263b693e220a55664', CAST(N'2018-06-27T13:15:16.740' AS DateTime), N'111.111.119-77', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1290, CAST(N'2018-06-27T11:43:02.323' AS DateTime), N'766ed5070310282d9714457318d03bd7db055b73eefa40a0791870dfe8bf0372d699c75fc536a171bb1399f45b759a832e2e1b751611cc708f61cdbd65e65164', CAST(N'2018-06-27T13:16:09.967' AS DateTime), N'111.111.119-78', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1291, CAST(N'2018-06-27T11:43:16.767' AS DateTime), N'dfb93d4d4c5545105918a1ccee5b92bf0724b367f7f7ed21aaf00feda4db1634e3fbe547241a82b2546b94c3e2d0359174103a9cab9e73330ada84a207517468', CAST(N'2018-06-27T13:20:44.313' AS DateTime), N'111.111.119-79', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1292, CAST(N'2018-06-27T11:44:58.567' AS DateTime), N'216e8251dbe2c0c8877d8b0ec824a015dde79adf6740bfe7de4f812928c8a6239d187420f37ea9e42883b6a60ef7603e2bc17852f55490fbf218fa743b6034a0', CAST(N'2018-06-27T13:41:25.743' AS DateTime), N'111.111.119-80', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1293, CAST(N'2018-06-27T11:45:09.810' AS DateTime), N'4d2dabd5f449a2c75258cc139e36b94ed79891cd0dd7fd561f8043e7ba54c9d1f5932ac13c4e3b3d3c51941a4ff51e3f8e9fb5885c485d0e44b76affdfef06eb', CAST(N'2018-06-27T13:15:11.247' AS DateTime), N'111.111.119-81', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1294, CAST(N'2018-06-27T11:45:39.810' AS DateTime), N'e453cc2b45947eedef74e565b81c2e7ee29f3d59a52301ff5f74d7abd8a4374ec771b34c75d18223bd826737c83811b25b4e9c57300e6d3366c4dfb258524528', CAST(N'2018-06-27T13:20:12.973' AS DateTime), N'111.111.119-82', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1295, CAST(N'2018-06-27T11:45:52.863' AS DateTime), N'35d62dd872b72717fbcececf3f90f4f64b7c8363cab22de463b9c3fdf9e3b3b8903ceb70b6c6a09b9fff3db57628f64795321b75adb946d010a6f6c334293633', CAST(N'2018-06-27T13:15:54.243' AS DateTime), N'111.111.119-83', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1296, CAST(N'2018-06-27T11:46:00.067' AS DateTime), N'b28f40e9bbc60c8bf6a20492c64eedc7d70cb879265ad534351b5eda01832dfb6dcb6083320b373cfd62d5236785ce49178fef05c73fd1d064554d39e2e50df7', CAST(N'2018-06-27T13:16:01.840' AS DateTime), N'111.111.119-84', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1297, CAST(N'2018-06-27T11:46:12.847' AS DateTime), N'2ca67b6a808f7d84ddc784583e76e994c757a3976eaec20c0572642adb7f3093048e8edcca0fe23eefa4c6fc621993b62719347caddfbf6aeed388258a139439', CAST(N'2018-06-27T13:16:23.323' AS DateTime), N'111.111.119-85', 2, N'91B28C72-3F76-E811-80C0-005056955165', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1298, CAST(N'2018-06-27T11:46:17.390' AS DateTime), N'3862696473c9f42b48816cf5ab1f637ac401f80b4ef0781d2af46274d9ad83e6c27c331a07b42daa855a2ea0efe490b7109533b2a801c1b1d0ac9b0eb60e569a', CAST(N'2018-06-27T13:20:03.370' AS DateTime), N'111.111.119-86', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1299, CAST(N'2018-06-27T11:46:26.140' AS DateTime), N'312ac3cfcb599a69a510b6640f4fd848a7f7a1fbbe0fc82aa5e76e15f81edaca2bcab69e48e40489f120528ea5981f7d9dede3371f0cef9468105b961c3566a1', CAST(N'2018-06-27T13:16:26.140' AS DateTime), N'111.111.119-87', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1300, CAST(N'2018-06-27T11:46:51.187' AS DateTime), N'e202c95365c5d5058d7424da002374eea614820ea1e68437ed5192f21d40922b9027cd40422a4a37ed5ef8b33db7ee230f4ab3d763c3d1046fcfbae659dfcd4f', CAST(N'2018-06-27T13:16:52.880' AS DateTime), N'111.111.119-88', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1301, CAST(N'2018-06-27T11:46:59.943' AS DateTime), N'bd50c0f095c04df6f1f3ac40a8b615f0382c55a4e086d94350f2ea6cd542efa171cc2dc19a71458a8e351ea0fa91e68ecf75854f0a1cae317aebc5e996178c36', CAST(N'2018-06-27T13:16:59.943' AS DateTime), N'111.111.119-89', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1302, CAST(N'2018-06-27T11:47:28.637' AS DateTime), N'3d5bb89feca5d8dae33a41d9d11f4a669e5563fe8bebc481a6d4f6ca29fb021cb43ae3399e17e0e7a12c09b62ace17999143a31262540b3e40005cbcca3ea08f', CAST(N'2018-06-27T13:17:28.637' AS DateTime), N'111.111.119-90', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1303, CAST(N'2018-06-27T11:48:31.790' AS DateTime), N'c1e44c53164226d403815ac0c4263f858668ff0d91dff68425147d17c17a8ec4d5eba444025f298de4831cd958b01312a254be7f1f8f61ff77a923a04701847b', CAST(N'2018-06-27T13:19:20.953' AS DateTime), N'111.111.119-91', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1304, CAST(N'2018-06-27T11:48:42.127' AS DateTime), N'348baeb4bcd84965fea457ce615401ccbf9cfc9bbcb94e2b768e90d836797f615a88e00b2fb34266875230b5f8c66b9a4460b5e0e19fa775b1a1d1e97c32f7e9', CAST(N'2018-06-27T13:18:43.510' AS DateTime), N'111.111.119-92', 2, N'EF0FAE6F-7972-E511-9406-001DD8200001', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1305, CAST(N'2018-06-27T11:49:15.417' AS DateTime), N'f150d43559bc46b7103b88453de8c71a22c206749ee80e6f04c6b918526e09b987e9b2c0d67d7acad379eaa84dae43c2a4bae336ba5c57dd1fbbb36e1dbcd088', CAST(N'2018-06-27T13:19:16.293' AS DateTime), N'111.111.119-93', 2, N'5AF05FF8-091B-E711-941D-001DD8200001', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1306, CAST(N'2018-06-27T11:49:39.153' AS DateTime), N'eef5923d484e6783d21c62cb0e583c2991668b167b5db7671901bfbd691df0c311e029593f77d4d9c4781dc4db52de8b3d530fcf99e1dc329a88c33e9b5ffd6b', CAST(N'2018-06-27T13:19:39.153' AS DateTime), N'111.111.119-94', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1307, CAST(N'2018-06-27T11:49:44.173' AS DateTime), N'904a01abcbf0fe285a42823304e2e01eaaf04be5e0ca89cb1034cf3277842c68317415e27ec57f37dff22f93ee0d2aeacabcb1acc4edad8b51269cd11aa6c1fc', CAST(N'2018-06-27T13:19:45.323' AS DateTime), N'111.111.119-95', 2, N'27168365-8D1B-E711-941D-001DD8200001', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1308, CAST(N'2018-06-27T11:50:00.250' AS DateTime), N'1a88c7936c45fd00eef57d1643905ccddbaef9c8cc0129886c7d41cf08d656ef82b3c734d89af74202c53ac9815634cb56e93886008f7e388b4c55fbe002a892', CAST(N'2018-06-27T13:20:01.680' AS DateTime), N'111.111.119-96', 3, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1309, CAST(N'2018-06-27T11:50:04.833' AS DateTime), N'23dad68c1236d43cc0aacb4bc98a06bb403a918629ccf090a1cebf90aad6a9a7bb56f121e2416a9fe44f7ed763bbf3055a573cff2478ebd345db813635ce9419', CAST(N'2018-06-27T13:20:25.433' AS DateTime), N'111.111.119-97', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1310, CAST(N'2018-06-27T11:50:08.090' AS DateTime), N'e16854d474076518839f6edb6b357967390c1f04bad0f5d31b6d61e37d454480ce751d0874d181241dade100cf2694281829a841f045c6f0b3aef326e0f1b6dc', CAST(N'2018-06-27T13:20:08.090' AS DateTime), N'111.111.119-98', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1311, CAST(N'2018-06-27T11:50:39.460' AS DateTime), N'256fbf5815913d0c3bbf9b619641add35f1abef9bae8f99518cccc2505bc884f6b76d8344f1d60264c47c3b7da837288304e111602477722640dea1b41665d71', CAST(N'2018-06-27T13:20:40.283' AS DateTime), N'111.111.119-99', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1312, CAST(N'2018-06-27T11:51:26.317' AS DateTime), N'828defb803334de056c72f55c0ab6f80afe7a470314f477eeb4ebc7b8847e027e9743531735472dc04527c279668b4e9c7279d0d75b8ef27ec7a76e429218eb6', CAST(N'2018-06-27T13:21:26.317' AS DateTime), N'111.111.120-01', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1313, CAST(N'2018-06-27T11:52:24.413' AS DateTime), N'2800aeb7ebf464d8f7d3f290d882b9263cb54adb921d78d32b7c729d0ba51c8ff1ad0cdb964772645fe224176f80b2a5981d996378c0836e2ec9b7f7d7fb32ef', CAST(N'2018-06-27T13:25:47.417' AS DateTime), N'111.111.120-02', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1314, CAST(N'2018-06-27T11:52:42.853' AS DateTime), N'25a8666f70b711cd5775057629c9e7e6a8e8ed24cdc2e9ea94b43acfe3c2250057ca16f2a0ba3dd4f62a7ebc705a1f760abf9b26aa469c5c3408194e7436f6f2', CAST(N'2018-06-27T13:22:42.853' AS DateTime), N'111.111.120-03', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1315, CAST(N'2018-06-27T11:53:40.093' AS DateTime), N'f1546f0e716e553a53f104731aac3b3cb116894f8ccb4a433768d5499e5b4e24a596aa00c3bbbc1a9bc4817cc8df6dcae21cd1e35633f2d14a922c4b18513d7a', CAST(N'2018-06-27T13:24:20.303' AS DateTime), N'111.111.120-04', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1316, CAST(N'2018-06-27T11:53:54.290' AS DateTime), N'266eb0acf01c0968d20ee5ef72a71af8f5e09871d18eb72d291c8ff6dc146490e63eaa71049bd03b875b2be0e156590d1abaa996e7e8b69e7c95531c294054c8', CAST(N'2018-06-27T13:23:54.290' AS DateTime), N'111.111.120-05', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1317, CAST(N'2018-06-27T11:53:58.223' AS DateTime), N'8a8feec48efc694a1b94b2c86241564ff8501d31087f7106758f5d571da21a9240eee3280cbcf5f6cbac1c3621fe5045dd46102a5898bddb3ca5d7410231b743', CAST(N'2018-06-27T13:24:39.600' AS DateTime), N'111.111.120-06', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1318, CAST(N'2018-06-27T11:53:58.667' AS DateTime), N'8328fed66a76b13eaba682b61ab79989fe5e403ab73e1f8a48b0901c2c44a0c9bc5aad440388c1bf1adc5674a99ca198732db286f92bc810d2a76f213977c0fb', CAST(N'2018-06-27T13:23:58.667' AS DateTime), N'111.111.120-07', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1319, CAST(N'2018-06-27T11:54:05.923' AS DateTime), N'0a1a06ef681e310614cdcbb1cf24143e8f3e199b54e0db8b1eabad2e15676ee0f09fe51889b9a55f161fe58ae351cccd4518f3d9dca81c7c8636114bf4230645', CAST(N'2018-06-27T13:24:27.663' AS DateTime), N'111.111.120-08', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1320, CAST(N'2018-06-27T11:54:22.053' AS DateTime), N'1cdfc3a7f2d114dfe848ba841211f0e947e0843012916a7c857ccd7de353a7062d1c248f86a202af8ca451bc02c4fbc5967b9ed56e18986778422789e8130757', CAST(N'2018-06-27T13:29:07.957' AS DateTime), N'111.111.120-09', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1321, CAST(N'2018-06-27T11:54:28.843' AS DateTime), N'c80370a586706c516db31f3178afd5480881b77ab8a57b31cb827ef5f4061655eee1e894b837041f6d1070f6a40478e481d2988e2b77f21ae8e1d24c8dbe0c4f', CAST(N'2018-06-27T13:24:28.843' AS DateTime), N'111.111.120-10', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1322, CAST(N'2018-06-27T11:54:32.373' AS DateTime), N'c3cd594b472c5fd6ae79497953dffc57b47a20b96148e95059f91b549732c2e84c5dc3aa4854511c61c03c1c3280fd907c839a5a9d75aa3ba63e5814399dc84b', CAST(N'2018-06-27T13:24:33.570' AS DateTime), N'111.111.120-11', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1323, CAST(N'2018-06-27T11:54:34.493' AS DateTime), N'fea7c86b05ff91b46cab13ee1883b07c932d97f6917daf784218cb6665322184867bda1257709cc7e41a06826f3e2eb9db5b1bc2986d43f0b766711fb46028a4', CAST(N'2018-06-27T13:24:36.107' AS DateTime), N'111.111.120-12', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1324, CAST(N'2018-06-27T11:54:37.870' AS DateTime), N'afea20655188f04246217268f0c92942a87ddaaf60af86e0c4c35210ae23fb4bb8f819b0118fb7a3bd70da0b4ddd7a1d838b8d0202601c6caa487857aa9d22b7', CAST(N'2018-06-27T13:24:39.363' AS DateTime), N'111.111.120-13', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1325, CAST(N'2018-06-27T11:54:50.023' AS DateTime), N'444227b4f0bb1a284094fdf672b3a62ae0351bffb425036c77b7f059819ce39a701fc4d38f4ee61454825983a4a938ff8574ae51fd0aafd10e457e3e6212a0a1', CAST(N'2018-06-27T13:24:51.490' AS DateTime), N'111.111.120-14', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1326, CAST(N'2018-06-27T11:54:59.897' AS DateTime), N'7709ea6ac87ff0d52695086f96943448861cf820100d9056b84553009c1b31c2e82a383f41f74ef6deb1e348474aeda8cb03403b6a66a761d72297437376d7b3', CAST(N'2018-06-27T13:25:01.730' AS DateTime), N'111.111.120-15', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1327, CAST(N'2018-06-27T11:55:03.733' AS DateTime), N'60523c451d6624a65d1ef87d99b63c7acb9e7f28ea5bce1f02450cc8a545c9c77c7ab2c5ec969431db9ea5a034d0461dc2b8d70465f44d238ca7e8c363bc6d57', CAST(N'2018-06-27T13:25:05.493' AS DateTime), N'111.111.120-16', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1328, CAST(N'2018-06-27T11:55:09.210' AS DateTime), N'9f0fe97ae09322d4a2eb07bd3306b8a9376c8b7094ff3c6a13016f17c881baa246b569a93cf1886d4e48d3b5a6a666f7bc1966592ef921361525be703c2b48b8', CAST(N'2018-06-27T13:26:49.990' AS DateTime), N'111.111.120-17', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1329, CAST(N'2018-06-27T11:55:41.497' AS DateTime), N'409102e18aef47b74e70128627a62d75c4db575edfc5b785b57254183300060afa696f4f664096db9ccfcbf8f581ce880171a93927c855261f51850e0a9c262c', CAST(N'2018-06-27T13:41:38.623' AS DateTime), N'111.111.120-18', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1330, CAST(N'2018-06-27T11:55:50.027' AS DateTime), N'2ae1a77dd25ef030ddd1f7b3c6bac48623338058d4cde652141d91e40a3fc17bee5fb3a71dd750881a2cbd4314ca29199baee61dcf3c64e59fb11c46109b0e60', CAST(N'2018-06-27T13:25:50.027' AS DateTime), N'111.111.120-19', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1331, CAST(N'2018-06-27T11:56:03.657' AS DateTime), N'88de252b273be97c2071f4464bc5deaa6b9401f3b70fe1015dd9d34eb820297b20c8417ac633c80bb6266b17790c2ff36608b7ee51a2c83e0684a2cf8cc2db2f', CAST(N'2018-06-27T13:26:05.300' AS DateTime), N'111.111.120-20', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1332, CAST(N'2018-06-27T11:56:10.967' AS DateTime), N'cfcb9a123af83b6a7c4ea33258d597861f264990aa6ebe9ba8010898ce1a0469bcd2933e7b37d0d1d9f2ababc278d2825d721c9846689a333afa4f279455f07d', CAST(N'2018-06-27T13:26:12.327' AS DateTime), N'111.111.120-21', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1333, CAST(N'2018-06-27T11:56:22.033' AS DateTime), N'6b0b5cfaa78aeff280148415be86288c0d20c1bbcb1f3ec45d936a31e2dd0267bbd79cf96f465b5b5b47654783cbf55edb1eea179059c57509737cab1db1dfca', CAST(N'2018-06-27T13:27:38.553' AS DateTime), N'111.111.120-22', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1334, CAST(N'2018-06-27T11:56:30.583' AS DateTime), N'27a1ba2f88672de104efbb61f885728b09b858e006750b04f299f80928a7625400040f00d3a0701288879e2d3030dd803ef713e6d71a73a9b34b8de31335db67', CAST(N'2018-06-27T13:26:32.347' AS DateTime), N'111.111.120-23', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1335, CAST(N'2018-06-27T11:56:31.723' AS DateTime), N'50c4f6ca444fdb67da887f27df79dfb913059346ccd92994bff7cac5f182130f0a81bc41a26ddc927126aa2f358b5fe1dda3d12352eb6d970c2f3b854e553321', CAST(N'2018-06-27T13:28:11.577' AS DateTime), N'111.111.120-24', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1336, CAST(N'2018-06-27T11:56:44.300' AS DateTime), N'1730b6492d6effb1919e2e984c9138c6404749c39114e1428c057ca63ccd4a530835cdf7bdc64ba886b2e321de7681d0f21e756fcb4d56dff04619986ed64ea4', CAST(N'2018-06-27T13:26:45.203' AS DateTime), N'111.111.120-25', 3, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1337, CAST(N'2018-06-27T11:56:49.937' AS DateTime), N'c926f1cd8e913882b76d500f31bb09917b46ef389397fe8dc2c26ac27cbb37230319d4a22b42ed1586650e994a5a441b516f4c25db28a71baaaf1db30b46e73e', CAST(N'2018-06-27T13:31:05.660' AS DateTime), N'111.111.120-26', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1338, CAST(N'2018-06-27T11:56:50.317' AS DateTime), N'6ef124ace43e0539585a6ceec58369cdc691fb81e6018a7fe7a57b0317b6c97a8fd5a96c6a9d7bda006ef5aca40629187cf903b43c1d0cf1fdd7a8972937d033', CAST(N'2018-06-27T13:27:55.417' AS DateTime), N'111.111.120-27', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1339, CAST(N'2018-06-27T11:57:01.220' AS DateTime), N'f856b971f4b57817e1d64764385beb2a8bce1bb33f922e1fdb31703498c295548c44010ac79e80710a8348fb08215fd3891a6b130e49f8571fc003e3ee871094', CAST(N'2018-06-27T13:27:02.393' AS DateTime), N'111.111.120-28', 2, N'72FAD97D-9248-E811-80C0-005056955165', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1340, CAST(N'2018-06-27T11:57:04.087' AS DateTime), N'db813a02500eec5895ba5c88aa1c5b988791bbcc522ee3f01d3d57bf4dd54a0f6df20d9f3770c886a50535f63239d0f1bc1b766bc43b99bc02b2453d8000c11e', CAST(N'2018-06-27T13:27:45.960' AS DateTime), N'111.111.120-29', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1341, CAST(N'2018-06-27T11:57:07.133' AS DateTime), N'2816384047d4bef463bbd3ae9bb7be6b3d5da131d3ec88864aa64d138851c2670d6aa9935ae3b3332469e0af5daff0774f06d285c89d3da408427fc3b433f9ad', CAST(N'2018-06-27T13:27:59.090' AS DateTime), N'111.111.120-30', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1342, CAST(N'2018-06-27T11:57:11.460' AS DateTime), N'b2161998149b1fa394daf5bd3a2508b4153de5b35965a6231dc441a9b45de539c5d019209e01fc7a3fab9c9baacb254224445032f3802fbeecd14deb40c7b731', CAST(N'2018-06-27T13:28:53.330' AS DateTime), N'111.111.120-31', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1343, CAST(N'2018-06-27T11:57:14.863' AS DateTime), N'08d5a41d73f40eace04d99e392d369d23d420caa965de159819cb77d3d5ab8d7f28b7414fa03bc6f2c23fbc539b80b4f0c3ef2089232b47dd1400504b118f0a7', CAST(N'2018-06-27T13:27:14.863' AS DateTime), N'111.111.120-32', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1344, CAST(N'2018-06-27T11:57:19.123' AS DateTime), N'9c9f3499353434f614da0a3a8cb79692767010933500635dc461203ee7aa3386c9d533e28c37f4270cc79c0faa8ed15e4ab48581ae97cb74d413453b92ceb142', CAST(N'2018-06-27T13:28:49.107' AS DateTime), N'111.111.120-33', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1345, CAST(N'2018-06-27T11:57:21.000' AS DateTime), N'951c60dc4dc982a581134a715fe09c4fcfdbeb18cf093264fc776dd44fabc779956ae228b103990091041aeba8f3fdbd40af25c118fa20aed83275b264b8f9bd', CAST(N'2018-06-27T13:28:12.120' AS DateTime), N'111.111.120-34', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1346, CAST(N'2018-06-27T11:57:21.897' AS DateTime), N'd3c31ca9416def3e019b3c2ee8ed6cd447e660a1b58f24e60b003a7c608441f3cf6ddf59530c21ac2b0e2e9b499726c91f8e802990c0a74b83db0df7ae094e46', CAST(N'2018-06-27T13:29:05.897' AS DateTime), N'111.111.120-35', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1347, CAST(N'2018-06-27T11:57:22.393' AS DateTime), N'4e7d6e9bd1b929bc9cbe1e9acb2639663e7217ce0436e1b39cb0e14692e391e4729e454ec682956fc42f40f739e3f21aea8f72d9ba9538715bca5b43ca801343', CAST(N'2018-06-27T13:27:23.663' AS DateTime), N'111.111.120-36', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1348, CAST(N'2018-06-27T11:57:25.460' AS DateTime), N'a15bb9870f23748dedb842996286275447e8f2cfb21ffabce742e3eebf26345dabd5b53a8db011651e434dc192ee5ff67c949686771799289e3b349fa50e4de4', CAST(N'2018-06-27T13:30:36.500' AS DateTime), N'111.111.120-37', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1349, CAST(N'2018-06-27T11:57:30.607' AS DateTime), N'd2fa3973ccef7cd91e02583a5d3fa0f34dda7b6a5c94b1fb4a0cead6f1c32daa528f2b6f520ee00e8ca33eb30dc07d206a72b598420dc63f6dcee436486e1f37', CAST(N'2018-06-27T13:29:19.267' AS DateTime), N'111.111.120-38', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1350, CAST(N'2018-06-27T11:57:42.277' AS DateTime), N'aab74b3c1b1d96ab1a0431ae04c471a16339a6469bfb67afc89c9996fa4bae18caec4713e44c60ce0b1dc3d18969afe30feb7321514f3a6aadb183a074a6dee0', CAST(N'2018-06-27T13:35:25.990' AS DateTime), N'111.111.120-39', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1351, CAST(N'2018-06-27T11:57:47.947' AS DateTime), N'f95526a30843fd2630b7e611f85cdf7c1ba95be5bd917eaeafd835c4e32d741c0bca8d0511f885ef7d7cc34e3041dbec973e5fa3102418fa32e9555d68fe2b03', CAST(N'2018-06-27T13:27:49.167' AS DateTime), N'111.111.120-40', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1352, CAST(N'2018-06-27T11:57:48.283' AS DateTime), N'b54f804465364d4a81e6503a6be554281d9e0dd786bb78751930498378e618a4b056738341d12d643ac39c2b3901fdb41eb8dfe407e8df26646c3affbca14a70', CAST(N'2018-06-27T13:30:00.900' AS DateTime), N'111.111.120-41', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1353, CAST(N'2018-06-27T11:57:51.157' AS DateTime), N'6caba440c90c19b0251f101ed0b978a428b9f2dc816d472854f809c5765751fbc364e482eb341aa4b77daf97fca7ab228845f9720fc8e16f5aa60b0eeb79ac6c', CAST(N'2018-06-27T13:28:55.943' AS DateTime), N'111.111.120-42', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1354, CAST(N'2018-06-27T11:57:55.097' AS DateTime), N'1f3fc8b5f81ba8e53b0bb1a9159b6c84b0c9a4583ffb90d07534fcf591db988fe39a6f5dabbea6a0b03bcef2a86e9716932909ea5262388b848c9279e63635e9', CAST(N'2018-06-27T13:27:56.187' AS DateTime), N'111.111.120-43', 2, N'72FAD97D-9248-E811-80C0-005056955165', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1355, CAST(N'2018-06-27T11:57:58.433' AS DateTime), N'b3dc591b064dc3e4fe9a02d0c6546dd6a4269710ab1329c8f3618304032d18a475dd23528e0bbe2d5ad82e0c545402e7c5187e504e7868f4feeb3b88d899b755', CAST(N'2018-06-27T13:27:59.513' AS DateTime), N'111.111.120-44', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1356, CAST(N'2018-06-27T11:57:59.047' AS DateTime), N'b7c85f01df6e9554bea3beae692d3085f38b5c3db56ab4cb28a727a3a0fae2064d67d67d91c0dd36d88eb2dd647f965fa6ea497919d40a1ff93d9c2257c41d5c', CAST(N'2018-06-27T13:27:59.933' AS DateTime), N'111.111.120-45', 3, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1357, CAST(N'2018-06-27T11:57:59.360' AS DateTime), N'092ae87d3f1fef1478051a479ca9f28eb8aa76de98b5cb50469ffd5388fad51e91132fcbe681cad368d3c33915f649a17df7be742f3b59afe32353090d2cf1c3', CAST(N'2018-06-27T13:29:02.823' AS DateTime), N'111.111.120-46', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1358, CAST(N'2018-06-27T11:58:02.523' AS DateTime), N'5547a13eaee67788c1d1cd9e20084850becabf33f0fe11b53519821fb930a124baba336d87f68f16b3f83d392acca31d7995ff81a8a45ed07115b8f644c331cc', CAST(N'2018-06-27T13:28:02.523' AS DateTime), N'111.111.120-47', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1359, CAST(N'2018-06-27T11:58:08.510' AS DateTime), N'c0ffe51aac6bb0e1f71bf264f914039df510d4624ad29a9462abc26e5398558b60a1476ba1789e483ae04712a2f975182ef224399b4aa001e955fb84e377c09f', CAST(N'2018-06-27T13:28:09.820' AS DateTime), N'111.111.120-48', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1360, CAST(N'2018-06-27T11:58:21.547' AS DateTime), N'6d93b903b145cfc15b4da97b755124dc17bc1647f9a711d78c900f460c4385f40ebb42cb6db32e35fe12d86f3fbff3c7b02ab6e57a0d3063870e693d391e931f', CAST(N'2018-06-27T13:28:23.027' AS DateTime), N'111.111.120-49', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1361, CAST(N'2018-06-27T11:58:26.320' AS DateTime), N'5788099519a73bbc1353b073fa2f6060a9431007c8d4f9cf142e2277aa4de54d3fc26cfe2076f445289b9ee4ec945209b079bc42b82ae903cad3ee2ba3293200', CAST(N'2018-06-27T13:28:27.937' AS DateTime), N'111.111.120-50', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1362, CAST(N'2018-06-27T11:58:33.213' AS DateTime), N'c4f85821e3933315df7a6d8918ff494d7aa5813f8ea4a3db9250158b6d1d55796e1225df916f3c20b2947b878404ba656657ac8f72f290a94ffcb129836d0616', CAST(N'2018-06-27T13:28:35.377' AS DateTime), N'111.111.120-51', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1363, CAST(N'2018-06-27T11:58:34.610' AS DateTime), N'b521f2f0afc719a2f36ed9b55553feb9aa892b19b995ccc3161f6838e7f093c6e46385844128b5f0ceef30cbf302dfa67b99ba4a01f8261f0d8a43474278b3db', CAST(N'2018-06-27T13:29:48.190' AS DateTime), N'111.111.120-52', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1364, CAST(N'2018-06-27T11:58:46.310' AS DateTime), N'51ab6c00af642650cbd0bb44cd3e01a029270e7b82e3af37fe857e018f9c60b2b69871c5b0f3eec5bee4c9167879dd67938d33873befb9275f2091d9c2a43931', CAST(N'2018-06-27T13:28:47.630' AS DateTime), N'111.111.120-53', 3, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1365, CAST(N'2018-06-27T11:59:08.117' AS DateTime), N'529d309b6500692bff3e6f90ceb06ff3b3f518b8ca3a9a00aa553677b858e61e07543820589bddd31c8cb51ed51a413d83eb3e3ef5a8280e1b4ae83aab6b7a66', CAST(N'2018-06-27T13:29:10.090' AS DateTime), N'111.111.120-54', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1366, CAST(N'2018-06-27T11:59:10.453' AS DateTime), N'728ed1f5e0c447cd49829d5bd180af4f728f666ef8fe35110e98f279fb8d8d666a830ab439b72ca1c3e86e88b17e5d988abb50434b0f82d6e595f1b9ce25587e', CAST(N'2018-06-27T13:30:29.637' AS DateTime), N'111.111.120-55', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1367, CAST(N'2018-06-27T11:59:11.633' AS DateTime), N'ae8e71045c7997763cdf8c1ca7bcac5a64726160e5c36ffb0b99c0351362d08d61718a1d1e2b1e2b1601fc1e2c26d4a7678d66e15efd73328440a0bcf3f3b677', CAST(N'2018-06-27T13:30:41.160' AS DateTime), N'111.111.120-56', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1368, CAST(N'2018-06-27T11:59:16.010' AS DateTime), N'00c987a93760067f44151046dc35e529675e1043d21045ebdf2ee75116339541d09a1d11e8536fd3e86b3e9386f99fe24bde5bb866a5027fe9e2c1eb3e119cb6', CAST(N'2018-06-27T13:29:16.010' AS DateTime), N'111.111.120-57', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1369, CAST(N'2018-06-27T11:59:16.153' AS DateTime), N'96062fc4bd3b9bef04d5e50f63da590981e559dddb3ad809b26d6cdeff3635e76e614ba918eeba37d93b36050f5379f0b1cf37538f7db322c1d7ffe269c59b4b', CAST(N'2018-06-27T13:29:18.167' AS DateTime), N'111.111.120-58', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1370, CAST(N'2018-06-27T11:59:16.310' AS DateTime), N'd3b1d320be6634ade68cc9dc51bb054844f7c89552764fc45b728eb8de3ff7bb5f2246ecb17f257ed63e082fd338846581db5d004fa8c736fab9392b92b847d4', CAST(N'2018-06-27T13:36:15.373' AS DateTime), N'111.111.120-59', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1371, CAST(N'2018-06-27T11:59:22.923' AS DateTime), N'791484f1f41f3d3e42c9fa1ab0b049f66933e7e6ab35766e277bea5edeef33546cf8c1f57efe42bacde3a8f7347d124244ab33f3d748799669fbe36f4a00e4ea', CAST(N'2018-06-27T13:32:39.697' AS DateTime), N'111.111.120-60', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1372, CAST(N'2018-06-27T11:59:27.550' AS DateTime), N'a6bb4d6f80861660962366f36c6340eee761f6ce3372e29d9eda08ad9d3f6c92b32509a7e431bdf7397ba5b1487501bbebd06a98d223ac4a4135161004d0dbe1', CAST(N'2018-06-27T13:34:04.813' AS DateTime), N'111.111.120-61', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1373, CAST(N'2018-06-27T11:59:27.570' AS DateTime), N'493496626be346a22b85ec5a95ff98239f0fb7c051e86b1a7888109ef3f5ce47707ca7067ac5727b5e2fed8b6740e46e34ff5736d558be1f8ada620e8cb294fc', CAST(N'2018-06-27T13:33:13.430' AS DateTime), N'111.111.120-62', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1374, CAST(N'2018-06-27T11:59:27.620' AS DateTime), N'b3bd940b2d2e4d894ef9555aab469417263c61359900808439dd5715e28454ef0ac9d3cff0ec6e89b996ac337cd632487351b133c3ac5c60270346a95052e949', CAST(N'2018-06-27T13:29:29.423' AS DateTime), N'111.111.120-63', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1375, CAST(N'2018-06-27T11:59:29.923' AS DateTime), N'37031617a5c47309e4440164bb2da108d48fd22bd5f504154944ea7060e6434fd83756bdba755fb659cc494e74aad6557fe238fb7478666fae77ba2576a9fa5c', CAST(N'2018-06-27T13:31:11.800' AS DateTime), N'111.111.120-64', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1376, CAST(N'2018-06-27T11:59:34.483' AS DateTime), N'c9cf7668c0f5f74991319ebdd841f6a60d15e9d009f72a12c38c9300adbd3aa811abd871a221f586c591054bc36f58ec1bf4f908444dadf7dfe2d2ba44f3435c', CAST(N'2018-06-27T13:29:34.483' AS DateTime), N'111.111.120-65', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1377, CAST(N'2018-06-27T11:59:38.420' AS DateTime), N'b07e83d870b35e6667a7bf0a97d1e3f4d94859072dcddf7dea8c990e7dd53dd927c10dc16eefdf2b013a253d99197f4a2285b6148e3796fef3a3c1ef69551e11', CAST(N'2018-06-27T13:29:38.420' AS DateTime), N'111.111.120-66', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1378, CAST(N'2018-06-27T11:59:39.797' AS DateTime), N'9f9d6d37bdf7a5f9bf5f64505ea25ace8ca79f02a7d21b71080ad6cd82be27d742277684b259739034a5e91b51619f95b5133a742aed51d65dd91306d7e9e97c', CAST(N'2018-06-27T13:29:41.367' AS DateTime), N'111.111.120-67', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1379, CAST(N'2018-06-27T11:59:40.953' AS DateTime), N'9a1a51ece7b0ad5ac1c232a31e10015e6c4ff4d23932fae7de638633e66ed2dff9249c1d076c2748e6926f1e2d70be08ec6811106a3a262eb323385c6aae4c5d', CAST(N'2018-06-27T13:31:11.833' AS DateTime), N'111.111.120-68', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1380, CAST(N'2018-06-27T11:59:41.297' AS DateTime), N'55e8efa105aef4ff2a2c95c6a161710052614012ec7ae794ac7a810186cccdf64ac69db76aed1af19304782b377ecb635b8c979b8c90745916ac2e5a8028c335', CAST(N'2018-06-27T13:31:46.177' AS DateTime), N'111.111.120-69', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1381, CAST(N'2018-06-27T11:59:43.080' AS DateTime), N'b0c05d68bdadc3a7b24d7ac8ec271c8487a361fdcfc3e30ed9f7a95b0d1b3c26a5dbae5636aa678b47d2510dd60c410626101c9ca73aec904ca9a2889f4f7133', CAST(N'2018-06-27T13:29:43.080' AS DateTime), N'111.111.120-70', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1382, CAST(N'2018-06-27T11:59:56.257' AS DateTime), N'f79cd47883f1c50bb72d27ab5cd7ef8605b784a490fb6e1bd9ed88589515f65bc1bd7aed10215cd1ec469a4ca88a8181967b3d8226562f863915795aaf645c11', CAST(N'2018-06-27T13:31:19.000' AS DateTime), N'111.111.120-71', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1383, CAST(N'2018-06-27T11:59:57.920' AS DateTime), N'020da8a72ffa852fa0a0b41f165aa3dc6465ef4cffa159cb6d63f3ab97dcc0d373766ff1c0e53324159351d04eac2c14c7a03a93480750c1f2bc545781dd22c9', CAST(N'2018-06-27T13:34:33.000' AS DateTime), N'111.111.120-72', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1384, CAST(N'2018-06-27T11:59:58.990' AS DateTime), N'cc304d84f516610ee385b76334289d205e0c32833c0ccba51681d2fb572efc1b8b51daa6e6a2dd0c0c3e8e67ed2a975c011290dcd3e8b2835d9b8f6b4e758694', CAST(N'2018-06-27T13:30:00.650' AS DateTime), N'111.111.120-73', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1385, CAST(N'2018-06-27T12:00:05.710' AS DateTime), N'bd1ad290a66bbad606f6e569fe773db2524a67a7713e9e021a26a10a39a18ff0a6751306638af48eae52b2b6e793191370eb88a27ad226ae6fa9db0d835446a2', CAST(N'2018-06-27T13:30:05.710' AS DateTime), N'111.111.120-74', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1386, CAST(N'2018-06-27T12:00:07.490' AS DateTime), N'5c022191437edfd2c3d71c0f80c81d4a918057b81ff14d150dc3b85d957ec065f7d937dcb38bfbf70c7585d3a33311628f1ba1f03a91d6a2bf5f861c22f7ed6a', CAST(N'2018-06-27T14:18:42.103' AS DateTime), N'111.111.120-75', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1387, CAST(N'2018-06-27T12:00:08.773' AS DateTime), N'0381ced6ae4050878aebc3fcb16fec672832f8527a3688c44ff9bb6a464054939832fa62ef7f60832d04d8761eaefedcaae985681d7fabb869a516e802fe84e4', CAST(N'2018-06-27T13:34:20.537' AS DateTime), N'111.111.120-76', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1388, CAST(N'2018-06-27T12:00:12.183' AS DateTime), N'1ca12e7fc09381ff95d894d534223d39e6a2de40b023cab7eec8dbe23d9e9448b038576a667a81c6569b92746a110abf51e5208a60c1631fba68c15caa1d07b1', CAST(N'2018-06-27T13:30:14.563' AS DateTime), N'111.111.120-77', 2, N'B675FDC8-663A-E311-B421-02BFC0A801BB', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1389, CAST(N'2018-06-27T12:00:12.280' AS DateTime), N'dc9f9d10420f943b9574f55350ca50712353f38f9a511e206acab963469ce7c6a336f0bb69c12746443a75e092d75a1bc55d998383ceb61ec7b90bf1cb729ad6', CAST(N'2018-06-27T13:30:13.933' AS DateTime), N'111.111.120-78', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1390, CAST(N'2018-06-27T12:00:12.840' AS DateTime), N'5d39dcaa73b1b44764ec4a11654f9f37a6841dbe5047a7daf260d238eac960fca6bbd3b588f12fcd96a5050a54132b6fc2fd34b5d8094b68035a08edc3fd61d7', CAST(N'2018-06-27T13:30:12.840' AS DateTime), N'111.111.120-79', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1391, CAST(N'2018-06-27T12:00:13.350' AS DateTime), N'fca0a7f87cc6ad1853953ccf5a879421ac1e6423ed36a832b5727c0d26a8febc405b47d3c1201ef08c2ebd268f671bbb7a0b890ee3f1d9bb4c1066527d5a9ab9', CAST(N'2018-06-27T13:30:13.350' AS DateTime), N'111.111.120-80', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1392, CAST(N'2018-06-27T12:00:14.770' AS DateTime), N'6e048fd022e00122b8d9ca4ffa0e3338e161f422c9079747986e38475b1fd95023522ec190da28b6eb5f228abc44e5552623f4cf257b4f2923999168d5efbe73', CAST(N'2018-06-27T13:31:02.147' AS DateTime), N'111.111.120-81', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1393, CAST(N'2018-06-27T12:00:23.367' AS DateTime), N'd539b0168f7b5b7f3d17e1dfcbf6a8fde7a4ce6663811b7e267080853ccf41041645769f536d5d8258ac97e3ad55d3eabc54b476c66f08fd8ffd5ac7687e570d', CAST(N'2018-06-27T13:30:23.367' AS DateTime), N'111.111.120-82', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1394, CAST(N'2018-06-27T12:00:24.567' AS DateTime), N'38a6bac1d563b9f03867ca6907bc2ea71684cf2d4183969b1ba4213aef13c0f2581caec471e070b7010759e1f2437251713bd4962416facb59f329a865bf255b', CAST(N'2018-06-27T13:31:23.090' AS DateTime), N'111.111.120-83', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1395, CAST(N'2018-06-27T12:00:26.027' AS DateTime), N'd6a94932de4d287ab8c4dc11b4e7ebbf4a34089f4b8f2432528fb365244ce9a52a0b88b23eac9e5ce79d4f296aceeab18b4325952afa1f45fc14e5be941664f0', CAST(N'2018-06-27T13:32:37.250' AS DateTime), N'111.111.120-84', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1396, CAST(N'2018-06-27T12:00:41.540' AS DateTime), N'48930f6917cbe6da3ce7b3afe811003300eb0d78fd16ed5304d63c7146be5d8a85595822c48b692b3e7d742ae3ff5b0232922634a70641da731d03ba92d04b85', CAST(N'2018-06-27T13:31:59.790' AS DateTime), N'111.111.120-85', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1397, CAST(N'2018-06-27T12:00:47.100' AS DateTime), N'da53b6458e68c47727d66f8b16223d61671fd5c333a511ed643a392455bdbd3f1e5c736ecd491ed80bc5be5cbb5f6d74fed348da576652c0da32b045fba1837c', CAST(N'2018-06-27T13:30:47.100' AS DateTime), N'111.111.120-86', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1398, CAST(N'2018-06-27T12:00:48.637' AS DateTime), N'db724f4d214ce1bf253533e9f00124a7229dc8d066d8be6be32803489f9d55b2e375673d1cfeb8f20664852424e6ce9b9c58c9101122f29c188379002f9b1481', CAST(N'2018-06-27T13:30:48.637' AS DateTime), N'111.111.120-87', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1399, CAST(N'2018-06-27T12:00:54.190' AS DateTime), N'6d48e550600a82b16dc7f3cd265df855b1e7d613c1491b9fb81e80eff686013a33c9d45c155cc9a2a90a8e7b17b85f73e3f8433059900d41259046ff3d5eacc5', CAST(N'2018-06-27T13:40:54.783' AS DateTime), N'111.111.120-88', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1400, CAST(N'2018-06-27T12:00:55.173' AS DateTime), N'93e4ddfb812ed1c978384acbad074d3c3ddce86c62738f82b53c0d0184956d5e9a7b36ed61773b466b3be6e59a83788f43906ea975300aa2c3919b7dd369e182', CAST(N'2018-06-27T13:30:57.037' AS DateTime), N'111.111.120-89', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1401, CAST(N'2018-06-27T12:00:56.693' AS DateTime), N'3bba27dc6ffc848c343e48ebdd83357d3e8e493eaae07f50aa087fe6ab89a11cc6c10f40bde9cd5fde0064cb7d86b9b61f1be68431aa40eecb24e9b8dd612e35', CAST(N'2018-06-27T13:34:30.977' AS DateTime), N'111.111.120-90', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1402, CAST(N'2018-06-27T12:00:56.897' AS DateTime), N'70ed85c61fac26f5a3bddc531ecd746002172087fc798fecf85ab7cc782c165ff7806ff30ab23f202061268c06a0b8ed7510127d7aee79da97858f15b37dffe0', CAST(N'2018-06-27T13:38:37.770' AS DateTime), N'111.111.120-91', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1403, CAST(N'2018-06-27T12:01:06.403' AS DateTime), N'f0f21c79501bc0b4d7d419b0e094ec77d3e09ba1dd006b501d74bf5ce85a90b32d785e5b9b18c8ad2670b2f4c3b79a6b6ff98e344ffdff75f178157d9163c12e', CAST(N'2018-06-27T13:31:06.403' AS DateTime), N'111.111.120-92', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1404, CAST(N'2018-06-27T12:01:11.807' AS DateTime), N'a01c13b5f3d413ddb26217d2cfd7cd73d99322ade0d1e3b46ccb13a342603b5b49a48a26db6aa0f5692b08e964db500a4e7b027c351bd8549cdf3aeb26ca4960', CAST(N'2018-06-27T13:31:40.983' AS DateTime), N'111.111.120-93', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1405, CAST(N'2018-06-27T12:01:11.887' AS DateTime), N'0b5360ea8e371a14e181f9d6a197746044f28fda210baa1498eb126a3dac0c49a7bc24677437e51454dd801cf3b5d02b1601d3644db92afefdde2ded68071c0e', CAST(N'2018-06-27T13:33:15.187' AS DateTime), N'111.111.120-94', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1406, CAST(N'2018-06-27T12:01:14.620' AS DateTime), N'03cbf4ce1e64fe38dce381f3a0254dc4b129691ad0f1ae0daa3decd368fb5b42535852492ace8500ba7a615c563add42064a72a122479d9c58cb7e8bbda55f11', CAST(N'2018-06-27T13:31:16.553' AS DateTime), N'111.111.120-95', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1407, CAST(N'2018-06-27T12:01:16.793' AS DateTime), N'bef75e577e8aee8f07222692a9421eac2c3e1805a8d8691dfcdbeea3c784326cc4a85db971c7bd782ac0718b7bbbb3d9518c0265aedcb923d2cb06fc73df90b8', CAST(N'2018-06-27T13:31:25.483' AS DateTime), N'111.111.120-96', 3, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1408, CAST(N'2018-06-27T12:01:16.880' AS DateTime), N'7dfc8f502e574061e1aedb77a59a7963287a8547404635c3d849b99153906c8e3ca3eabcd29a1ce5903d6c725202f7a1aaa5d312886823c40314402429f1a5ea', CAST(N'2018-06-27T13:43:38.713' AS DateTime), N'111.111.120-97', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1409, CAST(N'2018-06-27T12:01:17.107' AS DateTime), N'9b5d369f8a886c426ee6d23b433a872d1940b9403883541c45d994ddd4fa96e596c99441e78454a2686a7f01f8d71be2556e69eae0044afecca31d5516780b86', CAST(N'2018-06-27T13:31:17.107' AS DateTime), N'111.111.120-98', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1410, CAST(N'2018-06-27T12:01:22.850' AS DateTime), N'0c9557be9de30cb0fe4cbc1ea4e34f5c20cda3eaa86066828b53a577879bcb6a78b204bc2f74c2ac0c2f2ab74d6017b557f133a02758f7ca32e80920c2f79c32', CAST(N'2018-06-27T13:31:22.850' AS DateTime), N'111.111.120-99', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1411, CAST(N'2018-06-27T12:01:31.667' AS DateTime), N'172696216ab5a1cfa9ca2c58a1386175b1d2bda6a062dd757111db4ccbc4a20be14a9915bd2fdb45253fdb717201f144dfab106992ac0d2c18dcdb0e671d257a', CAST(N'2018-06-27T13:32:05.220' AS DateTime), N'111.111.121-01', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1412, CAST(N'2018-06-27T12:01:31.750' AS DateTime), N'a098805c6cc866aae85db5ed6ddb385e72fb14bbc9c6296f321c5d94cc8a9240c5676841c8758160bde41fef9af47cf1f062f9bb0444477d3fa9e484ec6b1de8', CAST(N'2018-06-27T13:31:33.997' AS DateTime), N'111.111.121-02', 2, N'2BFFED18-4329-E011-A2DB-0026B97E0079', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1413, CAST(N'2018-06-27T12:01:32.650' AS DateTime), N'988d319947a9a69435ac496a1ea79c0fa18b802eb5d069a3dc0737cdefd508f29013dee524045ab4faaee736f9c02b31d21d2ed77164fec484304cd3bbaa6d3e', CAST(N'2018-06-27T13:31:34.793' AS DateTime), N'111.111.121-03', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1414, CAST(N'2018-06-27T12:01:39.483' AS DateTime), N'eba4e658f99633299ccc6876cf323117cdc3377e0227699fbf6deb4b98b1d832fc9d42561624a59f461e3839e2364678bbf2128a99d4d13bec61e58963cba3c0', CAST(N'2018-06-27T13:31:39.483' AS DateTime), N'111.111.121-04', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1415, CAST(N'2018-06-27T12:01:41.760' AS DateTime), N'c1f2c6a51f1d7bb0b5e9378a0a0c45163ff859b441bf5c4c5c420b41686a90be69587df80253bed62cf93e84b2331390b5944fb9de896cb05b01399a1c6f8663', CAST(N'2018-06-27T13:32:46.183' AS DateTime), N'111.111.121-05', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1416, CAST(N'2018-06-27T12:01:41.770' AS DateTime), N'c8f3b9e9843c549e8e766d00b8c952d4be70e61d78f4c0cb8160347b399b03e8fa3c8af907f137070b32e70ffb8fadacc8c6ca54c055393c932e1f4c5b58b89c', CAST(N'2018-06-27T13:31:42.920' AS DateTime), N'111.111.121-06', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1417, CAST(N'2018-06-27T12:01:43.830' AS DateTime), N'987e99561335614f3324fd5835c76b2cae7646ed4b157d59a15f6d5430e2166b5f602072305c17159b26413a618562ff948820f7790a492effbe93ae5248a25b', CAST(N'2018-06-27T13:32:50.083' AS DateTime), N'111.111.121-07', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1418, CAST(N'2018-06-27T12:01:52.670' AS DateTime), N'ada5193da71a51f71cf3a088d823eac3fbcd22ebe87b19801fa2c5ab29871150756cd3b98b0247c18e64c014e71bd12c04414f4eb5f77bf7172519f5bf998f15', CAST(N'2018-06-27T13:31:58.197' AS DateTime), N'111.111.121-08', 3, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1419, CAST(N'2018-06-27T12:02:02.037' AS DateTime), N'b9bc7da72d3cac4b1785bb899d2767ce9eccf044f9744136597909ce877b77d49831b306e9341bf2ee8db8982edfc255c0ddc8c4ac60b828d73c1db42eb9dca4', CAST(N'2018-06-27T13:33:41.013' AS DateTime), N'111.111.121-09', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1420, CAST(N'2018-06-27T12:02:03.523' AS DateTime), N'04ea1f284847de6fdd12f034a822f3444c8c3ec3a7bce9c597e5c7f025e686484a4a7580d6776d4766272b4c8944d073c240efce8ce61b98dca3fa13a76cfdaa', CAST(N'2018-06-27T13:33:58.013' AS DateTime), N'111.111.121-10', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1421, CAST(N'2018-06-27T12:02:11.510' AS DateTime), N'a86b15d3ac68bb53900d67882ef11284266c5ea1e971470c3c69be92c0ef03683c040aed969f5f7dd96081524feff78eeda8b28c43bf3feabe574ff30c86febe', CAST(N'2018-06-27T13:32:12.950' AS DateTime), N'111.111.121-11', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1422, CAST(N'2018-06-27T12:02:13.027' AS DateTime), N'9864013b827b17ee7f37d7dcd64cc9a10667125ccb6555331f00e24ce7209d7c5d1056ee3bb00e86635947615f0dab7afab82aafb64abcc33a1fb3e069cd6573', CAST(N'2018-06-27T13:32:59.557' AS DateTime), N'111.111.121-12', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1423, CAST(N'2018-06-27T12:02:13.320' AS DateTime), N'd83df305083100e6cded65e94a2bd8285d2f7f2944502db61ccf6d0b160d17096f650bff80f428e9b1c297516aa6a27d2361523513451dc4bab95040d731a812', CAST(N'2018-06-27T13:32:15.940' AS DateTime), N'111.111.121-13', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1424, CAST(N'2018-06-27T12:02:35.433' AS DateTime), N'a2eefa2266d856b5afe52fa428c200603019189bdad5ebf40f30d3915c571af9578a61bc2d6537d8ae4a6f097c942006efd2b40e4f6494e5411b171fdc068dad', CAST(N'2018-06-27T13:32:35.433' AS DateTime), N'111.111.121-14', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1425, CAST(N'2018-06-27T12:02:42.673' AS DateTime), N'6b836f08e5df1a71415311cf2e11f496f5ec28d3893032dcc973212d8c1e0a6bb5d783056a7e0ee6376805d79f1db1557bb100f0a56a2c9b4d2aeeccfdb7beb5', CAST(N'2018-06-27T13:32:42.673' AS DateTime), N'111.111.121-15', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1426, CAST(N'2018-06-27T12:02:50.987' AS DateTime), N'585f88c765f115579a4c0eed68680ec84e01c0a545252ba4786f51c949285804c7181fce0ab0e9bf6e81686c909e2d266727df9cae70b26ef4784e3ff5b83e1a', CAST(N'2018-06-27T13:55:23.003' AS DateTime), N'111.111.121-16', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1427, CAST(N'2018-06-27T12:02:51.873' AS DateTime), N'2eb9ecc013d0434932f3d88fae8f65f9407aa4af96afab2f750a89c8fe635c54b6f2dd2544bb11e5846fd5360e12024f046c8aab0a0c0e40f9843107ea529ff2', CAST(N'2018-06-27T13:32:51.873' AS DateTime), N'111.111.121-17', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1428, CAST(N'2018-06-27T12:02:53.663' AS DateTime), N'a26e9908fb9fb87e9c575e7926136dc7fc07d311fbe94f7127f3c4b85e37264c7211abe1921ea5113e08d26842283f9688e83e61c24f51599be624f238fea0c8', CAST(N'2018-06-27T13:33:24.337' AS DateTime), N'111.111.121-18', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1429, CAST(N'2018-06-27T12:03:01.370' AS DateTime), N'8ea5debbee43a16d7a8178d9f0e9ea5b83ebe68e64f7b20572357be31fe26c470804f21d559148ad82fad5165c921b7522fb3875b3b3a47450360db7da291770', CAST(N'2018-06-27T13:39:33.720' AS DateTime), N'111.111.121-19', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1430, CAST(N'2018-06-27T12:03:03.967' AS DateTime), N'37bee853e77a9e56522479548cdeefe4feba13dc54f71bddb6c6a3bf6d078cda92d625ad356e89d05337da05b1a45c07d350a65290649f6ba1b1d6d531a4fa15', CAST(N'2018-06-27T13:33:06.327' AS DateTime), N'111.111.121-20', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1431, CAST(N'2018-06-27T12:03:09.030' AS DateTime), N'8dda930febc68eb9c6a3efd8cdc42e8f2b6865adcea163c4d8afc980d0367a9c6d2347e27d7c2d8a0d50ca770f5a48f5e40da5f6b9860ffb799849be61594c61', CAST(N'2018-06-27T13:33:10.560' AS DateTime), N'111.111.121-21', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1432, CAST(N'2018-06-27T12:03:19.693' AS DateTime), N'1d3eaa20b1ebae640ef272b5372fbbe00bf16cc881137cfbe1359c2c9de1b26ea13dffe6ab7e92c3c8b18cbf1b15b262c00ea2a4316fb6b0adc41a2a1c9d2205', CAST(N'2018-06-27T13:33:21.500' AS DateTime), N'111.111.121-22', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1433, CAST(N'2018-06-27T12:03:24.533' AS DateTime), N'47bdd67b677a706b24a35899b074e5aff3fe4e201dff5e5c2d852525a00ce585b5eced719c74592bc68d85dc60e533c95961c31a2d1d3f86de014e2a334ece61', CAST(N'2018-06-27T13:35:01.430' AS DateTime), N'111.111.121-23', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1434, CAST(N'2018-06-27T12:03:25.933' AS DateTime), N'1bdad2e5947b24a7e3f5217c6d1d7ae4dad90ed8817a8b2dba9c2bc4f6704ee402daa09a4e070cbd249f774ee6f6ab56c24280765f2e775259e0207419a545ad', CAST(N'2018-06-27T13:33:27.653' AS DateTime), N'111.111.121-24', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1435, CAST(N'2018-06-27T12:03:29.440' AS DateTime), N'929053881cf9dc7d9117e0ed727b65e2d07b3026ebc7b81224f8202b1688bac48babd366692805763e76dab273837433ae334879249ec75e9d15037cf312d83c', CAST(N'2018-06-27T13:35:12.800' AS DateTime), N'111.111.121-25', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1436, CAST(N'2018-06-27T12:03:30.250' AS DateTime), N'0b200a76ad13a66d8ab30d8b080465f3c4f42d98f0cd1bfd9431d3e273f45ad83ab9fba2697f3bad5bd7942b904d464276e76716bbf607676fd2ee16e633c356', CAST(N'2018-06-27T13:33:31.940' AS DateTime), N'111.111.121-26', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1437, CAST(N'2018-06-27T12:03:34.260' AS DateTime), N'763e290453d9adf51d9643ef696bd5b24a61b4a8ce6494fc19e40e22d9cc2e8e2623e33106a67168a8bb72dd85a389067a34d8500d2f011370ab952d984971c7', CAST(N'2018-06-27T13:33:36.200' AS DateTime), N'111.111.121-27', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1438, CAST(N'2018-06-27T12:03:36.660' AS DateTime), N'e31bd5afd96172b230fed18733744a2b6b80d35726bc7358098734780e03331e61b080dc8cfcd9a53ae23a56b052f7179c51fcc2fd51792e4617d0dd5107affd', CAST(N'2018-06-27T13:35:30.483' AS DateTime), N'111.111.121-28', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1439, CAST(N'2018-06-27T12:03:44.257' AS DateTime), N'c31c6ce406fe49dfb7b1d3686a7b4910b3c5865c3372b4d6ce287ae853d9576b447f89d220d09cd47a4ea429e2a189cdd59ff244bb9193c6aee8f24335e5c4a6', CAST(N'2018-06-27T13:43:34.490' AS DateTime), N'111.111.121-29', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1440, CAST(N'2018-06-27T12:03:51.450' AS DateTime), N'7253a3336b1f8f6ac22e5c4daa7ebc8a13e34fc38d87506cc3f4b995498d1923b43149830fed31d5815243b3301e919b3ed69b5c4062f0b4803e1ee07fdcc415', CAST(N'2018-06-27T13:33:52.557' AS DateTime), N'111.111.121-30', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1441, CAST(N'2018-06-27T12:03:55.230' AS DateTime), N'4c6c02bd3c3139d4b1a62223b2363e4931c6386c90896abc877d3eac1809f91e3c31c1a0a62931e83eca1ea245e064a2c490dbecdc167a416013aaaad36201b0', CAST(N'2018-06-27T13:33:55.230' AS DateTime), N'111.111.121-31', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1442, CAST(N'2018-06-27T12:04:13.290' AS DateTime), N'4a092dbfe9f1fd8e138ed362fd1e3e0ca3b3a2bb359bd42bdd20a7ac1af0caa8982004aca1b2a45564aa6930c6d86e7485d741d542218ae9a2411913170c71ba', CAST(N'2018-06-27T13:34:13.290' AS DateTime), N'111.111.121-32', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1443, CAST(N'2018-06-27T12:04:17.957' AS DateTime), N'b8561dd0b0bdf36c839f7123f8b4cdb43472629b90762718cfd61f8a5aa1c753eea549d54a371c6a0074bd341d2c7797a14476377681587fd3ee18ac35eb5e12', CAST(N'2018-06-27T13:38:14.510' AS DateTime), N'111.111.121-33', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1444, CAST(N'2018-06-27T12:04:19.407' AS DateTime), N'b2299b03600fa06e371602c42fb87ad8164e191817018ab52c7bd2135c9852cfbf42e839134d4e42ecb7611140c7e9b7af72375069798da3ef2b137866671154', CAST(N'2018-06-27T13:43:19.423' AS DateTime), N'111.111.121-34', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1445, CAST(N'2018-06-27T12:04:22.290' AS DateTime), N'4bf8dfe75c0f1553a239ca6cbc6884cdccbbc26c4646570789118e3afe2006c8b9c81025ae63bbecb68e2d11ece457e45f3b2c6fd23a66804c2bfed679471229', CAST(N'2018-06-27T13:34:24.180' AS DateTime), N'111.111.121-35', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1446, CAST(N'2018-06-27T12:04:28.977' AS DateTime), N'9044098e45d50d47d17371b84924946866aed363bd421a49076cfabeff4600d6d83dae0bac691a8a72e891b8ae27d5a80358ce48c8a3e746fad3c5b48370389c', CAST(N'2018-06-27T13:35:13.543' AS DateTime), N'111.111.121-36', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1447, CAST(N'2018-06-27T12:04:30.217' AS DateTime), N'a9ebd614d70ca061b4659e698049e6091a9e10bcdb905f0c7bcf133586bd2ea811eb64db10be8f9cc54cff00a039ed28d79ad67e9225b7e5ae095609bb3477d2', CAST(N'2018-06-27T13:34:30.217' AS DateTime), N'111.111.121-37', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1448, CAST(N'2018-06-27T12:04:31.503' AS DateTime), N'a3d4c867c2b19bc3f9a3c73e8dc79143b85b0642b350634c2b259f438d8a95e8c66da70e8283d88af7888f70d6fe28e5790f119b00e9af0149bf7963db156f26', CAST(N'2018-06-27T13:36:13.907' AS DateTime), N'111.111.121-38', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1449, CAST(N'2018-06-27T12:04:36.470' AS DateTime), N'61f7b8b1afb4587104ec3b0de4030333e27fa03f612b60b77732aeb370d7bd527404ba043ed009ec58f81f491085f57e0405ad1e1f9dd2e35d6f04829763f62b', CAST(N'2018-06-27T13:34:36.470' AS DateTime), N'111.111.121-39', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1450, CAST(N'2018-06-27T12:04:38.927' AS DateTime), N'567e80d3730c6cf059292b6f15c95279ebe1770cc478d976cdff2c7af5b2ea835af52948a14c90d0389bb7bea86e53c53c93fc87be8e74d659c4056f7a9137d3', CAST(N'2018-06-27T13:41:49.063' AS DateTime), N'111.111.121-40', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1451, CAST(N'2018-06-27T12:04:58.580' AS DateTime), N'0ffc148e2691e71e18684bbc77458bd16fcf1bcdc3dcc568479329ffdd7ff966f54c3116fbf85b5d3c3e70268f7e352d5ac4999ab132de553bc5e8553299788a', CAST(N'2018-06-27T13:35:00.700' AS DateTime), N'111.111.121-41', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1452, CAST(N'2018-06-27T12:05:02.740' AS DateTime), N'9ec7251190941d8234ee5ab1e33f07dee583cf3c7d12a25045f51bbe3e2e2b1e7baf00931c3a0ec7812486db2499e3d08f2f6a0d19d311ec49ff8c27c7f6c779', CAST(N'2018-06-27T13:35:54.357' AS DateTime), N'111.111.121-42', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1453, CAST(N'2018-06-27T12:05:11.900' AS DateTime), N'9d961eba64f3e39814a954be4d7c688b9854791ddd6f31a8aa08c7785f0aea7d3fc961cf12570ffc19b96b1022a6ee65dc0f8283dc3f81480fea90759b3c8267', CAST(N'2018-06-27T13:37:59.123' AS DateTime), N'111.111.121-43', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1454, CAST(N'2018-06-27T12:05:12.303' AS DateTime), N'0a77c5d79158e15a1cd046c920fdfebd73fae171c0c9f3117806b05de9f3ee45ce3907e60ff4a58ab62935dd76f770db89a8bcae66a96bfb50d0539186cc39a4', CAST(N'2018-06-27T13:36:32.500' AS DateTime), N'111.111.121-44', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1455, CAST(N'2018-06-27T12:05:15.173' AS DateTime), N'9c1091fed86f309ccd113b283d6c69f2ecd0c5b3dca061a93f0ee7307c0b1fd574802f746ad0c65d5bc7da59c27ccaddc6dd95c24f3cc60af373e08ad05a9fe3', CAST(N'2018-06-27T13:36:15.383' AS DateTime), N'111.111.121-45', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1456, CAST(N'2018-06-27T12:05:19.943' AS DateTime), N'bbb4e5699fc4a55c7626d09b1e302517b94328834c06935bbe22e436c17bc0e6361e35844b50103137a4acd985673107bfd17703acfb92a7a381b357772c3a28', CAST(N'2018-06-27T13:36:33.340' AS DateTime), N'111.111.121-46', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1457, CAST(N'2018-06-27T12:05:21.100' AS DateTime), N'884398259d215e589d36b5f85cffe8cf2f081f4685be9169728f2939eeb767fce0ec2e0eb6f91f0eede513e7e1de3bdff5ed11a11b8e7ff7203f690815500da7', CAST(N'2018-06-27T13:35:22.700' AS DateTime), N'111.111.121-47', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1458, CAST(N'2018-06-27T12:05:21.213' AS DateTime), N'4d1f72163c20c7e5050e49c0eec2e846343d8e44f8ddf98a5a4b3df3a3be7a0fec7f266e078503f18c38e86ba671af5fb77ed66609c9f4db4f531fd767b2a9ad', CAST(N'2018-06-27T13:37:10.673' AS DateTime), N'111.111.121-48', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1459, CAST(N'2018-06-27T12:05:23.710' AS DateTime), N'aa7ac06ad964154c5fd92533949b7d8793c7139163f9bc4258ff83fedab413db91585a121733c851785e4da618f2c21013da0e1f5250c1f19104b52b83010752', CAST(N'2018-06-27T13:40:59.397' AS DateTime), N'111.111.121-49', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1460, CAST(N'2018-06-27T12:05:41.713' AS DateTime), N'a89b1ba82dd540bd9457756d7df1c1941147fbec6f4397f31e7151f22cb2693dd96cd87667d530327e8721c3d5b5498214f9c5296040ca02c386461c625f6262', CAST(N'2018-06-27T13:35:41.713' AS DateTime), N'111.111.121-50', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1461, CAST(N'2018-06-27T12:05:43.010' AS DateTime), N'bf252bac2beac0f71589f3eb55440baa0c7936967b09cde41fd1db2d8fdd0b77eb32acab6f2201068fb92cc19a07fc02503e8db4997427c2e4ad579bd183443a', CAST(N'2018-06-27T13:35:43.010' AS DateTime), N'111.111.121-51', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1462, CAST(N'2018-06-27T12:05:46.183' AS DateTime), N'3c36d8cbc0868759721a1ecef7fcd243359e97f9e10d98f26317370bb1e9f821a206e7f3ee8abe3a43c5a16d6e41cfa7b76c375746361c36120533cb26b1c24c', CAST(N'2018-06-27T13:36:47.567' AS DateTime), N'111.111.121-52', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1463, CAST(N'2018-06-27T12:05:46.997' AS DateTime), N'99bc46cebe0f75740e5c389965736ade3ff2e8792d51bb24816cb1269ad999b20db5a7aa04d04f569e3ecd8ce17afc7de77347f27d981de60d6030d597cfbf9d', CAST(N'2018-06-27T13:36:43.330' AS DateTime), N'111.111.121-53', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1464, CAST(N'2018-06-27T12:05:50.460' AS DateTime), N'769b5c21601105c03fbb23741c0093bdb44a9539cc2f467c38dcf31c657a5d34732ceb54e8246bdc6f5cc65051e97ef13f210065fe1cac0e385cac4e4f04135f', CAST(N'2018-06-27T13:36:21.517' AS DateTime), N'111.111.121-54', 2, N'DAAD6D9A-7972-E511-9406-001DD8200001', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1465, CAST(N'2018-06-27T12:06:00.223' AS DateTime), N'8ee7d4ee0683f0218b08925f5e2f4761c2737dde28a170a9329b66c60c24b3fb80da5328e9a530d2000ee61797b810581d3a2625becae3497d1e000c11c75ff2', CAST(N'2018-06-27T13:36:00.223' AS DateTime), N'111.111.121-55', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1466, CAST(N'2018-06-27T12:06:04.207' AS DateTime), N'057a1f2e984ac1baaf3de4d70d6f258ee56104f5c2f1181d09b89adf32a4aa03e193ad2b7c94a59ad6c1856de5ec06060ea3d950a1ac93aff9394504d1eb92a1', CAST(N'2018-06-27T13:38:47.970' AS DateTime), N'111.111.121-56', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1467, CAST(N'2018-06-27T12:06:05.980' AS DateTime), N'83c90729ea793a1e1284f5cb382176aa185ae3a84c731537214da3c11b596116678b6a3e63a92635de1fdc77735bcc84108cd2be9c42b1a3daf7700f9d0b3892', CAST(N'2018-06-27T13:45:43.960' AS DateTime), N'111.111.121-57', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1468, CAST(N'2018-06-27T12:06:08.957' AS DateTime), N'48973be0e4b8b780e396f9e3afeb74dcd0ca3fa5edad0c8a0ba81ef4958b45bc9f9a9ae08bbea0e5ceee167188ca37f8d6c873e12ad3ea389036c68ac6909e7e', CAST(N'2018-06-27T13:38:17.817' AS DateTime), N'111.111.121-58', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1469, CAST(N'2018-06-27T12:06:23.080' AS DateTime), N'5625752b4c39b25a60d0452502be4da6ad9294727d858be98f06b4d3818bfdf123c6b372db7ffeca856e57cb50090d6313c0c60e8aa9b3b6e4340cd3bdb7014f', CAST(N'2018-06-27T13:43:14.733' AS DateTime), N'111.111.121-59', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1470, CAST(N'2018-06-27T12:06:27.260' AS DateTime), N'ed4b28173849c86365fe705a9e9773fc8dd5e0e4ba92b836357ec4f36f8eed9869b0b8297e559fd429dba5150510107f8fae877bb52ab4fabf0a2a1d2f8345a8', CAST(N'2018-06-27T13:36:27.260' AS DateTime), N'111.111.121-60', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1471, CAST(N'2018-06-27T12:06:30.247' AS DateTime), N'06ed9b81d1f7baef1521e7c60d793a55f96f03fd121560074867418b57976c94c1936c411d6ba06986e800e616063500180d62543f9d05e853c5dd392b6e771d', CAST(N'2018-06-27T13:36:31.297' AS DateTime), N'111.111.121-61', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1472, CAST(N'2018-06-27T12:06:31.100' AS DateTime), N'8856972ea299b7221944d44069f8e05aef27330dbad05d30475a4563bb13fc8ffa6a310c7845a2b073d2491cb3d728451e0b26965ec68b9a88184429b355307e', CAST(N'2018-06-27T13:37:24.877' AS DateTime), N'111.111.121-62', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1473, CAST(N'2018-06-27T12:06:32.127' AS DateTime), N'75ea8bba3189f254f16b7b74a2703c498a08484a9cd8fa3a17531b3ccf7826704596b80d563a786b985278d499945dd21e5ca70d151ec7b1e6bae428021f26b0', CAST(N'2018-06-27T13:36:32.127' AS DateTime), N'111.111.121-63', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1474, CAST(N'2018-06-27T12:06:33.793' AS DateTime), N'41786b2b768e4a699cacd56b3a95e8ea1f98131cee2f0821ea373215f181a0ede388809e785fd1c0dce8ff1a422d8f4c6181942543ae82c9bfbc0cc011efcee6', CAST(N'2018-06-27T13:36:35.120' AS DateTime), N'111.111.121-64', 2, N'72FAD97D-9248-E811-80C0-005056955165', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1475, CAST(N'2018-06-27T12:06:38.247' AS DateTime), N'805100fd230bbb8179597c02bed227d4c1bf92253c90c6e752ea49cb5715d31c9529fae3d7af6521830e63e1d6ee97df92ef302b4f180c0bc1d5811c5e5a1846', CAST(N'2018-06-27T15:02:14.497' AS DateTime), N'111.111.121-65', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1476, CAST(N'2018-06-27T12:06:44.020' AS DateTime), N'35d668a2143ac0262683108cdb072a6aae05aeee2a24e76b5e2b211cecb374ec77cd0211c05a4d68afd4baee0f285cf0c3075e1b3633fbc67ff2dcc20c79cc6d', CAST(N'2018-06-27T13:36:45.543' AS DateTime), N'111.111.121-66', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1477, CAST(N'2018-06-27T12:06:48.623' AS DateTime), N'132a27243e56ef1d803146ace76dfadfea10450981ba040d659b75d56c7c09af8a6e40e6ab2bf104d468082ca7763e4320f9c8808553582b6f85c134041b9413', CAST(N'2018-06-27T13:36:50.350' AS DateTime), N'111.111.121-67', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1478, CAST(N'2018-06-27T12:06:51.200' AS DateTime), N'683340ab1a26b275671230b5a3fd2af95c044ddfd0b51eb372c06d36e91e4aa4ca6418b3fbce3b27712973c658fae4e0ffb89bec79750662cfcf19a4ef7609d1', CAST(N'2018-06-27T13:36:52.000' AS DateTime), N'111.111.121-68', 3, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1479, CAST(N'2018-06-27T12:07:06.260' AS DateTime), N'745410d0746450792388bf41ef85e7020afd83ce67a9462a9f80b7364fd56d2548d57f87d54905c81b274826f4f467e5fe386ab7f5b752537273e149c428ed0b', CAST(N'2018-06-27T13:37:06.260' AS DateTime), N'111.111.121-69', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1480, CAST(N'2018-06-27T12:07:16.030' AS DateTime), N'2e0f65bd7bb23dfc521468886819fc82f06843ebad36974076229addc4ee7c4ebfb7d53f7589b7bc10d23cae98f32e7e07b56dc5efee06cfcbcb8b8b190838ba', CAST(N'2018-06-27T13:37:16.997' AS DateTime), N'111.111.121-70', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1481, CAST(N'2018-06-27T12:07:16.187' AS DateTime), N'ce2637a13db970eb289cd5a377e1ec67dce4c8e9c42af7f43156a686b859901cd170943b230e5008192881d378834008303cf4231f732b0a88904e760909f913', CAST(N'2018-06-27T13:37:27.537' AS DateTime), N'111.111.121-71', 3, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1482, CAST(N'2018-06-27T12:07:18.313' AS DateTime), N'9e692323696afd2a4b133edf5b038ceeea4622365fd14388c649aba7200c655887f828076c2061e6a78c910cf4731a6420a0d414ea602229e8c62afc8616ef88', CAST(N'2018-06-27T13:48:23.357' AS DateTime), N'111.111.121-72', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1483, CAST(N'2018-06-27T12:07:22.630' AS DateTime), N'f3d1b197633c77dd67c675bd78e5e85846e92f46c1eda578be902e1d5c1c8fc7f1341a5e589eada99559c745890e6954f21e7c10a59045663c9f9ec6870d21f7', CAST(N'2018-06-27T13:41:09.090' AS DateTime), N'111.111.121-73', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1484, CAST(N'2018-06-27T12:07:26.707' AS DateTime), N'ee9c69352cbad7f9225116c484f12f5dc9b8efd9cde71b29febab161caf9174344b0a56ed5a340a3e80a2abe6613c73d464e54db2fa67d7345ea3ca57a76c2cc', CAST(N'2018-06-27T13:37:43.790' AS DateTime), N'111.111.121-74', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1485, CAST(N'2018-06-27T12:07:28.400' AS DateTime), N'd66f9ff8e72515ad494c22ecb2e9a112d93807b6b8480c4f07ef14f9b571402a3a3d39e3f3e83c25b128819934bc92bbd52454bf784816c0357fae4ec2e46b9c', CAST(N'2018-06-27T13:37:43.413' AS DateTime), N'111.111.121-75', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1486, CAST(N'2018-06-27T12:07:32.543' AS DateTime), N'ff54f2439638671db406a57cdb0cdac722dea9c346483c9a70af48d6498da9a8987e7e874de28e060130be823991477a0797473cf152c4122a0c79e32cd9ff23', CAST(N'2018-06-27T13:37:32.543' AS DateTime), N'111.111.121-76', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1487, CAST(N'2018-06-27T12:07:38.637' AS DateTime), N'7e75aff6d01fb9db40d051e23921770f0dedc6ea0e2d6392ce89347eb4a3818b31ab1cbd735b3cd15693ce426e1aefef4ffd11950e441058ddde485291959cf4', CAST(N'2018-06-27T13:38:19.230' AS DateTime), N'111.111.121-77', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1488, CAST(N'2018-06-27T12:07:42.177' AS DateTime), N'35cc63b89651cdc72fe405ae3e3fd9be1ce6756d066939b1d2c729bdda39b4b496586856d29f0e0a59b2c75af773a5a2a75c5e42483078ea85e0678f7422b33c', CAST(N'2018-06-27T13:37:43.340' AS DateTime), N'111.111.121-78', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1489, CAST(N'2018-06-27T12:07:44.813' AS DateTime), N'6ece2ef3b6f60155526a274cf3e5164e736b880bae3b01089ff9d87792776e7cbe1199143c17453664913f382eb22301b07665c6540631126ef3dbac7ab55dc6', CAST(N'2018-06-27T13:37:44.813' AS DateTime), N'111.111.121-79', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1490, CAST(N'2018-06-27T12:07:44.823' AS DateTime), N'b6826910fc2a8fb5385a15bf38692931a71258738befeba2ce0392a1f4a054801bb0e8bd1d2f7e07588d3e0a53f117b7b29b1f068c636ac15586c4dca4aa96ed', CAST(N'2018-06-27T13:39:23.223' AS DateTime), N'111.111.121-80', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1491, CAST(N'2018-06-27T12:08:10.670' AS DateTime), N'20147914f3ad7da6679b555f8701d1c141ad338b824b9ae517f29127e93466fddfc999073865183a59ee0cca76cd4e240992d57e2b3c10b8e5c9430af71a73c9', CAST(N'2018-06-27T13:40:13.957' AS DateTime), N'111.111.121-81', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1492, CAST(N'2018-06-27T12:08:19.593' AS DateTime), N'd0dff21e1a9d1e08bd5e6be085e30571a3772e3a4e5cc872827f23ba8b2b453a81ae2728b17acac8def3a25786f6edc5f5552dd0255c268b402716437e83b173', CAST(N'2018-06-27T13:40:39.907' AS DateTime), N'111.111.121-82', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1493, CAST(N'2018-06-27T12:08:26.870' AS DateTime), N'5b58fc10476a28669f6d80d927f3b737b53e081d4b6e99e3b68479cd8b9a1677edd0bc915dbaf7d3f241e050cc8dc7db1002328db1bd6610c1dd523a3a58bd5e', CAST(N'2018-06-27T13:38:28.150' AS DateTime), N'111.111.121-83', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1494, CAST(N'2018-06-27T12:08:42.080' AS DateTime), N'aab339fe21d05e3e17550f442a414e1d0c0936ea4b3b2029155162c5483877013cbad6d7112e08320804b53f824c85a3ce7219a14e33b73b0ce8f730f9c50687', CAST(N'2018-06-27T13:39:56.103' AS DateTime), N'111.111.121-84', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1495, CAST(N'2018-06-27T12:08:45.913' AS DateTime), N'caed1a75846978baa2f9f887d1945c436aa55a0a1d2706e4044508b5c38fe54d101dc02a24010f4b537de1db84bd3cfebda7dc27d794b2edebab5f8b582efded', CAST(N'2018-06-27T13:38:47.953' AS DateTime), N'111.111.121-85', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1496, CAST(N'2018-06-27T12:08:45.917' AS DateTime), N'd75eeaf60cd01510ce0aa6c90d8f1aa5961adc4e250509377e6677251d9f5d205d336a11fb936ea79aa824a91a478dcc3ae060a0243fc3c29558f2a44d0d7cb4', CAST(N'2018-06-27T13:42:41.337' AS DateTime), N'111.111.121-86', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1497, CAST(N'2018-06-27T12:08:52.500' AS DateTime), N'34b8f01bb73d0aed9c989da9ab2fe99ea895b62222d3a76413cba693609cd520e9606d674e3bbc0bb180c9e293ecb1b1dc6c7dd612400c5273fdc051b3126386', CAST(N'2018-06-27T13:38:52.500' AS DateTime), N'111.111.121-87', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1498, CAST(N'2018-06-27T12:08:59.927' AS DateTime), N'44b8ec084a5107b779a37719e9844de18f21e14da5af5c59b4f60c6911571399394e04a2756050fb262f246993b9086474e70d2914e5ef6285e7d2cd82287c1d', CAST(N'2018-06-27T14:41:08.423' AS DateTime), N'111.111.121-88', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1499, CAST(N'2018-06-27T12:09:08.853' AS DateTime), N'2d90acff5acffde1fa438a281c47c2a3664c9b946bfa26e6ae3af4ca6fd0c33a64b0a997960cc3bbb28029bff303aff9eacedc3e5c6f9d44ffb26dfd4c3b5b31', CAST(N'2018-06-27T13:39:10.790' AS DateTime), N'111.111.121-89', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1500, CAST(N'2018-06-27T12:09:11.837' AS DateTime), N'40674b3c348e60102878dd8ed606e90c9cdb84f4f00975cee8d69a4ed8ec3bae0c5a81be88b012a85e23566868f064799241ef12a9e2778ebda1b53766abd018', CAST(N'2018-06-27T13:53:38.260' AS DateTime), N'111.111.121-90', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1501, CAST(N'2018-06-27T12:09:14.517' AS DateTime), N'4a50176e8af53ae1d41135ffcd697bf441d809d038525b2f5cbe2529ad95d07f86e7d29327fb951742b05a5efa53956a584eebb0fdbe9b9301fd22c30f86dd92', CAST(N'2018-06-27T13:40:08.210' AS DateTime), N'111.111.121-91', 2, N'27168365-8D1B-E711-941D-001DD8200001', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1502, CAST(N'2018-06-27T12:09:16.643' AS DateTime), N'b26147683af4729334e8e413ac106f9ac54ceb9e11b15ce44569100eb724d78c361cbd3a0b58d67d82023f038acbe6b5755fc899d68435655830daf0285dd26c', CAST(N'2018-06-27T13:42:57.353' AS DateTime), N'111.111.121-92', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1503, CAST(N'2018-06-27T12:09:30.823' AS DateTime), N'5e14ba7bab769cf45e100b9aa655b1f19abc1057cbc3ad84d161585ae72a2a205d0171e406a2ee48b5433caa4a87ee87f75ff5c9fa120a63462653bdc3f728ba', CAST(N'2018-06-27T13:44:33.910' AS DateTime), N'111.111.121-93', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1504, CAST(N'2018-06-27T12:09:35.000' AS DateTime), N'b0a3456d5afa3c252410328ed8b20986d6aa8ad535469154bab2453b20e25fc87d1311375c315fb9dd22e39e8783a87a395a87ea193c2b7803bf1157eb9c2bc3', CAST(N'2018-06-27T13:40:10.817' AS DateTime), N'111.111.121-94', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1505, CAST(N'2018-06-27T12:09:37.270' AS DateTime), N'c93fcefb0558bc8676abd26d54909b5b295e9a31c8de1d41238b76865946a20a8ea68187b8236cff3f664b87778f4848d786abe94ce1c33040e9c47de88a6606', CAST(N'2018-06-27T13:39:38.303' AS DateTime), N'111.111.121-95', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1506, CAST(N'2018-06-27T12:09:38.037' AS DateTime), N'a0c1ff8aa450cbe7e4a81eb7c5845b42612bb666a94eefcc181588238f2e548984cd9226e762d8785b0da022f170c44dc10b8638eebcba4b822082ecc6594483', CAST(N'2018-06-27T13:39:39.207' AS DateTime), N'111.111.121-96', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1507, CAST(N'2018-06-27T12:09:38.270' AS DateTime), N'e340c4c8089636e1acaaf19ac8679592cf8c9e7d6d6e38dfea85b9bf4e21544d16f56c1b611287e41536eb1ca438d28ae7ee849c65d66a818b9e2dd73c82c1ad', CAST(N'2018-06-27T13:40:05.580' AS DateTime), N'111.111.121-97', 2, N'3AF10F1D-7F7B-E711-9428-005056ACE682', NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1508, CAST(N'2018-06-27T12:09:38.300' AS DateTime), N'989af17baf2538cfa364a77af56b2f67b000cbec88adb4ee96af5963dfb2f592cb94daaa96c9ae43d3ce058d3b245c6f9eb5a4d0a3266850a2bcab1727a69a1d', CAST(N'2018-06-27T13:40:21.023' AS DateTime), N'111.111.121-98', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1509, CAST(N'2018-06-27T12:09:47.110' AS DateTime), N'4f6cfc551910ca08ac845ec550460ce8cb647d2a74aa8e3e024825248cf16fc2d29ce54c5d66c44e3489c3a96f2bb0a0b6f3df681dd4a7487854ab54eebac487', CAST(N'2018-06-27T13:39:48.737' AS DateTime), N'111.111.121-99', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1510, CAST(N'2018-06-27T12:09:57.520' AS DateTime), N'2250afae661631298c21399bf7d1593d62cfb0a55a6a34175a9477e28586c9c3529a21007b73945d690c54b076dc6cc20465efcace9566d5e015a433ff6a4488', CAST(N'2018-06-27T13:43:30.453' AS DateTime), N'111.111.122-01', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1511, CAST(N'2018-06-27T12:10:11.190' AS DateTime), N'17334da3255809d440b12d58edaf9bd93846590a506a5a81a9e23db41d4307b2da6632474c033b4ef684b097e83c05b4e0f9cf069cf8768317c8b625d41b37d6', CAST(N'2018-06-27T13:40:11.190' AS DateTime), N'111.111.122-02', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1512, CAST(N'2018-06-27T12:10:11.840' AS DateTime), N'3faec9af6f1271788e4d89876265b60afe4ee8307b759c3422f92a316efa71c294906edbbeaeae3cabaa1ab096273af429a156472c4c0c603dffb53ce7bcfdbf', CAST(N'2018-06-27T13:42:42.077' AS DateTime), N'111.111.122-03', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1513, CAST(N'2018-06-27T12:10:14.880' AS DateTime), N'c9eb11bea0261fdf2864d70242401a7f7186075ba9e853ac5a13e0e9268c52cbcd4e0a6d14e9fe1cbf50362c4cf052c56f47509e00fdcba157654680017bc248', CAST(N'2018-06-27T13:45:26.037' AS DateTime), N'111.111.122-04', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1514, CAST(N'2018-06-27T12:10:21.307' AS DateTime), N'4694acee145853d9f9142a2d1b2b5d4aafb7cedf38fabe434e80eee093895e2a404b6e2a18c8ee9d86c7ba833200b7354fbbdb88fe3870f2aa6174fea799f167', CAST(N'2018-06-27T13:40:21.307' AS DateTime), N'111.111.122-05', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1515, CAST(N'2018-06-27T12:10:32.380' AS DateTime), N'cf6fb24f7db8b87c85e4575f2a736419493832715f4bb6bac1fc1a03df212a3534bbefe123221cf519908e4c47c24ca8cc2fe690838099f0676418cda2897243', CAST(N'2018-06-27T13:54:15.667' AS DateTime), N'111.111.122-06', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1516, CAST(N'2018-06-27T12:10:36.670' AS DateTime), N'435ad4c3e067c27e3b17b658be6542d47b214fe18f49be97d6d2bc0d573fc455d1dfe8d45064e25215190ecb1eaf1f803480a47e03639fcaa45203a3f60a259b', CAST(N'2018-06-27T13:55:36.117' AS DateTime), N'111.111.122-07', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1517, CAST(N'2018-06-27T12:10:56.480' AS DateTime), N'a71c8b5d276f02cfea8a8c0482a05c207a4b5aa364d6c45bd7282a0d95c77108e70a260f869e0b9f81112404364c08bfe42f85ec7eaa0d0b876ea7fab6f47c68', CAST(N'2018-06-27T15:09:30.810' AS DateTime), N'111.111.122-08', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1518, CAST(N'2018-06-27T12:10:56.963' AS DateTime), N'1300de18bed518b1489bee05bed59739d378006124164f43f2d402c87afd9cf1e2b1d68cc4e61ceb8e0bec5e52ff3f7782efb9a5ba9288b45bcb9f051686786a', CAST(N'2018-06-27T13:46:20.590' AS DateTime), N'111.111.122-09', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1519, CAST(N'2018-06-27T12:10:57.570' AS DateTime), N'715fedf633b568de5f5a14a2624adfac25fb6c09767a1505eb9eaaa770fc943acb3d5f2d1bfb7363561d0fb315e5a34aa888e7d7179697703dfc1ff19fb02dfe', CAST(N'2018-06-27T13:40:58.890' AS DateTime), N'111.111.122-10', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1520, CAST(N'2018-06-27T12:10:58.670' AS DateTime), N'dbfbffc5452a68085076cf4f9fe95dbbebb919e769b39b005445f1632dbd650249a012f3b67d96ad92c21b1a8a4f1d560607c780f0d2d9f0d3362af73924b7c2', CAST(N'2018-06-27T13:52:31.287' AS DateTime), N'111.111.122-11', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1521, CAST(N'2018-06-27T12:11:00.233' AS DateTime), N'ecf9a033f59f1c639ad95dd42774c868b2a73d024d0660c62b92f9ff7bcd7987969998a8c1ac8703513c4107c8f835a5a97922d11ab5d9462e4c227af941c7e4', CAST(N'2018-06-27T13:43:41.860' AS DateTime), N'111.111.122-12', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1522, CAST(N'2018-06-27T12:11:07.593' AS DateTime), N'063b678c00b80cef365a889f1354b9b2829ce3ae8d7ebe2ced8f41f9adfb63da37d15d52029a23360f4d3b760fcc64a54e22d9ec41f7f53a54ccd5cc40b10020', CAST(N'2018-06-27T13:41:09.080' AS DateTime), N'111.111.122-13', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1523, CAST(N'2018-06-27T12:11:23.830' AS DateTime), N'30b1ceb64d88dbbdc6f7977dabb660014f809d6d1903f4fc60304231773aa97af66352899a3af4acecb570fd1a29fc0ad7f9c465ee444bb46b8e5dcd12947863', CAST(N'2018-06-27T13:41:23.830' AS DateTime), N'111.111.122-14', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1524, CAST(N'2018-06-27T12:11:24.917' AS DateTime), N'3493854eccb54261b9f3622ef112dd194c54e35bc7611503cdc0e42fac5d0ab7ef63ecb8431f78178c57d194c86de62552f2118e0dac4da96be257eb3b97ec26', CAST(N'2018-06-27T13:41:24.917' AS DateTime), N'111.111.122-15', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1525, CAST(N'2018-06-27T12:11:41.170' AS DateTime), N'56de48bf2cce9dfab86cf329148a6ea0fa8d1e6ccf987abc817941f76c1853a50f5885fbac906bf8c1801bb88905b0630e7a877fd4e54479878a039fcd2dbc87', CAST(N'2018-06-27T13:45:29.053' AS DateTime), N'111.111.122-16', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1526, CAST(N'2018-06-27T12:12:11.447' AS DateTime), N'2c1a22425b7184aa98bbc2e2e74cb817100526590859047dcdd419ab69f694d2e4d1672abeed4531b054c8227e53dbee38bbd7da4dacbd7664bb606f13720dd6', CAST(N'2018-06-27T13:43:29.203' AS DateTime), N'111.111.122-17', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1527, CAST(N'2018-06-27T12:12:26.340' AS DateTime), N'fffbcf1bc83748b8ee2c2f1197036c22a311f106b5d1e87ef9f30a15d87ff9f2b2c66446bf26bd0220366b3f6ca8e0552da20e1c7e20f971edb0c06eaaf044fa', CAST(N'2018-06-27T13:42:27.680' AS DateTime), N'111.111.122-18', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1528, CAST(N'2018-06-27T12:12:32.047' AS DateTime), N'573a46d4cd2f7e8d603750d2872e87f0d8a9b2291b52ed2960bd9c634fbc1e74413273b53bc2cf5553a2681b9be12feb38e905a0a2b074eefc780a7c99d55941', CAST(N'2018-06-27T13:42:32.047' AS DateTime), N'111.111.122-19', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1529, CAST(N'2018-06-27T12:12:47.280' AS DateTime), N'd9862d9c6b907094eba4833e901f51845011f5a90951779fa082543fadab2e1a385c1e669a93ab805e06f23b6c7333502e89ba17571de6d5e8856253b57abbe5', CAST(N'2018-06-27T13:42:49.337' AS DateTime), N'111.111.122-20', 3, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1530, CAST(N'2018-06-27T12:12:51.140' AS DateTime), N'632cf804067f79807273502b1df1a2dc8040aacf0b0162f321f908d6b22448b125f36253da1ad1d23dc57051866ffcaf30e769fb2c86a170e28277da20412d59', CAST(N'2018-06-27T13:56:14.397' AS DateTime), N'111.111.122-21', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1531, CAST(N'2018-06-27T12:12:53.030' AS DateTime), N'b2d222270075aae854e13f15cf4898c545f6f50f966c4aa20931ed5f16df2c94db7e6a97b7e6c4eb646eda36f4e3d5739feb4b318722921f11bf25b88e7bdd5c', CAST(N'2018-06-27T13:42:53.030' AS DateTime), N'111.111.122-22', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1532, CAST(N'2018-06-27T12:12:54.350' AS DateTime), N'7fe4193b4c895d9599ec5f8d2e5d70c5d225c039c6b32ad8f83d92b047dc766735642c6a21c1ed5fbed5322b568ced50e53f9fd84f50e0d5253bb0d584c7c538', CAST(N'2018-06-27T13:45:26.870' AS DateTime), N'111.111.122-23', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1533, CAST(N'2018-06-27T12:12:55.463' AS DateTime), N'210cf285aaadc35772ecd98d247b23edb8a855348caf5a84c246bfb84c5d4ede40a62549215cfe1ad38205ad4253c0907a2c7fb0462abbdf853db850566990c1', CAST(N'2018-06-27T13:42:55.463' AS DateTime), N'111.111.122-24', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1534, CAST(N'2018-06-27T12:12:58.707' AS DateTime), N'bb4ebc2a8ea0fcac69d3bc4d68484034c02957f0e3fd4c42c0e60d47b0280da8067415ca8a263b29d30f9e9978d029f0cad4bb3df60acb30c01d49514dbbbfcc', CAST(N'2018-06-27T13:43:01.600' AS DateTime), N'111.111.122-25', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1535, CAST(N'2018-06-27T12:13:00.943' AS DateTime), N'b020755332e6219301e8dcfc9b03d1fb64fcc69e54608f6dcbcd0016d2cd600085ccfe95939b6ad64ecac49d3d93b5dde51fd4c2fa979e70caa33697a3aeabde', CAST(N'2018-06-27T13:44:04.717' AS DateTime), N'111.111.122-26', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1536, CAST(N'2018-06-27T12:13:05.437' AS DateTime), N'acb45dcad69694560701b144fafd78e384fdd78088e21e7004e16ef063b8543c1549c459be751c7c9917139ab9cc6e5b4a7d6adf23f5ef4a99054351585608e3', CAST(N'2018-06-27T13:43:06.970' AS DateTime), N'111.111.122-27', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1537, CAST(N'2018-06-27T12:13:10.490' AS DateTime), N'f3fa5e0a3f95d1f11a58bb50299273301f25dc6ddda828b4ece0ffe4f23de298afbae8c969ff4f6b2b6f86d20a9d8ec82fcb7ac6af6c41c2ce98e1a6fbf3e209', CAST(N'2018-06-27T13:43:10.490' AS DateTime), N'111.111.122-28', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[ControleSessao] ([Id], [DataAcesso], [Hash], [DataExpiracao], [Cliente], [TipoAcesso], [LoginAtendente], [TipoSessao], [Origem]) VALUES (1538, CAST(N'2018-06-27T12:13:12.553' AS DateTime), N'f1395900f9dd69227671f076b6565c7b3751dc11487b949895e0208028740bcb526424e0dc5452c0b3351d88374732f1b20a7cba4a6b9d6caabd8dd1907b9670', CAST(N'2018-06-27T13:49:55.173' AS DateTime), N'111.111.122-29', 1, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[ControleSessao] OFF
GO
SET IDENTITY_INSERT [dbo].[log_navegacao] ON 
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13491, N'111.111.111-11', CAST(N'2018-06-28T16:26:34.6900000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13493, N'111.111.111-12', CAST(N'2018-06-28T16:26:39.1630000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13495, N'111.111.111-13', CAST(N'2018-06-28T16:26:43.5500000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13497, N'111.111.111-14', CAST(N'2018-06-28T16:26:48.2700000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13498, N'111.111.111-15', CAST(N'2018-06-28T16:27:11.7500000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13499, N'111.111.111-16', CAST(N'2018-06-28T16:27:21.2670000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13501, N'111.111.111-17', CAST(N'2018-06-28T16:27:58.5670000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13502, N'111.111.111-18', CAST(N'2018-06-28T16:28:07.0570000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13504, N'111.111.111-19', CAST(N'2018-06-28T16:28:26.7530000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13505, N'111.111.111-20', CAST(N'2018-06-28T16:28:35.5030000' AS DateTime2), 1, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Cria??o em FALE_CONOSCO', N'Cria??o de Fale Conosco, CYR-1770715-Q1Z8', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13506, N'111.111.111-21', CAST(N'2018-06-28T16:28:38.1200000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13507, N'111.111.111-22', CAST(N'2018-06-28T16:28:41.4800000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13508, N'111.111.111-23', CAST(N'2018-06-28T16:28:46.8400000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'7', N'Visualiza??o da DOCUMENTOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13509, N'111.111.111-24', CAST(N'2018-06-28T16:28:50.7170000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13523, N'111.111.111-25', CAST(N'2018-06-28T16:30:01.1500000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13527, N'111.111.111-26', CAST(N'2018-06-28T16:30:28.1470000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13529, N'111.111.111-27', CAST(N'2018-06-28T16:30:47.7230000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13531, N'111.111.111-28', CAST(N'2018-06-28T16:30:53.6930000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13532, N'111.111.111-29', CAST(N'2018-06-28T16:30:55.4270000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'13', N'Visualiza??o da MEU_IMOVEL', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13536, N'111.111.111-30', CAST(N'2018-06-28T16:31:17.7100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13537, N'111.111.111-31', CAST(N'2018-06-28T16:31:31.1870000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13538, N'111.111.111-32', CAST(N'2018-06-28T16:31:38.0000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13539, N'111.111.111-33', CAST(N'2018-06-28T16:31:42.9430000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13540, N'111.111.111-34', CAST(N'2018-06-28T16:31:53.8600000' AS DateTime2), 2, 2, N'02e876e7-4030-e711-941b-001dd8200008', N'1', N'Visualiza??o da HOME', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13541, N'111.111.111-35', CAST(N'2018-06-28T16:31:59.9970000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13542, N'111.111.111-36', CAST(N'2018-06-28T16:33:06.4830000' AS DateTime2), 2, 2, N'02e876e7-4030-e711-941b-001dd8200008', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13547, N'111.111.111-37', CAST(N'2018-06-28T16:34:36.7900000' AS DateTime2), 2, 2, N'02e876e7-4030-e711-941b-001dd8200008', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13549, N'111.111.111-38', CAST(N'2018-06-28T16:35:07.8400000' AS DateTime2), 2, 2, N'fef5d6dd-12dc-e711-80c0-005056955165', N'1', N'Visualiza??o da HOME', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13551, N'111.111.111-39', CAST(N'2018-06-28T16:35:29.5830000' AS DateTime2), 2, 2, N'fef5d6dd-12dc-e711-80c0-005056955165', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13554, N'111.111.111-40', CAST(N'2018-06-28T16:35:57.7800000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13563, N'111.111.111-41', CAST(N'2018-06-28T16:37:39.6500000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13567, N'111.111.111-42', CAST(N'2018-06-28T16:38:30.9000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13571, N'111.111.111-43', CAST(N'2018-06-28T16:38:46.1900000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'13', N'Visualiza??o da MEU_IMOVEL', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13581, N'111.111.111-44', CAST(N'2018-06-28T16:40:30.6530000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13582, N'111.111.111-45', CAST(N'2018-06-28T16:40:53.5470000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13584, N'111.111.111-46', CAST(N'2018-06-28T16:41:14.8700000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13585, N'111.111.111-47', CAST(N'2018-06-28T16:41:42.3100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'7', N'Visualiza??o da DOCUMENTOS', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13587, N'111.111.111-48', CAST(N'2018-06-28T16:41:55.6870000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13591, N'111.111.111-49', CAST(N'2018-06-28T16:43:28.7600000' AS DateTime2), 2, 2, N'30ed4f63-7972-e511-9406-001dd8200001', N'1', N'Visualiza??o da HOME', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13599, N'111.111.111-50', CAST(N'2018-06-28T16:44:38.4100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13601, N'111.111.111-51', CAST(N'2018-06-28T16:44:51.7030000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'13', N'Visualiza??o da MEU_IMOVEL', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13604, N'111.111.111-52', CAST(N'2018-06-28T16:45:06.4670000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13610, N'111.111.111-53', CAST(N'2018-06-28T16:45:40.5400000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13614, N'111.111.111-54', CAST(N'2018-06-28T16:46:05.2330000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13616, N'111.111.111-55', CAST(N'2018-06-28T16:46:20.8130000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13621, N'111.111.111-56', CAST(N'2018-06-28T16:47:05.3600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13899, N'111.111.111-57', CAST(N'2018-06-28T17:34:48.9000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14338, N'111.111.111-58', CAST(N'2018-06-28T22:30:40.0400000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'7', N'Visualiza??o da DOCUMENTOS', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14339, N'111.111.111-59', CAST(N'2018-06-28T22:30:50.4200000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14340, N'111.111.111-60', CAST(N'2018-06-28T22:30:50.9430000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14341, N'111.111.111-61', CAST(N'2018-06-28T22:31:01.3730000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'2', N'Visualiza??o da DADOS_CADASTRAIS', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14342, N'111.111.111-62', CAST(N'2018-06-28T22:31:15.1370000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'13', N'Visualiza??o da MEU_IMOVEL', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14343, N'111.111.111-63', CAST(N'2018-06-28T22:32:47.0500000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14344, N'111.111.111-64', CAST(N'2018-06-28T22:32:47.6030000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14346, N'111.111.111-65', CAST(N'2018-06-28T22:33:00.7570000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'17', N'Visualiza??o da DUVIDAS_FREQUENTES', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14347, N'111.111.111-66', CAST(N'2018-06-28T22:33:10.8000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14351, N'111.111.111-67', CAST(N'2018-06-28T22:35:22.0200000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14352, N'111.111.111-68', CAST(N'2018-06-28T22:35:42.6700000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14353, N'111.111.111-69', CAST(N'2018-06-28T22:36:00.8500000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14354, N'111.111.111-70', CAST(N'2018-06-28T22:36:07.0100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'7', N'Visualiza??o da DOCUMENTOS', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14355, N'111.111.111-71', CAST(N'2018-06-28T22:36:21.6800000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'15', N'Visualiza??o da VISTORIA', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14356, N'111.111.111-72', CAST(N'2018-06-28T22:36:42.5470000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'13', N'Visualiza??o da MEU_IMOVEL', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14357, N'111.111.111-73', CAST(N'2018-06-28T22:36:57.5770000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'13', N'Visualiza??o da MEU_IMOVEL', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14358, N'111.111.111-74', CAST(N'2018-06-28T22:37:08.1000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14359, N'111.111.111-75', CAST(N'2018-06-28T22:37:29.1870000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'Download de Boleto', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14360, N'111.111.111-76', CAST(N'2018-06-28T22:37:45.0070000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14361, N'111.111.111-77', CAST(N'2018-06-28T22:37:52.3670000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14364, N'111.111.111-78', CAST(N'2018-06-28T22:40:44.3400000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14365, N'111.111.111-79', CAST(N'2018-06-28T22:41:47.6570000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14366, N'111.111.111-80', CAST(N'2018-06-28T22:41:51.6930000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14368, N'111.111.111-81', CAST(N'2018-06-28T22:43:16.1100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14371, N'111.111.111-82', CAST(N'2018-06-28T22:44:54.6300000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14373, N'111.111.111-83', CAST(N'2018-06-28T22:45:15.2500000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14379, N'111.111.111-84', CAST(N'2018-06-28T22:49:54.0230000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13492, N'111.111.111-85', CAST(N'2018-06-28T16:26:36.0330000' AS DateTime2), 3, 2, N'00000000-0000-0000-0000-000000000001', N'2', N'Atualiza??o em DADOS_CADASTRAIS', N'Atualiza??o de Cadastro', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13494, N'111.111.111-86', CAST(N'2018-06-28T16:26:41.7770000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'2', N'Visualiza??o da DADOS_CADASTRAIS', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13496, N'111.111.111-87', CAST(N'2018-06-28T16:26:48.1370000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13500, N'111.111.111-88', CAST(N'2018-06-28T16:27:39.2230000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13503, N'111.111.111-89', CAST(N'2018-06-28T16:28:16.5800000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13510, N'111.111.111-90', CAST(N'2018-06-28T16:28:52.2300000' AS DateTime2), 2, 2, N'2bffed18-4329-e011-a2db-0026b97e0079', N'1', N'Visualiza??o da HOME', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13511, N'111.111.111-91', CAST(N'2018-06-28T16:28:56.0200000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'13', N'Visualiza??o da MEU_IMOVEL', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13512, N'111.111.111-92', CAST(N'2018-06-28T16:29:06.8870000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13513, N'111.111.111-93', CAST(N'2018-06-28T16:29:07.2500000' AS DateTime2), 2, 2, N'2bffed18-4329-e011-a2db-0026b97e0079', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13514, N'111.111.111-94', CAST(N'2018-06-28T16:29:07.7130000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13515, N'111.111.111-95', CAST(N'2018-06-28T16:29:11.1770000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'13', N'Visualiza??o da MEU_IMOVEL', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13516, N'111.111.111-96', CAST(N'2018-06-28T16:29:16.3770000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13517, N'111.111.111-97', CAST(N'2018-06-28T16:29:22.5000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'7', N'Visualiza??o da DOCUMENTOS', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13518, N'111.111.111-98', CAST(N'2018-06-28T16:29:23.9270000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'18', N'Visualiza??o da GLOSSARIO', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13519, N'111.111.111-99', CAST(N'2018-06-28T16:29:32.3330000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13520, N'111.111.113-10', CAST(N'2018-06-28T16:29:35.2900000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'7', N'Visualiza??o da DOCUMENTOS', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13521, N'111.111.113-11', CAST(N'2018-06-28T16:29:57.6670000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13522, N'111.111.113-12', CAST(N'2018-06-28T16:29:58.0030000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13524, N'111.111.113-13', CAST(N'2018-06-28T16:30:08.1030000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13525, N'111.111.113-14', CAST(N'2018-06-28T16:30:10.7500000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'10', N'Visualiza??o da FINANCEIRO_INFORME_RENDIMENTOS', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13526, N'111.111.113-15', CAST(N'2018-06-28T16:30:14.9130000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'13', N'Visualiza??o da MEU_IMOVEL', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13528, N'111.111.113-16', CAST(N'2018-06-28T16:30:32.5670000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'19', N'Visualiza??o da ASSISTENCIA_TECNICA', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13530, N'111.111.113-17', CAST(N'2018-06-28T16:30:47.9770000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13533, N'111.111.113-18', CAST(N'2018-06-28T16:30:57.4130000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13534, N'111.111.113-19', CAST(N'2018-06-28T16:31:11.1070000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13535, N'111.111.113-20', CAST(N'2018-06-28T16:31:16.4530000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'2', N'Visualiza??o da DADOS_CADASTRAIS', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13543, N'111.111.113-21', CAST(N'2018-06-28T16:33:18.8400000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'15', N'Visualiza??o da VISTORIA', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13544, N'111.111.113-22', CAST(N'2018-06-28T16:33:40.3570000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13545, N'111.111.113-23', CAST(N'2018-06-28T16:33:46.5770000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'19', N'Visualiza??o da ASSISTENCIA_TECNICA', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13546, N'111.111.113-24', CAST(N'2018-06-28T16:34:04.8630000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13548, N'111.111.113-25', CAST(N'2018-06-28T16:34:59.1500000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13550, N'111.111.113-26', CAST(N'2018-06-28T16:35:10.2270000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13552, N'111.111.113-27', CAST(N'2018-06-28T16:35:35.5400000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13553, N'111.111.113-28', CAST(N'2018-06-28T16:35:44.1170000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13555, N'111.111.113-29', CAST(N'2018-06-28T16:36:04.9300000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13556, N'111.111.113-30', CAST(N'2018-06-28T16:36:22.8670000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13557, N'111.111.113-31', CAST(N'2018-06-28T16:36:56.6630000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13575, N'111.111.113-32', CAST(N'2018-06-28T16:39:14.8870000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13576, N'111.111.113-33', CAST(N'2018-06-28T16:39:17.1200000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', 100000016)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13577, N'111.111.113-34', CAST(N'2018-06-28T16:39:27.1870000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'2', N'Visualiza??o da DADOS_CADASTRAIS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13578, N'111.111.113-35', CAST(N'2018-06-28T16:39:35.1870000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'19', N'Visualiza??o da ASSISTENCIA_TECNICA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13579, N'111.111.113-36', CAST(N'2018-06-28T16:39:50.2770000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'19', N'Visualiza??o da ASSISTENCIA_TECNICA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13580, N'111.111.113-37', CAST(N'2018-06-28T16:40:23.4300000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'19', N'Visualiza??o da ASSISTENCIA_TECNICA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13583, N'111.111.113-38', CAST(N'2018-06-28T16:41:05.1300000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'19', N'Visualiza??o da ASSISTENCIA_TECNICA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13586, N'111.111.113-39', CAST(N'2018-06-28T16:41:49.7500000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13588, N'111.111.113-40', CAST(N'2018-06-28T16:42:10.0700000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13589, N'111.111.113-41', CAST(N'2018-06-28T16:42:34.9300000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'19', N'Visualiza??o da ASSISTENCIA_TECNICA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13590, N'111.111.113-42', CAST(N'2018-06-28T16:42:54.1770000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'19', N'Visualiza??o da ASSISTENCIA_TECNICA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13592, N'111.111.113-43', CAST(N'2018-06-28T16:43:45.2870000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13593, N'111.111.113-44', CAST(N'2018-06-28T16:43:53.9830000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'19', N'Visualiza??o da ASSISTENCIA_TECNICA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13594, N'111.111.113-45', CAST(N'2018-06-28T16:43:55.3600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13595, N'111.111.113-46', CAST(N'2018-06-28T16:44:06.7600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13596, N'111.111.113-47', CAST(N'2018-06-28T16:44:08.9000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'19', N'Visualiza??o da ASSISTENCIA_TECNICA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13597, N'111.111.113-48', CAST(N'2018-06-28T16:44:18.2300000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13598, N'111.111.113-49', CAST(N'2018-06-28T16:44:22.9970000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13600, N'111.111.113-50', CAST(N'2018-06-28T16:44:41.9700000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13602, N'111.111.113-51', CAST(N'2018-06-28T16:44:57.7130000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13603, N'111.111.113-52', CAST(N'2018-06-28T16:45:03.2870000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'7', N'Visualiza??o da DOCUMENTOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13605, N'111.111.113-53', CAST(N'2018-06-28T16:45:07.2870000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13606, N'111.111.113-54', CAST(N'2018-06-28T16:45:12.6100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'19', N'Visualiza??o da ASSISTENCIA_TECNICA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13607, N'111.111.113-55', CAST(N'2018-06-28T16:45:27.2600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13608, N'111.111.113-56', CAST(N'2018-06-28T16:45:32.7970000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'2', N'Visualiza??o da DADOS_CADASTRAIS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13609, N'111.111.113-57', CAST(N'2018-06-28T16:45:38.3500000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13611, N'111.111.113-58', CAST(N'2018-06-28T16:45:50.7100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13612, N'111.111.113-59', CAST(N'2018-06-28T16:45:55.3970000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'19', N'Visualiza??o da ASSISTENCIA_TECNICA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13613, N'111.111.113-60', CAST(N'2018-06-28T16:45:59.1100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'7', N'Visualiza??o da DOCUMENTOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13615, N'111.111.113-61', CAST(N'2018-06-28T16:46:12.5000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'2', N'Visualiza??o da DADOS_CADASTRAIS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13617, N'111.111.113-62', CAST(N'2018-06-28T16:46:27.4030000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'15', N'Visualiza??o da VISTORIA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13618, N'111.111.113-63', CAST(N'2018-06-28T16:46:34.1500000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13619, N'111.111.113-64', CAST(N'2018-06-28T16:46:39.8070000' AS DateTime2), 3, 2, N'00000000-0000-0000-0000-000000000001', N'2', N'Atualiza??o em DADOS_CADASTRAIS', N'Atualiza??o de Cadastro', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13620, N'111.111.113-65', CAST(N'2018-06-28T16:46:42.6030000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'2', N'Visualiza??o da DADOS_CADASTRAIS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13622, N'111.111.113-66', CAST(N'2018-06-28T16:47:47.3630000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13623, N'111.111.113-67', CAST(N'2018-06-28T16:48:03.1470000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13624, N'111.111.113-68', CAST(N'2018-06-28T16:48:04.1470000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666049, N'111.111.113-69', CAST(N'2019-01-07T10:00:15.5330000' AS DateTime2), 2, 2, N'3af10f1d-7f7b-e711-9428-005056ace682', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666050, N'111.111.113-70', CAST(N'2019-01-07T10:00:51.4000000' AS DateTime2), 2, 2, N'3d630cc5-a001-e611-940d-005056200001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666051, N'111.111.113-71', CAST(N'2019-01-07T10:00:54.6830000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666052, N'111.111.113-72', CAST(N'2019-01-07T10:00:54.9370000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666053, N'111.111.113-73', CAST(N'2019-01-07T10:01:06.5830000' AS DateTime2), 2, 2, N'fa123a6e-0d0e-e611-9408-005056200008', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666054, N'111.111.113-74', CAST(N'2019-01-07T10:01:07.4130000' AS DateTime2), 2, 2, N'3d630cc5-a001-e611-940d-005056200001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666055, N'111.111.113-75', CAST(N'2019-01-07T10:01:07.4330000' AS DateTime2), 2, 2, N'3d630cc5-a001-e611-940d-005056200001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666056, N'111.111.113-76', CAST(N'2019-01-07T10:01:15.4830000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666067, N'111.111.113-77', CAST(N'2019-01-07T10:03:24.1100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666076, N'111.111.113-78', CAST(N'2019-01-07T10:03:46.1000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666078, N'111.111.113-79', CAST(N'2019-01-07T10:03:48.5200000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666079, N'111.111.113-80', CAST(N'2019-01-07T10:03:55.6100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'13', N'Visualiza??o da MEU_IMOVEL', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666080, N'111.111.113-81', CAST(N'2019-01-07T10:03:58.5500000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666082, N'111.111.113-82', CAST(N'2019-01-07T10:04:00.2230000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666084, N'111.111.113-83', CAST(N'2019-01-07T10:04:14.4230000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666085, N'111.111.113-84', CAST(N'2019-01-07T10:04:18.4730000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666088, N'111.111.113-85', CAST(N'2019-01-07T10:04:21.2130000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666096, N'111.111.113-86', CAST(N'2019-01-07T10:04:28.7670000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'Visualiza??o de Fale Conosco', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666097, N'111.111.113-87', CAST(N'2019-01-07T10:04:29.9670000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666098, N'111.111.113-88', CAST(N'2019-01-07T10:04:31.7600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666099, N'111.111.113-89', CAST(N'2019-01-07T10:04:32.6770000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'Download de Boleto', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666100, N'111.111.113-90', CAST(N'2019-01-07T10:04:36.1470000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'Visualizar Boleto', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666101, N'111.111.113-91', CAST(N'2019-01-07T10:04:37.0500000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666102, N'111.111.113-92', CAST(N'2019-01-07T10:04:38.3170000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666103, N'111.111.113-93', CAST(N'2019-01-07T10:04:38.4430000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666104, N'111.111.113-94', CAST(N'2019-01-07T10:04:46.5870000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'17', N'Visualiza??o da DUVIDAS_FREQUENTES', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666105, N'111.111.113-95', CAST(N'2019-01-07T10:05:06.2430000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'2', N'Visualiza??o da DADOS_CADASTRAIS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666106, N'111.111.113-96', CAST(N'2019-01-07T10:05:13.5800000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666107, N'111.111.113-97', CAST(N'2019-01-07T10:05:26.7870000' AS DateTime2), 1, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Cria??o em FALE_CONOSCO', N'Cria??o de Fale Conosco, CYR-2018095-Z8H8', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666108, N'111.111.113-98', CAST(N'2019-01-07T10:05:27.0630000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'Visualiza??o de Fale Conosco', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666109, N'111.111.113-99', CAST(N'2019-01-07T10:05:28.3100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666110, N'111.111.114-01', CAST(N'2019-01-07T10:05:30.0370000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'Visualiza??o de Fale Conosco', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666111, N'111.111.114-02', CAST(N'2019-01-07T10:05:31.5770000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666112, N'111.111.114-03', CAST(N'2019-01-07T10:05:47.0930000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'13', N'Visualiza??o da MEU_IMOVEL', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666113, N'111.111.114-04', CAST(N'2019-01-07T10:05:54.9900000' AS DateTime2), 2, 2, N'983880a6-98b6-e811-80c3-00505695e94a', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666114, N'111.111.114-05', CAST(N'2019-01-07T10:06:00.2800000' AS DateTime2), 2, 2, N'983880a6-98b6-e811-80c3-00505695e94a', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666115, N'111.111.114-06', CAST(N'2019-01-07T10:06:00.7600000' AS DateTime2), 2, 2, N'983880a6-98b6-e811-80c3-00505695e94a', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666116, N'111.111.114-07', CAST(N'2019-01-07T10:06:01.1600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666117, N'111.111.114-08', CAST(N'2019-01-07T10:06:03.6470000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666118, N'111.111.114-09', CAST(N'2019-01-07T10:06:07.1430000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666119, N'111.111.114-10', CAST(N'2019-01-07T10:06:07.4300000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666120, N'111.111.114-11', CAST(N'2019-01-07T10:06:12.5970000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666121, N'111.111.114-12', CAST(N'2019-01-07T10:06:15.7500000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666122, N'111.111.114-13', CAST(N'2019-01-07T10:06:15.8700000' AS DateTime2), 3, 2, N'00000000-0000-0000-0000-000000000001', N'2', N'Atualiza??o em DADOS_CADASTRAIS', N'Atualiza??o de Cadastro', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666123, N'111.111.114-14', CAST(N'2019-01-07T10:06:19.9000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'2', N'Visualiza??o da DADOS_CADASTRAIS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666124, N'111.111.114-15', CAST(N'2019-01-07T10:06:23.3630000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666125, N'111.111.114-16', CAST(N'2019-01-07T10:06:28.6600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666126, N'111.111.114-17', CAST(N'2019-01-07T10:06:28.7030000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666127, N'111.111.114-18', CAST(N'2019-01-07T10:06:37.7770000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'13', N'Visualiza??o da MEU_IMOVEL', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666128, N'111.111.114-19', CAST(N'2019-01-07T10:06:38.0530000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666129, N'111.111.114-20', CAST(N'2019-01-07T10:06:39.8730000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666130, N'111.111.114-21', CAST(N'2019-01-07T10:06:41.5400000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666131, N'111.111.114-22', CAST(N'2019-01-07T10:06:43.9630000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666132, N'111.111.114-23', CAST(N'2019-01-07T10:06:49.1000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'Meu M?vel de Madeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666133, N'111.111.114-24', CAST(N'2019-01-07T10:06:50.7500000' AS DateTime2), 3, 2, N'00000000-0000-0000-0000-000000000001', N'2', N'Atualiza??o em DADOS_CADASTRAIS', N'Atualiza??o de Cadastro', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666134, N'111.111.114-25', CAST(N'2019-01-07T10:06:55.9800000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666135, N'111.111.114-26', CAST(N'2019-01-07T10:06:56.1600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666136, N'111.111.114-27', CAST(N'2019-01-07T10:06:58.0800000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666137, N'111.111.114-28', CAST(N'2019-01-07T10:07:02.2030000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666138, N'111.111.114-29', CAST(N'2019-01-07T10:07:03.7070000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666139, N'111.111.114-30', CAST(N'2019-01-07T10:07:07.7170000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666140, N'111.111.114-31', CAST(N'2019-01-07T10:07:07.7200000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666141, N'111.111.114-32', CAST(N'2019-01-07T10:07:07.9370000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666142, N'111.111.114-33', CAST(N'2019-01-07T10:07:08.0570000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666143, N'111.111.114-34', CAST(N'2019-01-07T10:07:10.6470000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'Visualiza??o de Fale Conosco', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666144, N'111.111.114-35', CAST(N'2019-01-07T10:07:10.8400000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666145, N'111.111.114-36', CAST(N'2019-01-07T10:07:10.9330000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666146, N'111.111.114-37', CAST(N'2019-01-07T10:07:11.0600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666147, N'111.111.114-38', CAST(N'2019-01-07T10:07:14.8370000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666148, N'111.111.114-39', CAST(N'2019-01-07T10:07:22.1770000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666149, N'111.111.114-40', CAST(N'2019-01-07T10:07:25.4100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'Blink Reformei', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666150, N'111.111.114-41', CAST(N'2019-01-07T10:07:28.7600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666151, N'111.111.114-42', CAST(N'2019-01-07T10:07:30.5370000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'2', N'Visualiza??o da DADOS_CADASTRAIS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666152, N'111.111.114-43', CAST(N'2019-01-07T10:07:31.6430000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666153, N'111.111.114-44', CAST(N'2019-01-07T10:07:36.9870000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666154, N'111.111.114-45', CAST(N'2019-01-07T10:07:43.6130000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'19', N'Visualiza??o da ASSISTENCIA_TECNICA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666155, N'111.111.114-46', CAST(N'2019-01-07T10:07:46.0700000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666156, N'111.111.114-47', CAST(N'2019-01-07T10:07:48.4670000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666157, N'111.111.114-48', CAST(N'2019-01-07T10:07:49.0670000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666158, N'111.111.114-49', CAST(N'2019-01-07T10:07:51.0730000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666159, N'111.111.114-50', CAST(N'2019-01-07T10:07:54.0470000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666160, N'111.111.114-51', CAST(N'2019-01-07T10:07:54.5430000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666161, N'111.111.114-52', CAST(N'2019-01-07T10:08:01.4830000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666162, N'111.111.114-53', CAST(N'2019-01-07T10:08:03.7800000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'13', N'Visualiza??o da MEU_IMOVEL', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666163, N'111.111.114-54', CAST(N'2019-01-07T10:08:04.0100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666164, N'111.111.114-55', CAST(N'2019-01-07T10:08:06.9030000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666165, N'111.111.114-56', CAST(N'2019-01-07T10:08:15.0500000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'Download de Boleto', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666166, N'111.111.114-57', CAST(N'2019-01-07T10:08:15.9070000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666167, N'111.111.114-58', CAST(N'2019-01-07T10:08:21.6470000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666168, N'111.111.114-59', CAST(N'2019-01-07T10:08:21.8130000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666169, N'111.111.114-60', CAST(N'2019-01-07T10:08:29.2870000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'4', N'Visualiza??o da CONHECA_PORTAL', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666170, N'111.111.114-61', CAST(N'2019-01-07T10:08:33.8000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666171, N'111.111.114-62', CAST(N'2019-01-07T10:08:41.9900000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666172, N'111.111.114-63', CAST(N'2019-01-07T10:08:43.3200000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666173, N'111.111.114-64', CAST(N'2019-01-07T10:08:43.8400000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666174, N'111.111.114-65', CAST(N'2019-01-07T10:08:57.9600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666175, N'111.111.114-66', CAST(N'2019-01-07T10:08:58.0600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666176, N'111.111.114-67', CAST(N'2019-01-07T10:09:02.3230000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'13', N'Visualiza??o da MEU_IMOVEL', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666177, N'111.111.114-68', CAST(N'2019-01-07T10:09:06.5100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666178, N'111.111.114-69', CAST(N'2019-01-07T10:09:06.8700000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666179, N'111.111.114-70', CAST(N'2019-01-07T10:09:10.6400000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666180, N'111.111.114-71', CAST(N'2019-01-07T10:09:15.8630000' AS DateTime2), 2, 2, N'3af10f1d-7f7b-e711-9428-005056ace682', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666181, N'111.111.114-72', CAST(N'2019-01-07T10:09:22.5770000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666182, N'111.111.114-73', CAST(N'2019-01-07T10:09:27.9530000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666183, N'111.111.114-74', CAST(N'2019-01-07T10:09:31.7670000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666184, N'111.111.114-75', CAST(N'2019-01-07T10:09:32.7600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'Download de Boleto', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666185, N'111.111.114-76', CAST(N'2019-01-07T10:09:39.9400000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666186, N'111.111.114-77', CAST(N'2019-01-07T10:09:40.2800000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666187, N'111.111.114-78', CAST(N'2019-01-07T10:09:48.4200000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666188, N'111.111.114-79', CAST(N'2019-01-07T10:09:55.0100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666189, N'111.111.114-80', CAST(N'2019-01-07T10:09:58.9030000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666190, N'111.111.114-81', CAST(N'2019-01-07T10:10:00.2000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666191, N'111.111.114-82', CAST(N'2019-01-07T10:10:10.1500000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666192, N'111.111.114-83', CAST(N'2019-01-07T10:10:26.0330000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'13', N'Visualiza??o da MEU_IMOVEL', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666193, N'111.111.114-84', CAST(N'2019-01-07T10:10:44.4470000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666194, N'111.111.114-85', CAST(N'2019-01-07T10:10:44.7830000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666195, N'111.111.114-86', CAST(N'2019-01-07T10:10:49.1300000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666196, N'111.111.114-87', CAST(N'2019-01-07T10:10:53.5970000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666197, N'111.111.114-88', CAST(N'2019-01-07T10:10:58.2330000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666198, N'111.111.114-89', CAST(N'2019-01-07T10:10:58.5130000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666199, N'111.111.114-90', CAST(N'2019-01-07T10:11:02.6100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666200, N'111.111.114-91', CAST(N'2019-01-07T10:11:02.8530000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666201, N'111.111.114-92', CAST(N'2019-01-07T10:11:02.9930000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666202, N'111.111.114-93', CAST(N'2019-01-07T10:11:15.3870000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'13', N'Visualiza??o da MEU_IMOVEL', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666203, N'111.111.114-94', CAST(N'2019-01-07T10:11:18.0530000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666204, N'111.111.114-95', CAST(N'2019-01-07T10:11:19.7470000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666205, N'111.111.114-96', CAST(N'2019-01-07T10:11:24.2030000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666206, N'111.111.114-97', CAST(N'2019-01-07T10:11:30.7100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666207, N'111.111.114-98', CAST(N'2019-01-07T10:11:36.0600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666208, N'111.111.114-99', CAST(N'2019-01-07T10:11:45.2200000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666209, N'111.111.115-01', CAST(N'2019-01-07T10:11:47.7400000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'Visualizar Boleto', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666210, N'111.111.115-02', CAST(N'2019-01-07T10:11:48.0030000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666211, N'111.111.115-03', CAST(N'2019-01-07T10:11:55.2900000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'2', N'Visualiza??o da DADOS_CADASTRAIS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666212, N'111.111.115-04', CAST(N'2019-01-07T10:11:57.7970000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666213, N'111.111.115-05', CAST(N'2019-01-07T10:12:11.9900000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666214, N'111.111.115-06', CAST(N'2019-01-07T10:12:14.0200000' AS DateTime2), 2, 2, N'91b28c72-3f76-e811-80c0-005056955165', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666215, N'111.111.115-07', CAST(N'2019-01-07T10:12:14.2900000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'7', N'Visualiza??o da DOCUMENTOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666216, N'111.111.115-08', CAST(N'2019-01-07T10:12:17.1730000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666217, N'111.111.115-09', CAST(N'2019-01-07T10:12:17.3470000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13991, N'111.111.115-10', CAST(N'2018-06-28T17:54:08.2370000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13992, N'111.111.115-11', CAST(N'2018-06-28T17:54:10.5370000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13993, N'111.111.115-12', CAST(N'2018-06-28T17:54:18.2370000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13995, N'111.111.115-13', CAST(N'2018-06-28T17:54:58.3470000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13996, N'111.111.115-14', CAST(N'2018-06-28T17:55:22.9230000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13998, N'111.111.115-15', CAST(N'2018-06-28T17:55:32.1700000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'7', N'Visualiza??o da DOCUMENTOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13999, N'111.111.115-16', CAST(N'2018-06-28T17:55:34.3470000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'13', N'Visualiza??o da MEU_IMOVEL', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14001, N'111.111.115-17', CAST(N'2018-06-28T17:55:54.7170000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14002, N'111.111.115-18', CAST(N'2018-06-28T17:56:11.8730000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'13', N'Visualiza??o da MEU_IMOVEL', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14003, N'111.111.115-19', CAST(N'2018-06-28T17:56:39.0000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'13', N'Visualiza??o da MEU_IMOVEL', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14004, N'111.111.115-20', CAST(N'2018-06-28T17:56:44.9400000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'15', N'Visualiza??o da VISTORIA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14006, N'111.111.115-21', CAST(N'2018-06-28T17:57:40.3370000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14012, N'111.111.115-22', CAST(N'2018-06-28T17:58:32.0030000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'17', N'Visualiza??o da DUVIDAS_FREQUENTES', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14015, N'111.111.115-23', CAST(N'2018-06-28T17:59:25.7900000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'18', N'Visualiza??o da GLOSSARIO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14016, N'111.111.115-24', CAST(N'2018-06-28T18:01:33.8070000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14022, N'111.111.115-25', CAST(N'2018-06-28T18:02:07.7200000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14025, N'111.111.115-26', CAST(N'2018-06-28T18:02:25.3330000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14049, N'111.111.115-27', CAST(N'2018-06-28T18:07:31.5770000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14051, N'111.111.115-28', CAST(N'2018-06-28T18:07:43.8300000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14054, N'111.111.115-29', CAST(N'2018-06-28T18:09:12.2930000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14055, N'111.111.115-30', CAST(N'2018-06-28T18:09:21.0300000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14070, N'111.111.115-31', CAST(N'2018-06-28T18:21:43.4870000' AS DateTime2), 2, 2, N'1fa6c7f4-653a-e711-9428-005056ace682', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14071, N'111.111.115-32', CAST(N'2018-06-28T18:21:47.5600000' AS DateTime2), 2, 2, N'1fa6c7f4-653a-e711-9428-005056ace682', N'7', N'Visualiza??o da DOCUMENTOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14072, N'111.111.115-33', CAST(N'2018-06-28T18:24:20.9330000' AS DateTime2), 2, 2, N'91b28c72-3f76-e811-80c0-005056955165', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14073, N'111.111.115-34', CAST(N'2018-06-28T18:24:47.9530000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14077, N'111.111.115-35', CAST(N'2018-06-28T18:25:49.3830000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'10', N'Visualiza??o da FINANCEIRO_INFORME_RENDIMENTOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14035, N'111.111.115-36', CAST(N'2018-06-28T18:04:45.4000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14036, N'111.111.115-37', CAST(N'2018-06-28T18:04:54.2000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14037, N'111.111.115-38', CAST(N'2018-06-28T18:04:56.3500000' AS DateTime2), 2, 2, N'7aa52a9d-b618-e711-941a-001dd8200008', N'7', N'Visualiza??o da DOCUMENTOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14038, N'111.111.115-39', CAST(N'2018-06-28T18:04:57.4700000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'7', N'Visualiza??o da DOCUMENTOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14039, N'111.111.115-40', CAST(N'2018-06-28T18:05:07.8470000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14040, N'111.111.115-41', CAST(N'2018-06-28T18:05:09.1400000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666038, N'111.111.115-42', CAST(N'2019-01-07T09:58:19.0400000' AS DateTime2), 2, 2, N'ab3fe1fc-c9e1-e811-80c5-00505695e94a', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'Download de Boleto', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666039, N'111.111.115-43', CAST(N'2019-01-07T09:58:25.7100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666040, N'111.111.115-44', CAST(N'2019-01-07T09:58:37.9500000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666041, N'111.111.115-45', CAST(N'2019-01-07T09:58:40.1130000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666042, N'111.111.115-46', CAST(N'2019-01-07T09:58:47.4600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666043, N'111.111.115-47', CAST(N'2019-01-07T09:58:51.1000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666044, N'111.111.115-48', CAST(N'2019-01-07T09:58:57.8770000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'19', N'Visualiza??o da ASSISTENCIA_TECNICA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666045, N'111.111.115-49', CAST(N'2019-01-07T09:59:09.2700000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666046, N'111.111.115-50', CAST(N'2019-01-07T09:59:15.0900000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666047, N'111.111.115-51', CAST(N'2019-01-07T09:59:21.9370000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'Visualiza??o de Fale Conosco', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666048, N'111.111.115-52', CAST(N'2019-01-07T09:59:23.4070000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666057, N'111.111.115-53', CAST(N'2019-01-07T10:01:19.0100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666058, N'111.111.115-54', CAST(N'2019-01-07T10:01:55.5000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666059, N'111.111.115-55', CAST(N'2019-01-07T10:02:12.0300000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666060, N'111.111.115-56', CAST(N'2019-01-07T10:02:41.8030000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666061, N'111.111.115-57', CAST(N'2019-01-07T10:02:42.6600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666062, N'111.111.115-58', CAST(N'2019-01-07T10:02:44.6400000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666063, N'111.111.115-59', CAST(N'2019-01-07T10:02:50.2930000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'13', N'Visualiza??o da MEU_IMOVEL', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666064, N'111.111.115-60', CAST(N'2019-01-07T10:02:53.5600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666065, N'111.111.115-61', CAST(N'2019-01-07T10:03:08.8530000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'10', N'Visualiza??o da FINANCEIRO_INFORME_RENDIMENTOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666066, N'111.111.115-62', CAST(N'2019-01-07T10:03:11.3630000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666068, N'111.111.115-63', CAST(N'2019-01-07T10:03:33.3830000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666069, N'111.111.115-64', CAST(N'2019-01-07T10:03:33.5770000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'Visualiza??o de Fale Conosco', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666070, N'111.111.115-65', CAST(N'2019-01-07T10:03:34.3430000' AS DateTime2), 1, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Cria??o em FALE_CONOSCO', N'Cria??o de Fale Conosco, CYR-2018086-Y4S1', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666071, N'111.111.115-66', CAST(N'2019-01-07T10:03:34.9570000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'Visualiza??o de Fale Conosco', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666072, N'111.111.115-67', CAST(N'2019-01-07T10:03:35.2370000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666073, N'111.111.115-68', CAST(N'2019-01-07T10:03:36.3530000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666074, N'111.111.115-69', CAST(N'2019-01-07T10:03:37.3500000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'Visualiza??o de Fale Conosco', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666075, N'111.111.115-70', CAST(N'2019-01-07T10:03:38.1700000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666077, N'111.111.115-71', CAST(N'2019-01-07T10:03:48.3830000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666081, N'111.111.115-72', CAST(N'2019-01-07T10:03:58.9830000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666083, N'111.111.115-73', CAST(N'2019-01-07T10:04:07.4600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666086, N'111.111.115-74', CAST(N'2019-01-07T10:04:19.9500000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666087, N'111.111.115-75', CAST(N'2019-01-07T10:04:20.5100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666089, N'111.111.115-76', CAST(N'2019-01-07T10:04:24.7200000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'Visualiza??o de Fale Conosco', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666090, N'111.111.115-77', CAST(N'2019-01-07T10:04:24.8600000' AS DateTime2), 1, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Cria??o em FALE_CONOSCO', N'Cria??o de Fale Conosco, CYR-2018090-C8W0', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666091, N'111.111.115-78', CAST(N'2019-01-07T10:04:25.1000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'Visualiza??o de Fale Conosco', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666092, N'111.111.115-79', CAST(N'2019-01-07T10:04:25.5200000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666093, N'111.111.115-80', CAST(N'2019-01-07T10:04:26.2730000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666094, N'111.111.115-81', CAST(N'2019-01-07T10:04:27.7100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (666095, N'111.111.115-82', CAST(N'2019-01-07T10:04:27.8200000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13933, N'111.111.115-83', CAST(N'2018-06-28T17:37:53.8630000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'13', N'Visualiza??o da MEU_IMOVEL', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13934, N'111.111.115-84', CAST(N'2018-06-28T17:38:15.1570000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13935, N'111.111.115-85', CAST(N'2018-06-28T17:38:48.5900000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13936, N'111.111.115-86', CAST(N'2018-06-28T17:39:03.3730000' AS DateTime2), 1, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Cria??o em FALE_CONOSCO', N'Cria??o de Fale Conosco, CYR-1770864-L9H2', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13937, N'111.111.115-87', CAST(N'2018-06-28T17:39:03.9930000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13938, N'111.111.115-88', CAST(N'2018-06-28T17:39:15.3030000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13941, N'111.111.115-89', CAST(N'2018-06-28T17:39:35.1630000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13943, N'111.111.115-90', CAST(N'2018-06-28T17:39:38.8470000' AS DateTime2), 2, 2, N'780de954-b16b-e711-9428-005056ace682', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13945, N'111.111.115-91', CAST(N'2018-06-28T17:40:30.4230000' AS DateTime2), 2, 2, N'780de954-b16b-e711-9428-005056ace682', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13946, N'111.111.115-92', CAST(N'2018-06-28T17:40:46.0000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13948, N'111.111.115-93', CAST(N'2018-06-28T17:41:21.6930000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13949, N'111.111.115-94', CAST(N'2018-06-28T17:41:32.6630000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13951, N'111.111.115-95', CAST(N'2018-06-28T17:41:56.1100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13952, N'111.111.115-96', CAST(N'2018-06-28T17:42:02.4770000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13955, N'111.111.115-97', CAST(N'2018-06-28T17:43:17.5930000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13956, N'111.111.115-98', CAST(N'2018-06-28T17:43:26.0700000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'2', N'Visualiza??o da DADOS_CADASTRAIS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13957, N'111.111.115-99', CAST(N'2018-06-28T17:43:34.1330000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'19', N'Visualiza??o da ASSISTENCIA_TECNICA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13967, N'111.111.116-01', CAST(N'2018-06-28T17:46:42.7830000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13971, N'111.111.116-02', CAST(N'2018-06-28T17:48:40.3400000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'19', N'Visualiza??o da ASSISTENCIA_TECNICA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13974, N'111.111.116-03', CAST(N'2018-06-28T17:49:34.2730000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13977, N'111.111.116-04', CAST(N'2018-06-28T17:49:51.8900000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13979, N'111.111.116-05', CAST(N'2018-06-28T17:50:46.8700000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13980, N'111.111.116-06', CAST(N'2018-06-28T17:51:14.4870000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13981, N'111.111.116-07', CAST(N'2018-06-28T17:51:32.2470000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'19', N'Visualiza??o da ASSISTENCIA_TECNICA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13982, N'111.111.116-08', CAST(N'2018-06-28T17:52:04.0800000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13983, N'111.111.116-09', CAST(N'2018-06-28T17:52:10.0600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14611, N'111.111.116-10', CAST(N'2018-06-29T08:56:55.0370000' AS DateTime2), 2, 2, N'97b9f977-e350-e111-b22e-0026b97d92ff', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14612, N'111.111.116-11', CAST(N'2018-06-29T08:57:01.5670000' AS DateTime2), 2, 2, N'97b9f977-e350-e111-b22e-0026b97d92ff', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'Download de Boleto', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14613, N'111.111.116-12', CAST(N'2018-06-29T09:00:04.6030000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14614, N'111.111.116-13', CAST(N'2018-06-29T09:00:15.7070000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14615, N'111.111.116-14', CAST(N'2018-06-29T09:01:17.4530000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'13', N'Visualiza??o da MEU_IMOVEL', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14616, N'111.111.116-15', CAST(N'2018-06-29T09:02:13.7930000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'7', N'Visualiza??o da DOCUMENTOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14617, N'111.111.116-16', CAST(N'2018-06-29T09:02:46.3570000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14618, N'111.111.116-17', CAST(N'2018-06-29T09:03:34.4530000' AS DateTime2), 2, 2, N'1fa6c7f4-653a-e711-9428-005056ace682', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14619, N'111.111.116-18', CAST(N'2018-06-29T09:04:53.6070000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14620, N'111.111.116-19', CAST(N'2018-06-29T09:05:43.1900000' AS DateTime2), 2, 2, N'72fad97d-9248-e811-80c0-005056955165', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14621, N'111.111.116-20', CAST(N'2018-06-29T09:06:02.1400000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14622, N'111.111.116-21', CAST(N'2018-06-29T09:06:50.3600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14623, N'111.111.116-22', CAST(N'2018-06-29T09:06:50.6700000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'7', N'Visualiza??o da DOCUMENTOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14624, N'111.111.116-23', CAST(N'2018-06-29T09:08:46.7000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14625, N'111.111.116-24', CAST(N'2018-06-29T09:09:07.9700000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14626, N'111.111.116-25', CAST(N'2018-06-29T09:09:12.1770000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14627, N'111.111.116-26', CAST(N'2018-06-29T09:09:22.1470000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14628, N'111.111.116-27', CAST(N'2018-06-29T09:09:23.9770000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14629, N'111.111.116-28', CAST(N'2018-06-29T09:09:35.5200000' AS DateTime2), 2, 2, N'a2cadc92-2e68-e811-80c0-005056955165', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14630, N'111.111.116-29', CAST(N'2018-06-29T09:09:38.9770000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14631, N'111.111.116-30', CAST(N'2018-06-29T09:09:39.4000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14632, N'111.111.116-31', CAST(N'2018-06-29T09:10:09.6930000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14633, N'111.111.116-32', CAST(N'2018-06-29T09:10:37.2930000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'2', N'Visualiza??o da DADOS_CADASTRAIS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14634, N'111.111.116-33', CAST(N'2018-06-29T09:11:06.0400000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14635, N'111.111.116-34', CAST(N'2018-06-29T09:11:15.0200000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14636, N'111.111.116-35', CAST(N'2018-06-29T09:11:30.8400000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14637, N'111.111.116-36', CAST(N'2018-06-29T09:16:43.0370000' AS DateTime2), 3, 2, N'00000000-0000-0000-0000-000000000001', N'2', N'Atualiza??o em DADOS_CADASTRAIS', N'Erro na atualiza??o de Cadastro, Erro ao Atualizar Pessoa Fisica Server Error', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14638, N'111.111.116-37', CAST(N'2018-06-29T09:22:25.4470000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14639, N'111.111.116-38', CAST(N'2018-06-29T09:26:32.5530000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14640, N'111.111.116-39', CAST(N'2018-06-29T09:26:33.5800000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14641, N'111.111.116-40', CAST(N'2018-06-29T09:26:35.6270000' AS DateTime2), 2, 2, N'02e876e7-4030-e711-941b-001dd8200008', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14642, N'111.111.116-41', CAST(N'2018-06-29T09:26:37.3300000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14643, N'111.111.116-42', CAST(N'2018-06-29T09:26:44.7200000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14644, N'111.111.116-43', CAST(N'2018-06-29T09:26:47.0630000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14645, N'111.111.116-44', CAST(N'2018-06-29T09:26:54.5670000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14646, N'111.111.116-45', CAST(N'2018-06-29T09:31:24.4830000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14647, N'111.111.116-46', CAST(N'2018-06-29T09:31:45.3470000' AS DateTime2), 2, 2, N'02e876e7-4030-e711-941b-001dd8200008', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14648, N'111.111.116-47', CAST(N'2018-06-29T09:36:25.2770000' AS DateTime2), 2, 2, N'325c65c1-0c6a-e611-9414-001dd8200008', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14649, N'111.111.116-48', CAST(N'2018-06-29T09:36:25.4730000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14650, N'111.111.116-49', CAST(N'2018-06-29T10:02:27.3600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14651, N'111.111.116-50', CAST(N'2018-06-29T10:07:37.1200000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14652, N'111.111.116-51', CAST(N'2018-06-29T10:09:25.4400000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'17', N'Visualiza??o da DUVIDAS_FREQUENTES', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14653, N'111.111.116-52', CAST(N'2018-06-29T10:16:04.4030000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14654, N'111.111.116-53', CAST(N'2018-06-29T10:17:27.9900000' AS DateTime2), 2, 2, N'3af10f1d-7f7b-e711-9428-005056ace682', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14655, N'111.111.116-54', CAST(N'2018-06-29T10:21:00.4170000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14656, N'111.111.116-55', CAST(N'2018-06-29T10:21:08.8870000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14657, N'111.111.116-56', CAST(N'2018-06-29T10:22:42.2730000' AS DateTime2), 2, 2, N'ab74c070-89f6-e511-9401-001dd8200008', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14659, N'111.111.116-57', CAST(N'2018-06-29T10:25:14.9970000' AS DateTime2), 2, 2, N'54032d0d-7972-e511-9406-001dd8200001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14661, N'111.111.116-58', CAST(N'2018-06-29T10:25:33.3300000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14662, N'111.111.116-59', CAST(N'2018-06-29T10:26:53.4430000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14665, N'111.111.116-60', CAST(N'2018-06-29T10:27:49.5300000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14666, N'111.111.116-61', CAST(N'2018-06-29T10:27:49.5470000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14667, N'111.111.116-62', CAST(N'2018-06-29T10:27:49.8370000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14670, N'111.111.116-63', CAST(N'2018-06-29T10:27:56.2830000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14672, N'111.111.116-64', CAST(N'2018-06-29T10:28:07.4270000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14673, N'111.111.116-65', CAST(N'2018-06-29T10:28:12.7870000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'2', N'Visualiza??o da DADOS_CADASTRAIS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13900, N'111.111.116-66', CAST(N'2018-06-28T17:34:49.3600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13901, N'111.111.116-67', CAST(N'2018-06-28T17:34:50.8870000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13902, N'111.111.116-68', CAST(N'2018-06-28T17:34:57.5300000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13903, N'111.111.116-69', CAST(N'2018-06-28T17:35:13.5500000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13906, N'111.111.116-70', CAST(N'2018-06-28T17:35:30.1430000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13907, N'111.111.116-71', CAST(N'2018-06-28T17:35:30.5070000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13911, N'111.111.116-72', CAST(N'2018-06-28T17:35:53.3030000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13912, N'111.111.116-73', CAST(N'2018-06-28T17:35:58.6100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13915, N'111.111.116-74', CAST(N'2018-06-28T17:36:01.6930000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'Visualizar Boleto', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13917, N'111.111.116-75', CAST(N'2018-06-28T17:36:02.1030000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13918, N'111.111.116-76', CAST(N'2018-06-28T17:36:05.0430000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13920, N'111.111.116-77', CAST(N'2018-06-28T17:36:13.3800000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13921, N'111.111.116-78', CAST(N'2018-06-28T17:36:15.7930000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13922, N'111.111.116-79', CAST(N'2018-06-28T17:36:21.1330000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13929, N'111.111.116-80', CAST(N'2018-06-28T17:36:57.6830000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13939, N'111.111.116-81', CAST(N'2018-06-28T17:39:23.0330000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'7', N'Visualiza??o da DOCUMENTOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13940, N'111.111.116-82', CAST(N'2018-06-28T17:39:28.3230000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13942, N'111.111.116-83', CAST(N'2018-06-28T17:39:37.5100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13944, N'111.111.116-84', CAST(N'2018-06-28T17:40:07.7570000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13947, N'111.111.116-85', CAST(N'2018-06-28T17:41:05.0100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'13', N'Visualiza??o da MEU_IMOVEL', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13950, N'111.111.116-86', CAST(N'2018-06-28T17:41:34.2600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13953, N'111.111.116-87', CAST(N'2018-06-28T17:42:29.1770000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'19', N'Visualiza??o da ASSISTENCIA_TECNICA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13954, N'111.111.116-88', CAST(N'2018-06-28T17:42:40.3830000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13958, N'111.111.116-89', CAST(N'2018-06-28T17:43:52.0600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13959, N'111.111.116-90', CAST(N'2018-06-28T17:44:32.4930000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13960, N'111.111.116-91', CAST(N'2018-06-28T17:45:13.1800000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13961, N'111.111.116-92', CAST(N'2018-06-28T17:45:45.4300000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13962, N'111.111.116-93', CAST(N'2018-06-28T17:45:54.1670000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13963, N'111.111.116-94', CAST(N'2018-06-28T17:46:02.3100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'7', N'Visualiza??o da DOCUMENTOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13964, N'111.111.116-95', CAST(N'2018-06-28T17:46:16.2000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13965, N'111.111.116-96', CAST(N'2018-06-28T17:46:22.0500000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'10', N'Visualiza??o da FINANCEIRO_INFORME_RENDIMENTOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13966, N'111.111.116-97', CAST(N'2018-06-28T17:46:41.7570000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13968, N'111.111.116-98', CAST(N'2018-06-28T17:46:47.1730000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13969, N'111.111.116-99', CAST(N'2018-06-28T17:47:31.4130000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13970, N'111.111.117-01', CAST(N'2018-06-28T17:48:08.9530000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13972, N'111.111.117-02', CAST(N'2018-06-28T17:49:26.5130000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13973, N'111.111.117-03', CAST(N'2018-06-28T17:49:31.9470000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13975, N'111.111.117-04', CAST(N'2018-06-28T17:49:44.8670000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13976, N'111.111.117-05', CAST(N'2018-06-28T17:49:49.6270000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13978, N'111.111.117-06', CAST(N'2018-06-28T17:50:05.9270000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'13', N'Visualiza??o da MEU_IMOVEL', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13986, N'111.111.117-07', CAST(N'2018-06-28T17:52:58.3030000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13994, N'111.111.117-08', CAST(N'2018-06-28T17:54:48.7130000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13997, N'111.111.117-09', CAST(N'2018-06-28T17:55:31.9630000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'7', N'Visualiza??o da DOCUMENTOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14000, N'111.111.117-10', CAST(N'2018-06-28T17:55:50.4570000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'13', N'Visualiza??o da MEU_IMOVEL', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14005, N'111.111.117-11', CAST(N'2018-06-28T17:57:10.5330000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14007, N'111.111.117-12', CAST(N'2018-06-28T17:57:51.6230000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14008, N'111.111.117-13', CAST(N'2018-06-28T17:57:59.1400000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14009, N'111.111.117-14', CAST(N'2018-06-28T17:58:06.1800000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14010, N'111.111.117-15', CAST(N'2018-06-28T17:58:16.2130000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14011, N'111.111.117-16', CAST(N'2018-06-28T17:58:29.4600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14013, N'111.111.117-17', CAST(N'2018-06-28T17:58:59.5730000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14014, N'111.111.117-18', CAST(N'2018-06-28T17:59:05.8270000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14017, N'111.111.117-19', CAST(N'2018-06-28T18:01:38.1570000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14018, N'111.111.117-20', CAST(N'2018-06-28T18:01:41.8000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14019, N'111.111.117-21', CAST(N'2018-06-28T18:01:46.5930000' AS DateTime2), 2, 2, N'7aa52a9d-b618-e711-941a-001dd8200008', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14020, N'111.111.117-22', CAST(N'2018-06-28T18:01:50.9600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14021, N'111.111.117-23', CAST(N'2018-06-28T18:02:01.4800000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14023, N'111.111.117-24', CAST(N'2018-06-28T18:02:13.1100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14024, N'111.111.117-25', CAST(N'2018-06-28T18:02:18.2830000' AS DateTime2), 2, 2, N'7aa52a9d-b618-e711-941a-001dd8200008', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14026, N'111.111.117-26', CAST(N'2018-06-28T18:02:37.4700000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14027, N'111.111.117-27', CAST(N'2018-06-28T18:03:06.7730000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'Download de Boleto', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14028, N'111.111.117-28', CAST(N'2018-06-28T18:03:06.9670000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'Visualizar Boleto', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14029, N'111.111.117-29', CAST(N'2018-06-28T18:03:07.3800000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14030, N'111.111.117-30', CAST(N'2018-06-28T18:03:22.8500000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14031, N'111.111.117-31', CAST(N'2018-06-28T18:03:29.1700000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14032, N'111.111.117-32', CAST(N'2018-06-28T18:03:37.6800000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14033, N'111.111.117-33', CAST(N'2018-06-28T18:04:23.1500000' AS DateTime2), 2, 2, N'7aa52a9d-b618-e711-941a-001dd8200008', N'7', N'Visualiza??o da DOCUMENTOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14034, N'111.111.117-34', CAST(N'2018-06-28T18:04:35.6170000' AS DateTime2), 2, 2, N'7aa52a9d-b618-e711-941a-001dd8200008', N'7', N'Visualiza??o da DOCUMENTOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13984, N'111.111.117-35', CAST(N'2018-06-28T17:52:14.8700000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13985, N'111.111.117-36', CAST(N'2018-06-28T17:52:26.4000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13987, N'111.111.117-37', CAST(N'2018-06-28T17:53:11.5470000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13988, N'111.111.117-38', CAST(N'2018-06-28T17:53:24.6000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'7', N'Visualiza??o da DOCUMENTOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13989, N'111.111.117-39', CAST(N'2018-06-28T17:53:44.2830000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'13', N'Visualiza??o da MEU_IMOVEL', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13990, N'111.111.117-40', CAST(N'2018-06-28T17:53:51.7870000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'7', N'Visualiza??o da DOCUMENTOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14548, N'111.111.117-41', CAST(N'2018-06-29T08:19:58.9200000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14549, N'111.111.117-42', CAST(N'2018-06-29T08:20:20.5070000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14550, N'111.111.117-43', CAST(N'2018-06-29T08:20:38.1700000' AS DateTime2), 3, 2, N'00000000-0000-0000-0000-000000000001', N'2', N'Atualiza??o em DADOS_CADASTRAIS', N'Erro na atualiza??o de Cadastro, Erro ao Atualizar Pessoa Fisica Server Error', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14551, N'111.111.117-44', CAST(N'2018-06-29T08:21:11.8800000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Impress?o Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14560, N'111.111.117-45', CAST(N'2018-06-29T08:30:26.1400000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14561, N'111.111.117-46', CAST(N'2018-06-29T08:30:37.1600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14563, N'111.111.117-47', CAST(N'2018-06-29T08:30:56.3030000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'Download de Boleto', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14780, N'111.111.117-48', CAST(N'2018-06-29T10:42:43.5100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'2', N'Visualiza??o da DADOS_CADASTRAIS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14783, N'111.111.117-49', CAST(N'2018-06-29T10:42:58.4600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14785, N'111.111.117-50', CAST(N'2018-06-29T10:43:11.1430000' AS DateTime2), 3, 2, N'00000000-0000-0000-0000-000000000001', N'2', N'Atualiza??o em DADOS_CADASTRAIS', N'Atualiza??o de Cadastro', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14786, N'111.111.117-51', CAST(N'2018-06-29T10:43:13.9100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14787, N'111.111.117-52', CAST(N'2018-06-29T10:43:14.7370000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'2', N'Visualiza??o da DADOS_CADASTRAIS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14788, N'111.111.117-53', CAST(N'2018-06-29T10:43:37.8100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14789, N'111.111.117-54', CAST(N'2018-06-29T10:43:38.6000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'Visualizar Boleto', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14790, N'111.111.117-55', CAST(N'2018-06-29T10:43:39.3000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14792, N'111.111.117-56', CAST(N'2018-06-29T10:43:43.1770000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14793, N'111.111.117-57', CAST(N'2018-06-29T10:43:50.3200000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'10', N'Visualiza??o da FINANCEIRO_INFORME_RENDIMENTOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14794, N'111.111.117-58', CAST(N'2018-06-29T10:43:52.1100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14795, N'111.111.117-59', CAST(N'2018-06-29T10:43:57.3470000' AS DateTime2), 2, 2, N'780de954-b16b-e711-9428-005056ace682', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14796, N'111.111.117-60', CAST(N'2018-06-29T10:44:00.3730000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'7', N'Visualiza??o da DOCUMENTOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14797, N'111.111.117-61', CAST(N'2018-06-29T10:44:11.9300000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14798, N'111.111.117-62', CAST(N'2018-06-29T10:44:16.5230000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14799, N'111.111.117-63', CAST(N'2018-06-29T10:44:17.8100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14800, N'111.111.117-64', CAST(N'2018-06-29T10:44:22.9930000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14801, N'111.111.117-65', CAST(N'2018-06-29T10:44:26.8030000' AS DateTime2), 2, 2, N'ab74c070-89f6-e511-9401-001dd8200008', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14802, N'111.111.117-66', CAST(N'2018-06-29T10:44:37.2900000' AS DateTime2), 2, 2, N'ab74c070-89f6-e511-9401-001dd8200008', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14803, N'111.111.117-67', CAST(N'2018-06-29T10:44:42.2870000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14804, N'111.111.117-68', CAST(N'2018-06-29T10:44:43.0670000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'17', N'Visualiza??o da DUVIDAS_FREQUENTES', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14806, N'111.111.117-69', CAST(N'2018-06-29T10:44:45.7730000' AS DateTime2), 2, 2, N'ab74c070-89f6-e511-9401-001dd8200008', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Impress?o Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14808, N'111.111.117-70', CAST(N'2018-06-29T10:45:09.8400000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14810, N'111.111.117-71', CAST(N'2018-06-29T10:45:57.7030000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'2', N'Visualiza??o da DADOS_CADASTRAIS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14811, N'111.111.117-72', CAST(N'2018-06-29T10:46:03.8430000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'15', N'Visualiza??o da VISTORIA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14813, N'111.111.117-73', CAST(N'2018-06-29T10:46:24.3300000' AS DateTime2), 2, 2, N'27168365-8d1b-e711-941d-001dd8200001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14814, N'111.111.117-74', CAST(N'2018-06-29T10:46:27.5100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14815, N'111.111.117-75', CAST(N'2018-06-29T10:46:28.8500000' AS DateTime2), 2, 2, N'ab74c070-89f6-e511-9401-001dd8200008', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14816, N'111.111.117-76', CAST(N'2018-06-29T10:46:32.1430000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14817, N'111.111.117-77', CAST(N'2018-06-29T10:46:35.5600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14820, N'111.111.117-78', CAST(N'2018-06-29T10:46:49.0700000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14821, N'111.111.117-79', CAST(N'2018-06-29T10:46:51.2930000' AS DateTime2), 1, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Cria??o em FALE_CONOSCO', N'Cria??o de Fale Conosco, CYR-1771172-J3K6', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14822, N'111.111.117-80', CAST(N'2018-06-29T10:46:52.6030000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14824, N'111.111.117-81', CAST(N'2018-06-29T10:46:55.7130000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14826, N'111.111.117-82', CAST(N'2018-06-29T10:46:57.7500000' AS DateTime2), 2, 2, N'27168365-8d1b-e711-941d-001dd8200001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14828, N'111.111.117-83', CAST(N'2018-06-29T10:47:04.5100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14829, N'111.111.117-84', CAST(N'2018-06-29T10:47:13.0830000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14830, N'111.111.117-85', CAST(N'2018-06-29T10:47:21.6600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14831, N'111.111.117-86', CAST(N'2018-06-29T10:47:51.0700000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14832, N'111.111.117-87', CAST(N'2018-06-29T10:47:54.5600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14833, N'111.111.117-88', CAST(N'2018-06-29T10:47:56.5830000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14914, N'111.111.117-89', CAST(N'2018-06-29T10:58:59.0030000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14919, N'111.111.117-90', CAST(N'2018-06-29T10:59:38.6270000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14921, N'111.111.117-91', CAST(N'2018-06-29T10:59:49.5400000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14927, N'111.111.117-92', CAST(N'2018-06-29T11:00:26.5070000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14928, N'111.111.117-93', CAST(N'2018-06-29T11:00:34.0870000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14930, N'111.111.117-94', CAST(N'2018-06-29T11:00:42.7700000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'2', N'Visualiza??o da DADOS_CADASTRAIS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14932, N'111.111.117-95', CAST(N'2018-06-29T11:00:52.1400000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'Visualizar Boleto', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (14933, N'111.111.117-96', CAST(N'2018-06-29T11:00:52.5530000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13904, N'111.111.117-97', CAST(N'2018-06-28T17:35:25.5900000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13905, N'111.111.117-98', CAST(N'2018-06-28T17:35:25.6130000' AS DateTime2), 2, 2, N'325c65c1-0c6a-e611-9414-001dd8200008', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13908, N'111.111.117-99', CAST(N'2018-06-28T17:35:31.7000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13909, N'111.111.118-01', CAST(N'2018-06-28T17:35:36.7170000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13910, N'111.111.118-02', CAST(N'2018-06-28T17:35:41.0830000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13913, N'111.111.118-03', CAST(N'2018-06-28T17:35:59.1400000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13914, N'111.111.118-04', CAST(N'2018-06-28T17:35:59.6630000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13916, N'111.111.118-05', CAST(N'2018-06-28T17:36:02.0170000' AS DateTime2), 2, 2, N'5b4c584d-bc6c-e711-9422-005056ac7ea7', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13919, N'111.111.118-06', CAST(N'2018-06-28T17:36:12.2200000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13923, N'111.111.118-07', CAST(N'2018-06-28T17:36:21.6600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'7', N'Visualiza??o da DOCUMENTOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13924, N'111.111.118-08', CAST(N'2018-06-28T17:36:27.5570000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'15', N'Visualiza??o da VISTORIA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13925, N'111.111.118-09', CAST(N'2018-06-28T17:36:37.8730000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13926, N'111.111.118-10', CAST(N'2018-06-28T17:36:40.3930000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'17', N'Visualiza??o da DUVIDAS_FREQUENTES', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13927, N'111.111.118-11', CAST(N'2018-06-28T17:36:47.8970000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13928, N'111.111.118-12', CAST(N'2018-06-28T17:36:52.4000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13930, N'111.111.118-13', CAST(N'2018-06-28T17:37:11.2600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13931, N'111.111.118-14', CAST(N'2018-06-28T17:37:14.3000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (13932, N'111.111.118-15', CAST(N'2018-06-28T17:37:17.2930000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644025, N'111.111.118-16', CAST(N'2018-12-28T10:58:50.0800000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644027, N'111.111.118-17', CAST(N'2018-12-28T11:21:00.0270000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644029, N'111.111.118-18', CAST(N'2018-12-28T11:21:12.8530000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644032, N'111.111.118-19', CAST(N'2018-12-28T11:21:19.9570000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644042, N'111.111.118-20', CAST(N'2018-12-28T11:21:51.8100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644043, N'111.111.118-21', CAST(N'2018-12-28T11:21:52.3230000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644044, N'111.111.118-22', CAST(N'2018-12-28T11:21:58.3500000' AS DateTime2), 2, 2, N'695c02aa-0ae2-e511-9401-001dd8200008', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644045, N'111.111.118-23', CAST(N'2018-12-28T11:21:58.6300000' AS DateTime2), 2, 2, N'695c02aa-0ae2-e511-9401-001dd8200008', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644046, N'111.111.118-24', CAST(N'2018-12-28T11:22:05.8970000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'Visualiza??o de Fale Conosco', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644047, N'111.111.118-25', CAST(N'2018-12-28T11:22:06.8630000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644048, N'111.111.118-26', CAST(N'2018-12-28T11:22:16.5700000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644050, N'111.111.118-27', CAST(N'2018-12-28T11:22:22.1030000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'15', N'Visualiza??o da VISTORIA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644051, N'111.111.118-28', CAST(N'2018-12-28T11:22:32.6700000' AS DateTime2), 2, 2, N'983880a6-98b6-e811-80c3-00505695e94a', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644053, N'111.111.118-29', CAST(N'2018-12-28T11:22:45.2800000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644057, N'111.111.118-30', CAST(N'2018-12-28T11:23:18.3900000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644058, N'111.111.118-31', CAST(N'2018-12-28T11:23:18.7300000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644060, N'111.111.118-32', CAST(N'2018-12-28T11:23:22.6000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644061, N'111.111.118-33', CAST(N'2018-12-28T11:23:23.3500000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'15', N'Visualiza??o da VISTORIA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644062, N'111.111.118-34', CAST(N'2018-12-28T11:23:28.8730000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'Visualizar Boleto', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644063, N'111.111.118-35', CAST(N'2018-12-28T11:23:29.4200000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644064, N'111.111.118-36', CAST(N'2018-12-28T11:23:35.5970000' AS DateTime2), 2, 2, N'a2cadc92-2e68-e811-80c0-005056955165', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644065, N'111.111.118-37', CAST(N'2018-12-28T11:23:41.3370000' AS DateTime2), 2, 2, N'a2cadc92-2e68-e811-80c0-005056955165', N'7', N'Visualiza??o da DOCUMENTOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644067, N'111.111.118-38', CAST(N'2018-12-28T11:23:45.5300000' AS DateTime2), 2, 2, N'a2cadc92-2e68-e811-80c0-005056955165', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644068, N'111.111.118-39', CAST(N'2018-12-28T11:23:48.3500000' AS DateTime2), 1, 2, N'00000000-0000-0000-0000-000000000001', N'15', N'Cria??o em VISTORIA', N'Confirmar Agendamento Vistoria', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644069, N'111.111.118-40', CAST(N'2018-12-28T11:23:52.1170000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'15', N'Visualiza??o da VISTORIA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644071, N'111.111.118-41', CAST(N'2018-12-28T11:23:58.7070000' AS DateTime2), 2, 2, N'a2cadc92-2e68-e811-80c0-005056955165', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644072, N'111.111.118-42', CAST(N'2018-12-28T11:23:59.0770000' AS DateTime2), 2, 2, N'a2cadc92-2e68-e811-80c0-005056955165', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644074, N'111.111.118-43', CAST(N'2018-12-28T11:24:01.2200000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644075, N'111.111.118-44', CAST(N'2018-12-28T11:24:04.2300000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644151, N'111.111.118-45', CAST(N'2018-12-28T11:39:28.4900000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644152, N'111.111.118-46', CAST(N'2018-12-28T11:39:28.8930000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644153, N'111.111.118-47', CAST(N'2018-12-28T11:39:34.3170000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644174, N'111.111.118-48', CAST(N'2018-12-28T11:42:49.6600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644175, N'111.111.118-49', CAST(N'2018-12-28T11:42:50.0600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'7', N'Visualiza??o da DOCUMENTOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644176, N'111.111.118-50', CAST(N'2018-12-28T11:42:54.3130000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644177, N'111.111.118-51', CAST(N'2018-12-28T11:42:56.4230000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644178, N'111.111.118-52', CAST(N'2018-12-28T11:43:00.0830000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'Visualizar Boleto', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644179, N'111.111.118-53', CAST(N'2018-12-28T11:43:00.6300000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644181, N'111.111.118-54', CAST(N'2018-12-28T11:43:08.5400000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644182, N'111.111.118-55', CAST(N'2018-12-28T11:43:30.1030000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644183, N'111.111.118-56', CAST(N'2018-12-28T11:43:45.4570000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644184, N'111.111.118-57', CAST(N'2018-12-28T11:43:52.3700000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'Fast Shop', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644185, N'111.111.118-58', CAST(N'2018-12-28T11:43:54.9400000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644186, N'111.111.118-59', CAST(N'2018-12-28T11:43:57.2600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644187, N'111.111.118-60', CAST(N'2018-12-28T11:43:58.4200000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'Visualizar Boleto', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644188, N'111.111.118-61', CAST(N'2018-12-28T11:43:58.7930000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644189, N'111.111.118-62', CAST(N'2018-12-28T11:43:59.2330000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644191, N'111.111.118-63', CAST(N'2018-12-28T11:44:06.2300000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644193, N'111.111.118-64', CAST(N'2018-12-28T11:44:24.4730000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'Download de Boleto', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644195, N'111.111.118-65', CAST(N'2018-12-28T11:44:30.8270000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'Visualizar Boleto', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644196, N'111.111.118-66', CAST(N'2018-12-28T11:44:31.2770000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644197, N'111.111.118-67', CAST(N'2018-12-28T11:44:37.6170000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644198, N'111.111.118-68', CAST(N'2018-12-28T11:44:42.3930000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644200, N'111.111.118-69', CAST(N'2018-12-28T11:44:46.3600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'Download de Boleto', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644201, N'111.111.118-70', CAST(N'2018-12-28T11:44:52.1800000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'Visualizar Boleto', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644202, N'111.111.118-71', CAST(N'2018-12-28T11:44:52.6400000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644205, N'111.111.118-72', CAST(N'2018-12-28T11:45:26.8170000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644207, N'111.111.118-73', CAST(N'2018-12-28T11:45:30.1730000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644208, N'111.111.118-74', CAST(N'2018-12-28T11:45:30.7000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644211, N'111.111.118-75', CAST(N'2018-12-28T11:45:36.8670000' AS DateTime2), 2, 2, N'f06f2c95-63ee-e811-80c2-005056955165', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644212, N'111.111.118-76', CAST(N'2018-12-28T11:45:37.1030000' AS DateTime2), 2, 2, N'f06f2c95-63ee-e811-80c2-005056955165', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644217, N'111.111.118-77', CAST(N'2018-12-28T11:45:56.7970000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'13', N'Visualiza??o da MEU_IMOVEL', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644220, N'111.111.118-78', CAST(N'2018-12-28T11:46:29.9670000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'Visualizar Boleto', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644221, N'111.111.118-79', CAST(N'2018-12-28T11:46:30.4170000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644222, N'111.111.118-80', CAST(N'2018-12-28T11:46:39.8070000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644223, N'111.111.118-81', CAST(N'2018-12-28T11:46:46.7630000' AS DateTime2), 2, 2, N'780de954-b16b-e711-9428-005056ace682', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644226, N'111.111.118-82', CAST(N'2018-12-28T11:47:05.1470000' AS DateTime2), 2, 2, N'780de954-b16b-e711-9428-005056ace682', N'15', N'Visualiza??o da VISTORIA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644227, N'111.111.118-83', CAST(N'2018-12-28T11:47:07.3330000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644228, N'111.111.118-84', CAST(N'2018-12-28T11:47:12.7000000' AS DateTime2), 4, 2, N'780de954-b16b-e711-9428-005056ace682', N'15', N'Exclus?o em VISTORIA', N'Reagendar o agendamento Vistoria', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644026, N'111.111.118-85', CAST(N'2018-12-28T11:20:57.7970000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644028, N'111.111.118-86', CAST(N'2018-12-28T11:21:05.3200000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644030, N'111.111.118-87', CAST(N'2018-12-28T11:21:15.6030000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644031, N'111.111.118-88', CAST(N'2018-12-28T11:21:16.4300000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644033, N'111.111.118-89', CAST(N'2018-12-28T11:21:19.9770000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644034, N'111.111.118-90', CAST(N'2018-12-28T11:21:22.0100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644035, N'111.111.118-91', CAST(N'2018-12-28T11:21:22.4000000' AS DateTime2), 2, 2, N'695c02aa-0ae2-e511-9401-001dd8200008', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644036, N'111.111.118-92', CAST(N'2018-12-28T11:21:22.4700000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644037, N'111.111.118-93', CAST(N'2018-12-28T11:21:27.3930000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644038, N'111.111.118-94', CAST(N'2018-12-28T11:21:32.7000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644039, N'111.111.118-95', CAST(N'2018-12-28T11:21:33.0700000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644040, N'111.111.118-96', CAST(N'2018-12-28T11:21:46.1170000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644041, N'111.111.118-97', CAST(N'2018-12-28T11:21:51.8000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644049, N'111.111.118-98', CAST(N'2018-12-28T11:22:19.3070000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644052, N'111.111.118-99', CAST(N'2018-12-28T11:22:35.7000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644054, N'111.111.119-01', CAST(N'2018-12-28T11:22:52.7370000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644055, N'111.111.119-02', CAST(N'2018-12-28T11:22:56.6730000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644056, N'111.111.119-03', CAST(N'2018-12-28T11:22:56.9530000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644059, N'111.111.119-04', CAST(N'2018-12-28T11:23:20.2830000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644066, N'111.111.119-05', CAST(N'2018-12-28T11:23:42.2330000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644070, N'111.111.119-06', CAST(N'2018-12-28T11:23:55.2830000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644073, N'111.111.119-07', CAST(N'2018-12-28T11:24:01.1330000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'Download de Boleto', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644076, N'111.111.119-08', CAST(N'2018-12-28T11:24:04.5630000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644077, N'111.111.119-09', CAST(N'2018-12-28T11:24:24.5700000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'7', N'Visualiza??o da DOCUMENTOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644078, N'111.111.119-10', CAST(N'2018-12-28T11:24:30.4570000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'15', N'Visualiza??o da VISTORIA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644079, N'111.111.119-11', CAST(N'2018-12-28T11:24:33.4730000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644080, N'111.111.119-12', CAST(N'2018-12-28T11:24:42.0370000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644081, N'111.111.119-13', CAST(N'2018-12-28T11:26:22.9730000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644082, N'111.111.119-14', CAST(N'2018-12-28T11:26:28.1070000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644083, N'111.111.119-15', CAST(N'2018-12-28T11:26:28.1900000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'Visualizar Boleto', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644084, N'111.111.119-16', CAST(N'2018-12-28T11:26:28.9700000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644085, N'111.111.119-17', CAST(N'2018-12-28T11:26:30.2300000' AS DateTime2), 2, 2, N'a2cadc92-2e68-e811-80c0-005056955165', N'19', N'Visualiza??o da ASSISTENCIA_TECNICA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644086, N'111.111.119-18', CAST(N'2018-12-28T11:26:33.6170000' AS DateTime2), 2, 2, N'983880a6-98b6-e811-80c3-00505695e94a', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644087, N'111.111.119-19', CAST(N'2018-12-28T11:26:33.6500000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'Download de Boleto', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644088, N'111.111.119-20', CAST(N'2018-12-28T11:26:35.8300000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644089, N'111.111.119-21', CAST(N'2018-12-28T11:26:49.8830000' AS DateTime2), 2, 2, N'695c02aa-0ae2-e511-9401-001dd8200008', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644090, N'111.111.119-22', CAST(N'2018-12-28T11:27:04.4300000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644091, N'111.111.119-23', CAST(N'2018-12-28T11:27:05.5600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644092, N'111.111.119-24', CAST(N'2018-12-28T11:27:09.1300000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'Download de Boleto', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644093, N'111.111.119-25', CAST(N'2018-12-28T11:27:12.6130000' AS DateTime2), 2, 2, N'695c02aa-0ae2-e511-9401-001dd8200008', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644094, N'111.111.119-26', CAST(N'2018-12-28T11:27:12.7930000' AS DateTime2), 2, 2, N'695c02aa-0ae2-e511-9401-001dd8200008', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644095, N'111.111.119-27', CAST(N'2018-12-28T11:27:18.1730000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644096, N'111.111.119-28', CAST(N'2018-12-28T11:27:25.8770000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644097, N'111.111.119-29', CAST(N'2018-12-28T11:27:44.7030000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644098, N'111.111.119-30', CAST(N'2018-12-28T11:28:03.7100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644099, N'111.111.119-31', CAST(N'2018-12-28T11:28:18.6100000' AS DateTime2), 2, 2, N'f06f2c95-63ee-e811-80c2-005056955165', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644100, N'111.111.119-32', CAST(N'2018-12-28T11:28:26.7800000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644101, N'111.111.119-33', CAST(N'2018-12-28T11:28:41.4200000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644102, N'111.111.119-34', CAST(N'2018-12-28T11:28:41.8870000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644103, N'111.111.119-35', CAST(N'2018-12-28T11:28:45.4300000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'15', N'Visualiza??o da VISTORIA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644104, N'111.111.119-36', CAST(N'2018-12-28T11:28:47.8900000' AS DateTime2), 2, 2, N'f06f2c95-63ee-e811-80c2-005056955165', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644105, N'111.111.119-37', CAST(N'2018-12-28T11:28:58.6830000' AS DateTime2), 2, 2, N'f06f2c95-63ee-e811-80c2-005056955165', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644106, N'111.111.119-38', CAST(N'2018-12-28T11:28:58.7570000' AS DateTime2), 2, 2, N'f06f2c95-63ee-e811-80c2-005056955165', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644107, N'111.111.119-39', CAST(N'2018-12-28T11:28:58.8000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644108, N'111.111.119-40', CAST(N'2018-12-28T11:29:36.0600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644109, N'111.111.119-41', CAST(N'2018-12-28T11:29:56.4530000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644110, N'111.111.119-42', CAST(N'2018-12-28T11:30:18.5000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644111, N'111.111.119-43', CAST(N'2018-12-28T11:30:20.6670000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'15', N'Visualiza??o da VISTORIA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644112, N'111.111.119-44', CAST(N'2018-12-28T11:30:21.6370000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'Fast Shop', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644113, N'111.111.119-45', CAST(N'2018-12-28T11:30:28.1400000' AS DateTime2), 2, 2, N'f06f2c95-63ee-e811-80c2-005056955165', N'16', N'Visualiza??o da FALE_CONOSCO', N'Visualiza??o de Fale Conosco', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644114, N'111.111.119-46', CAST(N'2018-12-28T11:30:28.6670000' AS DateTime2), 2, 2, N'f06f2c95-63ee-e811-80c2-005056955165', N'16', N'Visualiza??o da FALE_CONOSCO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644115, N'111.111.119-47', CAST(N'2018-12-28T11:30:29.0300000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644116, N'111.111.119-48', CAST(N'2018-12-28T11:30:29.0870000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644117, N'111.111.119-49', CAST(N'2018-12-28T11:30:33.2770000' AS DateTime2), 2, 2, N'f06f2c95-63ee-e811-80c2-005056955165', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644118, N'111.111.119-50', CAST(N'2018-12-28T11:30:35.4700000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644119, N'111.111.119-51', CAST(N'2018-12-28T11:30:38.5500000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644120, N'111.111.119-52', CAST(N'2018-12-28T11:30:40.7000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644121, N'111.111.119-53', CAST(N'2018-12-28T11:30:46.1100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644122, N'111.111.119-54', CAST(N'2018-12-28T11:30:46.3000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644123, N'111.111.119-55', CAST(N'2018-12-28T11:30:47.1900000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644124, N'111.111.119-56', CAST(N'2018-12-28T11:30:50.3930000' AS DateTime2), 2, 2, N'3af10f1d-7f7b-e711-9428-005056ace682', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644125, N'111.111.119-57', CAST(N'2018-12-28T11:31:11.3700000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644126, N'111.111.119-58', CAST(N'2018-12-28T11:31:18.3700000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644127, N'111.111.119-59', CAST(N'2018-12-28T11:31:24.6900000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644128, N'111.111.119-60', CAST(N'2018-12-28T11:31:32.5400000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'Visualizar Boleto', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644129, N'111.111.119-61', CAST(N'2018-12-28T11:31:47.0900000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644132, N'111.111.119-62', CAST(N'2018-12-28T11:32:14.0100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'Visualizar Boleto', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644133, N'111.111.119-63', CAST(N'2018-12-28T11:32:15.6730000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644135, N'111.111.119-64', CAST(N'2018-12-28T11:32:43.3100000' AS DateTime2), 2, 2, N'ab3fe1fc-c9e1-e811-80c5-00505695e94a', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644136, N'111.111.119-65', CAST(N'2018-12-28T11:32:51.5000000' AS DateTime2), 2, 2, N'ab3fe1fc-c9e1-e811-80c5-00505695e94a', N'15', N'Visualiza??o da VISTORIA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644140, N'111.111.119-66', CAST(N'2018-12-28T11:35:21.8870000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644141, N'111.111.119-67', CAST(N'2018-12-28T11:35:27.0670000' AS DateTime2), 2, 2, N'ab3fe1fc-c9e1-e811-80c5-00505695e94a', N'15', N'Visualiza??o da VISTORIA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644142, N'111.111.119-68', CAST(N'2018-12-28T11:35:47.0100000' AS DateTime2), 2, 2, N'ab3fe1fc-c9e1-e811-80c5-00505695e94a', N'15', N'Visualiza??o da VISTORIA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644143, N'111.111.119-69', CAST(N'2018-12-28T11:35:47.6070000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644144, N'111.111.119-70', CAST(N'2018-12-28T11:35:55.4830000' AS DateTime2), 2, 2, N'ab3fe1fc-c9e1-e811-80c5-00505695e94a', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644145, N'111.111.119-71', CAST(N'2018-12-28T11:36:06.4570000' AS DateTime2), 2, 2, N'ab3fe1fc-c9e1-e811-80c5-00505695e94a', N'15', N'Visualiza??o da VISTORIA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644146, N'111.111.119-72', CAST(N'2018-12-28T11:36:10.3800000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644147, N'111.111.119-73', CAST(N'2018-12-28T11:36:15.9030000' AS DateTime2), 2, 2, N'ab3fe1fc-c9e1-e811-80c5-00505695e94a', N'15', N'Visualiza??o da VISTORIA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644148, N'111.111.119-74', CAST(N'2018-12-28T11:36:26.9330000' AS DateTime2), 1, 2, N'ab3fe1fc-c9e1-e811-80c5-00505695e94a', N'15', N'Cria??o em VISTORIA', N'Confirmar Agendamento Vistoria', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644149, N'111.111.119-75', CAST(N'2018-12-28T11:36:30.5630000' AS DateTime2), 2, 2, N'ab3fe1fc-c9e1-e811-80c5-00505695e94a', N'15', N'Visualiza??o da VISTORIA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644150, N'111.111.119-76', CAST(N'2018-12-28T11:36:53.7870000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644154, N'111.111.119-77', CAST(N'2018-12-28T11:39:34.3230000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644155, N'111.111.119-78', CAST(N'2018-12-28T11:39:41.5200000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644156, N'111.111.119-79', CAST(N'2018-12-28T11:39:46.5300000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'15', N'Visualiza??o da VISTORIA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644157, N'111.111.119-80', CAST(N'2018-12-28T11:39:50.2470000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644158, N'111.111.119-81', CAST(N'2018-12-28T11:39:50.4100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644159, N'111.111.119-82', CAST(N'2018-12-28T11:40:00.8400000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644160, N'111.111.119-83', CAST(N'2018-12-28T11:40:02.8100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'7', N'Visualiza??o da DOCUMENTOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644161, N'111.111.119-84', CAST(N'2018-12-28T11:40:13.2470000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'15', N'Visualiza??o da VISTORIA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644162, N'111.111.119-85', CAST(N'2018-12-28T11:40:23.8030000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'15', N'Visualiza??o da VISTORIA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644163, N'111.111.119-86', CAST(N'2018-12-28T11:40:30.6570000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'15', N'Visualiza??o da VISTORIA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644164, N'111.111.119-87', CAST(N'2018-12-28T11:40:35.5970000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'7', N'Visualiza??o da DOCUMENTOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644165, N'111.111.119-88', CAST(N'2018-12-28T11:40:43.6330000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644166, N'111.111.119-89', CAST(N'2018-12-28T11:40:49.2530000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'13', N'Visualiza??o da MEU_IMOVEL', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644169, N'111.111.119-90', CAST(N'2018-12-28T11:41:48.5600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644173, N'111.111.119-91', CAST(N'2018-12-28T11:42:29.8530000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644229, N'111.111.119-92', CAST(N'2018-12-28T11:47:23.2370000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'Visualiza??o de Fale Conosco', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644230, N'111.111.119-93', CAST(N'2018-12-28T11:47:23.6900000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644232, N'111.111.119-94', CAST(N'2018-12-28T11:47:28.4170000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644233, N'111.111.119-95', CAST(N'2018-12-28T11:47:28.4700000' AS DateTime2), 2, 2, N'780de954-b16b-e711-9428-005056ace682', N'15', N'Visualiza??o da VISTORIA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644234, N'111.111.119-96', CAST(N'2018-12-28T11:47:28.7730000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644235, N'111.111.119-97', CAST(N'2018-12-28T11:47:32.0570000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644236, N'111.111.119-98', CAST(N'2018-12-28T11:47:33.3670000' AS DateTime2), 2, 2, N'983880a6-98b6-e811-80c3-00505695e94a', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644237, N'111.111.119-99', CAST(N'2018-12-28T11:47:36.0830000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644238, N'111.111.120-01', CAST(N'2018-12-28T11:47:44.1670000' AS DateTime2), 2, 2, N'983880a6-98b6-e811-80c3-00505695e94a', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644239, N'111.111.120-02', CAST(N'2018-12-28T11:49:02.5730000' AS DateTime2), 2, 2, N'780de954-b16b-e711-9428-005056ace682', N'15', N'Visualiza??o da VISTORIA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644240, N'111.111.120-03', CAST(N'2018-12-28T11:49:03.7470000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644241, N'111.111.120-04', CAST(N'2018-12-28T11:49:04.1500000' AS DateTime2), 2, 2, N'780de954-b16b-e711-9428-005056ace682', N'15', N'Visualiza??o da VISTORIA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644242, N'111.111.120-05', CAST(N'2018-12-28T11:49:08.2100000' AS DateTime2), 1, 2, N'780de954-b16b-e711-9428-005056ace682', N'15', N'Cria??o em VISTORIA', N'Confirmar Agendamento Vistoria', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644243, N'111.111.120-06', CAST(N'2018-12-28T11:49:11.1530000' AS DateTime2), 2, 2, N'780de954-b16b-e711-9428-005056ace682', N'15', N'Visualiza??o da VISTORIA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644244, N'111.111.120-07', CAST(N'2018-12-28T11:49:16.3100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644245, N'111.111.120-08', CAST(N'2018-12-28T11:49:16.6730000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644246, N'111.111.120-09', CAST(N'2018-12-28T11:50:16.1800000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644247, N'111.111.120-10', CAST(N'2018-12-28T11:50:26.0670000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644248, N'111.111.120-11', CAST(N'2018-12-28T11:50:28.3400000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644250, N'111.111.120-12', CAST(N'2018-12-28T11:50:30.1200000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'Visualizar Boleto', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644251, N'111.111.120-13', CAST(N'2018-12-28T11:50:30.5200000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644252, N'111.111.120-14', CAST(N'2018-12-28T11:50:46.9830000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644253, N'111.111.120-15', CAST(N'2018-12-28T11:51:09.0100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644254, N'111.111.120-16', CAST(N'2018-12-28T11:51:09.4200000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644256, N'111.111.120-17', CAST(N'2018-12-28T11:52:00.8770000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644257, N'111.111.120-18', CAST(N'2018-12-28T11:52:04.6870000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644258, N'111.111.120-19', CAST(N'2018-12-28T11:52:08.0370000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644259, N'111.111.120-20', CAST(N'2018-12-28T11:52:09.8170000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644260, N'111.111.120-21', CAST(N'2018-12-28T11:52:14.6000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'13', N'Visualiza??o da MEU_IMOVEL', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644261, N'111.111.120-22', CAST(N'2018-12-28T11:52:15.8970000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'Visualizar Boleto', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644262, N'111.111.120-23', CAST(N'2018-12-28T11:52:16.4100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644263, N'111.111.120-24', CAST(N'2018-12-28T11:52:25.1970000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'15', N'Visualiza??o da VISTORIA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644264, N'111.111.120-25', CAST(N'2018-12-28T11:52:32.2600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'7', N'Visualiza??o da DOCUMENTOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644268, N'111.111.120-26', CAST(N'2018-12-28T11:53:45.4270000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'Visualizar Boleto', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644269, N'111.111.120-27', CAST(N'2018-12-28T11:53:46.0730000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644272, N'111.111.120-28', CAST(N'2018-12-28T11:54:35.8600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644276, N'111.111.120-29', CAST(N'2018-12-28T11:55:01.6400000' AS DateTime2), 2, 2, N'72fad97d-9248-e811-80c0-005056955165', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644279, N'111.111.120-30', CAST(N'2018-12-28T11:55:30.0400000' AS DateTime2), 2, 2, N'72fad97d-9248-e811-80c0-005056955165', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644280, N'111.111.120-31', CAST(N'2018-12-28T11:55:32.4000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644130, N'111.111.120-32', CAST(N'2018-12-28T11:31:47.5070000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644131, N'111.111.120-33', CAST(N'2018-12-28T11:31:55.5700000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'7', N'Visualiza??o da DOCUMENTOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644134, N'111.111.120-34', CAST(N'2018-12-28T11:32:16.6670000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644137, N'111.111.120-35', CAST(N'2018-12-28T11:33:39.8830000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644138, N'111.111.120-36', CAST(N'2018-12-28T11:33:47.9200000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644139, N'111.111.120-37', CAST(N'2018-12-28T11:34:24.1970000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644167, N'111.111.120-38', CAST(N'2018-12-28T11:41:35.8930000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644168, N'111.111.120-39', CAST(N'2018-12-28T11:41:36.4130000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644170, N'111.111.120-40', CAST(N'2018-12-28T11:41:57.9070000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644171, N'111.111.120-41', CAST(N'2018-12-28T11:42:01.3870000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'15', N'Visualiza??o da VISTORIA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644172, N'111.111.120-42', CAST(N'2018-12-28T11:42:16.6500000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644180, N'111.111.120-43', CAST(N'2018-12-28T11:43:04.0900000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644190, N'111.111.120-44', CAST(N'2018-12-28T11:44:03.3400000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644192, N'111.111.120-45', CAST(N'2018-12-28T11:44:20.5870000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644194, N'111.111.120-46', CAST(N'2018-12-28T11:44:26.6870000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'13', N'Visualiza??o da MEU_IMOVEL', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644199, N'111.111.120-47', CAST(N'2018-12-28T11:44:43.5270000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'15', N'Visualiza??o da VISTORIA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644203, N'111.111.120-48', CAST(N'2018-12-28T11:44:59.1270000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644204, N'111.111.120-49', CAST(N'2018-12-28T11:45:22.0230000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644206, N'111.111.120-50', CAST(N'2018-12-28T11:45:28.5600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'Nespresso', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644209, N'111.111.120-51', CAST(N'2018-12-28T11:45:34.9030000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644210, N'111.111.120-52', CAST(N'2018-12-28T11:45:35.2770000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644213, N'111.111.120-53', CAST(N'2018-12-28T11:45:42.2400000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'Visualizar Boleto', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644214, N'111.111.120-54', CAST(N'2018-12-28T11:45:44.0400000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'Download de Boleto', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644215, N'111.111.120-55', CAST(N'2018-12-28T11:45:44.6030000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644216, N'111.111.120-56', CAST(N'2018-12-28T11:45:44.8530000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644218, N'111.111.120-57', CAST(N'2018-12-28T11:45:57.5830000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644219, N'111.111.120-58', CAST(N'2018-12-28T11:45:57.7330000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644224, N'111.111.120-59', CAST(N'2018-12-28T11:46:51.6230000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'15', N'Visualiza??o da VISTORIA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644225, N'111.111.120-60', CAST(N'2018-12-28T11:46:59.0230000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644231, N'111.111.120-61', CAST(N'2018-12-28T11:47:24.9170000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644249, N'111.111.120-62', CAST(N'2018-12-28T11:50:28.7830000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'15', N'Visualiza??o da VISTORIA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644255, N'111.111.120-63', CAST(N'2018-12-28T11:51:16.5500000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644265, N'111.111.120-64', CAST(N'2018-12-28T11:52:46.1170000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'15', N'Visualiza??o da VISTORIA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644266, N'111.111.120-65', CAST(N'2018-12-28T11:52:53.2500000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'15', N'Visualiza??o da VISTORIA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644267, N'111.111.120-66', CAST(N'2018-12-28T11:53:17.0170000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644270, N'111.111.120-67', CAST(N'2018-12-28T11:54:02.4970000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'Visualiza??o de Fale Conosco', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644271, N'111.111.120-68', CAST(N'2018-12-28T11:54:03.2670000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644273, N'111.111.120-69', CAST(N'2018-12-28T11:54:51.7300000' AS DateTime2), 1, 2, N'00000000-0000-0000-0000-000000000001', N'15', N'Cria??o em VISTORIA', N'Confirmar Agendamento Vistoria', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644274, N'111.111.120-70', CAST(N'2018-12-28T11:54:54.6400000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'15', N'Visualiza??o da VISTORIA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644275, N'111.111.120-71', CAST(N'2018-12-28T11:54:56.3370000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644277, N'111.111.120-72', CAST(N'2018-12-28T11:55:03.7070000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644278, N'111.111.120-73', CAST(N'2018-12-28T11:55:03.8800000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644286, N'111.111.120-74', CAST(N'2018-12-28T11:57:20.0100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644287, N'111.111.120-75', CAST(N'2018-12-28T11:57:25.9830000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644288, N'111.111.120-76', CAST(N'2018-12-28T11:57:32.8630000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644289, N'111.111.120-77', CAST(N'2018-12-28T11:57:33.5070000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644292, N'111.111.120-78', CAST(N'2018-12-28T11:58:40.6100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644293, N'111.111.120-79', CAST(N'2018-12-28T11:58:45.5170000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644296, N'111.111.120-80', CAST(N'2018-12-28T11:59:02.8300000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644297, N'111.111.120-81', CAST(N'2018-12-28T11:59:03.0700000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644301, N'111.111.120-82', CAST(N'2018-12-28T12:00:24.9100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644302, N'111.111.120-83', CAST(N'2018-12-28T12:00:46.8170000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'13', N'Visualiza??o da MEU_IMOVEL', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644303, N'111.111.120-84', CAST(N'2018-12-28T12:01:11.7470000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644307, N'111.111.120-85', CAST(N'2018-12-28T12:01:47.2900000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644308, N'111.111.120-86', CAST(N'2018-12-28T12:01:58.1370000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'Fast Shop', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644319, N'111.111.120-87', CAST(N'2018-12-28T12:05:19.4670000' AS DateTime2), 2, 2, N'9e4720cc-e4ea-e511-9409-005056200001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644320, N'111.111.120-88', CAST(N'2018-12-28T12:05:25.3130000' AS DateTime2), 1, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Cria??o em FALE_CONOSCO', N'Cria??o de Fale Conosco, CYR-2015278-R4V2', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644321, N'111.111.120-89', CAST(N'2018-12-28T12:05:25.6000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'Visualiza??o de Fale Conosco', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644322, N'111.111.120-90', CAST(N'2018-12-28T12:05:26.1330000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644326, N'111.111.120-91', CAST(N'2018-12-28T12:05:37.4000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644329, N'111.111.120-92', CAST(N'2018-12-28T12:05:45.5100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'Visualiza??o de Fale Conosco', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644330, N'111.111.120-93', CAST(N'2018-12-28T12:05:45.9930000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644331, N'111.111.120-94', CAST(N'2018-12-28T12:05:52.2370000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644334, N'111.111.120-95', CAST(N'2018-12-28T12:05:52.8570000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644335, N'111.111.120-96', CAST(N'2018-12-28T12:05:54.4800000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644337, N'111.111.120-97', CAST(N'2018-12-28T12:06:40.2130000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'19', N'Visualiza??o da ASSISTENCIA_TECNICA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644341, N'111.111.120-98', CAST(N'2018-12-28T12:07:05.0770000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'Visualiza??o de Fale Conosco', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644343, N'111.111.120-99', CAST(N'2018-12-28T12:07:06.5070000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644344, N'111.111.121-01', CAST(N'2018-12-28T12:07:12.9830000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644348, N'111.111.121-02', CAST(N'2018-12-28T12:07:32.8370000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'Fast Shop', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644350, N'111.111.121-03', CAST(N'2018-12-28T12:07:49.9130000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644281, N'111.111.121-04', CAST(N'2018-12-28T11:55:32.8870000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644290, N'111.111.121-05', CAST(N'2018-12-28T11:58:19.9700000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644291, N'111.111.121-06', CAST(N'2018-12-28T11:58:20.2770000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644294, N'111.111.121-07', CAST(N'2018-12-28T11:58:46.3270000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644295, N'111.111.121-08', CAST(N'2018-12-28T11:58:46.7700000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644298, N'111.111.121-09', CAST(N'2018-12-28T11:59:33.6830000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'Visualizar Boleto', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644299, N'111.111.121-10', CAST(N'2018-12-28T11:59:34.2370000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644300, N'111.111.121-11', CAST(N'2018-12-28T12:00:01.4130000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644304, N'111.111.121-12', CAST(N'2018-12-28T12:01:23.6500000' AS DateTime2), 2, 2, N'3af10f1d-7f7b-e711-9428-005056ace682', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644305, N'111.111.121-13', CAST(N'2018-12-28T12:01:28.1100000' AS DateTime2), 2, 2, N'3af10f1d-7f7b-e711-9428-005056ace682', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644306, N'111.111.121-14', CAST(N'2018-12-28T12:01:28.4200000' AS DateTime2), 2, 2, N'3af10f1d-7f7b-e711-9428-005056ace682', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644309, N'111.111.121-15', CAST(N'2018-12-28T12:02:10.3600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644310, N'111.111.121-16', CAST(N'2018-12-28T12:02:23.1700000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'7', N'Visualiza??o da DOCUMENTOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644311, N'111.111.121-17', CAST(N'2018-12-28T12:03:25.1530000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644312, N'111.111.121-18', CAST(N'2018-12-28T12:04:35.4070000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644313, N'111.111.121-19', CAST(N'2018-12-28T12:04:35.7800000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644314, N'111.111.121-20', CAST(N'2018-12-28T12:04:40.9830000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644315, N'111.111.121-21', CAST(N'2018-12-28T12:04:45.1870000' AS DateTime2), 2, 2, N'3af10f1d-7f7b-e711-9428-005056ace682', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644316, N'111.111.121-22', CAST(N'2018-12-28T12:04:54.1200000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'15', N'Visualiza??o da VISTORIA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644317, N'111.111.121-23', CAST(N'2018-12-28T12:05:05.6800000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644318, N'111.111.121-24', CAST(N'2018-12-28T12:05:05.9770000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644323, N'111.111.121-25', CAST(N'2018-12-28T12:05:31.4700000' AS DateTime2), 2, 2, N'5084c95f-216e-e711-9422-005056ac7ea7', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644324, N'111.111.121-26', CAST(N'2018-12-28T12:05:33.4800000' AS DateTime2), 2, 2, N'3af10f1d-7f7b-e711-9428-005056ace682', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644325, N'111.111.121-27', CAST(N'2018-12-28T12:05:33.8470000' AS DateTime2), 2, 2, N'3af10f1d-7f7b-e711-9428-005056ace682', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644327, N'111.111.121-28', CAST(N'2018-12-28T12:05:40.5400000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644328, N'111.111.121-29', CAST(N'2018-12-28T12:05:45.4270000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644332, N'111.111.121-30', CAST(N'2018-12-28T12:05:52.2470000' AS DateTime2), 2, 2, N'5084c95f-216e-e711-9422-005056ac7ea7', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644333, N'111.111.121-31', CAST(N'2018-12-28T12:05:52.6170000' AS DateTime2), 2, 2, N'5084c95f-216e-e711-9422-005056ac7ea7', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644336, N'111.111.121-32', CAST(N'2018-12-28T12:06:38.5030000' AS DateTime2), 2, 2, N'5084c95f-216e-e711-9422-005056ac7ea7', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644338, N'111.111.121-33', CAST(N'2018-12-28T12:06:42.7370000' AS DateTime2), 2, 2, N'5084c95f-216e-e711-9422-005056ac7ea7', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644339, N'111.111.121-34', CAST(N'2018-12-28T12:06:45.7600000' AS DateTime2), 2, 2, N'5084c95f-216e-e711-9422-005056ac7ea7', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'Download de Boleto', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644340, N'111.111.121-35', CAST(N'2018-12-28T12:06:48.3070000' AS DateTime2), 2, 2, N'5084c95f-216e-e711-9422-005056ac7ea7', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'Download de Boleto', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644342, N'111.111.121-36', CAST(N'2018-12-28T12:07:06.0000000' AS DateTime2), 2, 2, N'5084c95f-216e-e711-9422-005056ac7ea7', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644345, N'111.111.121-37', CAST(N'2018-12-28T12:07:21.4730000' AS DateTime2), 2, 2, N'983880a6-98b6-e811-80c3-00505695e94a', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644346, N'111.111.121-38', CAST(N'2018-12-28T12:07:26.5670000' AS DateTime2), 2, 2, N'983880a6-98b6-e811-80c3-00505695e94a', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644347, N'111.111.121-39', CAST(N'2018-12-28T12:07:26.7970000' AS DateTime2), 2, 2, N'983880a6-98b6-e811-80c3-00505695e94a', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644349, N'111.111.121-40', CAST(N'2018-12-28T12:07:39.8430000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644351, N'111.111.121-41', CAST(N'2018-12-28T12:07:50.3470000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644352, N'111.111.121-42', CAST(N'2018-12-28T12:07:55.8930000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644353, N'111.111.121-43', CAST(N'2018-12-28T12:07:56.5200000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644354, N'111.111.121-44', CAST(N'2018-12-28T12:07:58.3430000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'Home to Go', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644355, N'111.111.121-45', CAST(N'2018-12-28T12:08:08.9930000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644356, N'111.111.121-46', CAST(N'2018-12-28T12:08:27.2770000' AS DateTime2), 2, 2, N'72fad97d-9248-e811-80c0-005056955165', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644357, N'111.111.121-47', CAST(N'2018-12-28T12:08:29.7930000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644358, N'111.111.121-48', CAST(N'2018-12-28T12:08:31.3170000' AS DateTime2), 2, 2, N'72fad97d-9248-e811-80c0-005056955165', N'7', N'Visualiza??o da DOCUMENTOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644359, N'111.111.121-49', CAST(N'2018-12-28T12:08:34.0530000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644360, N'111.111.121-50', CAST(N'2018-12-28T12:08:34.8600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'19', N'Visualiza??o da ASSISTENCIA_TECNICA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644361, N'111.111.121-51', CAST(N'2018-12-28T12:08:43.9630000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644362, N'111.111.121-52', CAST(N'2018-12-28T12:08:48.7300000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'7', N'Visualiza??o da DOCUMENTOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644363, N'111.111.121-53', CAST(N'2018-12-28T12:08:55.7070000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644364, N'111.111.121-54', CAST(N'2018-12-28T12:09:02.6000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644365, N'111.111.121-55', CAST(N'2018-12-28T12:09:25.0130000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'13', N'Visualiza??o da MEU_IMOVEL', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644366, N'111.111.121-56', CAST(N'2018-12-28T12:09:30.3530000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'15', N'Visualiza??o da VISTORIA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644367, N'111.111.121-57', CAST(N'2018-12-28T12:09:41.8930000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'13', N'Visualiza??o da MEU_IMOVEL', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644368, N'111.111.121-58', CAST(N'2018-12-28T12:09:59.5730000' AS DateTime2), 1, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Cria??o em FALE_CONOSCO', N'Cria??o de Fale Conosco, CYR-2015284-Z7R9', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644369, N'111.111.121-59', CAST(N'2018-12-28T12:09:59.8370000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'Visualiza??o de Fale Conosco', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644370, N'111.111.121-60', CAST(N'2018-12-28T12:10:01.4570000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644371, N'111.111.121-61', CAST(N'2018-12-28T12:10:46.3600000' AS DateTime2), 1, 2, N'5084c95f-216e-e711-9422-005056ac7ea7', N'9', N'Cria??o em FINANCEIRO_MEUS_BOLETOS', N'Gerar Boleto Juros e Multa', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644372, N'111.111.121-62', CAST(N'2018-12-28T12:10:55.9870000' AS DateTime2), 2, 2, N'5084c95f-216e-e711-9422-005056ac7ea7', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644373, N'111.111.121-63', CAST(N'2018-12-28T12:11:08.9800000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644374, N'111.111.121-64', CAST(N'2018-12-28T12:11:17.9430000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'Meu M?vel de Madeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644375, N'111.111.121-65', CAST(N'2018-12-28T12:11:35.6400000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'Visualiza??o de Fale Conosco', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644376, N'111.111.121-66', CAST(N'2018-12-28T12:11:36.7870000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644377, N'111.111.121-67', CAST(N'2018-12-28T12:11:39.4730000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644378, N'111.111.121-68', CAST(N'2018-12-28T12:11:48.8200000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'Home to Go', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644379, N'111.111.121-69', CAST(N'2018-12-28T12:12:11.7270000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'6', N'Visualiza??o da BENEFICIOS_VOCE', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644380, N'111.111.121-70', CAST(N'2018-12-28T12:12:28.0900000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'Visualiza??o de Fale Conosco', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644381, N'111.111.121-71', CAST(N'2018-12-28T12:12:28.6430000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'16', N'Visualiza??o da FALE_CONOSCO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644282, N'111.111.121-72', CAST(N'2018-12-28T11:55:32.8970000' AS DateTime2), 2, 2, N'72fad97d-9248-e811-80c0-005056955165', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'Download de Boleto', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644283, N'111.111.121-73', CAST(N'2018-12-28T11:56:30.7770000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644284, N'111.111.121-74', CAST(N'2018-12-28T11:56:50.7530000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'7', N'Visualiza??o da DOCUMENTOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644285, N'111.111.121-75', CAST(N'2018-12-28T11:57:00.9770000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644383, N'111.111.121-76', CAST(N'2018-12-28T12:12:54.6500000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'7', N'Visualiza??o da DOCUMENTOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644384, N'111.111.121-77', CAST(N'2018-12-28T12:13:00.1200000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644385, N'111.111.121-78', CAST(N'2018-12-28T12:13:15.1470000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644390, N'111.111.121-79', CAST(N'2018-12-28T12:15:00.8800000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644393, N'111.111.121-80', CAST(N'2018-12-28T12:15:07.7200000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644394, N'111.111.121-81', CAST(N'2018-12-28T12:15:08.4870000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644402, N'111.111.121-82', CAST(N'2018-12-28T12:16:16.2830000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644403, N'111.111.121-83', CAST(N'2018-12-28T12:16:22.1400000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644404, N'111.111.121-84', CAST(N'2018-12-28T12:16:27.6370000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'Visualizar Boleto', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644405, N'111.111.121-85', CAST(N'2018-12-28T12:16:28.7200000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644407, N'111.111.121-86', CAST(N'2018-12-28T12:19:05.2400000' AS DateTime2), 2, 2, N'983880a6-98b6-e811-80c3-00505695e94a', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644408, N'111.111.121-87', CAST(N'2018-12-28T12:19:09.4430000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644409, N'111.111.121-88', CAST(N'2018-12-28T12:19:10.3430000' AS DateTime2), 2, 2, N'983880a6-98b6-e811-80c3-00505695e94a', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644410, N'111.111.121-89', CAST(N'2018-12-28T12:19:10.7270000' AS DateTime2), 2, 2, N'983880a6-98b6-e811-80c3-00505695e94a', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644412, N'111.111.121-90', CAST(N'2018-12-28T12:19:14.4300000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644414, N'111.111.121-91', CAST(N'2018-12-28T12:19:31.3600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'19', N'Visualiza??o da ASSISTENCIA_TECNICA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644416, N'111.111.121-92', CAST(N'2018-12-28T12:19:37.1070000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644417, N'111.111.121-93', CAST(N'2018-12-28T12:22:50.5300000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644418, N'111.111.121-94', CAST(N'2018-12-28T12:22:55.6130000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644419, N'111.111.121-95', CAST(N'2018-12-28T12:22:55.9170000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644421, N'111.111.121-96', CAST(N'2018-12-28T12:23:58.7130000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644422, N'111.111.121-97', CAST(N'2018-12-28T12:24:03.8730000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644424, N'111.111.121-98', CAST(N'2018-12-28T12:24:15.4870000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'Visualizar Boleto', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644425, N'111.111.121-99', CAST(N'2018-12-28T12:24:16.0000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644544, N'111.111.122-01', CAST(N'2018-12-28T13:13:52.2730000' AS DateTime2), 2, 2, N'3af10f1d-7f7b-e711-9428-005056ace682', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644545, N'111.111.122-02', CAST(N'2018-12-28T13:14:01.5630000' AS DateTime2), 2, 2, N'3af10f1d-7f7b-e711-9428-005056ace682', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644546, N'111.111.122-03', CAST(N'2018-12-28T13:14:09.0100000' AS DateTime2), 2, 2, N'3af10f1d-7f7b-e711-9428-005056ace682', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644548, N'111.111.122-04', CAST(N'2018-12-28T13:16:07.2230000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644549, N'111.111.122-05', CAST(N'2018-12-28T13:16:19.3230000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644550, N'111.111.122-06', CAST(N'2018-12-28T13:16:24.0100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644551, N'111.111.122-07', CAST(N'2018-12-28T13:16:24.3600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644553, N'111.111.122-08', CAST(N'2018-12-28T13:17:29.3430000' AS DateTime2), 2, 2, N'ab3fe1fc-c9e1-e811-80c5-00505695e94a', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644555, N'111.111.122-09', CAST(N'2018-12-28T13:17:42.1670000' AS DateTime2), 2, 2, N'ab3fe1fc-c9e1-e811-80c5-00505695e94a', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644556, N'111.111.122-10', CAST(N'2018-12-28T13:17:42.5570000' AS DateTime2), 2, 2, N'ab3fe1fc-c9e1-e811-80c5-00505695e94a', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644559, N'111.111.122-11', CAST(N'2018-12-28T13:17:57.7400000' AS DateTime2), 1, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Cria??o em FINANCEIRO_ANTECIPACAO', N'GERADO ANTECIPA??O', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644562, N'111.111.122-12', CAST(N'2018-12-28T13:18:05.5200000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644563, N'111.111.122-13', CAST(N'2018-12-28T13:18:05.9070000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644568, N'111.111.122-14', CAST(N'2018-12-28T13:18:18.4030000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644570, N'111.111.122-15', CAST(N'2018-12-28T13:18:37.6000000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Visualiza??o da FINANCEIRO_ANTECIPACAO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644572, N'111.111.122-16', CAST(N'2018-12-28T13:18:40.1200000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644574, N'111.111.122-17', CAST(N'2018-12-28T13:19:02.8500000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644577, N'111.111.122-18', CAST(N'2018-12-28T13:19:10.9600000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644578, N'111.111.122-19', CAST(N'2018-12-28T13:19:11.1830000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644581, N'111.111.122-20', CAST(N'2018-12-28T13:19:30.2100000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644585, N'111.111.122-21', CAST(N'2018-12-28T13:19:59.0300000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'5', N'Visualiza??o da ANDAMENTO_OBRA', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644586, N'111.111.122-22', CAST(N'2018-12-28T13:20:23.2430000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644587, N'111.111.122-23', CAST(N'2018-12-28T13:20:23.6570000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644590, N'111.111.122-24', CAST(N'2018-12-28T13:21:08.4200000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'9', N'Visualiza??o da FINANCEIRO_MEUS_BOLETOS', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644594, N'111.111.122-25', CAST(N'2018-12-28T13:21:21.4400000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644597, N'111.111.122-26', CAST(N'2018-12-28T13:22:19.2670000' AS DateTime2), 2, 2, N'f06f2c95-63ee-e811-80c2-005056955165', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644598, N'111.111.122-27', CAST(N'2018-12-28T13:22:44.9870000' AS DateTime2), 2, 2, N'00000000-0000-0000-0000-000000000001', N'1', N'Visualiza??o da HOME', N'', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644599, N'111.111.122-28', CAST(N'2018-12-28T13:22:51.4400000' AS DateTime2), 1, 2, N'00000000-0000-0000-0000-000000000001', N'11', N'Cria??o em FINANCEIRO_ANTECIPACAO', N'GERADO ANTECIPA??O', NULL)
GO
INSERT [dbo].[log_navegacao] ([Id], [DocumentoCliente], [DataEvento], [TipoEvento], [TipoAcesso], [IdAtendente], [Pagina], [Atividade], [LogErro], [Origem]) VALUES (644600, N'111.111.122-29', CAST(N'2018-12-28T13:22:54.8370000' AS DateTime2), 2, 2, N'f06f2c95-63ee-e811-80c2-005056955165', N'8', N'Visualiza??o da FINANCEIRO_EXTRATO_FINANCEIRO', N'Posi??o Financeira', NULL)
GO
SET IDENTITY_INSERT [dbo].[log_navegacao] OFF
GO
ALTER TABLE [dbo].[ControleSessao] ADD  DEFAULT (getdate()) FOR [DataAcesso]
GO
USE [master]
GO
ALTER DATABASE [PortalCliente] SET  READ_WRITE 
GO
