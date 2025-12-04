USE [SMART_M_LISBON]
GO

/****** Object:  View [dbo].[VFACT_EVENTS_PUBLIC_TRANSPORTS_STOPS]    Script Date: 05/05/2020 21:36:13 ******/
DROP VIEW [dbo].[VFACT_EVENTS_PUBLIC_TRANSPORTS_STOPS]
GO

/****** Object:  View [dbo].[VFACT_EVENTS_PUBLIC_TRANSPORTS_STOPS]    Script Date: 05/05/2020 21:36:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO







/****** Script for SelectTopNRows command from SSMS  ******/
CREATE VIEW [dbo].[VFACT_EVENTS_PUBLIC_TRANSPORTS_STOPS] AS
    select row_number() over ( order by [LS_DISPLAY_CODE]) as ID, [LS_EVENT_CODE]
      ,[ID_EVENT]
      ,[EVENT_DATE]
      ,[LS_DISPLAY_CODE]
      ,[DISPLAY_LAT]
      ,[DISPLAY_LONG]
      ,[M_FLAG_NEAR_EV]
	  ,LEFT([LS_DISPLAY_CODE],2) AS DISPLAY_CATEGORY
	  ,CASE WHEN LEFT([LS_DISPLAY_CODE],2) = 'EV'
				THEN 30 ELSE 20 END AS LS_SIZE from(
SELECT DISTINCT
	   [LS_EVENT_CODE]
      ,[ID_EVENT]
      ,[EVENT_DATE]
      ,[LS_DISPLAY_CODE]
      ,[DISPLAY_LAT]
      ,[DISPLAY_LONG]
      ,[M_FLAG_NEAR_EV]
FROM [SMART_M_LISBON].[dbo].[FACT_EVENTS_PUB_TRANSP_STOPS]
) AS RESULT







GO


