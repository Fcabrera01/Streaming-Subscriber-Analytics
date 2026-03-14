-- Monthly Churn
SELECT 
    DATE_TRUNC('month', TO_DATE(cancel_date, 'DD-MM-YY')) AS month,
    COUNT(*) AS churned_subscribers
FROM subscriber
WHERE cancel_date IS NOT NULL AND cancel_date <> ''
GROUP BY DATE_TRUNC('month', TO_DATE(cancel_date, 'DD-MM-YY'))
ORDER BY month;