use customer_churn_db;
select c.name from customer c inner join subscription s on c.id=s.id;
select c.name from customer c left join subscription s on c.id=s.id where s.id is null;
select c.name,c.gender,s.monthlycharges from customer c left join  subscription s on c.id=s.id;
select c.name,s.monthlycharges from customer c inner join subscription s on c.id=s.id where s.monthlycharges > 700;
select c.name,s.contract from customer c left join subscription s on c.id=s.id where c.gender ="Female";

-- Show all customers along with their monthly charges.
select c.name,s.monthlycharges from customer c left join subscription s on c.id=s.id;
-- Show all male customers who have a subscription.
select c.name,s.contract from customer c inner join subscription s on c.id=s.id where c.gender="Male";
-- Find the average monthly charges for each contract.
select contract, round(avg(monthlycharges),2) as expense from subscription group by contract;
-- Find the contract that generates the highest total revenue.
select contract, sum(monthlycharges) as revenue from subscription group by contract order by sum(monthlycharges) desc limit 1;
-- Find the number of male and female customers in each contract.
select c.gender,s.contract, count(*) as total from customer c right join subscription s on c.id=s.id group by c.gender,s.contract;
-- Count subscriptions under each contract.
select contract,count(*) total from subscription group by contract;