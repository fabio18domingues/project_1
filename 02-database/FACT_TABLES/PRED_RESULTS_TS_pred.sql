USE [SMART_M_LISBON]
GO

/****** Object:  Table [dbo].[PRED_RESULTS_TS_pred]    Script Date: 02/10/2020 12:35:29 ******/
DROP TABLE [dbo].[PRED_RESULTS_TS_pred]
GO

/****** Object:  Table [dbo].[PRED_RESULTS_TS_pred]    Script Date: 02/10/2020 12:35:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PRED_RESULTS_TS_pred](
	[Index] [bigint] NULL,
	[30MInIntervals] [datetime] NULL,
	[StopName] [nvarchar](50) NULL,
	[Actual] [int] NULL,
	[Predicted] [int] NULL,
	[Diff] [int] NULL
) ON [PRIMARY]

GO


