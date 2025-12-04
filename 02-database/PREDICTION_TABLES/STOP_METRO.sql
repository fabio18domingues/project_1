USE [SMART_M_LISBON]
GO

/****** Object:  Table [pred].[STOP_METRO]    Script Date: 13/11/2020 16:28:52 ******/
DROP TABLE [pred].[STOP_METRO]
GO

/****** Object:  Table [pred].[STOP_METRO]    Script Date: 13/11/2020 16:28:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [pred].[STOP_METRO](
	[Id] [bigint] NULL,
	[StopId] [int] NULL,
	[StopName] [nvarchar](200) NULL,
	[CountMetroStops] [int] NULL
) ON [PRIMARY]

GO


