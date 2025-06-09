# Startup Growth & Investment Analysis Using Azure Databricks, Synapse SQL & Power BI

This project presents an end-to-end data analysis pipeline focused on startup growth and investment trends. It begins with data transformation and exploratory analysis using Python in Azure Databricks, moves to structured querying in Azure Synapse SQL, and finishes with dynamic data visualization in Power BI.

---

#  Startup Growth & Investment Data Analysis (Azure + PySpark)

This project analyzes a global startup dataset using **Azure Databricks** and **PySpark** to uncover trends in funding, valuation, investor activity, and growth rate. It also includes data visualizations and an optional ML-based prediction module.

---

##  Project Objectives

- Analyze startup funding, valuation, and growth trends
- Identify high-efficiency and high-growth startups
- Explore geographic patterns using choropleth maps
- Build a feature-engineered dataset for ML modeling

---

##  Dataset Overview

The dataset includes the following fields:

- `Startup_Name`
- `Industry`
- `Country`
- `Funding_Rounds`
- `Investment_Amount_USD`
- `Valuation_USD`
- `Number_of_Investors`
- `Year_Founded`
- `Growth_Rate `

---

##  Technologies Used

| Component            | Description                                    |
|---------------------|------------------------------------------------|
| **Azure Databricks**| Distributed data processing and transformation |
| **Azure Data Lake** | Raw and cleaned data storage                   |
| **PySpark**         | Data wrangling, analysis, and ML pipeline      |
| **Plotly / Seaborn**| Visualizations                                 |
| **Matplotlib**      | Supplementary charts                           |

---


## Configuration
The project begins by importing key Python libraries for data analysis, visualization, and machine learning. It then sets up a Spark session on Azure Databricks, configured to securely access Azure Data Lake Storage Gen2 using OAuth 2.0 authentication. This enables seamless reading and processing of large-scale startup investment data directly from the cloud.


<img width="1087" alt="Screenshot 2025-06-09 at 10 43 01 AM" src="https://github.com/user-attachments/assets/0a004db2-b0fc-4a0f-94e4-e1291b3aa8e9" />

---

## Data Loading
The dataset is stored in CSV format in an Azure Data Lake container. Dataset is loaded using PySpark from Azure Data Lake Storage Gen2 via a securely configured Spark session. It contains key startup metrics such as investment, valuation, funding rounds, growth rate, and country information for analysis.

<img width="997" alt="Screenshot 2025-06-09 at 10 49 48 AM" src="https://github.com/user-attachments/assets/c3d4f70b-73a8-4c12-be69-b0a4bf651c1f" />


---

##  Data Cleaning & Transformation



<img width="959" alt="Screenshot 2025-06-09 at 11 09 03 AM" src="https://github.com/user-attachments/assets/98903ee9-5eac-4ffb-b6c4-841d9a854497" />

---

## Exploratory Data Analysis

1. Top 5 Funded Industries
   
<img width="890" alt="Screenshot 2025-06-09 at 11 01 37 AM" src="https://github.com/user-attachments/assets/e933bfd7-036d-4a85-b18c-e9253a12f4a1" />

 Insight: These industries received the most cumulative funding, indicating high investor confidence.

---

2. Country-wise Startup Count
   
<img width="785" alt="Screenshot 2025-06-09 at 11 04 03 AM" src="https://github.com/user-attachments/assets/b602dc42-5fcf-4347-bff7-8b8de462b05f" />

Insight: Australia, Brazil, and Singapore lead in startup count, showing strong innovation ecosystems, while the UK and USA remain major global startup hubs.

---

3. Yearly Startup Formation Trend
   
<img width="849" alt="Screenshot 2025-06-09 at 11 17 03 AM" src="https://github.com/user-attachments/assets/d197be0d-7d37-43d9-ae43-c4d96ec01ad9" />

Insight: Startup formation remained relatively steady from 2000 to 2023, with noticeable peaks in 2001, 2010, 2015, 2019, and 2021—indicating bursts of entrepreneurial activity, possibly influenced by favorable market conditions or technological advancements during those years.

