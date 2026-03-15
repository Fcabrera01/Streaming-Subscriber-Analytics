Streaming Subscriber Analytics Dashboard
Business Problem

Subscription streaming platforms depend heavily on subscriber retention and engagement. Small changes in churn rate or watch behavior can significantly impact revenue and growth.

This project analyzes subscriber data from a simulated streaming platform to identify patterns in:

User growth

Churn behavior

Engagement levels

Content preferences

The goal is to demonstrate how data analytics can support strategic decisions around retention and content investment, similar to how platforms like Netflix and Spotify evaluate user behavior.

Key Business Questions

This dashboard answers several important questions:

How quickly is the platform growing?

Are subscribers leaving at increasing rates?

Which user segments have the highest churn?

What content genres drive the most engagement?

How long do users typically stay subscribed?

Dashboard Overview

The interactive dashboard was built using Looker Studio to visualize subscriber trends and engagement metrics.

Key Metrics

The dashboard highlights several KPIs:

Total Subscribers

Monthly New Subscribers

Churn Rate

Average Watch Time

Monthly Revenue

Core Visualizations

Subscriber Growth Trend

Shows total subscribers over time.

Helps identify growth slowdowns or surges.

Churn Rate Trend

Tracks the percentage of users canceling subscriptions.

Retention Cohort Analysis

Groups users by signup month and measures retention over time.

Content Engagement

Displays watch hours by genre.

Subscriber Segmentation

Churn or engagement by:

Plan type

Region

Device type

Dataset

The project uses multiple datasets representing subscriber activity.

Subscribers Table
Column	Description
user_id	Unique subscriber identifier
signup_date	Date the user subscribed
plan_type	Subscription plan
region	User location
Engagement Table
Column	Description
user_id	Unique subscriber identifier
watch_hours	Total hours watched
favorite_genre	Most watched genre
Payments Table
Column	Description
user_id	Unique subscriber identifier
monthly_revenue	Subscription payment
billing_cycle	Monthly or annual
Tools Used

Looker Studio – dashboard visualization

Google Sheets – data storage and preparation

Microsoft Excel – data cleaning

GitHub – project documentation and version control

Key Insights

Some insights revealed through the analysis include:

Subscriber Growth

The platform experienced steady early growth but began slowing in later months.

Churn Behavior

Basic plan subscribers have higher churn compared to premium users.

Content Engagement

Drama and action genres drive the highest watch hours.

Retention

Users who watch content shortly after signing up tend to remain subscribed longer.

Project Workflow

Raw CSV Data
      ↓
Data Cleaning (Excel / Google Sheets)
      ↓
Data Integration
      ↓
Dashboard Design
      ↓
Interactive Analytics Dashboard

Future Improvements

Potential enhancements for the project include:

Predictive churn modeling

Recommendation system analysis

Additional engagement metrics

Automated data pipelines

Project Purpose

This project demonstrates practical skills in:

Data visualization

Business analytics

Dashboard design

Data storytelling

It was created as part of a data analytics portfolio to showcase how data insights can inform strategic decisions for subscription-based platforms.

