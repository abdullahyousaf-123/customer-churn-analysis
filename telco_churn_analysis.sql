SELECT
    COUNT(CASE WHEN Churn = 'Yes' THEN 1 END) * 100.0
    / COUNT(customerID) AS churn_rate
FROM telco_churn;


SELECT 
    COUNT(CASE WHEN churn = 'Yes' THEN 1 END) AS left_customers,
    COUNT(CASE WHEN churn = 'No' THEN 1 END) AS stayed_customers
FROM telco_churn;


SELECT 
    contract,
    COUNT(CASE WHEN churn = 'Yes' THEN 1 END) AS left_customers,
    COUNT(CASE WHEN churn = 'No' THEN 1 END) AS stayed_customers
FROM telco_churn
GROUP BY contract;


SELECT 
    contract,
    COUNT(CASE WHEN churn = 'Yes' THEN 1 END) /
    (
        COUNT(CASE WHEN churn = 'Yes' THEN 1 END) +
        COUNT(CASE WHEN churn = 'No' THEN 1 END)
    ) * 100.0 AS churn_rate
FROM telco_churn
GROUP BY contract;

SELECT 
    AVG(CASE WHEN churn = 'Yes' THEN tenure END) AS avg_tenure_left,
    AVG(CASE WHEN churn = 'No' THEN tenure END) AS avg_tenure_stayed
FROM telco_churn;

SELECT 
CASE 
  WHEN tenure <= 12 THEN 'New'
  WHEN tenure <= 36 THEN 'Medium'
  ELSE 'Long-term'
END AS tenure_group,
COUNT(*) AS total_customers
FROM telco_churn
GROUP BY tenure_group;

SELECT 
CASE 
  WHEN tenure <= 12 THEN 'New'
  WHEN tenure <= 36 THEN 'Medium'
  ELSE 'Long-term'
END AS tenure_group,
COUNT(CASE WHEN churn = 'yes' THEN 1 END)/COUNT(*) * 100.0 AS churn_rate
FROM telco_churn
GROUP BY tenure_group;

SELECT contract,
COUNT(CASE WHEN churn = 'yes' THEN 1 END)/COUNT(*) * 100.0 AS churn_rate
FROM telco_churn
WHERE tenure <= 12
GROUP BY contract;

SELECT 
    internetservice,
    COUNT(CASE WHEN churn = 'yes' THEN 1 END) / COUNT(*) * 100.0 AS churn_rate
FROM telco_churn
WHERE tenure <= 12
GROUP BY internetservice;

SELECT internetservice, contract,
COUNT(CASE WHEN churn = 'yes' THEN 1 END)/COUNT(*) * 100.0 AS churn_rate
FROM telco_churn
WHERE tenure <= 12
GROUP BY internetservice,contract;

SELECT AVG(CASE WHEN churn = 'yes' THEN monthlycharges END) AS avg_charge_left,
AVG(CASE WHEN churn = 'no' THEN monthlycharges END) AS avg_charge_stayed
FROM telco_churn
WHERE tenure <= 12;

SELECT paymentmethod,
COUNT(CASE WHEN churn = 'yes' THEN 1 END)/COUNT(*) * 100.0 AS churn_rate
FROM telco_churn
WHERE tenure <= 12
GROUP BY paymentmethod;

SELECT onlinesecurity,
COUNT(CASE WHEN churn = 'yes' THEN 1 END)/COUNT(*) * 100.0 AS churn_rate
FROM telco_churn
WHERE tenure <= 12
GROUP BY onlinesecurity;

SELECT techsupport,
COUNT(CASE WHEN churn = 'yes' THEN 1 END)/COUNT(*) * 100.0 AS churn_rate
FROM telco_churn
WHERE tenure <= 12
GROUP BY techsupport;

SELECT seniorcitizen,
COUNT(CASE WHEN churn = 'yes' THEN 1 END)/COUNT(*) * 100.0 AS churn_rate
FROM telco_churn
WHERE tenure <= 12
GROUP BY seniorcitizen;

SELECT dependents,
COUNT(CASE WHEN churn = 'yes' THEN 1 END)/COUNT(*) * 100.0 AS churn_rate
FROM telco_churn
WHERE tenure <= 12
GROUP BY dependents;