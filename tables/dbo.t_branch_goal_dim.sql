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

--TRUNCATE TABLE dbo.t_branch_goal_dim

--INSERT INTO dbo.t_branch_goal_dim(branch_id
                                , branch_name
                                , goal_year
                                , goal_amount)
--VALUES
      (
       '1'
     , 'Washington'
     , '2020'
     , '203223915'
      ),
         (
       '2'
     , 'Springfield'
     , '2020'
     , '214487074'
         ),
            (
       '3'
     , 'Franklin'
     , '2020'
     , '205736833'
            ),
               (
       '4'
     , 'Greenville'
     , '2020'
     , '220279032'
               ),
                  (
       '5'
     , 'Bristol'
     , '2020'
     , '178327860'
                  ),
                     (
       '6'
     , 'Clinton'
     , '2020'
     , '200138632'
                     ),
                        (
       '7'
     , 'Fairview'
     , '2020'
     , '211557459'
                        ),
                           (
       '8'
     , 'Salem'
     , '2020'
     , '218661585'
                           ),
                              (
       '9'
     , 'Madison'
     , '2020'
     , '202300965'
                              ),
                                 (
       '10'
     , 'Georgetown'
     , '2020'
     , '211746859'
                                 ),
                                    (
       '11'
     , 'Riverside'
     , '2020'
     , '217177829'
                                    ),
                                       (
       '12'
     , 'Kingston'
     , '2020'
     , '234267796'
                                       );