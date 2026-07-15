use customer_churn_db;
select * from customer_churn where contract="Two year" limit 10;
describe customer_churn;
select paymentmethod,count(*) as total, count(case when churn="Yes" then 1 end)/ count(*)*100 as rate from customer_churn group by paymentmethod order by rate asc;
select round(avg(monthlycharges),2) as avvg from customer_churn;
-- subquery
select customerId,monthlycharges from customer_churn where monthlycharges > (select avg(monthlycharges) as aavg from customer_churn);
select customerId,tenure from customer_churn where tenure > (select avg(tenure) as aavg from customer_churn);
select customerId,monthlycharges from customer_churn where monthlycharges > (select avg(monthlycharges) as aavg from customer_churn where churn="Yes");
select customerId,tenure from customer_churn where tenure > (select avg(tenure) as aavg from customer_churn where contract="Two year");
