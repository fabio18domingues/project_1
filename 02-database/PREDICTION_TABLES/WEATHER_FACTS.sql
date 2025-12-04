USE [SMART_M_LISBON]
GO

/****** Object:  Table [pred].[WEATHER_FACTS]    Script Date: 14/11/2020 01:37:03 ******/
DROP TABLE [pred].[WEATHER_FACTS]
GO

/****** Object:  Table [pred].[WEATHER_FACTS]    Script Date: 14/11/2020 01:37:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [pred].[WEATHER_FACTS](
	[DateTime] [datetime] NULL,
	[StationId] [int] NULL,
	[WeatherStation] [nvarchar](200) NULL,
	[Temperature] [decimal](10, 3)  NULL,
	[Humidity] [int] NULL,
	[Precipitation] [decimal](10, 3)  NULL,
	[Sun] [decimal](10, 3)  NULL,
	[WindSpeed] [decimal](10, 3)  NULL,
	[WindCardinal] [nvarchar](100) NULL
) ON [PRIMARY]

GO


