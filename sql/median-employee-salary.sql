# Write your MySQL query statement below

select tmp1.Id, tmp1.Company,tmp1.Salary
from
    (SELECT
            e.Id,
                e.Salary,
                e.Company,
                IF(@prev = e.Company, @Rank:=@Rank + 1, @Rank:=1) AS rank,
                @prev:=e.Company
        FROM
            Employee e, (SELECT @Rank:=0, @prev:=0) AS temp
        ORDER BY e.Company , e.Salary , e.Id) tmp1
    left join
    (select Company, count(*) as totalcount from Employee group by Company) tmp2
    on tmp1.Company=tmp2.Company
where rank = FLOOR((totalcount + 1) / 2) or rank = FLOOR((totalcount + 2) / 2)