USE [SMART_M_LISBON]
GO

/****** Object:  View [dbo].[VDIM_DATE]    Script Date: 08/09/2020 23:09:18 ******/
DROP VIEW [dbo].[VDIM_DATE]
GO

/****** Object:  View [dbo].[VDIM_DATE]    Script Date: 08/09/2020 23:09:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VDIM_DATE] AS

SELECT [DATETIME]
	  ,CAST([DATETIME] AS TIME(0)) AS [FK_DATETIME]
      ,[DATE]
      ,[DAY]
      ,[MONTH]
      ,[FIRST_MONTH]
      ,[MONTH_NAME]
      ,[WEEK]
      ,[ISO_WEEK]
      ,[DAYOFWEEK]
      ,[QUARTER]
      ,[YEAR]
      ,[FIRSTOFYEAR]
      ,[STYLE112]
      ,[STYLE101]
  FROM [SMART_M_LISBON].[dbo].[DIM_DATE]


GO


