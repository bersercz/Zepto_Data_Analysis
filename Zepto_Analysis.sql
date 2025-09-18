-- Create Table

create table zepto (
	sku_id serial Primary key,
	Category	varchar(120),
	name	varchar(150) not null,
	mrp		numeric(8,2),
	discountPercent		numeric(5,2),
	availableQuantity	int,
	discountedSellingPrice	numeric(8,2),
	weightInGms		int,
	outOfStock	boolean,
	quantity	int
);



select * from zepto


select * from zepto 
	where category isnull
	or 
	 mrp isnull
	or
	 discountpercent isnull
	or 
	 weightIngms isnull
	or
	 outofstock isnull
	or 
	 quantity  isnull
	 or 
	 availablequantity isnull


select distinct category from zepto
	order by category;



select outofstock, count(sku_id)
	from zepto 
	group by 1;


-- Product names present multiple times
select 
	name,
	count(sku_id) as "Number of SKUs"
	from zepto
	group by 1
	having count (sku_id) > 1
	order by 2 desc


-- Data Cleaning

select * from zepto 
	where mrp = 0 or discountedSellingPrice = 0;

delete from zepto 
	where mrp = 0


-- Convert Paise into Rupees

update zepto 
	set mrp = mrp / 100.0,
	discountedSellingPrice = discountedSellingPrice / 100.0;

select mrp, discountedSellingPrice from zepto



-- 1 Top 10 best value products based on the different percentage

	select distinct name, mrp , discountPercent
	from zepto 
	order by discountPercent desc
	limit 10;

-- 2 What are the products with high mrp but out of stock

select distinct name, mrp
 from zepto 
 where outofstock = True and mrp > 300
 order by 2 desc;


-- 3 Calculate estimated revenue for each category

select category ,
	sum(discountedSellingPrice * availablequantity) as total_revenue
	from zepto
	group by 1
	order by 2

-- 4 Find all products where mrp is greater than Rs 500 and discount is less then 10%.

select distinct name, mrp, discountPercent
	from zepto
	where mrp > 500 and discountPercent > 10
	order by 2 desc, 3 desc;

-- 5 Identify the top 5 category offering the highest average discount percentage.

select category ,
	round(avg(discountPercent),2) as avg_discount
	from zepto 
	group by category
	order by avg_discount desc
	limit 5;
	


-- 6 Find the price per gram for products above 100gm and sort by best value.

select distinct name, weightInGms, discountedSellingPrice,
	round(discountedSellingPrice/weightInGms, 2) as price_per_grams
	from zepto
	where weightInGms >= 100
	order by price_per_grams;



-- 7 Group the products into categories like low, medium, bulk.


select distinct name, weightInGms,
	case when weightInGms < 1000 then 'Low'
		when weightInGms < 5000 then 'Medium'
		else 'Bulk'
		end as weight_category
		from zepto;



-- 8 What is the total inventory weight per category

select category ,
	sum(weightInGms * availableQuantity) as total_weight
	from zepto
	group by 1
	order by 2;

