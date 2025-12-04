USE [SMART_M_LISBON]
GO

/****** Object:  View [dbo].[VIEW_PRED_RESULTS]    Script Date: 26/09/2020 21:02:32 ******/
DROP VIEW [dbo].[VIEW_PRED_RESULTS]
GO

/****** Object:  View [dbo].[VIEW_PRED_RESULTS]    Script Date: 26/09/2020 21:02:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO








CREATE VIEW [dbo].[VIEW_PRED_RESULTS]AS(

SELECT 
       [Index]
      ,[30MInIntervals]
      ,[StopName]
      ,[Actual]
      ,[Predicted]
      ,[Diff]
	  ,PRED_ID AS [PredId]
  FROM [SMART_M_LISBON].[dbo].[PRED_RESULTS]



  )















GO


