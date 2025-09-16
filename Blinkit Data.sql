SELECT * FROM [BlinkIT Grocery Data]

SELECT CAST(SUM(Total_Sales)/1000000 AS DECIMAL(10,2)) AS TOTAL_Sales_Millions
FROM [BlinkIT Grocery Data]
WHERE Outlet_Establishment_Year = 2022

SELECT CAST(AVG (Total_Sales) AS DECIMAL(10,0)) AS Avg_Sales FROM [BlinkIT Grocery Data]

SELECT COUNT(*) AS Number_Of_Items FROM [BlinkIT Grocery Data]

SELECT CAST(AVG(Rating) AS DECIMAL(10,2)) AS AVG_Rating FROM [BlinkIT Grocery Data]

SELECT Top 5 Item_Type,
                         CAST(SUM(Total_Sales)/1000 AS DECIMAL(10,2)) Total_Sales_Thousands,
                         CAST(AVG (Total_Sales) AS DECIMAL(10,0)) AS Avg_Sales,
                         COUNT(*) AS Number_Of_Items,
                         CAST(AVG(Rating) AS DECIMAL(10,2)) AS AVG_Rating
FROM [BlinkIT Grocery Data]
GROUP BY Item_Type
ORDER BY Total_Sales_Thousands DESC

SELECT Outlet_Location_Type, Item_Fat_Content,
                         CAST(SUM(Total_Sales)/1000 AS DECIMAL(10,2)) Total_Sales,
                         CAST(AVG (Total_Sales) AS DECIMAL(10,0)) AS Avg_Sales,
                         COUNT(*) AS Number_Of_Items,
                         CAST(AVG(Rating) AS DECIMAL(10,2)) AS AVG_Rating
FROM [BlinkIT Grocery Data]
GROUP BY Outlet_Location_Type, ITEM_FAT_CONTENT
ORDER BY Total_Sales ASC

SELECT Outlet_Establishment_Year, 
                         CAST(SUM(Total_Sales) AS DECIMAL(10,2)) Total_Sales
                         
FROM [BlinkIT Grocery Data]
GROUP BY Outlet_Establishment_Year
ORDER BY Outlet_Establishment_Year ASC

SELECT Outlet_Size, 
                         CAST(SUM(Total_Sales) AS DECIMAL(10,2)) Total_Sales,
                         CAST(( SUM(Total_Sales) *100.0/ SUM(SUM(Total_Sales)) OVER()) AS DECIMAL(10,2)) AS Sales_Percentage
FROM [BlinkIT Grocery Data]
GROUP BY Outlet_Size
ORDER BY Total_Sales DESC

SELECT Outlet_Location_Type, 
                         CAST(SUM(Total_Sales) AS DECIMAL(10,2)) Total_Sales,
                         CAST(AVG (Total_Sales) AS DECIMAL(10,0)) AS Avg_Sales,
                         COUNT(*) AS Number_Of_Items,
                         CAST(AVG(Rating) AS DECIMAL(10,2)) AS AVG_Rating
FROM [BlinkIT Grocery Data]
GROUP BY Outlet_Location_Type
ORDER BY Total_Sales DESC