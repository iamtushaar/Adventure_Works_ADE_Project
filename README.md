# Adventure_Works_ADE_Project

Developed a fully automated data pipeline for processing Adventure Works data leveraging Azure cloud technologies. Key project steps include:

![image](https://github.com/iamtushaar/Adventure_Works_ADE_Project/blob/ad3fa189eb52594c9d9efe59e08162f4a73e5d10/Screenshots/End-to-End%20Pipeline.png)

Data Ingestion:
Utilized Azure Data Factory (ADF) to copy 10 CSV files from GitHub to the raw zone of Azure Data Lake Storage (ADLS). The process employed parameterized datasets and dynamic folder placements through a single copy activity for streamlined data organization.

Data Transformation:
Applied data cleansing and transformation techniques using Azure Databricks notebooks. Processed data was then loaded into the curated zone of ADLS, preparing it for analytics.

Data Integration & Analytics:
Created views on top of the curated data layer in Azure Synapse Analytics, enabling efficient querying and data processing for further analysis.

Power BI Integration:
Designed and created an external table in Azure Synapse Analytics, establishing direct connectivity to Power BI for real-time reporting and visualization.

Key Skills & Technologies:
Azure Data Factory, Azure Data Lake Storage, Azure Databricks, Azure Synapse Analytics, Power BI, ETL Processes, Parameterized Datasets, Cloud-based Data Engineering.

This project demonstrates my ability to work with large datasets, automate data pipelines, and integrate analytics solutions in a cloud environment, showcasing proficiency in modern data engineering tools and techniques.
