/*****************************************************************************************************************
NAME:    LoadDFNB_p1
PURPOSE: Load DFNB Project 1 

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     10/21/2020   A SILVEIRA    1. Load DFNB Project1
1.1     11/02/2020   A SILVEIRA    1.1 Rebuid the repository

RUNTIME: 
Approx. 1 min

NOTES:
This script will load the data from dbo.stg_p1 to the tables on DFNB database.

LICENSE: This code is covered by the GNU General Public License which guarantees end users
the freedom to run, study, share, and modify the code. This license grants the recipients
of the code the rights of the Free Software Definition. All derivative work can only be
distributed under the same license terms.
 
******************************************************************************************************************/

-- 1) Create the Accounts table

--SELECT DISTINCT
--	[acct_id] [int] NOT NULL,
--	[prod_id] [smallint] NOT NULL,
--	[open_date] [date] NOT NULL,
--	[close_date] [date] NOT NULL,
--	[branch_id] [smallint] NOT NULL,
--	[pri_cust_id] [smallint] NOT NULL,
--	[loan_amt] [decimal](20, 4) NOT NULL
--  INTO dbo.Accounts
--  FROM dbo.stg_p1 stg
-- ORDER BY acct_id;

-- 1.1) Load dbo.Accounts.sql

TRUNCATE TABLE dbo.Accounts;

INSERT INTO dbo.Accounts
SELECT DISTINCT 
       acct_id
     , prod_id
     , open_date
     , close_date
     , branch_id
     , pri_cust_id
     , loan_amt
  FROM dbo.stg_p1 AS stg
 ORDER BY acct_id;
 



-- 2) Create the AccountsFact table

CREATE TABLE [dbo].[AccountsFact](
	 [acct_id] [int] NOT NULL,
	 [as_of_date] [date] NOT NULL,
	 [cur_bal] [decimal](20, 4) NOT NULL

	 ) ON [PRIMARY]
GO

-- 2.1) Load dbo.AccountsFact.sql

TRUNCATE TABLE dbo.AccountsFact;

INSERT INTO dbo.AccountsFact
SELECT DISTINCT 
       acct_id
     , as_of_date
     , cur_bal
  FROM dbo.stg_p1 AS stg
 ORDER BY acct_id;


-- 3) Create the Addresses table

SELECT DISTINCT
	[acct_branch_add_id] [int] NOT NULL,
	[acct_branch_add_lat] [decimal](16, 12) NOT NULL,
	[acct_branch_add_lon] [decimal](16, 12) NOT NULL,
	[acct_branch_add_type] [varchar](1) NOT NULL,
	[cust_add_id] [int] NOT NULL,
	[cust_add_lat] [decimal](16, 12) NOT NULL,
	[cust_add_lon] [decimal](16, 12) NOT NULL,
	[cust_add_type] [varchar](1) NOT NULL
  INTO dbo.Addresses
  FROM dbo.stg_p1 AS stg
 ORDER BY acct_branch_add_id;

-- 3.1) Load dbo.Addresses.sql

TRUNCATE TABLE dbo.Addresses;

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


	WITH sp
     AS (SELECT acct_branch_add_id AS add_id, acct_branch_add_type AS add_type, sp.acct_branch_lat AS lat, sp.acct_branch_lon AS lon FROM dbo.stg_p1 AS sp
         UNION
         SELECT cust_add_id, sp.cust_add_type, sp.cust_add_lat, sp.cust_add_lon FROM dbo.stg_p1 AS sp)
     SELECT *
     INTO Addresses
       FROM sp;

	
) ON [PRIMARY]
GO
 


-- 4) Create the Areas table

--SELECT 
--     [acct_area_id] [int] NOT NULL
--	 INTO dbo.Areas
--  FROM dbo.stg_p1 AS stg
--   ORDER BY stg.acct_area_id;
  
  
  -- 4.1) Load the Areas table
  
TRUNCATE TABLE dbo.Areas;

INSERT INTO dbo.Areas
SELECT DISTINCT 
       acct_area_id
  FROM dbo.stg_p1 AS stg
 ORDER BY acct_area_id;

 
-- 5) Create the Branches table

--CREATE TABLE dbo.Branches
--(branch_id          SMALLINT NOT NULL
--, acct_branch_desc   VARCHAR(100) NOT NULL
--, acct_branch_add_id INT NOT NULL
--, acct_region_id     INT NOT NULL
--)
--ON [PRIMARY];
--GO
  
  
  -- 5.1) Load the Branches table
  
