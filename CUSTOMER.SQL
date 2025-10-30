create table customer_orders (
order_id integer,
customer_id integer,
order_date date,
order_amount integer
);
TRUNCATE TABLE CUSTOMER_ORDERS;
insert into customer_orders values(1,100,to_date('2022-01-01', 'YYYY-MM-DD'),2000);
insert into customer_orders values(2,200,to_date('2022-01-01', 'YYYY-MM-DD'),2500);
insert into customer_orders values(3,300,to_date('2022-01-01', 'YYYY-MM-DD'),2100);
insert into customer_orders values(4,100,to_date('2022-01-02', 'YYYY-MM-DD'),2000);
insert into customer_orders values(5,400,to_date('2022-01-02', 'YYYY-MM-DD'),2200);
insert into customer_orders values(6,500,to_date('2022-01-02' ,'YYYY-MM-DD'),2700);
insert into customer_orders values(7,100,to_date('2022-01-03', 'YYYY-MM-DD'),3000);
insert into customer_orders values(8,400,to_date('2022-01-03' ,'YYYY-MM-DD'),1000);
insert into customer_orders values(9,600,to_date('2022-01-03', 'YYYY-MM-DD'),3000);




