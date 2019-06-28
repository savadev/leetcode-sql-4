# Write your MySQL query statement below

select distinct Num as ConsecutiveNums from
(
    select Id, Num, concat(Num , "+", (a-(@b:=@b+1))) as c from (
        select Id, Num, (@a:=@a+1) as a from Logs, (SELECT @a := 0) tmp_a order by Num, a
    ) as tmp_c,(SELECT @b := 0) tmp_b
) as f group by c having count(*)>2