-- window function
-- Row_number()
use customer_churn_db;
SELECT CustomerID, MonthlyCharges, ROW_NUMBER() OVER (ORDER BY MonthlyCharges DESC) as rn FROM customer_churn;

-- Partition
-- Assign a row number to customers within each PaymentMethod, ordered by highest MonthlyCharges.
select customerid,monthlycharges,paymentmethod, row_number() over (partition by paymentmethod order by monthlycharges desc) as RowNum from customer_churn;
-- Find the customer with the highest MonthlyCharges for each PaymentMethod.
select * from (
select customerid,monthlycharges,paymentmethod, row_number() over(partition by paymentmethod order by monthlycharges desc ) as ans from customer_churn
) as ranked where ans=1 ;

-- Write the query to return the Top 2 customers by MonthlyCharges for each Contract.
select * from
(select customerid,contract,monthlycharges, dense_rank() over(partition by contract order by monthlycharges desc) as n from customer_churn)
as ranking where n <=2;

-- Find all customers who have the second highest MonthlyCharges.
select * from (select customerid,monthlycharges, dense_rank() over(order by monthlycharges desc) as rn from customer_churn) as ranked where rn=2;

-- "Show all customers tied for the highest MonthlyCharges in each contract."
select * from(select customerid,contract,monthlycharges, dense_rank() over(partition by contract order by monthlycharges desc)as rn from customer_churn)as ranked where rn=1;