TRUNCATE TABLE dbo.Branches;

INSERT INTO dbo.Branches
SELECT DISTINCT 
       branch_id
     , acct_branch_desc
     , acct_branch_add_id
     , acct_region_id
  FROM dbo.stg_p1 AS stg
 ORDER BY branch_id;

 -- 6) Create the Customers_Accounts_role table

--CREATE TABLE dbo.Customers_Accounts_role
--(acct_cust_role_id INT NOT NULL
--)
--ON [PRIMARY];
--GO
  
  
  -- 6.1) Load the Customers_Accounts_role table
  
TRUNCATE TABLE dbo.Customers_Accounts_role;

INSERT INTO dbo.Customer_Accounts_role
SELECT DISTINCT 
       acct_cust_role_id
  FROM dbo.stg_p1 AS stg
 ORDER BY acct_cust_role_id;

  -- 7) Create the Customers table

--CREATE TABLE dbo.Customers
--(cust_id         SMALLINT NOT NULL
--, last_name       VARCHAR(100) NOT NULL
--, first_name      VARCHAR(100) NOT NULL
--, gender          VARCHAR(1) NOT NULL
--, birth_date      [DATE] NOT NULL
--, cust_since_date [DATE] NOT NULL
--, pri_branch_id   SMALLINT NOT NULL
--, cust_rel_id     SMALLINT NOT NULL
--, cust_add_id     INT NOT NULL,
--)
--ON [PRIMARY];
--GO
  
  
  -- 7.1) Load the Customers table
  
TRUNCATE TABLE dbo.Customers;

INSERT INTO dbo.Customers
SELECT DISTINCT 
       cust_id
     , last_name
     , first_name
     , gender
     , birth_date
     , cust_since_date
     , pri_branch_id
     , cust_rel_id
     , cust_add_id
  FROM dbo.stg_p1 AS stg
 ORDER BY cust_id;

  -- 8) Create the Customers_Accounts table

--CREATE TABLE [dbo].[Customers_Accounts](
--	[acct_cust_id] [int] IDENTITY(1,1) NOT NULL,
--	[acct_id] [int] NOT NULL,
--	[cust_id] [smallint] NOT NULL,
--	[acct_cust_role_id] [smallint] NOT NULL,
-- CONSTRAINT [PK_Customers_Accounts] PRIMARY KEY CLUSTERED 
--(
--	[acct_cust_id] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
--) ON [PRIMARY]
--GO
  
  
  -- 8.1) Load the Customers_Accounts table
  
TRUNCATE TABLE dbo.Customers_Accounts;

INSERT INTO dbo.Customers_Accounts
SELECT DISTINCT 
       acct_id
     , cust_id
     , acct_cust_role_id
  FROM dbo.stg_p1 AS stg
 ORDER BY acct_id
        , cust_id;

 
  -- 9) Create the Customers_Branches table

--CREATE TABLE dbo.Customers_Branches
--(cust_id              SMALLINT NOT NULL
--, acct_id              INT NOT NULL
--, pri_branch_id        SMALLINT NOT NULL
--, cust_pri_branch_dist DECIMAL(7, 2) NOT NULL,
--)
--ON [PRIMARY];

--GO
  
  
  -- 9.1) Load the Customers_Branches table
  
TRUNCATE TABLE dbo.Customers_Branches;

INSERT INTO dbo.Customers_Branches
SELECT DISTINCT 
       cust_id
     , acct_id
     , pri_branch_id
     , cust_pri_branch_dist
  FROM dbo.stg_p1 AS stg
 ORDER BY cust_id;

   -- 10) Create the Products table

--CREATE TABLE dbo.Products
--(prod_id SMALLINT NOT NULL,
--)
--ON [PRIMARY];
--GO
  
  
  -- 10.1) Load the Products table
  
TRUNCATE TABLE dbo.Products;

INSERT INTO dbo.Products
SELECT DISTINCT 
       prod_id
  FROM dbo.stg_p1 AS stg
 ORDER BY prod_id;

    -- 11) Create the Regions table

--CREATE TABLE dbo.Regions
--(acct_region_id INT NOT NULL
--, acct_area_id   INT NOT NULL
--)
--ON [PRIMARY];
--GO
  
  
  -- 11.1) Load the Regions table
  
TRUNCATE TABLE dbo.Regions;

INSERT INTO dbo.Regions
SELECT DISTINCT 
       acct_region_id
     , acct_area_id AS L
  FROM dbo.stg_p1 AS stg
 ORDER BY acct_region_id;