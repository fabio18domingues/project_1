CREATE VIEW [dbo].[VDIM_TIME] AS

SELECT [ID_TIME]
      ,[TIME]
      ,[COD_TIME]
      ,[HOUR]
      ,[MINUTE]
      ,[AMPM]
      ,[DAY_PART_EN]
      ,[DAY_PART_PT]
      ,[HOUR_FROM_TO_12]
      ,[HOUR_FROM_TO_24]
      ,[NOTATION_12]
      ,[NOTATION_24]
  FROM [SMART_M_LISBON].[dbo].[DIM_TIME]

  GO