/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [region_id]
      ,[year]
      ,[Total Loan Amount]
  FROM [DFNB2].[dbo].[v_region_loan_amt_year]
  GROUP BY region_id
      ,[year]
      ,[Total Loan Amount]
	  ORDER BY region_id, year;

	 -- SELECT TOP (1000) [acct_area_id]
  --    ,[year]
  --    ,[Total Loan Amount]
  --FROM [DFNB2].[dbo].[v_region_loan_amt_year]
  --GROUP BY acct_area_id
  --    ,[year]
  --    ,[Total Loan Amount]
	 -- ORDER BY region_id, year;
