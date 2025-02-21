--STEP 1: CREATE A MASTER KEY
CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'AdventureWorks@25';

--STEP 2: CREATE DATABASE SCOPED CREDENTIAL
CREATE DATABASE SCOPED CREDENTIAL cred_tush
WITH IDENTITY = 'Managed Identity';

--STEP 3: CREATE EXTERNAL DATA SOURCE

CREATE EXTERNAL DATA SOURCE curated_layer
WITH 
(
    LOCATION = 'https://projectstorageaccount1.dfs.core.windows.net/projects/curated/AdventureWorks',
    CREDENTIAL = cred_tush
)

CREATE EXTERNAL DATA SOURCE refined_layer
WITH 
(
    LOCATION = 'https://projectstorageaccount1.dfs.core.windows.net/projects/refined/AdventureWorks',
    CREDENTIAL = cred_tush
)

--STEP 4: CREATE EXTERNAL FILE FORMAT
CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)

--STEP 5: CREATE EXTERNAL TABLE EXT_SALES

CREATE EXTERNAL TABLE refined.ext_sales
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE = refined_layer,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM refined.total_3years_sales

SELECT * FROM refined.ext_sales
