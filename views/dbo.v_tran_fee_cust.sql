USE [DFNB2]
GO

/****** Object:  View [dbo].[v_tran_fee_cust]    Script Date: 16/11/2020 17:17:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


/*****************************************************************************************************************
NAME:    dbo.v_tran_fee_cust
PURPOSE: Create the v_tran_fee_cust view

MODIFICATION LOG:
Ver      Date        Author                Description
-----   ----------   ----------------      -------------------------------------------------------------------------------
1.0     11/11/2020   ADRIANASILVEIRA       1. Built this table for IT240 DFNB Project2


RUNTIME: 
0 min

NOTES:
This view shows lists the transactions with respective customers attributes.

******************************************************************************************************************/
CREATE VIEW [dbo].[v_tran_fee_cust] AS
SELECT c.[cust_id]
	  ,c. [first_name] + ' ' + c.[last_name] AS Customer
	  ,a.acct_id
	  ,c.pri_branch_id
	  ,t.branch_id
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
	   dbo.t_cust_dim AS c ON c.pri_branch_id = b.branch_id
	   INNER JOIN
	   [dbo].[t_acct_dim] AS a ON c.cust_id = a.pri_cust_id
	   INNER JOIN 
	   dbo.t_tran_type_dim AS d ON t.tran_type_id = d.tran_type_id;
GO


