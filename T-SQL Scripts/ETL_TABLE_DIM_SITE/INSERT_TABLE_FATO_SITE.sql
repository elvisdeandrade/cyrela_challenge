/****** Script do comando SelectTopNRows de SSMS  ******/
USE [ChallengeFiapCyrela]
GO

INSERT INTO [dbo].[Fato_Site]
           ([Id]
           ,[Pagina]
           ,[Atividade]
           ,[DataEvento]
           ,[Id_Cliente])
SELECT S.[Id]
      ,S.[Pagina]
      ,S.[Atividade]
      ,S.[DataEvento]
	  ,C.ID
  FROM [ChallengeFiapCyrela].[dbo].[Stage2_Site] S
  INNER JOIN [PortalCliente].[dbo].[log_navegacao] L ON L.ID = S.ID
  INNER JOIN [ChallengeFiapCyrela].[dbo].[Dimensao_Cliente] C ON C.[Documento] = L.DocumentoCliente


 

