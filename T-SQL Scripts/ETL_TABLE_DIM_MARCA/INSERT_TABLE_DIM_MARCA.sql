USE [ChallengeFiapCyrela]
GO

INSERT INTO [dbo].[Dimensao_Marca]
           ([Id]
           ,[Marca]
           ,[Empreendimento])
SELECT [Id]
      ,[Marca]
      ,[Empreendimento]
  FROM [dbo].[Stage1_Marca]

GO


