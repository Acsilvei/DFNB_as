/*****************************************************************************************************************
NAME:    dbo.Customers
PURPOSE: Create the dbo.Customers table

MODIFICATION LOG:
Ver      Date        Author                 Description
-----   ----------   ----------------       -------------------------------------------------------------------------------
1.0     10/24/2020   ADRIANA SILVEIRA       1. Built this table for DFNB2 Project 1


RUNTIME: 
Approx. 0 min

NOTES:
The Customers table is a Dimension table with the customers' attributes
 
******************************************************************************************************************/
-- Drop Table

DROP TABLE [dbo].[Customers]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Customers](
	[cust_id] [smallint] NOT NULL,
	[last_name] [varchar](100) NOT NULL,
	[first_name] [varchar](100) NOT NULL,
	[gender] [varchar](1) NOT NULL,
	[birth_date] [date] NOT NULL,
	[cust_since_date] [date] NOT NULL,
	[pri_branch_id] [smallint] NOT NULL,
	[cust_rel_id] [smallint] NOT NULL,
	[cust_add_id] [int] NOT NULL,
	
) ON [PRIMARY]
GO