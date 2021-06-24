USE [ChallengeFiapCyrela]
GO

INSERT INTO [dbo].[Fato_financeiro]
           ([Id_Cliente]
           ,[Id_Marca]
           ,[Id_Regiao]
           ,[Dt Venda]
           ,[Saldo Devedor]
           ,[Valor Pago]
           ,[VGV])
SELECT   CLI.id 
		,MAR.id 
		,REG.id 
		,FIN.[Dt Venda]		
		,FIN.[Saldo Devedor]
		,FIN.[Valor Pago]
		,FIN.[VGV]
  FROM [ChallengeFiapCyrela].[dbo].[Source_Marca] FIN
	  INNER JOIN [dbo].[Dimensao_Cliente] CLI ON CLI.NOME = FIN.CLIENTE
	  INNER JOIN [dbo].[Dimensao_Regiao] REG ON REG.REGIAO = FIN.REGIONAL
	  INNER JOIN [dbo].[Dimensao_marca] MAR ON MAR.MARCA = FIN.MARCA AND MAR.EMPREENDIMENTO = FIN.EMPREENDIMENTO

