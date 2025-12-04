USE [SMART_M_LISBON]
GO

/****** Object:  View [dbo].[VIEW_BASE_PREDICTION_CALC]   Script Date: 25/09/2020 16:48:23 ******/
DROP VIEW [dbo].[VIEW_BASE_PREDICTION_CALC]
GO

/****** Object:  View [dbo].[VIEW_BASE_PREDICTION_CALC]    Script Date: 25/09/2020 16:48:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO







CREATE VIEW [dbo].[VIEW_BASE_PREDICTION_CALC]AS(

  /****** Script for SelectTopNRows command from SSMS  ******/
 SELECT [StopName]
      ,[Date]
      ,AVG([BusEntries]) AS AvgBusEntries
	  ,MAX([BusEntries]) AS MaxBusEntries
	  ,MIN([BusEntries]) AS MinBusEntries
	  ,SUM([BusEntries]) AS TotalBusEntries
  FROM [SMART_M_LISBON].[dbo].[BASE_PREDICTION]
  WHERE CAST([30MinIntervals] AS TIME) between '06:00:00' AND '21:30:00'
  GROUP BY [StopName],[Date]




  )














GO


