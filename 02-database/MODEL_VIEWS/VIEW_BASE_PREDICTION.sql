USE [SMART_M_LISBON]
GO

/****** Object:  View [dbo].[VIEW_BASE_PREDICTION]    Script Date: 25/09/2020 16:55:08 ******/
DROP VIEW [dbo].[VIEW_BASE_PREDICTION]
GO

/****** Object:  View [dbo].[VIEW_BASE_PREDICTION]    Script Date: 25/09/2020 16:55:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO







CREATE VIEW [dbo].[VIEW_BASE_PREDICTION]AS(

SELECT F.[StopName]
      ,F.[Date]
      ,[30MinIntervals]
      ,[BusEntries]
      ,[Hours]
      ,[Time]
      ,[DayofWeek]
      ,[FlagEvent]
	  ,[FlagEventPeak]
      ,[FlagMorning]
      ,[FlagAfternoon]
      ,[FlagEvening]
      ,[FlagNight]
      ,[FlagWeekend]
      ,[FlagRushHour]
	  ,AvgBusEntries
	  ,MaxBusEntries
	  ,MinBusEntries
	  ,TotalBusEntries
  FROM [SMART_M_LISBON].[dbo].[BASE_PREDICTION_FINAL] F
  LEFT JOIN [VIEW_BASE_PREDICTION_CALC] C ON F.[StopName] = C.[StopName] AND F.[Date] = C.[Date] 
  WHERE [Time] between '06:00:00' AND '21:30:00'



  )














GO


