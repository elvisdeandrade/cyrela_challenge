USE [ChallengeFiapCyrela]
GO

INSERT INTO [dbo].[Stage1_Regiao]
           ([Regiao])
SELECT DISTINCT [Regional]
  FROM [dbo].[Source_Marca]

GO


