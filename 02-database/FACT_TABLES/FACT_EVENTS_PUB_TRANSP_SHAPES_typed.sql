USE [SMART_M_LISBON]
GO

/****** Object:  Table [dbo].[FACT_EVENTS_PUB_TRANSP_SHAPES_typed]    Script Date: 09/03/2020 19:53:53 ******/
DROP TABLE [dbo].[FACT_EVENTS_PUB_TRANSP_SHAPES_typed]
GO

/****** Object:  Table [dbo].[FACT_EVENTS_PUB_TRANSP_SHAPES_typed]    Script Date: 09/03/2020 19:53:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FACT_EVENTS_PUB_TRANSP_SHAPES_typed](
	[LS_EVENT_CODE] [varchar](28) NULL,
	[ID_EVENT] [int] NULL,
	[EVENT_DATE] [date] NULL,
	[LS_STOP_CODE] [varchar](28) NULL,
	[STOP_LAT] [float] NULL,
	[STOP_LONG] [float] NULL,
	[DISPLAY_SHAPE_CODE] [varchar](28) NULL,
	[DISPLAY_SHAPE_LAT_1] [float] NULL,
	[DISPLAY_SHAPE_LONG_1] [float] NULL,
	[DISPLAY_SHAPE_LAT_2] [float] NULL,
	[DISPLAY_SHAPE_LONG_2] [float] NULL,
	[EVENT_PUBTRANSP_DISTANCE] [float] NULL,
	[M_FLAG_NEAR_EV] [int] NULL
) ON [PRIMARY]

GO


