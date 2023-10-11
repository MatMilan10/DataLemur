-- Laptop vs. Mobile Viewership [New York Times SQL Interview Question]

SELECT 
COUNT(CASE WHEN device_type = 'laptop' THEN '1' END) AS laptop_reviews,
COUNT(CASE WHEN device_type IN ('tablet', 'phone') THEN '2' END)  AS mobile_views
FROM viewership;