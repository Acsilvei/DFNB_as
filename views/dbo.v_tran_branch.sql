
/*****************************************************************************************************************
NAME:    dbo.v_tran_branch
PURPOSE: Create the v_tran_branch view

MODIFICATION LOG:
Ver      Date        Author                Description
-----   ----------   ----------------      -------------------------------------------------------------------------------
1.0     10/28/2019   ADRIANASILVEIRA       1. Built this table for IT240 DFNB Project1


RUNTIME: 
0 min

NOTES:
This view shows lists the transactions with branch attributes.

******************************************************************************************************************/
CREATE VIEW dbo.v_tran_branch AS
SELECT t.branch_id
	  ,b.branch_name
      ,t.[tran_date]
      ,t.[tran_time]
	  ,d.[tran_type_desc]
      ,t.[tran_amt]
      ,t.[tran_fee_amt]
     
  FROM DFNB2.dbo.t_tran_fact AS t
       INNER JOIN
       dbo.t_branch_dim AS b ON t.branch_id = b.branch_id
	   INNER JOIN 
	   dbo.t_tran_type_dim AS d ON t.tran_type_id = d.tran_type_id;