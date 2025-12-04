USE [SMART_M_LISBON]
GO

/****** Object:  Table [pred].[MARATHON_ROUTE_STOPS]    Script Date: 13/11/2020 16:14:54 ******/
DROP TABLE [pred].[MARATHON_ROUTE_STOPS]
GO

/****** Object:  Table [pred].[MARATHON_ROUTE_STOPS]    Script Date: 13/11/2020 16:14:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [pred].[MARATHON_ROUTE_STOPS](
	[Id] [bigint] NULL,
	[StopId] [int] NULL,
	[StopName] [nvarchar](200) NULL,
	[MarathonFlag] [bit] NULL
) ON [PRIMARY]

GO


