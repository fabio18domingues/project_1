USE [SMART_M_LISBON]
GO

/****** Object:  Table [pred].[PRED_RESULTS]    Script Date: 17/11/2020 19:31:36 ******/
DROP TABLE [pred].[PRED_RESULTS]
GO

/****** Object:  Table [pred].[PRED_RESULTS]    Script Date: 17/11/2020 19:31:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [pred].[PRED_RESULTS](
	[Index] [bigint] NULL,
	[HourIntervals] [datetime] NULL,
	[StopName] [nvarchar](200) NULL,
	[Actual] [int] NULL,
	[Predicted] [int] NULL,
	[Diff] [int] NULL,
	[AbsDiff] [int] NULL,
	[PercentageDiff]  [nvarchar](20) NULL,
	[FlagMaior100] [nvarchar](50) NULL,
	[FlagMaiorIgual100] [nvarchar](50) NULL
) ON [PRIMARY]

GO


