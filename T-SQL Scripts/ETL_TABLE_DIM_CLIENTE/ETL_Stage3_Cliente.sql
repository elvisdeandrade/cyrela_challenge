USE [ChallengeFiapCyrela]
GO

INSERT INTO [dbo].[Stage3_Cliente]
           ([Id]
           ,[Obra]
           ,[Bloco]
           ,[Unidade]
           ,[Nome]
           ,[Documento]
           ,[Participacao]
           ,[Ativo])
SELECT [Id]
      ,[Obra]
      ,[Bloco]
      ,[Unidade]
      ,[Nome]
      ,[Documento]
      ,[PercentualParticipacao]
      ,[Ativo]
  FROM [dbo].[Stage2_Cliente] 

GO



