-- Monthly New Subscribers
SELECT 
    DATE_TRUNC('month', TO_DATE(join_date, 'DD-MM-YY')) AS month,
    COUNT(*) AS new_subscribers
FROM subscriber
WHERE join_date IS NOT NULL AND join_date <> ''
GROUP BY DATE_TRUNC('month', TO_DATE(join_date, 'DD-MM-YY'))
ORDER BY month;