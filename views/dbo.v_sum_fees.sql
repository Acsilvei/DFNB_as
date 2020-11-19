/****** Script for SelectTopNRows command from SSMS  ******/

--What is the sum of fees from a Primary Customer perspective at each branch?
CREATE VIEW dbo.v_sum_fees AS
WITH S1
     AS (SELECT c.cust_id
              , a.acct_id
              , t.branch_id
              , b.branch_name
              , t.tran_date
              , t.tran_amt
              , t.tran_fee_amt
              , t.tran_type_id
              , td.tran_type_desc
         --,(t.[tran_fee_amt]) AS 'Sum of Fees'
           FROM DFNB2.dbo.t_tran_fact AS t
                INNER JOIN
                dbo.t_acct_dim AS a ON t.acct_id = a.acct_id
                INNER JOIN
                dbo.t_cust_dim AS c ON c.cust_id = a.pri_cust_id
                INNER JOIN
                dbo.t_branch_dim AS b ON b.branch_id = t.branch_id
                INNER JOIN
                dbo.t_tran_type_dim AS td ON td.tran_type_id = t.tran_type_id
          WHERE cust_id = 283)
     --GROUP BY c.[cust_id]
     --,t.branch_id
     --,b.branch_name
     --ORDER BY [Sum of Fees] DESC
     --ORDER BY t.tran_date
     --, t.branch_id)

     SELECT s.cust_id
          , branch_name
          , SUM(s.tran_fee_amt) AS 'Sum of Fees'
       FROM S1 AS s
      GROUP BY s.cust_id
             , s.branch_name;