---
4. Top 10 Industries by Total Investment
   
<img width="912" alt="Screenshot 2025-06-09 at 11 12 28 AM" src="https://github.com/user-attachments/assets/dff0a69f-37c5-4947-ad94-f53dd0383ddf" />


<img width="978" alt="Screenshot 2025-06-09 at 11 12 52 AM" src="https://github.com/user-attachments/assets/f149510d-b18a-487e-9afa-59934edb4382" />

Insight: The chart visualizes which industries have attracted the most capital. Sectors like FinTech, HealthTech, and EdTech often appear at the top, highlighting investor confidence and market demand.

---
5. Startups Founded per Year
   
<img width="863" alt="Screenshot 2025-06-09 at 12 02 35 PM" src="https://github.com/user-attachments/assets/4b8bf2cb-38b7-427a-9045-808cb751f873" />

<img width="915" alt="Screenshot 2025-06-09 at 12 02 57 PM" src="https://github.com/user-attachments/assets/e08577a1-0cb9-47dc-b6a9-6e45c7e729ab" />



Insight: There is a noticeable increase in startup formation between 2010 and 2020, peaking around 2016–2018. This indicates a global surge in entrepreneurial activity, possibly due to improved access to funding, accelerators, and tech ecosystems.

---

6. Correlation Between Investment & Valuation
   
<img width="842" alt="Screenshot 2025-06-09 at 11 25 59 AM" src="https://github.com/user-attachments/assets/c614481c-4f5b-468c-a973-b04349528733" />


<img width="855" alt="Screenshot 2025-06-09 at 11 26 12 AM" src="https://github.com/user-attachments/assets/88b9cd02-f3e6-4504-b057-81978334c616" />



Insight: A strong positive correlation is observed — as investment increases, startup valuation tends to rise. This aligns with investor expectations that larger funding rounds typically back higher potential ventures.

---

7. Average Growth Rate by Country
   
<img width="959" alt="Screenshot 2025-06-09 at 11 28 22 AM" src="https://github.com/user-attachments/assets/a9cd2a67-4feb-45e5-83a0-c8d20fdb2b7e" />


<img width="1003" alt="Screenshot 2025-06-09 at 11 29 59 AM" src="https://github.com/user-attachments/assets/ad146c32-3969-40ee-afc1-cff9b97c2dbf" />


Insight: Countries like Germany, USA, and Brazil show higher average startup growth rates, reflecting their thriving innovation ecosystems, government support, and growing market demand.

---

8. Startup Distribution by Top 5 Countries
   
<img width="873" alt="Screenshot 2025-06-09 at 11 33 53 AM" src="https://github.com/user-attachments/assets/61f54f2c-afdc-43ca-8486-31135741ad04" />




<img width="855" alt="Screenshot 2025-06-09 at 11 34 11 AM" src="https://github.com/user-attachments/assets/a17f11c4-f65a-428f-80d1-f0dfd5f9788d" />


Insighs: The USA, UK, Singapore, Brazil, and Australia represent the largest shares of startups in the dataset. These countries are likely hubs for startup development, supported by robust infrastructure and investor networks.

---

9. Valuation Distribution by Country
    
<img width="924" alt="Screenshot 2025-06-09 at 11 36 16 AM" src="https://github.com/user-attachments/assets/3bee1627-a160-44c1-bcc5-db92805b774b" />


<img width="983" alt="Screenshot 2025-06-09 at 11 36 33 AM" src="https://github.com/user-attachments/assets/4bdc217a-8039-4652-af7c-f41ca15d296d" />



Insight: Valuation varies widely within and across countries. Countries like the UK, Singapore, Brazil, USA, and Australia exhibit higher median valuations and pronounced outliers, reflecting their dynamic startup ecosystems. These markets show strong potential for large-scale success and attract significant investor interest.

---

