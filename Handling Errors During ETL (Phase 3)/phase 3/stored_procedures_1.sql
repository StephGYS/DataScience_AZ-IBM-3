USE [DSTRAINING]
GO
/****** Object:  StoredProcedure [dbo].[__tmp1__BLD_WRK_FakeNamesCanada]    Script Date: 07/09/2023 18:55:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	Steph GYS	
-- Create date: 20230907
-- Description:	RAW -> WRK
-- MOD DATE:   
-- =============================================


CREATE PROC [dbo].[BLD_WRK_FakeNamesCanada]


AS
BEGIN

-- =============================================
-- DROP TABLE    
-- =============================================
IF OBJECT_ID('WRK_FakeNamesCanada') IS NOT NULL
DROP TABLE [WRK_FakeNamesCanada]

-- =============================================
-- CREATE TABLE    
-- =============================================
CREATE TABLE [WRK_FakeNamesCanada]
(
	   [RowNumber]		INT IDENTITY(1,1)
	  ,[Number]			VARCHAR(100)
      ,[Gender]			VARCHAR(10)
      ,[GivenName]		VARCHAR(1000)
      ,[Surname]		VARCHAR(1000)
      ,[StreetAddress]  VARCHAR(1000)
      ,[City]			VARCHAR(1000)
      ,[ZipCode]		VARCHAR(7)
      ,[CountryFull]	VARCHAR(100)
      ,[Birthday]		DATE
      ,[Balance]		VARCHAR(100) --Normally to FLOAT
      ,[InterestRate]   VARCHAR(100) --Normally to FLOAT	   
)

-- =============================================
-- TRUNCATE TABLE     
-- =============================================
TRUNCATE TABLE [WRK_FakeNamesCanada]


-- =============================================
-- INSERT INTO     
-- =============================================
INSERT INTO [WRK_FakeNamesCanada]
(
	   [Number]			
      ,[Gender]			
      ,[GivenName]		
      ,[Surname]		
      ,[StreetAddress] 
      ,[City]			
      ,[ZipCode]		
      ,[CountryFull]	
      ,[Birthday]		
      ,[Balance]		
      ,[InterestRate]    			 	 		 
)
SELECT
	   [Number]
      ,[Gender]
      ,[GivenName]
      ,[Surname]
      ,[StreetAddress]
      ,[City]
      ,[ZipCode]
      ,[CountryFull]
      ,[Birthday]
	  ,[Balance]
	  ,[InterestRate]
FROM [RAW_FakeNamesCanada]
--(x ligne(s) affectée(s))



END

/*

	SELECT * FROM [dbo].[RAW_FakeNamesCanada]

	SELECT * FROM [dbo].[WRK_FakeNamesCanada]
END
*/