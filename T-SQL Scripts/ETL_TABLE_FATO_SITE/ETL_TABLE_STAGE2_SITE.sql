USE [ChallengeFiapCyrela]
GO

SET IDENTITY_INSERT [dbo].[Stage2_Site] ON;

INSERT INTO [dbo].[Stage2_Site]
           ([Id]
		   ,[Pagina]
           ,[Atividade]
		   ,[DataEvento])
     SELECT [Id]
			,[Pagina]
			,CASE 
				WHEN PATINDEX('%??%', [Atividade]) > 0 THEN REPLACE([Atividade],'??','��')
				WHEN PATINDEX('%?%',  [Atividade])>0 THEN REPLACE([Atividade],'?','�')
			END 
			,[DataEvento]
  FROM [ChallengeFiapCyrela].[dbo].[Stage1_Site]


  SET IDENTITY_INSERT [dbo].[Stage2_Site] OFF;