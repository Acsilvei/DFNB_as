/*****************************************************************************************************************
NAME:    dbo.t_branch_goal_dim
PURPOSE: Create the t_branch_goal_dim table

MODIFICATION LOG:
Ver      Date        Author                 Description
-----   ----------   ----------------       -------------------------------------------------------------------------------
1.0     04/12/2020   ADRIANA SILVEIRA       1. Built this table for DFNB2 Project 3

RUNTIME: 
Approx. 0 min

NOTES:
The t_branch_goal_dim hosts the annual goal for consmer loans for each branch.
 
******************************************************************************************************************/
-- Drop Table

DROP TABLE t_branch_goal_dim;
GO

SET ANSI_NULLS ON;
GO

SET QUOTED_IDENTIFIER ON;
GO

CREATE TABLE t_branch_goal_dim
(branch_goal_id SMALLINT IDENTITY(1, 1) NOT NULL
, branch_id      SMALLINT NOT NULL
, branch_name    VARCHAR(100) NOT NULL
, goal_year      DATE NOT NULL
, goal_amount    DECIMAL(20, 4) NOT NULL
)
ON [PRIMARY];
GO