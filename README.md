# Streaming Subscriber Analytics Project

## Overview
This project analyzes subscriber data for a streaming service (Disney+, Hulu, ESPN+). It calculates:
- Monthly new subscribers
- Monthly churn
- Net growth
- Average subscription period (retention)
- Churn by subscription plan

## Data
- Sample subscriber data is in `Data/subscriber_sample.csv`
- Dates are in DD-MM-YY format
- Subscription plan information included

## SQL Scripts
- `SQL/dashboard_ready.sql`: Full dashboard-ready table with all metrics
- `SQL/monthly_subs.sql`: Monthly new subscribers
- `SQL/churn_analysis.sql`: Churn and retention calculations

## How to Run
1. Load `Supabase Snippet Monthly Subscriber Growth and Churn(3).csv` into PostgreSQL
2. Run the SQL scripts in order
3. Connect Tableau to the resulting dashboard-ready table
