/*****************************************************************************************************************
NAME:    dbo.Addresses
PURPOSE: Create the dbo.Addresses table

MODIFICATION LOG:
Ver      Date        Author                 Description
-----   ----------   ----------------       -------------------------------------------------------------------------------
1.0     10/24/2020   ADRIANA SILVEIRA       1. Built this table for DFNB2 Project 1
1.1     10/28/2020   ADRIANA SILVEIRA       1. Rebuilt this table combining banches' and customers' addresses

RUNTIME: 
Approx. 0 min

NOTES:
The dbo.Addresses table is a Dimension table with the branches' and customers' adresses attributes.
 
******************************************************************************************************************/
-- Drop Table

DROP TABLE [dbo].[Addresses]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


	WITH sp
     AS (SELECT acct_branch_add_id AS add_id, acct_branch_add_type AS add_type, sp.acct_branch_lat AS lat, sp.acct_branch_lon AS lon FROM dbo.stg_p1 AS sp
         UNION
         SELECT cust_add_id, sp.cust_add_type, sp.cust_add_lat, sp.cust_add_lon FROM dbo.stg_p1 AS sp)
     SELECT *
     INTO Addresses
       FROM sp;

	
) ON [PRIMARY]
GO

-- Version 1 of the create table script.

--CREATE TABLE [dbo].[Addresses](
--	[acct_branch_add_id] [int] NOT NULL,
--	[acct_branch_add_lat] [decimal](16, 12) NOT NULL,
--	[acct_branch_add_lon] [decimal](16, 12) NOT NULL,
--	[acct_branch_add_type] [varchar](1) NOT NULL,
--	[cust_add_id] [int] NOT NULL,
--	[cust_add_lat] [decimal](16, 12) NOT NULL,
--	[cust_add_lon] [decimal](16, 12) NOT NULL,
--	[cust_add_type] [varchar](1) NOT NULL,