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
select round((
	select count(*) from customer_churn where Churn="Yes"
)
/ ( select count(*) from customer_churn) * 100,2) as Churn_rate;