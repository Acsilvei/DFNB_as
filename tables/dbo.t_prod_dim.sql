/*****************************************************************************************************************
NAME:    dbo.t_prod_dim
PURPOSE: Create the dbo.t_prod_dim table

MODIFICATION LOG:
Ver      Date        Author                 Description
-----   ----------   ----------------       -------------------------------------------------------------------------------
1.0     10/24/2020   ADRIANA SILVEIRA       1. Built this table for DFNB2 Project 1
1.1		11/07/2020	 ADRIANA SILVEIRA		2. Table was renamed.

RUNTIME: 
Approx. 0 min

NOTES:
The t_prod_dim table is a Dimension table with the products' attributes.
 
******************************************************************************************************************/
-- Drop Table

DROP TABLE [dbo].[t_prod_dim]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[t_prod_dim](
	[prod_id] [smallint] NOT NULL,
	[prod_name] [varchar] (100) NULL,
	[prod_open_date] [date] NULL,
	[prod_close_date] [date] NULL,
		
) ON [PRIMARY]
GO
