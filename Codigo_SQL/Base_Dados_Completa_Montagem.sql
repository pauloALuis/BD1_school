USE [master]
GO
/****** Object:  Database [EmpresaMontagemCarros]    Script Date: 23/06/2019 15:03:23 ******/
CREATE DATABASE [EmpresaMontagemCarros]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EmpresaMontagemCarros', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\EmpresaMontagemCarros.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EmpresaMontagemCarros_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\EmpresaMontagemCarros_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [EmpresaMontagemCarros] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EmpresaMontagemCarros].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EmpresaMontagemCarros] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EmpresaMontagemCarros] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EmpresaMontagemCarros] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EmpresaMontagemCarros] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EmpresaMontagemCarros] SET ARITHABORT OFF 
GO
ALTER DATABASE [EmpresaMontagemCarros] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EmpresaMontagemCarros] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EmpresaMontagemCarros] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EmpresaMontagemCarros] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EmpresaMontagemCarros] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EmpresaMontagemCarros] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EmpresaMontagemCarros] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EmpresaMontagemCarros] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EmpresaMontagemCarros] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EmpresaMontagemCarros] SET  ENABLE_BROKER 
GO
ALTER DATABASE [EmpresaMontagemCarros] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EmpresaMontagemCarros] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EmpresaMontagemCarros] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EmpresaMontagemCarros] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EmpresaMontagemCarros] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EmpresaMontagemCarros] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EmpresaMontagemCarros] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EmpresaMontagemCarros] SET RECOVERY FULL 
GO
ALTER DATABASE [EmpresaMontagemCarros] SET  MULTI_USER 
GO
ALTER DATABASE [EmpresaMontagemCarros] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EmpresaMontagemCarros] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EmpresaMontagemCarros] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EmpresaMontagemCarros] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EmpresaMontagemCarros] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EmpresaMontagemCarros] SET QUERY_STORE = OFF
GO
USE [EmpresaMontagemCarros]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [EmpresaMontagemCarros]
GO
/****** Object:  Table [dbo].[acessorios]    Script Date: 23/06/2019 15:03:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[acessorios](
	[id_acessorio] [int] IDENTITY(1,1) NOT NULL,
	[nome_acessorio] [varchar](255) NULL,
	[carateristica] [varchar](500) NULL,
	[material_fabrico] [varchar](100) NULL,
	[cor] [varchar](100) NULL,
	[condicoes_conservacao] [varchar](550) NULL,
	[altura] [nvarchar](80) NULL,
	[largura] [nvarchar](80) NULL,
	[Universal] [bit] NULL,
	[Carga_maxima] [nvarchar](80) NULL,
	[Peso_acessorio] [nvarchar](80) NULL,
	[ajustavel] [nvarchar](80) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_acessorio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[acessorios_carros]    Script Date: 23/06/2019 15:03:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[acessorios_carros](
	[id_acessorio_carro] [int] IDENTITY(1,1) NOT NULL,
	[id_carro] [int] NULL,
	[id_acessorio] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_acessorio_carro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carro]    Script Date: 23/06/2019 15:03:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carro](
	[id_carro] [int] IDENTITY(1,1) NOT NULL,
	[data_montagem] [varchar](80) NULL,
	[data_criacao] [varchar](80) NULL,
	[qnt_cilindros] [int] NULL,
	[dimensao_cilindros] [int] NULL,
	[data_fabrico] [date] NULL,
	[id_modelo] [int] NULL,
	[cor_carro] [nvarchar](90) NULL,
	[num_portas] [nvarchar](50) NULL,
	[num_retrovissor] [int] NULL,
	[tipo_carro] [nvarchar](100) NULL,
	[tipo_direcao] [nvarchar](100) NULL,
	[volante] [nvarchar](100) NULL,
	[id_chassis] [smallint] NULL,
	[cod_combustivel] [smallint] NULL,
	[id_pneu] [int] NULL,
	[id_motor] [int] NULL,
	[capacidade_deposito] [nvarchar](10) NULL,
	[num_KM_percorrido] [nvarchar](10) NULL,
	[velocidade_max] [nvarchar](10) NULL,
	[preco] [decimal](18, 2) NULL,
 CONSTRAINT [PK__Carro__D3C318A1C4739811] PRIMARY KEY CLUSTERED 
(
	[id_carro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chassi]    Script Date: 23/06/2019 15:03:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chassi](
	[id_chassis] [smallint] NOT NULL,
	[nome_chassis] [varchar](255) NULL,
	[referencia_chassi] [varchar](255) NULL,
	[data_criacao_chassis] [date] NULL,
	[dimensao_chassi] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_chassis] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cilindro]    Script Date: 23/06/2019 15:03:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cilindro](
	[id_cilindro] [int] IDENTITY(1,1) NOT NULL,
	[nome_cilindro] [varchar](80) NOT NULL,
	[qnt_cilindros] [int] NULL,
	[dimensao_cilindros] [int] NULL,
	[data_fabrico] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cilindro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[combustivel]    Script Date: 23/06/2019 15:03:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[combustivel](
	[cod_combustivel] [smallint] NOT NULL,
	[tipo_combustivel] [varchar](255) NULL,
	[indice_octano] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_combustivel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comp_seg_carros]    Script Date: 23/06/2019 15:03:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comp_seg_carros](
	[id_comp_seg_carros] [int] IDENTITY(1,1) NOT NULL,
	[id_comp_seg] [smallint] NULL,
	[id_carro] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_comp_seg_carros] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[componente_seguranca]    Script Date: 23/06/2019 15:03:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[componente_seguranca](
	[id_comp_seg] [smallint] NOT NULL,
	[nome_comp_seg] [varchar](255) NULL,
	[qtd_componente] [smallint] NULL,
	[carateristica] [varchar](500) NULL,
	[material] [varchar](100) NULL,
	[cor] [varchar](100) NULL,
	[condicoes_conservacao] [varchar](550) NULL,
	[tamanho] [nvarchar](80) NULL,
	[espessura] [varchar](255) NULL,
	[Universal] [bit] NULL,
	[id_fabricante] [int] NULL,
 CONSTRAINT [PK__componen__1A323906EF68CC04] PRIMARY KEY CLUSTERED 
(
	[id_comp_seg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fabricante]    Script Date: 23/06/2019 15:03:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fabricante](
	[id_fabricante] [int] IDENTITY(1,1) NOT NULL,
	[nome_fabricante] [nvarchar](200) NULL,
	[endereco] [nvarchar](100) NULL,
	[Pais] [varchar](100) NULL,
	[capital] [varchar](100) NULL,
 CONSTRAINT [PK__fabrican__01CEE911B7B0D98C] PRIMARY KEY CLUSTERED 
(
	[id_fabricante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Injector]    Script Date: 23/06/2019 15:03:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Injector](
	[id_injector] [int] IDENTITY(1,1) NOT NULL,
	[marca] [varchar](80) NOT NULL,
	[tipo_injetor] [varchar](100) NOT NULL,
	[qntAtuadores] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_injector] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marca]    Script Date: 23/06/2019 15:03:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marca](
	[id_marca] [int] IDENTITY(1,1) NOT NULL,
	[nome_marca] [varchar](80) NOT NULL,
	[data_criacao] [date] NULL,
	[nome_pais] [varchar](90) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_marca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modelo]    Script Date: 23/06/2019 15:03:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modelo](
	[id_modelo] [int] IDENTITY(1,1) NOT NULL,
	[nome_modelo] [varchar](80) NOT NULL,
	[potencia] [varchar](50) NULL,
	[Consumo] [nchar](10) NULL,
	[id_marca] [int] NULL,
 CONSTRAINT [PK_Modelo] PRIMARY KEY CLUSTERED 
(
	[id_modelo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[motor]    Script Date: 23/06/2019 15:03:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[motor](
	[id_motor] [int] IDENTITY(1,1) NOT NULL,
	[nome_motor] [varchar](80) NOT NULL,
	[tipo_correntes] [varchar](140) NULL,
	[tipo_bombas] [varchar](140) NULL,
	[tipo_correia] [varchar](140) NULL,
	[tipo_suporte] [varchar](140) NULL,
	[outros_componentes] [varchar](580) NULL,
	[cod_tipo_motor] [int] NULL,
	[id_injector] [int] NULL,
	[id_cilindro] [int] NULL,
	[id_valvula] [smallint] NULL,
	[id_marca] [int] NULL,
	[potencia_motor] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_motor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Peca]    Script Date: 23/06/2019 15:03:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Peca](
	[id_peca] [int] IDENTITY(1,1) NOT NULL,
	[nome_peca] [varchar](80) NOT NULL,
	[carateristicas_peca] [varchar](100) NULL,
	[dimensao_peca] [varchar](40) NULL,
	[id_modelo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_peca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Peca_Carro]    Script Date: 23/06/2019 15:03:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Peca_Carro](
	[id_peca_carro] [int] IDENTITY(1,1) NOT NULL,
	[id_carro] [int] NULL,
	[id_peca] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pneus]    Script Date: 23/06/2019 15:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pneus](
	[id_pneu] [int] IDENTITY(1,1) NOT NULL,
	[Temporada] [nvarchar](200) NULL,
	[Largura_pneu] [int] NULL,
	[altura_pneu] [int] NULL,
	[diametro_pneu] [int] NULL,
	[id_fabricante] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_pneu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubModelo]    Script Date: 23/06/2019 15:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubModelo](
	[id_submodelo] [varchar](50) NOT NULL,
	[nome_submodelo] [varchar](80) NOT NULL,
	[dt_criacao_submodelo] [smalldatetime] NOT NULL,
	[num_eixo] [nchar](10) NULL,
	[id_modelo] [int] NULL,
 CONSTRAINT [PK__SubModel__284864A5B9760443] PRIMARY KEY CLUSTERED 
(
	[id_submodelo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_motor]    Script Date: 23/06/2019 15:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_motor](
	[cod_tipo_motor] [int] IDENTITY(1,1) NOT NULL,
	[nome_tipo_motor] [varchar](80) NOT NULL,
	[carateristicas_tipo_motor] [varchar](100) NOT NULL,
	[dimensao] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_tipo_motor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[valvula]    Script Date: 23/06/2019 15:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[valvula](
	[id_valvula] [smallint] NOT NULL,
	[diametro] [varchar](255) NULL,
	[num_furos] [smallint] NULL,
	[data_fabrico] [date] NULL,
	[designacao] [nvarchar](100) NULL,
 CONSTRAINT [PK__valvula__FFE4EF3DDC54E79E] PRIMARY KEY CLUSTERED 
(
	[id_valvula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_Modelo]    Script Date: 23/06/2019 15:03:26 ******/
