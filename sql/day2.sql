create database customer_churn_db;
use customer_churn_db;
create table customer_churn (
    customerID VARCHAR(20),
    gender VARCHAR(10),
    SeniorCitizen INT,
    Partner VARCHAR(5),
    Dependents VARCHAR(5),
    tenure INT,
    PhoneService VARCHAR(5),
    MultipleLines VARCHAR(30),
    InternetService VARCHAR(20),
    OnlineSecurity VARCHAR(30),
    OnlineBackup VARCHAR(30),
    DeviceProtection VARCHAR(30),
    TechSupport VARCHAR(30),
    StreamingTV VARCHAR(30),
    StreamingMovies VARCHAR(30),
    Contract VARCHAR(30),
    PaperlessBilling VARCHAR(5),
    PaymentMethod VARCHAR(50),
    MonthlyCharges DECIMAL(10,2),
    TotalCharges VARCHAR(20),
    Churn VARCHAR(5)
);
SELECT COUNT(*) FROM customer_churn;
select * from customer_churn limit 10;
describe customer_churn;
select count(*) as total_customers from customer_churn;
select count(*) as churned_bro from customer_churn where Churn = "Yes";
select count(*) as loyal from customer_churn where Churn="No";
select round((select count(*) from customer_churn where Churn="Yes") / ( select count(*) from customer_churn) * 100,2) as Churn_rate;



use customer_churn_db;
select round(
sum(case when churn="Yes" then 1 else 0 end)/count(*)*100,2) 
as churn_rate from customer_churn;
show tables;
select count(*) from customer_churn group by contract;
select contract, count(*) as total_customers from customer_churn group by contract;
select contract, count(*) as churned from customer_churn where churn="Yes" group by contract;
        
select contract, count(*) as total,count(case when churn="Yes" then 1 end) as churne_d, 
	round(sum(case when churn="Yes" then 1 else 0 end)/count(*)*100,2) 
	as churnPerCon from customer_churn group by contract;
    
select contract, round( avg(tenure),2)as avg_tenure from customer_churn group by contract;
select contract, round( sum(revenue),2)as total_revenue from customer_churn group by contract;
SELECT Contract, SUM(MonthlyCharges) AS total_revenue from customer_churn group by contract;
        