10. Distribution of Funding Rounds by Industry

    
<img width="905" alt="Screenshot 2025-06-09 at 11 39 31 AM" src="https://github.com/user-attachments/assets/ff7f118c-1ce6-4b5b-868a-6ebcc2c5e99c" />


<img width="982" alt="Screenshot 2025-06-09 at 11 40 51 AM" src="https://github.com/user-attachments/assets/5df0305f-e27e-44f3-b44c-abd91ddd6620" />



Insight: Industries like Tech and Healthcare tend to have higher median and spread of funding rounds, indicating stronger investor interest and repeated fundraising cycles compared to other sectors.

---
11. Valuation for Startups Founded in the Last 5 Years
    
<img width="929" alt="Screenshot 2025-06-09 at 11 42 58 AM" src="https://github.com/user-attachments/assets/fecbaf28-c10f-4107-8417-0793270bbe60" />



<img width="982" alt="Screenshot 2025-06-09 at 11 43 15 AM" src="https://github.com/user-attachments/assets/2b49d0af-ff6e-44dc-b7fc-95ecabfa22a9" />


Insight: Recent startups mostly have lower valuations, with a small number showing high valuation outliers. This indicates a challenging but promising environment for newcomers.

---

12. Investment Amount vs. Valuation by Industry

<img width="925" alt="Screenshot 2025-06-09 at 11 48 27 AM" src="https://github.com/user-attachments/assets/2aef8b67-8c10-4a05-937f-fc11f7d5c44c" />


<img width="1064" alt="Screenshot 2025-06-09 at 11 45 25 AM" src="https://github.com/user-attachments/assets/1374d481-df2a-45fa-a03f-f81a90f806bd" />




Insight: Industries like Tech and Healthcare generally receive larger investments and achieve higher valuations, with multiple funding rounds indicating sustained investor interest.


---
## Investment Efficiency Analysis


<img width="914" alt="Screenshot 2025-06-09 at 11 52 29 AM" src="https://github.com/user-attachments/assets/a3256642-a6b2-4471-805b-120a941ce993" />


Insights: Top startups like Startup_229 and Startup_441 demonstrate high investment efficiency with valuation-to-investment ratios near 5, indicating they generate nearly five times the value for every dollar invested. This reflects strong financial performance and effective use of capital, making them standout examples of capital-efficient growth in the startup ecosystem.

---

## Geospatial Analysis 


<img width="757" alt="Screenshot 2025-06-09 at 12 04 56 PM" src="https://github.com/user-attachments/assets/79ace082-9377-4104-9df5-ba2f2896daa2" />



<img width="919" alt="Screenshot 2025-06-09 at 11 59 05 AM" src="https://github.com/user-attachments/assets/6e334378-a697-44aa-ba1c-4bd325a5ed82" />


Insights: This map shows how fast startups grow in each country. Darker shades mean higher growth. Countries like India, Singapore, and the UK stand out with strong startup growth, while lighter areas indicate slower growth. It gives a quick view of where startup ecosystems are thriving globally.

---

## ML-Based Growth Rate Prediction (PySpark MLlib)


<img width="988" alt="Screenshot 2025-06-09 at 12 08 02 PM" src="https://github.com/user-attachments/assets/8ee75a54-10e1-4c57-9281-abc01fa24909" />

Insights: Startups span diverse industries like Blockchain, SaaS, EdTech, and Fintech. EdTech startups (e.g., in Singapore and India) show exceptionally high growth rates (190.47 and 192.0). Investment and valuation figures vary widely, indicating diverse funding strategies. Countries like the UK, Singapore, and India feature prominently among high-growth startups. features_array successfully consolidates key numerical predictors for modeling growth.

---
## Key Insights

i. India, Singapore, and the UK lead in average startup growth, signaling strong ecosystems.

ii. EdTech startups in India and Singapore show extremely high growth rates.

iii. A strong positive correlation (~0.85) exists between investment amount and valuation.

iv. Top 5 countries by startup count: USA, India, UK, Germany, and Canada.

v. The valuation-to-investment ratio reveals which startups are most efficient in turning funds into value.

