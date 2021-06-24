USE [ChallengeFiapCyrela]
GO

CREATE TABLE [dbo].[Fato_Site](
	[Sk] [bigint] IDENTITY(1,1) NOT NULL,
	[Id] [bigint] NOT NULL,
	[Pagina] [varchar](50) NOT NULL,
	[Atividade] [varchar](255) NOT NULL,
	[DataEvento] [datetime2](7) NOT NULL,
	[Id_Cliente] [int] NOT NULL,
 CONSTRAINT [Sk_Fato_Site] PRIMARY KEY CLUSTERED 
(
	[Sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



