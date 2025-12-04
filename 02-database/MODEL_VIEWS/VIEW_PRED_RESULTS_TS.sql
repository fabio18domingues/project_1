USE [SMART_M_LISBON]
GO

/****** Object:  View [dbo].[VIEW_PRED_RESULTS_TS]    Script Date: 02/10/2020 15:12:10 ******/
DROP VIEW [dbo].[VIEW_PRED_RESULTS_TS]
GO

/****** Object:  View [dbo].[VIEW_PRED_RESULTS_TS]    Script Date: 02/10/2020 15:12:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO










CREATE VIEW [dbo].[VIEW_PRED_RESULTS_TS]AS(

SELECT 
       [Index]
      ,[30MInIntervals]
      ,[StopName]
      ,[Actual]
      ,[Predicted]
      ,[Diff]
	  ,PRED_ID AS [PredId]
  FROM [SMART_M_LISBON].[dbo].[PRED_RESULTS_TS]



  )

















GO


