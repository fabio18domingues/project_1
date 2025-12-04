USE [SMART_M_LISBON]
GO

/****** Object:  Table [pred].[GIRA_STOPS]    Script Date: 13/11/2020 14:54:15 ******/
DROP TABLE [pred].[GIRA_STOPS]
GO

/****** Object:  Table [pred].[GIRA_STOPS]    Script Date: 13/11/2020 14:54:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [pred].[GIRA_STOPS](
	[Id] [BIGINT] NULL,
	[StopId] [INT] NULL,
	[StopName] [NVARCHAR](200) NULL,
	[CountGIRA] [int] NULL
) ON [PRIMARY]

GO


