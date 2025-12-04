USE [SMART_M_LISBON]
GO

/****** Object:  View [dbo].[VFACT_EVENTS_WAZE]    Script Date: 04/05/2020 15:29:13 ******/
DROP VIEW [dbo].[VFACT_EVENTS_WAZE]
GO

/****** Object:  View [dbo].[VFACT_EVENTS_WAZE]    Script Date: 04/05/2020 15:29:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO













/****** Script for SelectTopNRows command from SSMS  ******/
CREATE VIEW [dbo].[VFACT_EVENTS_WAZE] AS

SELECT
[LS_EVENT_CODE]
      ,[ID_EVENT]
      ,[EVENT_DATE]
      ,[LS_DISPLAY_CODE]
      ,[TRAFFIC_DATE]
      ,[TRAFFIC_TIME]
      ,[CONGESTION_LEVEL]
      ,[AVERAGE_SPEED]
      ,[ROAD_LENGTH]
      ,[LINE_IMAGE]
      ,[SIZE]
      ,[ID_POSITION_EVENT]
FROM [SMART_M_LISBON].[dbo].[FACT_EVENTS_WAZE]





GO


