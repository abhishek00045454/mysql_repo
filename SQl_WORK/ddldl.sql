select * from campusx.smartphones
where brand_name ="apple";

select * from campusx.smartphones
where price <60000 and brand_name ="apple";


select * from campusx.smartphones
where price <10000 and price < 20000 and brand_name="oppo";

select * from campusx.smartphones
where price between 10000 and 20000 and brand_name="vivo";


select * from campusx.smartphones
where price between 10000 and 25000 and rating  between 40 and 80 and brand_name="vivo";



select * from campusx.smartphones
where brand_name="samsung" and ram_capacity>8;


select * from campusx.smartphones
where brand_name="samsung" and processor_brand="snapdragon";




select * from campusx.smartphones;


select distinct(brand_name) from campusx.smartphones
where price >100000;


select * from campusx.smartphones
where processor_brand ="snapdragon" or 
processor_brand="exynos" or processor_brand="boinic";

select * from campusx.smartphones
where processor_brand in ("snapdragon","exynos","boinic");

insert into campusx.smartphones
value("samsung","Samsung Galaxy A01 Core",4999,null,"False","False","mediatek",4.0,1.5,3000.0,0,null,1.0,16.0,5.3,60,1,1.0,"android",8.0,5.0,1,null,720,1480);

select * from campusx.smartphones
where processor_brand="exynos";


update campusx.smartphones
set model="Samsung Galaxy Note 10 Plus" 
where processor_brand="boinoic";

select * from campusx.smartphones
where model="Samsung Galaxy Note 10 Plus";

select * from campusx.users;


update campusx.users
set email ="abhishheksaini499gmail.com" and password="444456"
where user_id=1;

select min(price) from campusx.smartphones;

select * from campusx.smartphones
where brand_name="samsung" and price="110999";


select avg(rating) from campusx.smartphones
where brand_name="apple";


select * from campusx.smartphones;


select sum(price) from campusx.smartphones;

select count(*) from campusx.smartphones
where brand_name="vivo";


select count(distinct(brand_name)) from campusx.smartphones;

select *  from campusx.smartphones;


select std(screen_size) from campusx.smartphones;

select variance(screen_size) from campusx.smartphones;

select abs(price- 100000) from campusx.smartphones;


select * from campusx.smartphones;


select floor(processor_speed) from campusx.smartphones;
select ceil(processor_speed) from campusx.smartphones;


select ceil((battery_capacity + primary_camera_rear)/2) as "avg" from campusx.smartphones
where price>10000;


