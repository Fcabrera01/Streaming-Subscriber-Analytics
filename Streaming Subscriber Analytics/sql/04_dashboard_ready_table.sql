-- Dashboard-ready Table with Churn by Plan
WITH monthly_new AS (
    SELECT 
        DATE_TRUNC('month', TO_DATE(join_date, 'DD-MM-YY')) AS month,
        COUNT(*) AS new_subscribers
    FROM subscriber
    WHERE join_date IS NOT NULL AND join_date <> ''
    GROUP BY DATE_TRUNC('month', TO_DATE(join_date, 'DD-MM-YY'))
),
monthly_churn AS (
    SELECT 
        DATE_TRUNC('month', TO_DATE(cancel_date, 'DD-MM-YY')) AS month,
        subscription_plan,
        COUNT(*) AS churned_subscribers,
        AVG(TO_DATE(cancel_date, 'DD-MM-YY') - TO_DATE(join_date, 'DD-MM-YY')) AS avg_subscription_days
    FROM subscriber
    WHERE cancel_date IS NOT NULL AND cancel_date <> ''
      AND join_date IS NOT NULL AND join_date <> ''
    GROUP BY DATE_TRUNC('month', TO_DATE(cancel_date, 'DD-MM-YY')), subscription_plan
),
plans_summary AS (
    SELECT 
        month,
        SUM(churned_subscribers) AS total_churn,
        MAX(avg_subscription_days) AS avg_subscription_days
    FROM monthly_churn
    GROUP BY month
)
SELECT 
    COALESCE(n.month, p.month) AS month,
    COALESCE(n.new_subscribers, 0) AS new_subscribers,
    COALESCE(p.total_churn, 0) AS churned_subscribers,
    COALESCE(n.new_subscribers, 0) - COALESCE(p.total_churn, 0) AS net_growth,
    COALESCE(p.avg_subscription_days, 0) AS avg_subscription_days,
    STRING_AGG(mc.subscription_plan || ':' || mc.churned_subscribers, ', ') AS churn_by_plan
FROM monthly_new n
FULL OUTER JOIN plans_summary p
    ON n.month = p.month
LEFT JOIN monthly_churn mc
    ON mc.month = COALESCE(n.month, p.month)
GROUP BY month, new_subscribers, total_churn, avg_subscription_days
ORDER BY month;