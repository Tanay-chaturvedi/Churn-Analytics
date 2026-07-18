use customer_churn_db;
-- Show all customers whose MonthlyCharges are greater than the average MonthlyCharges of all customers.(scalar sub query)
select customerid,monthlycharges from customer_churn where monthlycharges>(select avg(monthlycharges) from customer_churn);
-- Find all PaymentMethods having more than 1000 customers.
select paymentmethod, count(*) as co from customer_churn group by paymentmethod having co > 1000; 
-- Display the top 5 customers with the highest MonthlyCharges.
select customerid,monthlycharges from customer_churn order by monthlycharges desc limit 5;
-- Find the average tenure for each Contract.
select contract, round(avg(tenure),2) from customer_churn group by contract;
-- Show all customers whose tenure is greater than the average tenure of customers having a Two year contract.
select customerid,tenure from customer_churn where tenure>(select avg(tenure) from customer_churn where contract="two year");

-- "Am I comparing something with ONE value or MANY values?" If the answer is ONE value → Scalar Subquery
select * from customer;
select * from subscription;
-- Show every customer along with their contract.
select c.name,s.contract from customer c left join subscription s on c.id=s.id;
-- Find all customers who do not have a subscription.
select c.name from customer c left join subscription s on c.id=s.id where s.contract is null;
-- Find the average MonthlyCharges for each contract.
select contract, round(avg(monthlycharges),2) as aa from subscription group by contract;
-- Find the number of male and female customers in each contract.
select s.contract,c.gender,count(*) as total from customer c inner join subscription s on c.id=s.id group by s.contract,c.gender;
-- Find the contract that generates the highest total revenue.
select contract,sum(monthlycharges) as total from subscription group by contract order by total desc limit 1;
-- Show all customers whose PaymentMethod belongs to payment methods where the churn rate is greater than 30%.
select customerid,paymentmethod from customer_churn where paymentmethod in(select paymentmethod from customer_churn group by paymentmethod having count(case when churn="Yes" then 1 end)/count(*)*100 >30);
-- Find customers whose Contract belongs to contracts where the average MonthlyCharges is greater than 70.
select customerid,contract from customer_churn where contract in (select contract from customer_churn group by contract having avg(monthlycharges)>70);
-- Find customers whose MonthlyCharges are greater than the average MonthlyCharges of churned customers.
select customerid,monthlycharges from customer_churn where monthlycharges > (select avg(monthlycharges) from customer_churn where churn="Yes"); 
-- Find all customers whose tenure is greater than the average tenure of Month-to-month customers.
select customerid,tenure from customer_churn where tenure>(select avg(tenure) from customer_churn where contract="Month-to-month");
-- Show the InternetService types whose total revenue exceeds 100000.
select internetservice from customer_churn group by internetservice having sum(monthlycharges) > 100000;
SELECT DISTINCT Contract FROM customer_churn;