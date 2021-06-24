USE [ChallengeFiapCyrela]
GO

SET IDENTITY_INSERT [dbo].[Stage1_Cliente] ON;

INSERT INTO [dbo].[Stage1_Cliente]
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
      ,[CPF_CNPJ]
      ,[PercentualParticipacao]
      ,[Ativo]
  FROM [Interface].[dbo].[Coobrigado]

  SET IDENTITY_INSERT [dbo].[Stage1_Cliente] OFF;
GO


