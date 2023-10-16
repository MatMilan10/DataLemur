-- App Click-through Rate (CTR)

SELECT app_id, ROUND((100.0 * cli / imp), 2) AS ctr 
FROM (SELECT
app_id,
COUNT(CASE WHEN event_type = 'impression' THEN '1' END) AS imp,
COUNT(CASE WHEN event_type = 'click' THEN '2' END) AS cli
FROM events 
WHERE EXTRACT(YEAR FROM timestamp) = 2022
GROUP BY app_id) AS tb