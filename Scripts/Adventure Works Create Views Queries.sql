--CREATE VIEW CALENDER

CREATE VIEW refined.calender 
AS
SELECT * 
FROM OPENROWSET(
    BULK 'https://projectstorageaccount1.dfs.core.windows.net/projects/curated/AdventureWorks/Calender/AdventureWorks_Calender.parquet/',
    FORMAT = 'PARQUET'
) as Calender_query

--CREATE VIEW CUSTOMER
CREATE VIEW refined.customers
AS
SELECT * 
FROM OPENROWSET(
    BULK 'https://projectstorageaccount1.dfs.core.windows.net/projects/curated/AdventureWorks/Customers/AdventureWorks_Customers.parquet/',
    FORMAT = 'PARQUET'
) as Customers_query

--CREATE VIEW Product category
CREATE VIEW refined.product_categories
AS
SELECT * 
FROM OPENROWSET(
    BULK 'https://projectstorageaccount1.dfs.core.windows.net/projects/curated/AdventureWorks/Product_Categories/AdventureWorks_Product_Categories.parquet/',
    FORMAT = 'PARQUET'
) as product_categories_query

--CREATE VIEW Product Subcategory
CREATE VIEW refined.product_subcategories
AS
SELECT * 
FROM OPENROWSET(
    BULK 'https://projectstorageaccount1.dfs.core.windows.net/projects/curated/AdventureWorks/Product_Subcategories/AdventureWorks_Product_Subcategories.parquet/',
    FORMAT = 'PARQUET'
) as product_subcategories_query

--CREATE VIEW Products
CREATE VIEW refined.products
AS
SELECT * 
FROM OPENROWSET(
    BULK 'https://projectstorageaccount1.dfs.core.windows.net/projects/curated/AdventureWorks/Products/AdventureWorks_Products.parquet/',
    FORMAT = 'PARQUET'
) as products_query

--CREATE VIEW Returns
CREATE VIEW refined.returns
AS
SELECT * 
FROM OPENROWSET(
    BULK 'https://projectstorageaccount1.dfs.core.windows.net/projects/curated/AdventureWorks/Returns/AdventureWorks_Returns.parquet/',
    FORMAT = 'PARQUET'
) as returns_query

--CREATE VIEW Territories
CREATE VIEW refined.territories
AS
SELECT * 
FROM OPENROWSET(
    BULK 'https://projectstorageaccount1.dfs.core.windows.net/projects/curated/AdventureWorks/Territories/AdventureWorks_Territories.parquet/',
    FORMAT = 'PARQUET'
) as Territories_query

--CREATE VIEW sales
CREATE VIEW refined.total_3years_sales
AS
SELECT * 
FROM OPENROWSET(
    BULK 'https://projectstorageaccount1.dfs.core.windows.net/projects/curated/AdventureWorks/Total_3years_sales/AdventureWorks_Total_3years_sales.parquet/',
    FORMAT = 'PARQUET'
) as total_3years_sales_query
