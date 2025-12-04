USE [SMART_M_LISBON]
GO

/****** Object:  Table [pred].[[WEATHER]    Script Date: 14/11/2020 01:02:39 ******/
DROP TABLE [pred].[WEATHER]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [pred].[WEATHER](
	[DateTime] [datetime] NULL,
	[StationId] [int] NULL,
	[WeatherStation] [nvarchar](200) NULL,
	[Temperature] [decimal] NULL,
	[Humidity] [int] NULL,
	[Precipitation] [decimal] NULL,
	[Sun] [decimal] NULL,
	[WindSpeed] [decimal] NULL,
	[WindCardinal] [nvarchar](100) NULL,
	[StopId] [int] NULL,
	[StopName] [nvarchar](200) NULL
) ON [PRIMARY]

GO





