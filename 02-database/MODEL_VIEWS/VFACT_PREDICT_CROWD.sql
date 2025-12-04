USE [SMART_M_LISBON]
GO

/****** Object:  View [dbo].[VFACT_PREDICT_CROWD]    Script Date: 30/07/2020 15:23:12 ******/
DROP VIEW [dbo].[VFACT_PREDICT_CROWD]
GO

/****** Object:  View [dbo].[VFACT_PREDICT_CROWD]    Script Date: 30/07/2020 15:23:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VFACT_PREDICT_CROWD] AS(
SELECT  [PREDICT_CROWD_ID]
      ,[OBJECTID]
      ,[GRID_ID]
      ,[ZONE_CODE]
      ,[COUNT]
      ,[AREA]
      ,[MIN]
      ,[MAX]
      ,[RANGE]
      ,[MEAN]
      ,[STD]
      ,[SUM]
      ,CAST(SUBSTRING([COD_DATETIME],1,4) + '-' + SUBSTRING([COD_DATETIME],5,2) + '-' + SUBSTRING([COD_DATETIME],7,2) AS DATE) AS [DATE]
	  ,SUBSTRING([COD_DATETIME],9,2) + ':' + SUBSTRING([COD_DATETIME],11,2) + ':' + SUBSTRING([COD_DATETIME],13,3) AS [TIME]
  FROM [SMART_M_LISBON].[dbo].[PREDICT_CROWD]
  )
GO


