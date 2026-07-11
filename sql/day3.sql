use customer_churn_db;
select paymentmethod, count(*) as total from customer_churn group by PaymentMethod;
select internetservice, avg(monthlycharges) as avg_charges from customer_churn group by InternetService;
select contract, max(tenure) as max_tenure from customer_churn group by Contract;
select paymentmethod, min(MonthlyCharges) as minimum from customer_churn group by PaymentMethod;
select internetservice, sum(monthlycharges) as total_rev from customer_churn group by InternetService;