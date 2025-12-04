USE [SMART_M_LISBON]
GO

/****** Object:  View [dbo].[VDIM_LOGOS]   Script Date: 02/04/2020 17:11:32 ******/
DROP VIEW [dbo].[VDIM_LOGOS]
GO

/****** Object:  View [dbo].[VDIM_LOGOS]   Script Date: 02/04/2020 17:11:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[VDIM_LOGOS] AS

SELECT DISTINCT 
DISPLAY_CATEGORY,
CASE WHEN DISPLAY_CATEGORY= 'EV'
				THEN 'https://image.flaticon.com/icons/svg/123/123392.svg'
	        WHEN DISPLAY_CATEGORY = 'MT'
				THEN 'https://image.flaticon.com/icons/svg/1034/1034795.svg'
	        WHEN DISPLAY_CATEGORY = 'CR'
				THEN 'https://image.flaticon.com/icons/svg/741/741408.svg'
		END AS IMAGE_URL
 FROM [SMART_M_LISBON].[dbo].[VFACT_EVENTS_PUBLIC_TRANSPORTS_STOPS]



GO


