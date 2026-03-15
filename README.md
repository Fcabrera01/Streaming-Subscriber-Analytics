# Streaming Subscriber Analytics Project

## Overview
This project analyzes subscriber data for a streaming service. It calculates:
- Monthly new subscribers
- Monthly churn
- Net growth
- Average subscription period (retention)
- Churn by subscription plan

## Data
- Sample subscriber data is in `data/Monthly Subscriber Growth and Churn.csv`
- Dates are in YYYY-DD-MM format
- Subscription plan information included

## SQL Scripts
- `SQL/dashboard_ready.sql`: Full dashboard-ready table with all metrics
- `SQL/monthly_new_subscribers.sql`: Monthly new subscribers
- `SQL/monthly_churn.sql`: Churn and retention calculations

## How to Run
1. Load `Monthly Subscriber Growth and Churn.csv` into PostgreSQL
2. Run the SQL scripts in order
3. Connect Tableau to the resulting dashboard-ready table
