USE [ChallengeFiapCyrela]
GO

CREATE TABLE [dbo].[Stage3_Cliente](
	[Sk] [int] IDENTITY(1,1) NOT NULL,
	[Id] [int]  NOT NULL,
	[Obra] [char](4) NOT NULL,
	[Bloco] [char](2) NOT NULL,
	[Unidade] [char](6) NOT NULL,
	[Nome] [varchar](150) NOT NULL,
	[Documento] [varchar](20) NOT NULL,
	[Participacao] [decimal](5, 2) NOT NULL,
	[Ativo] [bit] NULL,
 CONSTRAINT [SK_Stage_3_Cliente] PRIMARY KEY CLUSTERED 
(
	[Sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


