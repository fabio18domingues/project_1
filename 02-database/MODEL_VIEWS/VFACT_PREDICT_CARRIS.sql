USE [SMART_M_LISBON]
GO

/****** Object:  View [dbo].[VFACT_PREDICT_CARRIS]    Script Date: 26/08/2020 10:51:37 ******/
DROP VIEW [dbo].[VFACT_PREDICT_CARRIS]
GO

/****** Object:  View [dbo].[VFACT_PREDICT_CARRIS]    Script Date: 26/08/2020 10:51:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[VFACT_PREDICT_CARRIS] AS(
SELECT  [PREDICT_CARRIS_ID]
      ,[DataHora] [Date Time]
      ,[Veiculo] [Vehicle]
      ,[Carreira] 
      ,[Variante] 
      ,[Chapa]
      ,[Viagem] [Trip]
      ,[Sentido] [Direction]
      ,[Paragem] [Stop]
      ,[NSerie]
      ,[TituloDescricao] [Description]
      ,[TituloCod] [DescriptionCod]
      ,'CR_1_' + cast([IDParagem] as Nvarchar(30)) AS [Stop Id]
	  ,[IDParagem]
      ,[NomeParagem] [Stop Name]
      ,CAST([DataHora] AS DATE) AS [Date]
	  ,CAST([DataHora] AS TIME(0)) AS [Time]
	  ,CAST((CAST((DatePart(Year,[DataHora])) AS NVARCHAR(10)) + '-' + CAST(DatePart(Month,[DataHora]) AS NVARCHAR(10)) + '-' +
CAST(DatePart(Day,[DataHora]) AS NVARCHAR(10)) + ' ' + CAST(DatePart(Hour,[DataHora]) AS NVARCHAR(10)) + ':' 
+ CASE WHEN (DatePart(Minute,[DataHora]) / 15)  = 0 THEN '00:00' 
       WHEN (DatePart(Minute,[DataHora]) / 15)  = 1 THEN '15:00'
	   WHEN (DatePart(Minute,[DataHora]) / 15)  = 2 THEN '30:00'
	   WHEN (DatePart(Minute,[DataHora]) / 15)  = 3 THEN '45:00'  
	   END) AS smalldatetime)
	   AS [Date Time Intervals]
  FROM [SMART_M_LISBON].[dbo].[PREDICT_CARRIS]
  )




GO


