/*****************************************************************************************************************
NAME:    dbo.t_branch_goal_fact
PURPOSE: Create the t_branch_goal_fact table

MODIFICATION LOG:
Ver      Date        Author                 Description
-----   ----------   ----------------       -------------------------------------------------------------------------------
1.0     04/12/2020   ADRIANA SILVEIRA       1. Built this table for DFNB2 Project 3

RUNTIME: 
Approx. 0 min

NOTES:
The t_branch_goal_fact tracks the accumulated loan amount granted by each branch compared to their annual goal so they can monitor their current performance towards the goal.
 
******************************************************************************************************************/
-- Drop Table
DROP TABLE t_branch_goal_fact;
GO

SET ANSI_NULLS ON;
GO

SET QUOTED_IDENTIFIER ON;
GO

CREATE TABLE t_branch_goal_fact
(branch_goal_accumulated_id SMALLINT IDENTITY(1, 1) NOT NULL
, branch_goal_id             SMALLINT NOT NULL
, branch_goal_accumulated    DECIMAL(20, 4) NOT NULL
, percent_of_branch_goal     DECIMAL(3, 2) NOT NULL
, as_of_date                 DATE NOT NULL
)
ON [PRIMARY];
GO