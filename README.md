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

2.Average Growth Rate by Industry


<img width="519" alt="Screenshot 2025-06-03 at 10 47 09 PM" src="https://github.com/user-attachments/assets/2aec21e1-c06b-49b2-b4bb-5e3d9f878b25" />



![SQL script 1 (3)](https://github.com/user-attachments/assets/f535d027-d488-413b-adeb-10a2201a3933)

<img width="413" alt="Screenshot 2025-06-03 at 10 40 49 PM" src="https://github.com/user-attachments/assets/52c340d6-b9bb-4ee8-a74b-304a17cb5e73" />

3.Country-wise Startup Count

<img width="498" alt="Screenshot 2025-06-03 at 10 50 05 PM" src="https://github.com/user-attachments/assets/b069ced3-7664-4713-9875-a203dff1d07c" />

![SQL script 1 (4)](https://github.com/user-attachments/assets/616ea946-344e-44cf-868a-a177d2c4b189)

<img width="424" alt="Screenshot 2025-06-03 at 10 50 45 PM" src="https://github.com/user-attachments/assets/a30cd7a7-0d53-48d7-a5ca-6b96f92a1865" />

4.A single value: the Pearson correlation coefficient.


<img width="654" alt="Screenshot 2025-06-03 at 11 00 54 PM" src="https://github.com/user-attachments/assets/6305a1dd-f120-4ee8-bf82-e92497b4de87" />




<img width="305" alt="Screenshot 2025-06-03 at 11 02 04 PM" src="https://github.com/user-attachments/assets/4a9d8a80-9051-416c-835d-092797a22bbe" />

Insights: Values close to +1 indicate strong positive correlation (investment increases as valuation increases).

5.Startups Founded After 2015 with Above Average Growth

<img width="793" alt="Screenshot 2025-06-03 at 11 14 35 PM" src="https://github.com/user-attachments/assets/c4a9ab5e-0db4-4b80-9593-3178edfd7bdc" />


![SQL script 1 (5)](https://github.com/user-attachments/assets/fbe92ab6-fe18-4aac-8c02-0409e0b2cbc2)


<img width="947" alt="Screenshot 2025-06-03 at 11 13 16 PM" src="https://github.com/user-attachments/assets/97731793-04fd-4077-b55d-8541b6ef9db5" />

6.Top 10 Startups by Valuation

<img width="640" alt="Screenshot 2025-06-03 at 11 17 48 PM" src="https://github.com/user-attachments/assets/99cd3638-5b46-48b6-84fa-fc021fbe4131" />


<img width="694" alt="Screenshot 2025-06-03 at 11 18 26 PM" src="https://github.com/user-attachments/assets/ca6d8154-9b6c-4c4b-ad01-3df30dade91d" />


![SQL script 1 (6)](https://github.com/user-attachments/assets/d5598d26-d7d7-4eaa-9d3b-0d74128c64ad)