---
## Conclusion: 
This analysis shows that startups grow faster when they get more investment, especially in industries like EdTech and SaaS. Some countries, like the USA, India, and Singapore, have many successful startups. Startups that use their funding well tend to have higher value. Overall, investing wisely helps startups grow and succeed.














---



# Startup Growth & Investment Analysis Using Azure Synapse SQL

This project leverages Azure Synapse Analytics to perform scalable SQL-based data analysis on a global startup dataset. Using serverless SQL pools, we extract insights about funding trends, startup valuation, investor behavior, and growth patterns across industries and countries.

---

##  Project Objectives

- Utilize Azure Synapse SQL to analyze large-scale startup investment data

- Identify high-growth industries and countries

- Measure efficiency of funding and valuation strategies

- Derive actionable insights for stakeholders and investors

---

## Architecture & Setup 

Data Ingestion: CSV file uploaded to Azure Data Lake Storage Gen2.

Data Processing: Transformed using PySpark in Azure Synapse Notebooks.

Storage: Written back to a Lake Database and external table defined in Synapse SQL.

SQL Access: Connected using Serverless SQL Pool.


---

## Key SQL Queries & Insights

1. Top 5 Most Funded Industries

<img width="496" alt="Screenshot 2025-06-03 at 10 31 44 PM" src="https://github.com/user-attachments/assets/eacbaa89-3854-45a3-88d9-7aecc28413a7" />

