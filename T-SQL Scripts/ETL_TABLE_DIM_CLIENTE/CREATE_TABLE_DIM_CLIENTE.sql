USE [ChallengeFiapCyrela]
GO

/****** Object:  Table [dbo].[Stage3_Cliente]    Script Date: 23/06/2021 19:29:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dimensao_Cliente](
	[Sk] [int] IDENTITY(1,1) NOT NULL,
	[Id] [int] NOT NULL,
	[Obra] [char](4) NOT NULL,
	[Bloco] [char](2) NOT NULL,
	[Unidade] [char](6) NOT NULL,
	[Nome] [varchar](150) NOT NULL,
	[Documento] [varchar](20) NOT NULL,
	[Participacao] [decimal](5, 2) NOT NULL,
	[Ativo] [bit] NULL,
 CONSTRAINT [SK_Dimensao_Cliente] PRIMARY KEY CLUSTERED 
(
	[Sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


