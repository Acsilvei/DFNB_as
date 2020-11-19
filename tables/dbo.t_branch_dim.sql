/***************************************************************************************************************************************************************
NAME:    dbo.t_branch_dim
PURPOSE: Create the dbo.t_branch_dim

MODIFICATION LOG:
Ver      Date        Author                 Description
-----   ----------   ----------------       -------------------------------------------------------------------------------
1.0     10/24/2020   ADRIANA SILVEIRA       1. Built this table for DFNB2 Project 1.
1.1		11/07/2020	 ADRIANA SILVEIRA		2. Table was renamed.

RUNTIME: 
Approx. 1 min

NOTES:
The t_branch_dim table is a Dimension table with the Branches' attributes


 
******************************************************************************************************************/
-- Drop Table

DROP TABLE [dbo].[t_branch_dim]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[t_branch_dim](
[branch_id] [smallint] NOT NULL
,[branch_name] varchar(100) NOT NULL
,[add_id] [int] NOT NULL
,[region_id] [int] NOT NULL
	
) ON [PRIMARY]
GO