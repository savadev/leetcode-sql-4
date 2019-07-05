# Write your MySQL query statement below

select id,
case when t.p_id is null then 'Root'
     when t.id in (select p_id from tree ) then 'Inner'
     else 'Leaf'
     end as Type
from tree t

# Write your MySQL query statement below

select id,"Root" as Type from tree where p_id is null
union all
select id,"Inner" as Type from tree where id in (select p_id from tree group by p_id having p_id) and p_id is not null
union all
select id,"Leaf" as Type from tree where id not in (select p_id from tree group by p_id having p_id is not null) and p_id is not null