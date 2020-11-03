/*****************************************************************************************************************
NAME:    dbo.Accounts
PURPOSE: Create the dbo.Accounts table

MODIFICATION LOG:
Ver      Date        Author                 Description
-----   ----------   ----------------       -------------------------------------------------------------------------------
1.0     10/24/2020   ADRIANA SILVEIRA       1. Built this table for DFNB2 Project 1


RUNTIME: 
Approx. 0 min

NOTES:
The Accounts table is a Dimension table with the accounts' attributes.
 
******************************************************************************************************************/
-- Drop Table

DROP TABLE [dbo].[Accounts]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Accounts](
	[acct_id] [int] NOT NULL,
	[prod_id] [smallint] NOT NULL,
	[open_date] [date] NOT NULL,
	[close_date] [date] NOT NULL,
	[branch_id] [smallint] NOT NULL,
	[pri_cust_id] [smallint] NOT NULL,
	[loan_amt] [decimal](20, 4) NOT NULL,
	
) ON [PRIMARY]
GO
