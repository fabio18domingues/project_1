USE [SMART_M_LISBON]
GO

/****** Object:  Table [dbo].[FACT_EVENTS_PUB_TRANSP_STOPS_typed]    Script Date: 09/03/2020 19:31:18 ******/
DROP TABLE [dbo].[FACT_EVENTS_PUB_TRANSP_STOPS_typed]
GO

/****** Object:  Table [dbo].[FACT_EVENTS_PUB_TRANSP_STOPS_typed]    Script Date: 09/03/2020 19:31:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FACT_EVENTS_PUB_TRANSP_STOPS_typed](
	[LS_EVENT_CODE] [varchar](28) NULL,
	[ID_EVENT] [int] NULL,
	[EVENT_DATE] [date] NULL,
	[LS_DISPLAY_CODE] [varchar](28) NULL,
	[DISPLAY_LAT] [float] NULL,
	[DISPLAY_LONG] [float] NULL,
	[EVENT_PUBTRANSP_DISTANCE] [float] NULL,
	[M_FLAG_NEAR_EV] [int] NULL
) ON [PRIMARY]

GO


