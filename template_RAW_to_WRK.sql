USE [DSTRAINING]
GO
/****** 
 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		
-- Create date: 
-- Description:	RAW -> WRK
-- MOD DATE:   
-- =============================================


CREATE PROC [dbo].[__tmp1__BLD_WRK_TableName]


AS
BEGIN

-- =============================================
-- DROP TABLE    
-- =============================================
IF OBJECT_ID('WRK_TableName') IS NOT NULL
DROP TABLE [WRK_TableName]

-- =============================================
-- CREATE TABLE    
-- =============================================
CREATE TABLE [WRK_TableName]
(
      [RowNumber]	 INT IDENTITY(1,1)
	  ,[AAA]		 VARCHAR(100) 
      ,[BBB]		 DATE
      ,[CCC]	   	 VARCHAR(1000)
      ,[DDD]		 INT 
      ,[EEE]		 FLOAT	 	   
)

-- =============================================
-- TRUNCATE TABLE     
-- =============================================
TRUNCATE TABLE [WRK_TableName]


-- =============================================
-- INSERT INTO     
-- =============================================
INSERT INTO [WRK_TableName]
(
	  [AAA]		 
      ,[BBB]		 
      ,[CCC]	 
      ,[DDD]			 
      ,[EEE]			 
      ,[FFF]			 	 		 
)
SELECT
	   [RAW_AAA]	
	  ,[RAW_BBB]
      ,CONVERT(DATE,[RAW_CCC],20)  
      ,CAST([RAW_DDD] as INT) 
      ,CAST([RAW_EEE] as FLOAT) 
	  ,CONVERT(DATE,[FFF],110) 
FROM [RAW_TableName]
--(x ligne(s) affectée(s))



END

/*

	SELECT * FROM [dbo].[RAW_TableName]

	SELECT * FROM [dbo].[WRK_TableName]
END
*/