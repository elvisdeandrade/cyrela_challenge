USE [ChallengeFiapCyrela]
GO

SET IDENTITY_INSERT [dbo].[Stage2_Cliente] ON;

INSERT INTO [dbo].[Stage2_Cliente]
           ([Id]
		   ,[Obra]
           ,[Bloco]
           ,[Unidade]
           ,[Nome]
           ,[Documento]
           ,[PercentualParticipacao]
           ,[Ativo])
SELECT [Id]
      ,[Obra]
      ,[Bloco]
      ,[Unidade]
      ,[Nome]
      ,[Documento]
      ,[PercentualParticipacao]
      ,[Ativo]
  FROM [dbo].[Stage1_Cliente]
  WHERE [Ativo] IS NOT NULL

  SET IDENTITY_INSERT [dbo].[Stage2_Cliente] OFF;
GO


