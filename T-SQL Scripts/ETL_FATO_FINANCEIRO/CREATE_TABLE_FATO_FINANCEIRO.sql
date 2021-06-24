USE [ChallengeFiapCyrela]
GO

/****** Object:  Table [dbo].[Source_Marca]    Script Date: 23/06/2021 22:19:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Fato_financeiro](
	[Sk] [int] IDENTITY(1,1) NOT NULL,
	[Id_Cliente] [int] NOT NULL,
	[Id_Marca] [int] NOT NULL,
	[Id_Regiao] [int] NOT NULL,
	[Dt Venda] [datetime] NULL,
	[Saldo Devedor] [float] NULL,
	[Valor Pago] [money] NULL,
	[VGV] [money] NULL,
CONSTRAINT [SK_Fato_financeiro] PRIMARY KEY CLUSTERED 
(
	[Sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

