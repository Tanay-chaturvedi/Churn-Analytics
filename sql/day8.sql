use customer_churn_db;
SELECT CustomerID, Contract
FROM customer_churn
WHERE Contract IN
(
    select contract from customer_churn group by contract having avg(monthlycharges) > 50
);
select contract from customer_churn group by contract having avg(monthlycharges) > 50;

-- Find customers whose PaymentMethod is one of the payment methods where the churn rate is greater than 30%.
select customerId, paymentmethod from customer_churn where paymentmethod in
( 
	select paymentmethod from customer_churn group by paymentmethod having count(case when churn="Yes" then 1 end)/count(*)*100 > 30
);

-- Union and Union all
select id from customer union select id from subscription;
select id from customer union all select id from subscription;
select name as details from customer union select contract as details from subscription;