![SQL script 1 (2)](https://github.com/user-attachments/assets/43d123e7-87d6-49e1-8628-0897063c3877)
<img width="458" alt="Screenshot 2025-06-03 at 10 36 57 PM" src="https://github.com/user-attachments/assets/66f9627a-635b-4604-a09d-720e3c8cd28b" />

Insight: These industries received the highest total investments, highlighting sectors with the strongest investor interest and highest growth potential.

---

2. Average Growth Rate by Industry


<img width="519" alt="Screenshot 2025-06-03 at 10 47 09 PM" src="https://github.com/user-attachments/assets/2aec21e1-c06b-49b2-b4bb-5e3d9f878b25" />



![SQL script 1 (3)](https://github.com/user-attachments/assets/f535d027-d488-413b-adeb-10a2201a3933)

<img width="413" alt="Screenshot 2025-06-03 at 10 40 49 PM" src="https://github.com/user-attachments/assets/52c340d6-b9bb-4ee8-a74b-304a17cb5e73" />

Insight: Industries with the highest average growth rate indicate strong business expansion and scalability potential, making them attractive for long-term investment.

---

3. Country-wise Startup Count

<img width="498" alt="Screenshot 2025-06-03 at 10 50 05 PM" src="https://github.com/user-attachments/assets/b069ced3-7664-4713-9875-a203dff1d07c" />

![SQL script 1 (4)](https://github.com/user-attachments/assets/616ea946-344e-44cf-868a-a177d2c4b189)

<img width="424" alt="Screenshot 2025-06-03 at 10 50 45 PM" src="https://github.com/user-attachments/assets/a30cd7a7-0d53-48d7-a5ca-6b96f92a1865" />

Insight: Countries with the highest number of startups reflect vibrant entrepreneurial ecosystems, robust support infrastructure, and investor interest in innovation.

---

4. A single value: the Pearson correlation coefficient.


<img width="654" alt="Screenshot 2025-06-03 at 11 00 54 PM" src="https://github.com/user-attachments/assets/6305a1dd-f120-4ee8-bf82-e92497b4de87" />


<img width="768" alt="Screenshot 2025-06-04 at 12 07 18 AM" src="https://github.com/user-attachments/assets/f916a3d4-430e-4b74-84a9-294066eb8e3d" />



Insight: A Pearson correlation value close to +1 indicates a strong positive relationship — meaning higher investments are generally associated with higher startup valuations.

---

5. Startups Founded After 2015 with Above Average Growth

<img width="793" alt="Screenshot 2025-06-03 at 11 14 35 PM" src="https://github.com/user-attachments/assets/c4a9ab5e-0db4-4b80-9593-3178edfd7bdc" />


![SQL script 1 (5)](https://github.com/user-attachments/assets/fbe92ab6-fe18-4aac-8c02-0409e0b2cbc2)


<img width="947" alt="Screenshot 2025-06-03 at 11 13 16 PM" src="https://github.com/user-attachments/assets/97731793-04fd-4077-b55d-8541b6ef9db5" />

Insight:
This highlights emerging startups that are both young and fast-growing, making them attractive targets for investors and partnerships.

---

6.Top 10 Startups by Valuation

<img width="640" alt="Screenshot 2025-06-03 at 11 17 48 PM" src="https://github.com/user-attachments/assets/99cd3638-5b46-48b6-84fa-fc021fbe4131" />


<img width="694" alt="Screenshot 2025-06-03 at 11 18 26 PM" src="https://github.com/user-attachments/assets/ca6d8154-9b6c-4c4b-ad01-3df30dade91d" />


![SQL script 1 (6)](https://github.com/user-attachments/assets/d5598d26-d7d7-4eaa-9d3b-0d74128c64ad)

Insight:
These are the most valuable startups in the dataset, often industry leaders or heavily backed by investors. Useful for spotting unicorns or market disruptors.

---

7. Average Number of Investors by Industry


<img width="599" alt="Screenshot 2025-06-03 at 11 26 09 PM" src="https://github.com/user-attachments/assets/8fbb99b5-381b-4aa6-8d5b-18cf9d477023" />


<img width="624" alt="Screenshot 2025-06-03 at 11 25 38 PM" src="https://github.com/user-attachments/assets/1ee60b23-bd44-4cdf-ac41-6d375032bb9f" />

Insight:
Industries with a higher average number of investors tend to attract greater market attention and confidence, indicating strong funding interest and potential for innovation.

---

8. Top Performing Industry by Avg Growth Rate


<img width="756" alt="Screenshot 2025-06-03 at 11 29 30 PM" src="https://github.com/user-attachments/assets/ce98f13b-a02b-4215-b52a-d98bb37c3e7b" />


<img width="829" alt="Screenshot 2025-06-03 at 11 29 45 PM" src="https://github.com/user-attachments/assets/e072384d-28c5-48bb-b8e0-e4765a8581e0" />

Insight:
This identifies the most rapidly expanding industry, helping stakeholders focus on high-growth sectors for strategic investments or business development.

---

9. Investment to Valuation Ratio (Efficiency)


<img width="887" alt="Screenshot 2025-06-03 at 11 31 47 PM" src="https://github.com/user-attachments/assets/a9314e28-89ba-4339-bb86-eb51dad4b93b" />



<img width="654" alt="Screenshot 2025-06-03 at 11 35 51 PM" src="https://github.com/user-attachments/assets/31803eb8-3043-489b-a51d-4b35a5a45a0e" />


<img width="974" alt="Screenshot 2025-06-03 at 11 32 25 PM" src="https://github.com/user-attachments/assets/33ec66b0-3e60-4d31-bc4f-3a141bbeae78" />

Insight:
This ratio shows how efficiently startups turn investment into valuation. A higher ratio indicates better capital efficiency, making these startups more attractive to investors.


---


10. Total Investment and Average Growth by Industry


<img width="679" alt="Screenshot 2025-06-03 at 11 40 32 PM" src="https://github.com/user-attachments/assets/8b40eeff-34b0-45b5-b24b-57dca9743d6c" />


![SQL script 1 (8)](https://github.com/user-attachments/assets/f1b566cb-3db1-43f2-bba0-a3421ee4e6e2)


![Screenshot 2025-06-03 at 11 40 04 PM](https://github.com/user-attachments/assets/e9cd5af5-b071-43b6-996e-7130c07d49be)

Insight:
Industries with high total investment and strong average growth are seen as high-potential sectors. This helps identify where resources and funding are concentrated.

---


11. Top 10 Industries by Total Investment

<img width="668" alt="Screenshot 2025-06-03 at 11 45 32 PM" src="https://github.com/user-attachments/assets/c2fee836-d152-44f4-9ca4-9ed93f6100a0" />


![SQL script 1 (9)](https://github.com/user-attachments/assets/a248d70a-9f74-4d6a-a656-a926200b0692)


<img width="603" alt="Screenshot 2025-06-03 at 11 45 53 PM" src="https://github.com/user-attachments/assets/6493e92e-4176-4524-98e1-285b65cfea44" />

Insight:
Reveals which industries are receiving the most funding, indicating investor confidence and sector popularity.

---

12. Average Growth Rate by Country



<img width="682" alt="Screenshot 2025-06-03 at 11 48 40 PM" src="https://github.com/user-attachments/assets/a9f09744-99a1-4a7a-bf07-8168c747c203" />


![SQL script 1 (10)](https://github.com/user-attachments/assets/dd0601ae-ca23-4afa-83fc-73b4daab0771)



<img width="771" alt="Screenshot 2025-06-03 at 11 49 08 PM" src="https://github.com/user-attachments/assets/c42c5920-fad5-4ed0-b6ab-29007ba59688" />

Insight:
Highlights which countries foster the fastest-growing startups, useful for investors targeting high-growth regions.


---

13. Correlation-like Insight: High-Funding, High-Valuation Startups


<img width="722" alt="Screenshot 2025-06-03 at 11 53 40 PM" src="https://github.com/user-attachments/assets/2c3bf46a-42bb-4eaf-b0d2-799de30c796e" />


<img width="651" alt="Screenshot 2025-06-03 at 11 55 34 PM" src="https://github.com/user-attachments/assets/970bdc2a-d4e3-43eb-a251-981f48898566" />


<img width="916" alt="Screenshot 2025-06-03 at 11 54 09 PM" src="https://github.com/user-attachments/assets/9f33dbf2-0535-49f6-92c9-52ea71fd570e" />


Insight:
Identifies premium startups with strong backing and market valuation, suggesting high confidence from investors.

---

14. Most Funded Startups by Country



<img width="735" alt="Screenshot 2025-06-04 at 12 00 20 AM" src="https://github.com/user-attachments/assets/f990f01f-707f-4d29-a928-59c9608d61d7" />



![SQL script 1 (12)](https://github.com/user-attachments/assets/d1a0252e-3288-4859-a3de-6771dad2bfe5)



<img width="668" alt="Screenshot 2025-06-04 at 12 00 46 AM" src="https://github.com/user-attachments/assets/d63c528a-fd32-402b-a027-6b0c9d774d6c" />

Insight:
Reveals leading startups in each country based on investment, providing a snapshot of regional startup champions.

---

15. Yearly Trends in Startup Foundation



<img width="724" alt="Screenshot 2025-06-04 at 12 04 37 AM" src="https://github.com/user-attachments/assets/e1026e7d-aed2-4418-a146-83606a9e5c3b" />



![SQL script 1 (14)](https://github.com/user-attachments/assets/6d64efee-865a-44ab-8c4e-60e46f9ae7ec)



<img width="797" alt="Screenshot 2025-06-04 at 12 04 52 AM" src="https://github.com/user-attachments/assets/5a2b843f-734e-402b-ab6b-cad92b51f267" />


Insight:
Shows how startup formation has evolved over time, useful for analyzing growth momentum and economic influence.

---


## Key Achievements:

i. Identified Top-Funded Industries: Technology and FinTech lead in total investment, indicating investor confidence and innovation trends.

ii. Country-Level Insights: The U.S., India, and the U.K. dominate in startup count and valuation, while emerging markets show promising growth rates.

iii. Correlation Analysis: A strong positive correlation exists between investment amount and valuation, confirming that higher investment often translates into greater market value.

iv. High-Growth Startups: Startups founded after 2015 with above-average growth were filtered, offering a curated list for potential investors.

v. Startup Formation Trends: Startup activity peaked in recent years, signaling a dynamic and growing ecosystem.

---
## Platform Benefit:

Azure Synapse enabled seamless integration of big data with SQL analytics, offering scalable performance and real-time insights without moving data out of the lakehouse.


---

## Conclusion:
This project successfully leveraged Azure Synapse SQL to perform a comprehensive analysis of startup growth and investment data. Key business and investment insights were derived from querying a structured dataset stored in Azure, enabling data-driven decisions for investors, incubators, and stakeholders.

---

# Startup Growth & Investment Analysis using Azure & Power BI

This project presents an end-to-end data analysis pipeline focused on startup growth and investment trends. The final step in the pipeline is creating a dynamic Power BI dashboard that visualizes insights extracted from the transformed and aggregated data prepared in Azure Databricks and Azure Synapse SQL.

---

# Visualizations:

<img width="1082" alt="Screenshot 2025-06-09 at 3 49 53 PM" src="https://github.com/user-attachments/assets/8bfdaf71-8f22-4dc4-b39c-ac57b89e4e0c" />


---

 ### 1. Startup Count by Country (Pie Chart)
   
- The USA (10.2%) and Australia (10.96%) lead in startup counts.

- Other top countries include the UK, Brazil, and Singapore, each contributing around 10% of the total.

- The startup ecosystem is fairly evenly distributed among the top countries, with no country overwhelmingly dominating.


---
### 2. Startups Founded Over Time (Line Chart)
   
- Startup formation peaked around the early 2000s and showed fluctuations in the following years.

- There is a notable dip in recent years, potentially due to global economic slowdowns or market saturation.

---
### 3. Total Startup, Investment, Growth Rate, Investors (KPI Cards)

- Total Startups: 5,000 startups analyzed.

- Total Investment: $12.28 Trillion in total investments.

- Average Growth Rate: 102.09 – indicating strong performance in scaling and market expansion.

- Number of Investors: 128,000+ unique investors engaged in startup funding.

---

### 4. Top 10 Industries by Total Investment (Bar Chart)

- HealthTech and E-commerce receive the highest investments.

- SaaS, Fintech, and Blockchain also attract significant capital.

- There's a clear investor preference for tech-driven and scalable sectors.

---

### 5. Most Funded Startups by Country (Stacked Bar Chart)

- Countries like the USA, China, and Australia house the most heavily funded startups.

- Multiple startups from different countries reach funding levels above $20B, showcasing global innovation hotspots.

- Startups are identified by ID (e.g., Startup_1015, Startup_1016), each contributing to their country's totals.

---

### 6. Valuation vs. Investment Scatter Plot
   
- A strong positive correlation between investment amount and startup valuation.

- Heavily invested startups tend to reach valuations upwards of $20B, confirming the high ROI expectations from large investments.

---

### 7. Average Growth Rate by Industry (Bar Chart)
- EdTech, Fintech, Blockchain industries top the list for average growth rate, scoring around 105.

- Biotech and HealthTech are on the lower side (~98–101), potentially due to longer R&D cycles.

---

### 8. Top 10 Startups by Valuation (Table)

- Highest valued startup: Startup_436 (Biotech) with ~$24.7B valuation.

- Others include AI, Fintech, and E-commerce sectors, indicating cross-industry dominance.

- Biotech appears multiple times, implying high investor confidence despite slower average growth.


---

### 9. Country-wise Investment Share (Donut Chart) 

- Displays each country’s share of total startup investment in USD.

- Highlights that USA, China, and Australia receive the highest funding.

- Emphasizes capital distribution, not just startup count.
  
---
### 10. Country Filter (Slicer)

- Allows selection/filtering by country (Australia, Canada, France, India, Brazil, China, etc.).

- Empowers dynamic dashboard filtering, enabling country-specific insights in real-time.


---


## Conclusion

The dashboard highlights that while startups are globally distributed, investment, growth and success are concentrated in specific countries and industries. These insights can guide strategic decisions for investors, policy makers, and founders aiming to enter or scale in high-potential markets.

---


