USE [SMART_M_LISBON]
GO

/****** Object:  View [dbo].[VDIM_WAZE]    Script Date: 11/05/2020 17:21:21 ******/
DROP VIEW [dbo].[VDIM_WAZE]
GO

/****** Object:  View [dbo].[VDIM_WAZE]    Script Date: 11/05/2020 17:21:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO






CREATE VIEW [dbo].[VDIM_WAZE] AS

SELECT DISTINCT [ID_WASE]
	  ,'TW_' + CAST([ID_WASE] AS VARCHAR(30)) AS [WASE_CODE]
      ,[LOCATION] AS LOCALITY
      ,[ENDNODE] AS END_NODE_STREET_NAME
      ,[ROAD_LENGTH]
      ,[ROAD_TYPE]
      ,[STREET] AS STREET_NAME
	  ,CASE WHEN [ROAD_TYPE] = 1 
			THEN 'Steet' 
			WHEN [ROAD_TYPE] = 2
			THEN 'Primary Street'
			WHEN [ROAD_TYPE] = 3 
			THEN 'Freeway'
			WHEN [ROAD_TYPE] = 4 
			THEN 'Ramp'
			WHEN [ROAD_TYPE] = 6
			THEN 'Primary Street'
			WHEN [ROAD_TYPE] = 7
			THEN 'Secondary Street'
			WHEN [ROAD_TYPE] = 17 
			THEN 'Private road'
			WHEN [ROAD_TYPE] = 20 
			THEN 'Parking lot road' END AS [ROAD_TYPE_DESC]
  FROM [SMART_M_LISBON].[dbo].[WAZE_CONTROL]







GO


