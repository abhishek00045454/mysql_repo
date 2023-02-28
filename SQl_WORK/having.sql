-- select  -> where ,group by-> having 
select * from campusx.smartphones;

select brand_name,avg(price) as "avg_price"
from campusx.smartphones
group by brand_name
order by avg_price desc limit 1;

select brand_name,count(*) as "count_phones",
round(avg(price)) as "price_phones"
from campusx.smartphones
group by brand_name
having  count_phones >20
order by price_phones desc;

select brand_name,count(*) as "count_phones",
round(avg(rating),2) as "rate"
from campusx.smartphones
group by brand_name
having  count_phones >20
order by rate desc ;



select brand_name,count(*) as "count",
avg(ram_capacity) as "ram"
from campusx.smartphones
where refresh_rate > 90 and fast_charging_available=1
group by brand_name
having count > 10
order by ram desc limit 3;

select * from campusx.smartphones;


select brand_name,avg(price) as "avg"
from campusx.smartphones
where has_5g="True"
group by brand_name
having avg(rating) >70 and count(*) >10	
