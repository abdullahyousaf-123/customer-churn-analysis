# Customer Churn Analysis

## Project Overview

This project analyzes customer churn for a telecommunications company using customer demographic, service, contract, payment, tenure, and billing data.

The goal is to understand customer churn patterns, identify customer segments with relatively high observed churn rates, and present the findings through SQL analysis and an interactive Power BI dashboard.

**Tools:** MySQL, Power BI, Google Sheets, Kaggle


## Business Problem

The telecommunications company wants to better understand customer churn and identify patterns among customers who leave.

This analysis investigates:

* Overall customer churn rate
* Churn by contract type
* Churn by customer tenure
* Churn by internet service
* Churn by payment method
* Churn by Online Security and Tech Support
* Customer segments with relatively high observed churn rates

The findings can help the business identify areas that require further investigation into customer retention and customer experience.


## Dataset

The project uses the **Telco Customer Churn** dataset containing **7,043 customer records**.

The dataset includes information about:

* Customer demographics
* Tenure
* Phone and internet services
* Online Security and Tech Support
* Contract type
* Payment method
* Monthly charges
* Total charges
* Churn status

## Data Preparation

Before analysis, the data was checked for:

* Total number of records
* Missing and blank values
* Duplicate customer IDs
* Data types and unusual values
* Valid ranges and category values

The original `TotalCharges` column contained blank values for some customers. A cleaned numerical column named `TotalCharges_Clean` was created for analysis.


## Key Findings

* **Overall churn rate:** 26.54% — 1,869 out of 7,043 customers churned.
* **New customers:** Customers with 0–12 months of tenure had a churn rate of 47.44%.
* **Contract type:** Month-to-month customers had a higher observed churn rate than customers on one-year or two-year contracts.
* **Internet service:** Among new customers, fiber-optic users had a churn rate of 69.88%.
* **Customer segment:** New customers with both fiber-optic service and a month-to-month contract had an observed churn rate of 70.20%.
* **Payment method:** Among new customers, electronic-check users had a churn rate of 61.96%.
* **Online Security:** Among new customers, those without Online Security had a churn rate of 60.84%.
* **Tech Support:** Among new customers, those without Tech Support had a churn rate of 60.29%.

These findings describe observed relationships in the dataset and should not be interpreted as proof that a particular service, payment method, or contract directly causes churn.


## Power BI Dashboard

The interactive Power BI dashboard provides an overview of customer churn and allows users to explore different customer segments.

### KPIs

* Total Customers
* Churned Customers
* Churn Rate
* Average Monthly Charges
* Average Customer Tenure

### Visualizations

* Churn Rate by Contract Type
* Churn Rate by Internet Service
* Churn Rate by Payment Method
* Churn Rate by Tenure Group
* Churn Rate by Online Security
* Churn Rate by Tech Support

### Interactive Filters

* Contract Type
* Internet Service
* Tenure Group


## Project Structure

```text
Customer-Churn-Analysis/
│
├── SQL/
│   └── telco_churn_analysis.sql
│
├── PowerBI/
│   └── Customer_Churn_Analysis.pbix
│
├── Documentation/
│   └── Project_Summary.md
│
└── README.md
```

## Skills Demonstrated

* SQL data analysis
* Data cleaning and validation
* Data quality checks
* Aggregation and grouping
* Customer segmentation
* Churn rate analysis
* Business insight generation
* Power BI dashboard development
* Data visualization
* Interactive filtering
* Business problem solving
