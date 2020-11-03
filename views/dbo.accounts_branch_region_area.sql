
/*****************************************************************************************************************
NAME:    dbo.v_accounts_branch_region_area
PURPOSE: Create the dbo.v_accounts_branch_region_area view

MODIFICATION LOG:
Ver      Date        Author                Description
-----   ----------   ----------------      -------------------------------------------------------------------------------
1.0     10/28/2020   ADRIANASILVEIRA       1. Built this table for IT240 DFNB Project1


RUNTIME: 
0 min

NOTES:
This view shows the number of accounts per branches, regions, and areas.

******************************************************************************************************************/

CREATE VIEW dbo.v_accounts_branch_region_area_year
AS
     SELECT COUNT(ac.acct_id) AS 'Number of Accounts'
          , b.branch_id
          , r.acct_region_id
          , a.acct_area_id
		  , d.as_of_date
       FROM dbo.Accounts AS ac
            INNER JOIN
            dbo.Branches AS b ON ac.branch_id = b.branch_id
            INNER JOIN
            dbo.Regions AS r ON b.region_id = r.acct_region_id
            INNER JOIN
            dbo.Areas AS a ON r.acct_area_id = a.acct_area_id
			INNER JOIN
			dbo.AccountsFact d ON d.acct_id = ac.acct_id
      GROUP BY b.branch_id
             , r.acct_region_id
             , a.acct_area_id
			 , d.as_of_date;

--SELECT * FROM accounts_branch_region_area
