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

Insights:These industries received the highest total investments, highlighting sectors with the strongest investor interest and highest growth potential.

2.Average Growth Rate by Industry


<img width="519" alt="Screenshot 2025-06-03 at 10 47 09 PM" src="https://github.com/user-attachments/assets/2aec21e1-c06b-49b2-b4bb-5e3d9f878b25" />



![SQL script 1 (3)](https://github.com/user-attachments/assets/f535d027-d488-413b-adeb-10a2201a3933)

<img width="413" alt="Screenshot 2025-06-03 at 10 40 49 PM" src="https://github.com/user-attachments/assets/52c340d6-b9bb-4ee8-a74b-304a17cb5e73" />

Insight: Industries with the highest average growth rate indicate strong business expansion and scalability potential, making them attractive for long-term investment.


3.Country-wise Startup Count

<img width="498" alt="Screenshot 2025-06-03 at 10 50 05 PM" src="https://github.com/user-attachments/assets/b069ced3-7664-4713-9875-a203dff1d07c" />

![SQL script 1 (4)](https://github.com/user-attachments/assets/616ea946-344e-44cf-868a-a177d2c4b189)

<img width="424" alt="Screenshot 2025-06-03 at 10 50 45 PM" src="https://github.com/user-attachments/assets/a30cd7a7-0d53-48d7-a5ca-6b96f92a1865" />

Insight:
Countries with the highest number of startups reflect vibrant entrepreneurial ecosystems, robust support infrastructure, and investor interest in innovation.

4.A single value: the Pearson correlation coefficient.


<img width="654" alt="Screenshot 2025-06-03 at 11 00 54 PM" src="https://github.com/user-attachments/assets/6305a1dd-f120-4ee8-bf82-e92497b4de87" />


<img width="768" alt="Screenshot 2025-06-04 at 12 07 18 AM" src="https://github.com/user-attachments/assets/f916a3d4-430e-4b74-84a9-294066eb8e3d" />



Insight:
A Pearson correlation value close to +1 indicates a strong positive relationship — meaning higher investments are generally associated with higher startup valuations.

5.Startups Founded After 2015 with Above Average Growth

<img width="793" alt="Screenshot 2025-06-03 at 11 14 35 PM" src="https://github.com/user-attachments/assets/c4a9ab5e-0db4-4b80-9593-3178edfd7bdc" />


![SQL script 1 (5)](https://github.com/user-attachments/assets/fbe92ab6-fe18-4aac-8c02-0409e0b2cbc2)


<img width="947" alt="Screenshot 2025-06-03 at 11 13 16 PM" src="https://github.com/user-attachments/assets/97731793-04fd-4077-b55d-8541b6ef9db5" />

Insight:
This highlights emerging startups that are both young and fast-growing, making them attractive targets for investors and partnerships.


6.Top 10 Startups by Valuation

<img width="640" alt="Screenshot 2025-06-03 at 11 17 48 PM" src="https://github.com/user-attachments/assets/99cd3638-5b46-48b6-84fa-fc021fbe4131" />


<img width="694" alt="Screenshot 2025-06-03 at 11 18 26 PM" src="https://github.com/user-attachments/assets/ca6d8154-9b6c-4c4b-ad01-3df30dade91d" />


![SQL script 1 (6)](https://github.com/user-attachments/assets/d5598d26-d7d7-4eaa-9d3b-0d74128c64ad)

Insight:
These are the most valuable startups in the dataset, often industry leaders or heavily backed by investors. Useful for spotting unicorns or market disruptors.

7.Average Number of Investors by Industry


<img width="599" alt="Screenshot 2025-06-03 at 11 26 09 PM" src="https://github.com/user-attachments/assets/8fbb99b5-381b-4aa6-8d5b-18cf9d477023" />


<img width="624" alt="Screenshot 2025-06-03 at 11 25 38 PM" src="https://github.com/user-attachments/assets/1ee60b23-bd44-4cdf-ac41-6d375032bb9f" />

Insight:
Industries with a higher average number of investors tend to attract greater market attention and confidence, indicating strong funding interest and potential for innovation.

8.Top Performing Industry by Avg Growth Rate


<img width="756" alt="Screenshot 2025-06-03 at 11 29 30 PM" src="https://github.com/user-attachments/assets/ce98f13b-a02b-4215-b52a-d98bb37c3e7b" />


<img width="829" alt="Screenshot 2025-06-03 at 11 29 45 PM" src="https://github.com/user-attachments/assets/e072384d-28c5-48bb-b8e0-e4765a8581e0" />

Insight:
This identifies the most rapidly expanding industry, helping stakeholders focus on high-growth sectors for strategic investments or business development.


9.Investment to Valuation Ratio (Efficiency)


<img width="887" alt="Screenshot 2025-06-03 at 11 31 47 PM" src="https://github.com/user-attachments/assets/a9314e28-89ba-4339-bb86-eb51dad4b93b" />



<img width="654" alt="Screenshot 2025-06-03 at 11 35 51 PM" src="https://github.com/user-attachments/assets/31803eb8-3043-489b-a51d-4b35a5a45a0e" />


<img width="974" alt="Screenshot 2025-06-03 at 11 32 25 PM" src="https://github.com/user-attachments/assets/33ec66b0-3e60-4d31-bc4f-3a141bbeae78" />

Insight:
This ratio shows how efficiently startups turn investment into valuation. A higher ratio indicates better capital efficiency, making these startups more attractive to investors.

10.Total Investment and Average Growth by Industry


<img width="679" alt="Screenshot 2025-06-03 at 11 40 32 PM" src="https://github.com/user-attachments/assets/8b40eeff-34b0-45b5-b24b-57dca9743d6c" />


![SQL script 1 (8)](https://github.com/user-attachments/assets/f1b566cb-3db1-43f2-bba0-a3421ee4e6e2)


![Screenshot 2025-06-03 at 11 40 04 PM](https://github.com/user-attachments/assets/e9cd5af5-b071-43b6-996e-7130c07d49be)

Insight:
Industries with high total investment and strong average growth are seen as high-potential sectors. This helps identify where resources and funding are concentrated.


11.11.Top 10 Industries by Total Investment

<img width="668" alt="Screenshot 2025-06-03 at 11 45 32 PM" src="https://github.com/user-attachments/assets/c2fee836-d152-44f4-9ca4-9ed93f6100a0" />


![SQL script 1 (9)](https://github.com/user-attachments/assets/a248d70a-9f74-4d6a-a656-a926200b0692)


<img width="603" alt="Screenshot 2025-06-03 at 11 45 53 PM" src="https://github.com/user-attachments/assets/6493e92e-4176-4524-98e1-285b65cfea44" />

Insight:
Reveals which industries are receiving the most funding, indicating investor confidence and sector popularity.

12.Average Growth Rate by Country



<img width="682" alt="Screenshot 2025-06-03 at 11 48 40 PM" src="https://github.com/user-attachments/assets/a9f09744-99a1-4a7a-bf07-8168c747c203" />


![SQL script 1 (10)](https://github.com/user-attachments/assets/dd0601ae-ca23-4afa-83fc-73b4daab0771)



<img width="771" alt="Screenshot 2025-06-03 at 11 49 08 PM" src="https://github.com/user-attachments/assets/c42c5920-fad5-4ed0-b6ab-29007ba59688" />

Insight:
Highlights which countries foster the fastest-growing startups, useful for investors targeting high-growth regions.

13.Correlation-like Insight: High-Funding, High-Valuation Startups


<img width="722" alt="Screenshot 2025-06-03 at 11 53 40 PM" src="https://github.com/user-attachments/assets/2c3bf46a-42bb-4eaf-b0d2-799de30c796e" />


<img width="651" alt="Screenshot 2025-06-03 at 11 55 34 PM" src="https://github.com/user-attachments/assets/970bdc2a-d4e3-43eb-a251-981f48898566" />


<img width="916" alt="Screenshot 2025-06-03 at 11 54 09 PM" src="https://github.com/user-attachments/assets/9f33dbf2-0535-49f6-92c9-52ea71fd570e" />


Insight:
Identifies premium startups with strong backing and market valuation, suggesting high confidence from investors.

14. Most Funded Startups by Country



<img width="735" alt="Screenshot 2025-06-04 at 12 00 20 AM" src="https://github.com/user-attachments/assets/f990f01f-707f-4d29-a928-59c9608d61d7" />



![SQL script 1 (12)](https://github.com/user-attachments/assets/d1a0252e-3288-4859-a3de-6771dad2bfe5)



<img width="668" alt="Screenshot 2025-06-04 at 12 00 46 AM" src="https://github.com/user-attachments/assets/d63c528a-fd32-402b-a027-6b0c9d774d6c" />

Insight:
Reveals leading startups in each country based on investment, providing a snapshot of regional startup champions.


15.Yearly Trends in Startup Foundation



<img width="724" alt="Screenshot 2025-06-04 at 12 04 37 AM" src="https://github.com/user-attachments/assets/e1026e7d-aed2-4418-a146-83606a9e5c3b" />



![SQL script 1 (14)](https://github.com/user-attachments/assets/6d64efee-865a-44ab-8c4e-60e46f9ae7ec)



<img width="797" alt="Screenshot 2025-06-04 at 12 04 52 AM" src="https://github.com/user-attachments/assets/5a2b843f-734e-402b-ab6b-cad92b51f267" />


Insight:
Shows how startup formation has evolved over time, useful for analyzing growth momentum and economic influence.







