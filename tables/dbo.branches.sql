/*****************************************************************************************************************
NAME:    dbo.Branches
PURPOSE: Create the dbo.Branches

MODIFICATION LOG:
Ver      Date        Author                 Description
-----   ----------   ----------------       -------------------------------------------------------------------------------
1.0     10/24/2020   ADRIANA SILVEIRA       1. Built this table for DFNB2 Project 1


RUNTIME: 
Approx. 0 min

NOTES:
The Branches table is a Dimension table with the branches' attributes
 
******************************************************************************************************************/
-- Drop Table

DROP TABLE [dbo].[Branches]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Branches](
[branch_id] [smallint] NOT NULL
,[branch_name] varchar(100) NOT NULL
,[add_id] [int] NOT NULL
,[region_id] [int] NOT NULL
	
) ON [PRIMARY]
GO