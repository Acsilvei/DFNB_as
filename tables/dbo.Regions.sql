/*****************************************************************************************************************
NAME:    dbo.Regions
PURPOSE: Create the dbo.Regions table

MODIFICATION LOG:
Ver      Date        Author                 Description
-----   ----------   ----------------       -------------------------------------------------------------------------------
1.0     10/24/2020   ADRIANA SILVEIRA       1. Built this table for DFNB2 Project 1


RUNTIME: 
Approx. 0 min

NOTES:
The Regions table is a Dimansion table with the branches attributes.
 
******************************************************************************************************************/
-- Drop Table

DROP TABLE [dbo].[Regions]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Regions](
	 [acct_region_id] [int] NOT NULL,
	 [acct_area_id] [int] NOT NULL

	
) ON [PRIMARY]
GO