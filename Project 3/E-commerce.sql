SELECT * FROM my_analytics.dataset_for_data_analytics;
SELECT COUNT(*) AS Total_Rows,
COUNT(DISTINCT OrderID) AS Unique_Orders
FROM dataset_for_data_analytics;
CREATE TABLE clean_dataset AS
SELECT DISTINCT * FROM dataset_for_data_analytics;
SELECT COUNT(*) FROM clean_dataset;
DROP TABLE dataset_for_data_analytics;

ALTER TABLE clean_dataset 
RENAME TO dataset_for_data_analytics;
SELECT COUNT(*) FROM dataset_for_data_analytics;
-- Total orders and revenue
SELECT 
  COUNT(*) AS Total_Orders,
  SUM(`TotalPrice/Revenue`) AS Total_Revenue,
  AVG(`TotalPrice/Revenue`) AS Avg_Order_Value
FROM dataset_for_data_analytics;
-- Revenue by Product
SELECT Product, 
  COUNT(*) AS Total_Orders,
  SUM(`TotalPrice/Revenue`) AS Total_Revenue
FROM dataset_for_data_analytics
GROUP BY Product
ORDER BY Total_Revenue DESC;
-- Orders by Status
SELECT OrderStatus, COUNT(*) AS Total_Orders
FROM dataset_for_data_analytics
GROUP BY OrderStatus
ORDER BY Total_Orders DESC;

-- Orders by Payment Method
SELECT PaymentMethod, COUNT(*) AS Total_Orders,
SUM(`TotalPrice/Revenue`) AS Total_Revenue
FROM dataset_for_data_analytics
GROUP BY PaymentMethod
ORDER BY Total_Orders DESC;

-- Orders by Referral Source
SELECT ReferralSource, COUNT(*) AS Total_Orders,
SUM(`TotalPrice/Revenue`) AS Total_Revenue
FROM dataset_for_data_analytics
GROUP BY ReferralSource
ORDER BY Total_Orders DESC;

-- Coupon Code Impact
SELECT CouponCode, COUNT(*) AS Total_Orders,
SUM(`TotalPrice/Revenue`) AS Revenue_Before_Discount,
SUM(`RevenueafterCouponDiscount`) AS Revenue_After_Discount
FROM dataset_for_data_analytics
GROUP BY CouponCode
ORDER BY Total_Orders DESC;