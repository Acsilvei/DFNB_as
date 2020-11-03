
/*****************************************************************************************************************
NAME:    dbo.v_customers_branches
PURPOSE: Create the dbo.v_custsincedate_acctopendate view

MODIFICATION LOG:
Ver      Date        Author                Description
-----   ----------   ----------------      -------------------------------------------------------------------------------
1.0     10/28/2019   ADRIANASILVEIRA       1. Built this table for IT240 DFNB Project1


RUNTIME: 
0 min

NOTES:
This view shows lists the customers and their primary branch.

******************************************************************************************************************/
CREATE VIEW dbo.v_customers_branch AS
SELECT cust_id
     , pri_branch_id
     , cust_since_date
     , branch_name
  FROM DFNB2.dbo.Customers AS c
       INNER JOIN
       dbo.Branches AS b ON b.branch_id = c.pri_branch_id;