USE [SMART_M_LISBON]
GO

/****** Object:  Table [dbo].[FACT_EVENTS_WAZE_typed]    Script Date: 04/05/2020 14:25:39 ******/
DROP TABLE [dbo].[FACT_EVENTS_WAZE_typed]
GO

/****** Object:  Table [dbo].[FACT_EVENTS_WAZE_typed]    Script Date: 04/05/2020 14:25:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FACT_EVENTS_WAZE_typed](
	[LS_EVENT_CODE] [varchar](28) NULL,
	[ID_EVENT] [int] NULL,
	[EVENT_DATE] [date] NULL,
	[LS_DISPLAY_CODE] [varchar](28) NULL,
	[TRAFFIC_DATE] [date] NULL,
	[TRAFFIC_TIME]  [nvarchar](4) NULL,
	[CONGESTION_LEVEL] [int] NULL,
	[AVERAGE_SPEED] [int] NULL,
	[ROAD_LENGTH] [int] NULL,
	[LINE_S_WKT] [nvarchar](4000) NULL,
	[SIZE] [int] NULL,
	[ID_POSITION_EVENT] [int] NULL
) ON [PRIMARY]

GO

