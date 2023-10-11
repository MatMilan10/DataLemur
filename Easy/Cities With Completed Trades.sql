-- Cities With Completed Trades [Robinhood SQL Interview Question]

SELECT city, COUNT(order_id) AS total_orders FROM trades tr
INNER JOIN users us ON tr.user_id = us.user_id
WHERE status = 'Completed'
GROUP BY us.city
ORDER BY total_orders DESC
LIMIT 3;