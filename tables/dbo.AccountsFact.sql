/*****************************************************************************************************************
NAME:    dbo.AccountsFact
PURPOSE: Create the dbo.AccountsFact table

MODIFICATION LOG:
Ver      Date        Author                 Description
-----   ----------   ----------------       -------------------------------------------------------------------------------
1.0     10/24/2020   ADRIANA SILVEIRA       1. Built this table for DFNB2 Project 1


RUNTIME: 
Approx. 0 min

NOTES:
The AccountsFact table is a fact table that shows each account balance in a given time.
 
******************************************************************************************************************/
-- Drop Table

DROP TABLE [dbo].[AccountsFact]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AccountsFact](
	 [acct_id] [int] NOT NULL,
	 [as_of_date] [date] NOT NULL,
	 [cur_bal] [decimal](20, 4) NOT NULL

	
) ON [PRIMARY]
GO