use customer_churn_db;
-- Show all customers whose MonthlyCharges are greater than the average MonthlyCharges of all customers.(scalar sub query)
select customerid,monthlycharges from customer_churn where monthlycharges > (select avg(monthlycharges) from customer_churn);