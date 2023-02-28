select * from campusx.smartphones;


select model, screen_size from  campusx.smartphones where brand_name="samsung"
order by screen_size desc limit 5;


select model,num_front_cameras +num_rear_cameras as "total_cameras" from campusx.smartphones
order by total_cameras desc;


select model,round(sqrt(resolution_width*resolution_width+resolution_height*resolution_height)/screen_size,2) as "ppi" 
from campusx.smartphones where brand_name="vivo"
order by ppi desc;

select model ,battery_capacity from 
campusx.smartphones 
order by battery_capacity desc limit 1,1;
select model ,battery_capacity from 
campusx.smartphones 
order by battery_capacity desc limit 3,2;

select model ,battery_capacity from 
campusx.smartphones 
order by battery_capacity asc limit 1,1;


select model ,battery_capacity from 
campusx.smartphones 
order by battery_capacity desc limit 5,1;


select model ,battery_capacity from 
campusx.smartphones 
order by battery_capacity asc  limit 1,1;


select model,rating from campusx.smartphones
where brand_name= "apple"
order by rating asc limit 1,1;

select * from campusx.smartphones
where brand_name="apple"
order by price asc ,brand_name asc ;  

