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

SELECT Industry, 
       SUM(Investment_Amount_USD) AS Total_Investment
FROM [StartupGrowthDB].[dbo].[startup_growth_investment_data]
GROUP BY Industry
ORDER BY Total_Investment DESC
OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY;
