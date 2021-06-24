USE [ChallengeFiapCyrela]
GO

SET IDENTITY_INSERT [dbo].[Dimensao_Cliente] ON;

INSERT INTO [dbo].[Dimensao_Cliente]
           ([Sk]
		   ,[Id]
           ,[Obra]
           ,[Bloco]
           ,[Unidade]
           ,[Nome]
           ,[Documento]
           ,[Participacao]
           ,[Ativo])
SELECT [Sk]
      ,[Id]
      ,[Obra]
      ,[Bloco]
      ,[Unidade]
      ,[Nome]
      ,[Documento]
      ,[Participacao]
      ,[Ativo]
  FROM [dbo].[Stage3_Cliente]

  SET IDENTITY_INSERT [dbo].[Dimensao_Cliente] OFF;
GO



