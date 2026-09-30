# Customer Churn Analysis

## 1. Project Overview
This project analyzes customer churn for a telecommunications company using customer demographic, service, contract, payment, tenure, and billing data.
The goal of the analysis is to understand the characteristics and patterns associated with customer churn and identify customer segments where churn is 
particularly high. The analysis was performed using SQL for data analysis and Power BI for interactive visualization and dashboard development.

## 2. Business Problem
The telecommunications company is experiencing customer churn and wants to better understand why customers are leaving.

The analysis focuses on questions such as:

* What is the overall customer churn rate?
* Which contract types have higher churn?
* Does customer tenure relate to churn?
* Which internet services and payment methods are associated with higher churn?
* Which customer segments have particularly high churn rates?
* Are new customers more likely to leave than long-term customers?

The purpose of the analysis is to identify important churn patterns and provide data-driven areas for the business to investigate further.


## 3. Dataset
The project uses the Telco Customer Churn dataset.

The dataset contains **7,043 customer records** and includes information about:

* Customer demographics
* Customer tenure
* Phone and internet services
* Online security and technical support
* Contract type
* Payment method
* Monthly charges
* Total charges
* Customer churn status

The original `TotalCharges` field contained blank values for some new customers. These values were cleaned and stored in a separate `TotalCharges_Clean` column for analysis.


## 4. Tools Used
The following tools were used in this project:

* **MySQL** — Data cleaning, data validation, and SQL analysis
* **Power BI** — Interactive dashboard and data visualization
* **Google Sheets** — Organizing analysis notes and business insights
* **Kaggle** — Dataset source

## 5. Key Findings

* The overall customer churn rate was **26.54%**, with **1,869 customers** having churned.
* New customers (0–12 months) had the highest churn rate at **47.44%**.
* Month-to-month customers had a higher churn rate than customers on one-year or two-year contracts.
* Among new customers, **fiber-optic users** had a churn rate of **69.88%**.
* Among new customers, **fiber-optic + month-to-month** customers had an observed churn rate of **70.20%**.
* New customers using **electronic check** had a churn rate of **61.96%**.
* New customers without **Online Security** had a churn rate of **60.84%**.
* New customers without **Tech Support** had a churn rate of **60.29%**.

These findings describe observed relationships in the dataset and should not be interpreted as proof that a particular service or contract directly causes churn.



## 6. Analysis Methodology

The analysis followed these steps:

1. **Data Validation** — Checked the dataset for row counts, missing values, duplicate customer IDs, and unusual values.
2. **Data Cleaning** — Cleaned the `TotalCharges` field and created `TotalCharges_Clean` for numerical analysis.
3. **Data Exploration** — Examined customer characteristics such as tenure, contract, internet service, payment method, and support services.
4. **Churn Analysis** — Calculated overall churn and compared churn rates across different customer segments.
5. **Business Insights** — Identified customer groups with relatively high observed churn rates.
6. **Visualization** — Built an interactive Power BI dashboard to communicate the results.


## 7. Power BI Dashboard

The Power BI dashboard was created to provide an interactive view of customer churn.

The dashboard includes:

* Total Customers
* Churned Customers
* Churn Rate
* Average Monthly Charges
* Average Customer Tenure
* Churn Rate by Contract Type
* Churn Rate by Internet Service
* Churn Rate by Payment Method
* Churn Rate by Tenure Group
* Churn Rate by Online Security
* Churn Rate by Tech Support

Interactive slicers were also added for:

* Contract Type
* Internet Service
* Tenure Group

These slicers allow users to explore churn patterns for different customer segments.


## 8. Areas for Further Investigation

The analysis identified several customer segments with relatively high observed churn rates. These areas could be investigated further by the business:

* Review the onboarding experience for new customers.
* Investigate why month-to-month customers have higher churn.
* Examine pricing, service quality, and customer experience among fiber-optic customers.
* Investigate the relationship between electronic-check payment and churn.
* Review the availability and adoption of Online Security and Tech Support services.
* Analyze whether customer complaints, service issues, or support interactions are related to churn.

These areas require additional data and investigation before conclusions about the causes of churn can be made.

