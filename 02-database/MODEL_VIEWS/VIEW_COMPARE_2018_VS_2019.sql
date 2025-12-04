USE [SMART_M_LISBON]
GO

/****** Object:  View [dbo].[VIEW_COMPARE_2018_VS_2019]    Script Date: 16/10/2020 14:33:22 ******/
DROP VIEW [dbo].[VIEW_COMPARE_2018_VS_2019]
GO

/****** Object:  View [dbo].[VIEW_COMPARE_2018_VS_2019]    Script Date: 16/10/2020 14:33:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO












CREATE VIEW [dbo].[VIEW_COMPARE_2018_VS_2019]AS(

SELECT [﻿StopName]
      ,[30MinIntevals2018]
      ,[BusEntries2018]
      ,[30MinIntevals2019]
      ,[BusEntries2019]
  FROM [SMART_M_LISBON].[dbo].[CARRIS_COMPARE_2018_VS_2019]


  )



















GO


