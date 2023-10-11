-- Histogram of Tweets [Twitter SQL Interview Question]

SELECT tweet_bucket, COUNT(user_id) AS users_num 
FROM (SELECT COUNT(tweet_id) AS tweet_bucket, user_id
        FROM tweets
        WHERE tweet_date BETWEEN '2022-01-01 00:00:00' AND '2022-12-31 23:59:59'
        GROUP BY user_id) AS tb
GROUP BY tweet_bucket;