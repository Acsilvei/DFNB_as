/*****************************************************************************************************************
NAME:    dbo.t_area_dim
PURPOSE: Create the dbo.Regions table

MODIFICATION LOG:
Ver      Date        Author                 Description
-----   ----------   ----------------       -------------------------------------------------------------------------------
1.0     10/24/2020   ADRIANA SILVEIRA       1. Built this table for DFNB2 Project 1.
1.1		11/07/2020	 ADRIANA SILVEIRA		2. Table was renamed.


RUNTIME: 
Approx. 0 min

NOTES:
The t_area_dim table is a Dimansion table with the areas attributes.
 
******************************************************************************************************************/
-- Drop Table

DROP TABLE [dbo].[t_area_dim]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[t_area_dim](
	 [acct_area_id] [int] NOT NULL

	
) ON [PRIMARY]
GO