
/*****************************************************************************************************************
NAME:    dbo.v_custsincedate_acctopendate
PURPOSE: Create the dbo.v_custsincedate_acctopendate view

MODIFICATION LOG:
Ver      Date        Author                Description
-----   ----------   ----------------      -------------------------------------------------------------------------------
1.0     10/28/2019   ADRIANASILVEIRA       1. Built this table for IT240 DFNB Project1


RUNTIME: 
0 min

NOTES:
This view shows the initial relationship between customers and DFNB and the open dates for their accounts.

******************************************************************************************************************/

CREATE VIEW dbo.v_custsincedate_acctopendate
AS
SELECT c.cust_id
     , c.cust_since_date
     , ac.acct_id
     , ac.open_date
  FROM dbo.Customers AS c
       INNER JOIN
       dbo.Accounts AS ac ON c.cust_id = ac.pri_cust_id
 GROUP BY c.cust_id
        , c.cust_since_date
        , ac.acct_id
        , ac.open_date;

SELECT *  FROM dbo.Accounts c

GO


