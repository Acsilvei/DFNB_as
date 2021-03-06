/*****************************************************************************************************************
NAME:    dbo.v_balance_on_dec31
PURPOSE: Create the dbo.v_balance_on_dec31 view

MODIFICATION LOG:
Ver      Date        Author                Description
-----   ----------   ----------------      -------------------------------------------------------------------------------
1.0     10/28/2020   ADRIANASILVEIRA       1. Built this table for IT240 DFNB Project1


RUNTIME: 
0 min

NOTES:
This view shows the balance on December 31 per account.

******************************************************************************************************************/
CREATE VIEW dbo.v_balance_on_dec31 AS
SELECT acct_id
     , as_of_date --AS [Varchar(50)])
     , cur_bal
  FROM DFNB2.dbo.t_acct_fact
 WHERE month(as_of_date) = 12
 GROUP BY acct_id
        , as_of_date
        , cur_bal;

