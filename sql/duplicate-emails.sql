# Write your MySQL query statement below

SELECT Email FROM person GROUP BY Email HAVING COUNT(*)>1


# Write your MySQL query statement below

select distinct a.Email from Person a, Person b where a.Email = b.Email and a.Id != b.Id 这个要比group by快