-- Page With No Likes [Facebook SQL Interview Question]

SELECT page_id 
FROM pages
WHERE page_id NOT IN (
    SELECT p.page_id FROM pages p
    INNER JOIN page_likes pl ON p.page_id = pl.page_id
);