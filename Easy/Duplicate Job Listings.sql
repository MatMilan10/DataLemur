-- Duplicate Job Listings

SELECT company_id, title, description, COUNT(job_id) AS job_count
FROM job_listings
GROUP BY company_id, title, description