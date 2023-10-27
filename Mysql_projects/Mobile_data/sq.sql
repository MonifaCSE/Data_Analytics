create schema mobile;
use mobile;
select * from mobiledata;

-- check mobile fetaure and price list --
select phone_name , price from mobiledata;

-- find out the price of 5 most expensive phone --
select * from mobiledata
order by price desc
limit 5;

-- find out the price of 5 most cheapest phone --
select * from mobiledata
order by price asc
limit 5;

-- find out the list of top 5 samsung phone with all features --
select * from mobiledata
where Brands="Samsung"
order by price desc
limit 5;

-- Must have android phone list then top 5 high price --
select * from mobiledata
where operating_system_type="Android"
order by price desc
limit 5;

-- Must have android phone list then top 5 low price --
select * from mobiledata
where operating_system_type="Android"
order by price asc
limit 5;

-- Must have IOS phone list then top 5 High price --
select * from mobiledata
where operating_system_type="IOS"
order by price desc
limit 5;

-- Must have IOS phone list then top 5 low price --
select * from mobiledata
where operating_system_type="IOS"
order by price asc
limit 5;

-- Write a query with top 5g support phone --
select * from mobiledata
where 5G_Availability="Yes"
order by price desc
limit 5;

-- Find out the total price of all mobile with brand name --
select brands,sum(price) as tp from mobiledata
group by brands order by tp desc;
