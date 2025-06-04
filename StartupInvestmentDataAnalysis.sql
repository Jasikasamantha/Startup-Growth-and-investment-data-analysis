SELECT TOP (100) [Startup_Name]
,[Industry]
,[Funding_Rounds]
,[Investment_Amount_USD]
,[Valuation_USD]
,[Number_of_Investors]
,[Country]
,[Year_Founded]
,[Growth_Rate]
 FROM [StartupGrowthDB].[dbo].[startup_growth_investment_data]

--1.Top 5 Most Funded Industries

SELECT Industry, 
       SUM(Investment_Amount_USD) AS Total_Investment
FROM [StartupGrowthDB].[dbo].[startup_growth_investment_data]
GROUP BY Industry
ORDER BY Total_Investment DESC
OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY;

--Insights:These industries received the highest total investments, highlighting sectors with the strongest investor interest and highest growth potential.

--2.Average Growth Rate by Industry

SELECT Industry,
       AVG(Growth_Rate) AS Avg_Growth_Rate
FROM [StartupGrowthDB].[dbo].[startup_growth_investment_data]
GROUP BY Industry
ORDER BY Avg_Growth_Rate DESC;

--Insight: Industries with the highest average growth rate indicate strong business expansion and scalability potential, making them attractive for long-term investment.

--3.Country-wise Startup Count

SELECT Country, COUNT(*) AS Startup_Count
FROM [StartupGrowthDB].[dbo].[startup_growth_investment_data]
GROUP BY Country
ORDER BY Startup_Count DESC;

--Insight: Countries with the highest number of startups reflect vibrant entrepreneurial ecosystems, robust support infrastructure, and investor interest in innovation.

--4.A single value: the Pearson correlation coefficient.

WITH stats AS (
    SELECT 
        COUNT(*) AS n,
        SUM(Investment_Amount_USD) AS sum_x,
        SUM(Valuation_USD) AS sum_y,
        SUM(Investment_Amount_USD * Valuation_USD) AS sum_xy,
        SUM(POWER(Investment_Amount_USD, 2)) AS sum_x2,
        SUM(POWER(Valuation_USD, 2)) AS sum_y2
    FROM [StartupGrowthDB].[dbo].[startup_growth_investment_data]
    WHERE Investment_Amount_USD IS NOT NULL AND Valuation_USD IS NOT NULL
)
SELECT 
    (sum_xy - (sum_x * sum_y / n)) /
    SQRT((sum_x2 - POWER(sum_x, 2) / n) * (sum_y2 - POWER(sum_y, 2) / n)) AS Pearson_Correlation
FROM stats;

--Insight: A Pearson correlation value close to +1 indicates a strong positive relationship — meaning higher investments are generally associated with higher startup valuations.

--5.Startups Founded After 2015 with Above Average Growth

SELECT *
FROM [StartupGrowthDB].[dbo].[startup_growth_investment_data]
WHERE Year_Founded >= 2015
  AND Growth_Rate > (
    SELECT AVG(Growth_Rate) FROM [StartupGrowthDB].[dbo].[startup_growth_investment_data]
  )
ORDER BY Growth_Rate DESC;

--Insight: This highlights emerging startups that are both young and fast-growing, making them attractive targets for investors and partnerships.


--6.Top 10 Startups by Valuation

SELECT [Startup_Name], Industry, [Valuation_USD]
FROM [StartupGrowthDB].[dbo].[startup_growth_investment_data]
ORDER BY [Valuation_USD] DESC
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;

--Insight: These are the most valuable startups in the dataset, often industry leaders or heavily backed by investors. Useful for spotting unicorns or market disruptors.

--7.Average Number of Investors by Industry

SELECT Industry, 
       AVG([Number_of_Investors]) AS Avg_Investors
FROM [StartupGrowthDB].[dbo].[startup_growth_investment_data]
GROUP BY Industry
ORDER BY Avg_Investors DESC;

--Insight: Industries with a higher average number of investors tend to attract greater market attention and confidence, indicating strong funding interest and potential for innovation.

--8.Top Performing Industry by Avg Growth Rate

SELECT TOP 1 Industry, 
       AVG([Growth_Rate]) AS Avg_Growth
FROM [StartupGrowthDB].[dbo].[startup_growth_investment_data]
GROUP BY Industry
ORDER BY Avg_Growth DESC;

--Insight: This identifies the most rapidly expanding industry, helping stakeholders focus on high-growth sectors for strategic investments or business development.

--9.Investment to Valuation Ratio (Efficiency)

SELECT [Startup_Name],
       Industry,
       [Investment_Amount_USD],
       [Valuation_USD],
       CAST([Valuation_USD] AS FLOAT) / NULLIF([Investment_Amount_USD], 0) AS Investment_Efficiency_Ratio
FROM [StartupGrowthDB].[dbo].[startup_growth_investment_data]
WHERE [Investment_Amount_USD] IS NOT NULL AND [Valuation_USD] IS NOT NULL
ORDER BY Investment_Efficiency_Ratio DESC;

--Insight: This ratio shows how efficiently startups turn investment into valuation. A higher ratio indicates better capital efficiency, making these startups more attractive to investors.

--10.Total Investment and Average Growth by Industry

SELECT Industry,
       SUM([Investment_Amount_USD]) AS Total_Investment,
       AVG([Growth_Rate]) AS Avg_Growth
FROM [StartupGrowthDB].[dbo].[startup_growth_investment_data]
GROUP BY Industry
ORDER BY Total_Investment DESC;

--Insight: Industries with high total investment and strong average growth are seen as high-potential sectors. This helps identify where resources and funding are concentrated.


--11.Top 10 Industries by Total Investment

SELECT TOP 10 Industry, SUM(Investment_Amount_USD) AS Total_Investment
FROM [StartupGrowthDB].[dbo].[startup_growth_investment_data]
GROUP BY Industry
ORDER BY Total_Investment DESC;

--Insight: Reveals which industries are receiving the most funding, indicating investor confidence and sector popularity.

--12.Average Growth Rate by Country

SELECT Country, ROUND(AVG(Growth_Rate), 2) AS Avg_Growth_Rate
FROM [StartupGrowthDB].[dbo].[startup_growth_investment_data]
GROUP BY Country
ORDER BY Avg_Growth_Rate DESC;

--Insight: Highlights which countries foster the fastest-growing startups, useful for investors targeting high-growth regions.

-- 13.Correlation-like Insight: High-Funding, High-Valuation Startups

SELECT Startup_Name, Funding_Rounds, Investment_Amount_USD, Valuation_USD
FROM [StartupGrowthDB].[dbo].[startup_growth_investment_data]
WHERE Investment_Amount_USD > 10000000 AND Valuation_USD > 50000000
ORDER BY Valuation_USD DESC;

--Insight: Identifies premium startups with strong backing and market valuation, suggesting high confidence from investors.

--14. Most Funded Startups by Country

SELECT Country, MAX(Investment_Amount_USD) AS Max_Investment
FROM [StartupGrowthDB].[dbo].[startup_growth_investment_data]
GROUP BY Country
ORDER BY Max_Investment DESC;

--Insight: Reveals leading startups in each country based on investment, providing a snapshot of regional startup champions.

--15.Yearly Trends in Startup Foundation

SELECT Year_Founded, COUNT(*) AS Startups_Founded
FROM [StartupGrowthDB].[dbo].[startup_growth_investment_data]
GROUP BY Year_Founded
ORDER BY Year_Founded;

--Insight: Shows how startup formation has evolved over time, useful for analyzing growth momentum and economic influence.