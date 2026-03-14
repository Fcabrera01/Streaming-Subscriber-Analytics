-- Subscription Period (Retention in Days)
SELECT 
    subscriber_id,
    TO_DATE(join_date, 'DD-MM-YY') AS first_date,
    TO_DATE(cancel_date, 'DD-MM-YY') AS last_date,
    (TO_DATE(cancel_date, 'DD-MM-YY') - TO_DATE(join_date, 'DD-MM-YY')) AS sub_period_days
FROM subscriber
WHERE join_date IS NOT NULL AND join_date <> ''
  AND cancel_date IS NOT NULL AND cancel_date <> '';