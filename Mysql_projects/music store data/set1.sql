/*Q1: Who is the senior most employee based on job title?
select* from employee
order by levels desc
limit 1

Q2: Which countries have the most invoices?
select count(*) as c, billing_country from invoice
group by billing_country order by c desc

Q3: What are top 3 value of invoices?

select total from invoice
order by total desc
limit 3

Q4: Which city has the best customers? we want to arrange a promotional Music festival in the city we made the most invoices

select sum(total) as c,billing_city from invoice
group by billing_city order by c desc 

Q5: Who is the best customer? The customer who has spent the most will be declared as the best customer

select sum(i.total) as s, c.customer_id,c.first_name,c.last_name,c.country from customer as c 
join invoice as i 
on c.customer_id=i.customer_id
group by c.customer_id
order by s desc
limit 1   */
