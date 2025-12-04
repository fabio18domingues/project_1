USE [SMART_M_LISBON]
GO

/****** Object:  View [dbo].[VFACT_PREDICT_CROWD]    Script Date: 09/10/2020 14:58:48 ******/
DROP VIEW [dbo].[VDIM_CLUSTERS]
GO

/****** Object:  View [dbo].[VFACT_PREDICT_CROWD]    Script Date: 09/10/2020 14:58:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[VDIM_CLUSTERS] AS(
SELECT  [Id]
      ,[StopName]
      ,[SumBusEntries]
      ,[MaxBusEntries]
      ,[AvgBusEntries]
      ,[Cluster]
  FROM [SMART_M_LISBON].[dbo].[CLUSTERS]
  )

GO


