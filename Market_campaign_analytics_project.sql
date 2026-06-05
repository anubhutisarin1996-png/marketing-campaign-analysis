SELECT TOP 10 *
FROM dbo.marketing_campaign_performance_$

SELECT COUNT(*) AS Total_Records
FROM dbo.marketing_campaign_performance_$;

SELECT Channel,
SUM(Revenue_USD) AS Total_Revenue
FROM dbo.marketing_campaign_performance_$
GROUP BY Channel
ORDER BY Total_Revenue DESC;

SELECT TOP 1 *
FROM dbo.marketing_campaign_performance_$;

SELECT Channel,
AVG(ROI) AS Avg_ROI
FROM dbo.marketing_campaign_performance_$
GROUP BY Channel
ORDER BY Avg_ROI DESC;

SELECT Channel,
AVG(CTR) AS Avg_CTR
FROM dbo.marketing_campaign_performance_$
GROUP BY Channel
ORDER BY Avg_CTR DESC;

SELECT Channel,
AVG(CPL) AS Avg_CPL,
AVG(CPA) AS Avg_CPA
FROM dbo.marketing_campaign_performance_$
GROUP BY Channel
ORDER BY Avg_CPA ASC;

SELECT Channel,
AVG(Conversion_Rate) AS Avg_Conversion_Rate
FROM dbo.marketing_campaign_performance_$
GROUP BY Channel
ORDER BY Avg_Conversion_Rate DESC;

SELECT TOP 5 CampaignID,
Channel,
Revenue_USD
FROM dbo.marketing_campaign_performance_$
ORDER BY Revenue_USD DESC;

SELECT TOP 5 CampaignID,
Channel,
ROI
FROM dbo.marketing_campaign_performance_$
ORDER BY ROI DESC;