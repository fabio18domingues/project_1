USE [SMART_M_LISBON]
GO

/****** Object:  View [dbo].[VFACT_EVENTS_PUBLIC_TRANSPORTS_SHAPES]    Script Date: 05/05/2020 17:42:32 ******/
DROP VIEW [dbo].[VFACT_EVENTS_PUBLIC_TRANSPORTS_SHAPES]
GO

/****** Object:  View [dbo].[VFACT_EVENTS_PUBLIC_TRANSPORTS_SHAPES]    Script Date: 05/05/2020 17:42:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO







/****** Script for SelectTopNRows command from SSMS  ******/
CREATE VIEW [dbo].[VFACT_EVENTS_PUBLIC_TRANSPORTS_SHAPES] AS
    select row_number() over ( order by [DISPLAY_SHAPE_CODE]) as ID, [LS_EVENT_CODE]      ,[ID_EVENT]
      ,[EVENT_DATE]
      ,[LS_STOP_CODE]
      ,[STOP_LAT]
      ,[STOP_LONG]
      ,[DISPLAY_SHAPE_CODE] AS [DISPLAY_SHAPE_CODE]
      ,[DISPLAY_SHAPE_LAT_1]
      ,[DISPLAY_SHAPE_LONG_1]
      ,[DISPLAY_SHAPE_LAT_2]
      ,[DISPLAY_SHAPE_LONG_2]
      ,[M_FLAG_NEAR_EV]
	  ,LEFT([LS_STOP_CODE],2) AS DISPLAY_CATEGORY
	  ,CASE WHEN LEFT([LS_STOP_CODE],2) = 'EV'
				THEN 'https://image.flaticon.com/icons/svg/2413/2413035.svg'
	        ELSE NULL
		END AS IMAGE_URL
	  ,20 AS LS_SIZE
	  	   from(
SELECT DISTINCT
       [LS_EVENT_CODE]
      ,[ID_EVENT]
      ,[EVENT_DATE]
      ,[LS_STOP_CODE]
      ,[STOP_LAT]
      ,[STOP_LONG]
      ,[DISPLAY_SHAPE_CODE] 
      ,[DISPLAY_SHAPE_LAT_1]
      ,[DISPLAY_SHAPE_LONG_1]
      ,[DISPLAY_SHAPE_LAT_2]
      ,[DISPLAY_SHAPE_LONG_2]
      ,[M_FLAG_NEAR_EV]
	  ,20 AS LS_SIZE
FROM [SMART_M_LISBON].[dbo].[FACT_EVENTS_PUB_TRANSP_SHAPES]
) AS RESULT




GO

