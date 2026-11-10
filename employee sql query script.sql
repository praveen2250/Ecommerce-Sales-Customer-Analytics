SELECT SUM(sales) AS Total_sales
FROM `ecommerce_analytics`.`sample - superstore`;
SELECT SUM(profit) AS Total_profits
FROM`ecommerce_analytics`.`sample - superstore`;
SELECT COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM `ecommerce_analytics`.`sample - superstore`;
SELECT SUM(Profit) / SUM(Sales) * 100 AS Profit_Margin_Percentage
FROM `ecommerce_analytics`.`sample - superstore`;

SELECT
    Category,
    SUM(Sales) AS Total_Sales
FROM `ecommerce_analytics`.`sample - superstore`
GROUP BY Category
ORDER BY Total_Sales DESC;

SELECT 
	Category,
    SUM(Profit) AS Total_Profit
    FROM  `ecommerce_analytics`.`sample - superstore`
    GROUP BY Category
    ORDER BY Total_Profit DESC;
    
    SELECT
	REGION,
    SUM(sales) AS Total_Sales
    FROM `ecommerce_analytics`.`sample - superstore`
    GROUP BY REGION
    ORDER BY Total_Sales DESC;
    
SELECT
    YEAR(STR_TO_DATE(`Order Date`, '%m/%d/%Y')) AS Order_Year,
    MONTH(STR_TO_DATE(`Order Date`, '%m/%d/%Y')) AS Order_Month,
    SUM(Sales) AS Total_Sales
FROM `ecommerce_analytics`.`sample - superstore`
GROUP BY
    YEAR(STR_TO_DATE(`Order Date`, '%m/%d/%Y')),
    MONTH(STR_TO_DATE(`Order Date`, '%m/%d/%Y'))
ORDER BY
    Order_Year ASC,
    Order_Month ASC;
    
SELECT
`Ship mode`,
SUM(Sales) AS Total_Sales
FROM `ecommerce_analytics`.`sample - superstore`
GROUP BY `Ship Mode`
ORDER BY Total_sales DESC;
 
 SELECT 
 segment,
 SUM(Profit) AS Total_profit
FROM `ecommerce_analytics`.`sample - superstore`
GROUP BY segment
ORDER BY Total_Profit DESC;

SELECT
`Product Name`,
SUM(Profit) AS Total_Profits
FROM `ecommerce_analytics`.`sample - superstore`
GROUP BY `Product Name`
ORDER BY Total_Profits DESC
LIMIT 5;

SELECT
State,
SUM(Sales) AS Total_Sales
FROM `ecommerce_analytics`.`sample - superstore`
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 5;

SELECT 
`Sub-Category`,
SUM(Sales) AS Total_Sales
FROM `ecommerce_analytics`.`sample - superstore`
GROUP BY `Sub-Category`
ORDER BY Total_Sales DESC 
LIMIT 5;

SELECT
Category,
SUM(Quantity) AS TOTAL_Quantity
FROM `ecommerce_analytics`.`sample - superstore`
GROUP BY Category
ORDER BY Total_Quantity DESC;

SELECT 
Category,
AVG(Discount) *100 AS Average_Discount_percentage
FROM `ecommerce_analytics`.`sample - superstore`
GROUP BY category
ORDER BY Average_Discount_Percentage DESC;

SELECT
State,
SUM(Profit) AS Total_Profit
FROM `ecommerce_analytics`.`sample - superstore`
GROUP BY State
ORDER BY Total_Profit DESC
LIMIT 5;

SELECT
`Product Name`,
SUM(Profit) AS Total_profit
FROM `ecommerce_analytics`.`sample - superstore`
GROUP BY `Product Name`
ORDER BY Total_Profit ASC
LIMIT 5;

SELECT
`ship Mode`,
SUM(Profit) AS Total_Profit
FROM `ecommerce_analytics`.`sample - superstore`
GROUP BY `Ship Mode`
ORDER BY Total_Profit DESC;

SELECT
Segment,
AVG(Sales)  AS Average_Sales,
SUM(Profit)  AS Total_Profit
FROM `ecommerce_analytics`.`sample - superstore`
GROUP BY Segment
ORDER BY Average_Sales DESC;

SELECT
segment,
COUNT(DISTINCT `Order ID`) AS Total_orders
 FROM `ecommerce_analytics`.`sample - superstore`
GROUP BY segment
ORDER BY Total_Orders DESC;

SELECT 
`Customer Name`,
SUM(sales) AS Total_sales
FROM `ecommerce_analytics`.`sample - superstore`
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT
`Customer Name`,
SUM(Profit) AS Total_Profit
FROM `ecommerce_analytics`.`sample - superstore`
GROUP BY `Customer Name`
ORDER BY Total_profit DESC
LIMIT 10;

SELECT 
YEAR(STR_TO_DATE(`Order Date`, '%m/%d/%Y')) AS Order_Year,
COUNT(DISTINCT `Order ID`) AS Total_orderss
FROM `ecommerce_analytics`.`sample - superstore`
GROUP BY YEAR(STR_TO_DATE(`Order Date`, '%m/%d/%Y'))
ORDER BY Order_Year ASC;

SELECT
YEAR(STR_TO_DATE(`Order Date`, '%m/%d/%Y')) AS Order_Year,
SUM(Sales) AS Total_Sales
FROM `ecommerce_analytics`.`sample - superstore`
GROUP BY YEAR (STR_TO_DATE(`Order Date`, '%m/%d/%Y'))
ORDER BY Total_Sales DESC;

SELECT
YEAR(STR_TO_DATE(`Order Date`, '%m/%d/%Y')) AS Order_Year,
SUM(Profit) AS Total_Profit
FROM `ecommerce_analytics`.`sample - superstore`
GROUP BY YEAR (STR_TO_DATE(`Order Date`, '%m/%d/%Y'))
ORDER BY Order_Year ASC;

SELECT
YEAR(STR_TO_DATE(`Order Date`,'%m/%d/%Y/')) AS Order_Year,
AVG(Discount) *100 AS Average_Discount_Percentage
FROM `ecommerce_analytics`.`sample - superstore`
GROUP BY YEAR(STR_TO_DATE(`Order Date`,'%m/%d/%Y/'))
ORDER BY Order_Year ASC;

SELECT
YEAR(STR_TO_DATE(`Order Date`,'%m/%d/%Y')) AS Order_Year,
SUM(Quantity) AS Total_Quantity
FROM `ecommerce_analytics`.`sample - superstore`
GROUP BY YEAR(STR_TO_DATE(`Order Date`,'%m/%d/%Y'))
ORDER BY Order_Year ASC;

SELECT
Category,
SUM(Sales) AS Total_Sales,
SUM(Profit) AS Total_Profit,
(SUM(Profit) / SUM(Sales)) *100 AS Profit_Margin_Percentage
FROM `ecommerce_analytics`.`sample - superstore`
GROUP BY Category
ORDER BY Profit_Margin_Percentage DESC;

SELECT
COUNT(DISTINCT `Order ID`) AS Total_Orders,
SUM(Sales) AS Total_sales,
SUM(Profit) AS Total_profit,
SUM(Quantity) AS Total_Quantity_Sold,
(SUM(Profit) / SUM(Sales)) *100 AS Overall_Profit_Margin
 FROM `ecommerce_analytics`.`sample - superstore`