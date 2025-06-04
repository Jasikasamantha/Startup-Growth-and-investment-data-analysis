# Startup-Growth-and-investment-data-analysis


# Project Title: Startup Growth & Investment Analysis Using Azure Synapse SQL

# Dataset

Source: Azure Data Lake Storage Gen2

Table: [StartupGrowthDB].[dbo].[startup_growth_investment_data]

Columns:

Startup_Name

Industry

Funding_Rounds

Investment_Amount_USD

Valuation_USD

Number_of_Investors

Country

Year_Founded

Growth_Rate_Percent

# Architecture & Setup 
Data Ingestion: CSV file uploaded to Azure Data Lake Storage Gen2.

Data Processing: Transformed using PySpark in Azure Synapse Notebooks.

Storage: Written back to a Lake Database and external table defined in Synapse SQL.

SQL Access: Connected using Serverless SQL Pool.

# Key SQL Queries & Insights

1.Top 5 Most Funded Industries

<img width="496" alt="Screenshot 2025-06-03 at 10 31 44 PM" src="https://github.com/user-attachments/assets/eacbaa89-3854-45a3-88d9-7aecc28413a7" />

![SQL script 1 (2)](https://github.com/user-attachments/assets/43d123e7-87d6-49e1-8628-0897063c3877)
<img width="458" alt="Screenshot 2025-06-03 at 10 36 57 PM" src="https://github.com/user-attachments/assets/66f9627a-635b-4604-a09d-720e3c8cd28b" />


