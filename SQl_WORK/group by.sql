select brand_name, count(*) as "num_phones",
round(avg (price)) as "avg",max(rating) as "rating_phone",
round(avg(screen_size)) as "scrreen_size",
round(avg(battery_capacity)) as "battery_capacity"
from campusx.smartphones 
group by brand_name
order by num_phones desc limit 5,1;


select has_5g,avg(price) as "price",
avg(rating) as "rate"
from campusx.smartphones
group by has_5g;

select fast_charging_available as "cahrge", 
avg(price) as "price",
avg(rating) as "rate"
from campusx.smartphones
group by cahrge;
 

select * from campusx.smartphones
;

select extended_memory_available as "cahrge", 
avg(price) as "price",
avg(rating) as "rate"
from campusx.smartphones
group by cahrge;


select brand_name,
processor_brand,os,
count(*) as "num_phones",
avg(primary_camera_rear) as "avg camera resolution" 
from campusx.smartphones
group by brand_name,processor_brand,os;


select brand_name,price from campusx.smartphones
where brand_name="apple"
order by brand_name desc limit 5,5;


select brand_name,
round(avg(price)) as "avg_price"  
from campusx.smartphones
group by brand_name 
order by brand_name desc limit 5;

select * from campusx.smartphones;


select brand_name,avg(screen_size) as "scrren_size"
from campusx.smartphones
group by brand_name
order by brand_name desc limit 5;




select * from campusx.smartphones
;




select brand_name,count(*) as "no_of_phones"
from campusx.smartphones
where has_5g="True" and has_ir_blaster="True"
group by brand_name
order by no_of_phones limit 1;

select brand_name,count(*) as "count_all_phones"
from campusx.smartphones
where brand_name="samsung"
group by brand_name;


select has_nfc,avg(price) as "price price"
from campusx.smartphones
where brand_name="samsung"
group by has_nfc;



select model,avg(price) as "prices"
from campusx.smartphones
group by model
order by prices desc limit 1



   