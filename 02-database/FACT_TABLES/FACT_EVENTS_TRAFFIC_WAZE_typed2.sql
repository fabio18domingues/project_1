USE [SMART_M_LISBON]
GO

/****** Object:  Table [dbo].[FACT_EVENTS_TRAFFIC_WAZE_typed2]    Script Date: 17/04/2020 14:39:20 ******/
DROP TABLE [dbo].[FACT_EVENTS_TRAFFIC_WAZE_typed2]
GO

/****** Object:  Table [dbo].[FACT_EVENTS_TRAFFIC_WAZE_typed2]    Script Date: 17/04/2020 14:39:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FACT_EVENTS_TRAFFIC_WAZE_typed2](
	[LS_EVENT_CODE] [varchar](28) NULL,
	[ID_EVENT] [int] NULL,
	[EVENT_DATE] [date] NULL,
	[LS_DISPLAY_CODE] [varchar](28) NULL,
	[DISPLAY_LAT] [float] NULL,
	[DISPLAY_LONG] [float] NULL,
	[TRAFFIC_DATE] [date] NULL,
	[ENTITY_DATE] [date] NULL,
	[ENTITY_TIME] [time](0) NULL,
	[VALIDITY_DATE] [date] NULL,
	[VALIDITY_TIME] [time](0) NULL,
	[EVENT_TRAFFIC_WAZE_DISTANCE] [float] NULL,
	[FLAG_NEAR_EV_vs_TW] [bit] NULL,
	[CONGESTION_LEVEL] [int] NULL,
	[AVERAGE_SPEED] [int] NULL,
	[ROAD_LENGTH] [int] NULL,
	[LINE_S_WKT] [nvarchar](4000) NULL,
	[SIZE] [int] NULL,
	[ID_POSITION_EVENT] [int] NULL
) ON [PRIMARY]

GO


