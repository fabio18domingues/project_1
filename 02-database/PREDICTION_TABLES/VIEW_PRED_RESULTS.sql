USE [SMART_M_LISBON]
GO

/****** Object:  View [pred].[VIEW_PRED_RESULTS]    Script Date: 18/11/2020 19:51:03 ******/
DROP VIEW [pred].[VIEW_PRED_RESULTS]
GO

/****** Object:  View [pred].[VIEW_PRED_RESULTS]    Script Date: 18/11/2020 19:51:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO










CREATE VIEW [pred].[VIEW_PRED_RESULTS]AS(

SELECT 
       [Index]
      ,[HourIntervals]
      ,[StopName]
      ,[Actual]
      ,[Predicted]
      ,[Diff]
      ,[AbsDiff]
      ,[FlagMaior100]
      ,[FlagMaiorIgual100]
	  ,PRED_RESULTS_ID
  FROM [SMART_M_LISBON].[pred].[PRED_RESULTS]


  )

















GO


