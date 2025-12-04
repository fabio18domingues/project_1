USE [SMART_M_LISBON]
GO

/****** Object:  View [dbo].[VFACT_EVENTS_TRAFFIC_WAZE]    Script Date: 22/04/2020 11:49:05 ******/
DROP VIEW [dbo].[VFACT_EVENTS_TRAFFIC_WAZE]
GO

/****** Object:  View [dbo].[VFACT_EVENTS_TRAFFIC_WAZE]    Script Date: 22/04/2020 11:49:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO












/****** Script for SelectTopNRows command from SSMS  ******/
CREATE VIEW [dbo].[VFACT_EVENTS_TRAFFIC_WAZE] AS

SELECT
 [LS_EVENT_CODE]
,[ID_EVENT]
,[EVENT_DATE]
,[LS_DISPLAY_CODE]
,[CONGESTION_LEVEL]
,[AVERAGE_SPEED]
,[ROAD_LENGTH]
,CASE WHEN [LS_DISPLAY_CODE] NOT LIKE '%EV%'
	  THEN geography::STPolyFromText(REPLACE(REPLACE('POLYGON((' + [LINE_IMAGE] + '))',',-9',', -9'),'(( -9','((-9'), 4326).ToString() 
	  ELSE [LINE_IMAGE] 
	END AS [LINE_IMAGE]
,[SIZE]
FROM [SMART_M_LISBON].[dbo].[FACT_EVENTS_WAZE]




GO


