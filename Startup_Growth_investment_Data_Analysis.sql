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


--2.Average Growth Rate by Industry

SELECT Industry,
       AVG(Growth_Rate) AS Avg_Growth_Rate
FROM [StartupGrowthDB].[dbo].[startup_growth_investment_data]
GROUP BY Industry
ORDER BY Avg_Growth_Rate DESC;

--3.Country-wise Startup Count

SELECT Country, COUNT(*) AS Startup_Count
FROM [StartupGrowthDB].[dbo].[startup_growth_investment_data]
GROUP BY Country
ORDER BY Startup_Count DESC;



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

--Insights: Values close to +1 indicate strong positive correlation (investment increases as valuation increases).

--5.Startups Founded After 2015 with Above Average Growth

SELECT *
FROM [StartupGrowthDB].[dbo].[startup_growth_investment_data]
WHERE Year_Founded >= 2015
  AND Growth_Rate > (
    SELECT AVG(Growth_Rate) FROM [StartupGrowthDB].[dbo].[startup_growth_investment_data]
  )
ORDER BY Growth_Rate DESC;

--6.Top 10 Startups by Valuation

SELECT [Startup_Name], Industry, [Valuation_USD]
FROM [StartupGrowthDB].[dbo].[startup_growth_investment_data]
ORDER BY [Valuation_USD] DESC
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;

--7.Average Number of Investors by Industry
SELECT Industry, 
       AVG([Number_of_Investors]) AS Avg_Investors
FROM [StartupGrowthDB].[dbo].[startup_growth_investment_data]
GROUP BY Industry
ORDER BY Avg_Investors DESC;

--8.Top Performing Industry by Avg Growth Rate

SELECT TOP 1 Industry, 
       AVG([Growth_Rate]) AS Avg_Growth
FROM [StartupGrowthDB].[dbo].[startup_growth_investment_data]
GROUP BY Industry
ORDER BY Avg_Growth DESC;

--9.Investment to Valuation Ratio (Efficiency)

SELECT [Startup_Name],
       Industry,
       [Investment_Amount_USD],
       [Valuation_USD],
       CAST([Valuation_USD] AS FLOAT) / NULLIF([Investment_Amount_USD], 0) AS Investment_Efficiency_Ratio
FROM [StartupGrowthDB].[dbo].[startup_growth_investment_data]
WHERE [Investment_Amount_USD] IS NOT NULL AND [Valuation_USD] IS NOT NULL
ORDER BY Investment_Efficiency_Ratio DESC;


--10.Total Investment and Average Growth by Industry
SELECT Industry,
       SUM([Investment_Amount_USD]) AS Total_Investment,
       AVG([Growth_Rate]) AS Avg_Growth
FROM [StartupGrowthDB].[dbo].[startup_growth_investment_data]
GROUP BY Industry
ORDER BY Total_Investment DESC;
