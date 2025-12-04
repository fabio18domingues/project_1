USE [SMART_M_LISBON]
GO

/****** Object:  Table [dbo].[FACT_EVENTS_CROWD]    Script Date: 05/03/2020 21:03:40 ******/
DROP TABLE [dbo].[FACT_EVENTS_CROWD]
GO

/****** Object:  Table [dbo].[FACT_EVENTS_CROWD]    Script Date: 05/03/2020 21:03:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FACT_EVENTS_CROWD](
	[KEY_EVENT_CROWD] [int] IDENTITY(1,1) NOT NULL,
	[LS_EVENT_CODE] [varchar](28) NULL,
	[ID_EVENT] [int] NULL,
	[EVENT_DATE] [date] NULL,
	[LS_DISPLAY_CODE] [varchar](28) NULL,
	[DISPLAY_LAT] [float] NULL,
	[DISPLAY_LONG] [float] NULL,
	[DISPLAY_DATE] [date] NULL,
	[DISPLAY_TIME] [time](7) NULL,
	[EVENT_CROWD_DISTANCE] [float] NULL,
	[FLAG_NEAR_EV_vs_AC] [bit] NULL,
	[CONCENTRATION] [int] NULL,
	[AVERAGE_COVERAGE] [int] NULL
) ON [PRIMARY]

GO