CREATE NONCLUSTERED INDEX [IX_Modelo] ON [dbo].[Modelo]
(
	[id_modelo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[acessorios_carros]  WITH CHECK ADD FOREIGN KEY([id_acessorio])
REFERENCES [dbo].[acessorios] ([id_acessorio])
GO
ALTER TABLE [dbo].[acessorios_carros]  WITH CHECK ADD  CONSTRAINT [FK__acessorio__id_ca__32AB8735] FOREIGN KEY([id_carro])
REFERENCES [dbo].[Carro] ([id_carro])
GO
ALTER TABLE [dbo].[acessorios_carros] CHECK CONSTRAINT [FK__acessorio__id_ca__32AB8735]
GO
ALTER TABLE [dbo].[Carro]  WITH CHECK ADD  CONSTRAINT [FK__Carro__cod_combu__65370702] FOREIGN KEY([cod_combustivel])
REFERENCES [dbo].[combustivel] ([cod_combustivel])
GO
ALTER TABLE [dbo].[Carro] CHECK CONSTRAINT [FK__Carro__cod_combu__65370702]
GO
ALTER TABLE [dbo].[Carro]  WITH CHECK ADD  CONSTRAINT [FK__Carro__id_chassi__6442E2C9] FOREIGN KEY([id_chassis])
REFERENCES [dbo].[chassi] ([id_chassis])
GO
ALTER TABLE [dbo].[Carro] CHECK CONSTRAINT [FK__Carro__id_chassi__6442E2C9]
GO
ALTER TABLE [dbo].[Carro]  WITH CHECK ADD  CONSTRAINT [FK__Carro__id_pneu__681373AD] FOREIGN KEY([id_pneu])
REFERENCES [dbo].[Pneus] ([id_pneu])
GO
ALTER TABLE [dbo].[Carro] CHECK CONSTRAINT [FK__Carro__id_pneu__681373AD]
GO
ALTER TABLE [dbo].[comp_seg_carros]  WITH CHECK ADD  CONSTRAINT [FK__comp_seg___id_ca__6DCC4D03] FOREIGN KEY([id_carro])
REFERENCES [dbo].[Carro] ([id_carro])
GO
ALTER TABLE [dbo].[comp_seg_carros] CHECK CONSTRAINT [FK__comp_seg___id_ca__6DCC4D03]
GO
ALTER TABLE [dbo].[comp_seg_carros]  WITH CHECK ADD FOREIGN KEY([id_comp_seg])
REFERENCES [dbo].[componente_seguranca] ([id_comp_seg])
GO
ALTER TABLE [dbo].[Modelo]  WITH CHECK ADD  CONSTRAINT [FK__Modelo__id_marca__571DF1D5] FOREIGN KEY([id_marca])
REFERENCES [dbo].[Marca] ([id_marca])
GO
ALTER TABLE [dbo].[Modelo] CHECK CONSTRAINT [FK__Modelo__id_marca__571DF1D5]
GO
ALTER TABLE [dbo].[motor]  WITH CHECK ADD FOREIGN KEY([cod_tipo_motor])
REFERENCES [dbo].[Tipo_motor] ([cod_tipo_motor])
GO
ALTER TABLE [dbo].[motor]  WITH CHECK ADD FOREIGN KEY([id_cilindro])
REFERENCES [dbo].[Cilindro] ([id_cilindro])
GO
ALTER TABLE [dbo].[motor]  WITH CHECK ADD FOREIGN KEY([id_injector])
REFERENCES [dbo].[Injector] ([id_injector])
GO
ALTER TABLE [dbo].[motor]  WITH CHECK ADD FOREIGN KEY([id_marca])
REFERENCES [dbo].[Marca] ([id_marca])
GO
ALTER TABLE [dbo].[motor]  WITH CHECK ADD FOREIGN KEY([id_valvula])
REFERENCES [dbo].[valvula] ([id_valvula])
GO
ALTER TABLE [dbo].[Peca_Carro]  WITH CHECK ADD  CONSTRAINT [FK__Peca_Carr__id_ca__3F466844] FOREIGN KEY([id_carro])
REFERENCES [dbo].[Carro] ([id_carro])
GO
ALTER TABLE [dbo].[Peca_Carro] CHECK CONSTRAINT [FK__Peca_Carr__id_ca__3F466844]
GO
ALTER TABLE [dbo].[Peca_Carro]  WITH CHECK ADD FOREIGN KEY([id_peca])
REFERENCES [dbo].[Peca] ([id_peca])
GO
ALTER TABLE [dbo].[Pneus]  WITH CHECK ADD  CONSTRAINT [FK__Pneus__id_fabric__151B244E] FOREIGN KEY([id_fabricante])
REFERENCES [dbo].[fabricante] ([id_fabricante])
GO
ALTER TABLE [dbo].[Pneus] CHECK CONSTRAINT [FK__Pneus__id_fabric__151B244E]
GO
USE [master]
GO
ALTER DATABASE [EmpresaMontagemCarros] SET  READ_WRITE 
GO
