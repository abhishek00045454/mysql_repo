select * from campusx.ipl_ball_by_ball_2008_2022;

select batter,sum(batsman_run) as "runs"
from campusx.ipl_ball_by_ball_2008_2022
group by batter
order by runs desc limit 5;

select batter,count(*) as "count"
from campusx.ipl_ball_by_ball_2008_2022
where batsman_run=6
group by batter
order by count desc limit 1
