select  * from  sql_cx_live.users1 t1
cross join sql_cx_live.groups t2;


-- inner join

select * from sql_cx_live.membership t1
inner join sql_cx_live.users1 t2 
on  t1.user_id=t2.user_id;


-- left join 
select * from sql_cx_live.membership t1
left join sql_cx_live.users1 t2 
on  t1.user_id=t2.user_id;

-- right join
select * from sql_cx_live.membership t1
right join sql_cx_live.users1 t2 
on  t1.user_id=t2.user_id;

select *from sql_cx_live.membership
union
select * from sql_cx_live.user1;


-- unoin join
select * from sql_cx_live.person1
union 
select * from sql_cx_live.person2; 


-- union join(reapeted all) 
select * from sql_cx_live.person1
union all 
select * from sql_cx_live.person2 ;

-- intersect join(showing error but result)

select * from sql_cx_live.person1
intersect 
select * from sql_cx_live.person2; 
 
 
-- except join(showing error but result )

select * from sql_cx_live.person1
except
select * from sql_cx_live.person2 ;
 
 
 
 -- how to do full outer join
select * from sql_cx_live.membership t1
left join sql_cx_live.users1 t2 
on  t1.user_id=t2.user_id
union 
select * from sql_cx_live.membership t1
right join sql_cx_live.users1 t2 
on  t1.user_id=t2.user_id;
 
 
-- self join
select * from sql_cx_live.users1 t1
join sql_cx_live.users1 t2
on t1.emergency_contact=t2.user_id ;


select * from sql_cx_live.students t1
join sql_cx_live.class t2
on t1.class_id=t2.class_id 
and t1.enrollment_year=t2.class_year; 


select t2.order_id, t1.profit,
t4.category,
t3.city,t3.state 
from  filpkart.order_details t1
join filpkart.orders  t2 on t1.category_id =t2.user_id
join filpkart.users t3
on t2.user_id=t3.user_id
join filpkart.category  t4
on t1.category_id=t4.category_id; 


select t2.order_id,t1.name,t1.city from filpkart.users
 t1 join filpkart.orders t2 
on t1.user_id=t2.user_id ;

select t1.order_id,t2.vertical from filpkart.order_details t1
join filpkart.category t2 on t1.category_id=t2.category_id;


select t2.order_id,t1.city from filpkart.users t1 
join filpkart. orders t2 
on t1.user_id=t2.user_id
where t1.city="pune";


select t1.order_id,t2.vertical from filpkart.order_details t1
join filpkart.category t2 on
t1.category_id=t2.category_id
where t2.vertical="Chairs";



select t1.order_id,sum(t2.profit) as "profit_all" 
from filpkart.orders t1
join filpkart.order_details t2
on t1.order_id =t2.order_id
group by t1.order_id
having profit_all > 0
order by profit_all desc limit 5




