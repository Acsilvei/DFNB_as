/*****************************************************************************************************************
NAME:    dbo.Products
PURPOSE: Create the dbo.Products table

MODIFICATION LOG:
Ver      Date        Author                 Description
-----   ----------   ----------------       -------------------------------------------------------------------------------
1.0     10/24/2020   ADRIANA SILVEIRA       1. Built this table for DFNB2 Project 1


RUNTIME: 
Approx. 0 min

NOTES:
The Products table is a Dimension table with the products' attributes.
 
******************************************************************************************************************/
-- Drop Table

DROP TABLE [dbo].[Products]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Products](
	[prod_id] [smallint] NOT NULL,
	[prod_name] [varchar] (100) NOT NULL,
	[prod_open_date] [date] NOT NULL,
	[prod_close_date] [date] NOT NULL,
		
) ON [PRIMARY]
GO
