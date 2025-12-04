USE [SMART_M_LISBON]
GO

/****** Object:  Table [pred].[STOP_JAMS]   Script Date: 13/11/2020 14:54:15 ******/
DROP TABLE [pred].[STOP_JAMS]
GO

/****** Object:  Table [pred].[STOP_JAMS]   Script Date: 13/11/2020 14:54:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [pred].[STOP_JAMS](
	[Id] [BIGINT] NULL,
	[StopId] [INT] NULL,
	[StopName] [NVARCHAR](200) NULL,
	[CountJams] [int] NULL,
	[MeanSpeed] [Float] NULL,
	[DateTime] [Datetime] NULL
) ON [PRIMARY]

GO


