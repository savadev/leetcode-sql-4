# Write your MySQL query statement below

select x,y,z,
case when t.x + t.y <= t.z then 'No'
     when t.x + t.z <= t.y then 'No'
     when t.y + t.z <= t.x then 'No'
     else 'Yes'
     end as triangle
from triangle t

# Write your MySQL query statement below

select
    x,y,z,
    case when x+y>z and x+z>y and z+y>x then 'Yes'
    else 'No' end as triangle
from triangle