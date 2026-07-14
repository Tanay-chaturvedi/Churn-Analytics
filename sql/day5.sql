use customer_churn_db;
select internetservice, sum(monthlycharges) from customer_churn group by internetservice having sum(MonthlyCharges) >100000 order by sum(MonthlyCharges) desc limit 2;
create table customer(
	id int primary key,
    name varchar(20),
    gender varchar(10)
);
create table subscription(
	id int primary key,
    contract varchar(20),
    monthlycharges decimal(20,2)
);
insert into customer values
(1, 'Rahul', 'Male'),
(2, 'Priya', 'Female'),
(3, 'Aman', 'Male'),
(4, 'Neha', 'Female'),
(5, 'Rohan', 'Male');

insert into subscription values
(1,'One year',899.50),
(2,'Month to month',499.00),
(4,'Two year',1099.00),
(5,'Month to month',599.00);
select * from customer;
select * from subscription;

select c.name,s.contract,s.monthlycharges from customer c inner join subscription s on c.id=s.id;
select c.name,s.contract,s.monthlycharges from customer c left join subscription s on c.id=s.id;
select c.name,c.gender,s.contract from customer c left join subscription s on c.id=s.id;
select c.name from customer c left join subscription s on c.id=s.id where s.contract is null;
select c.name from customer c left join subscription s on c.id=s.id where s.id is null;