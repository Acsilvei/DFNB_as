/*****************************************************************************************************************
NAME:    dbo.t_cust_branch_dim
PURPOSE: Create the dbo.t_cust_branch_dim table

MODIFICATION LOG:
Ver      Date        Author                 Description
-----   ----------   ----------------       -------------------------------------------------------------------------------
1.0     10/24/2020   ADRIANA SILVEIRA       1. Built this table for DFNB2 Project 1
1.1		11/07/2020	 ADRIANA SILVEIRA		2. Table was renamed.

RUNTIME: 
Approx. 0 min

NOTES:
The t_cust_branch_dim table is a link table to address the many-to-many relatonships between the Customers table and the Branches table.
 
******************************************************************************************************************/
-- Drop Table

DROP TABLE [dbo].[t_cust_branch_dim]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[t_cust_branch_dim](
	  [cust_id] [smallint] NOT NULL
	  ,[acct_id] [int] NOT NULL
      ,[pri_branch_id] [smallint] NOT NULL
      ,[cust_pri_branch_dist] [decimal](7, 2) NOT NULL
	  CONSTRAINT PK_Person PRIMARY KEY (cust_id,acct_id)

	
) ON [PRIMARY]
GO