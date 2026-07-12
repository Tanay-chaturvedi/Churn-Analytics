use customer_churn_db;
select contract, count(*) as total from customer_churn group by contract order by total desc;
select paymentmethod, count(*) as total from customer_churn group by paymentmethod order by total desc limit 2;
select contract, round(avg(monthlycharges),2) as total from customer_churn group by contract order by total desc limit 3;
SELECT Contract,
       ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charge
FROM customer_churn
GROUP BY Contract
HAVING AVG(MonthlyCharges) > 70;
select paymentmethod,count(*) as member from customer_churn group by paymentmethod having member >1500;