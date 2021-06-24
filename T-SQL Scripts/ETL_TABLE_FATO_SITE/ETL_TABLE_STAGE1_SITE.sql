USE [ChallengeFiapCyrela]
GO

SET IDENTITY_INSERT [dbo].[Stage1_Site] ON;

INSERT INTO [dbo].[Stage1_Site]
           ([Id]
		   ,[Pagina]
           ,[Atividade]
		   ,[DataEvento])
SELECT [Id]
	  ,[Pagina]
      ,[Atividade]
	  ,[DataEvento]
  FROM [PortalCliente].[dbo].[log_navegacao]

  SET IDENTITY_INSERT [dbo].[Stage1_Site] OFF;
GO



