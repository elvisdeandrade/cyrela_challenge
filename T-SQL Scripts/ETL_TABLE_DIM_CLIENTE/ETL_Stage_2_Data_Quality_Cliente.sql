USE [ChallengeFiapCyrela]
GO

SET IDENTITY_INSERT [dbo].[Stage2_Data_Quality_Cliente] ON;

INSERT INTO [dbo].[Stage2_Data_Quality_Cliente]
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
  WHERE [Ativo] IS NULL

  SET IDENTITY_INSERT [dbo].[Stage2_Data_Quality_Cliente] OFF;
GO


