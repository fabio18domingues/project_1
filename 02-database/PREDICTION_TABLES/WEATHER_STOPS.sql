USE [SMART_M_LISBON]
GO

/****** Object:  Table [pred].[WEATHER_STOPS]    Script Date: 14/11/2020 01:02:39 ******/
DROP TABLE [pred].[WEATHER_STOPS]
GO

/****** Object:  Table [pred].[WEATHER_STOPS]    Script Date: 14/11/2020 01:02:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [pred].[WEATHER_STOPS](
	[StopId] [int] NULL,
	[StopName] [nvarchar](200) NULL,
	[StationId] [int] NULL,
	[WeatherStation] [nvarchar](200) NULL,
) ON [PRIMARY]

GO


