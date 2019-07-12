# Write your MySQL query statement below

select actor_id, director_id from
(
    select actor_id, director_id ,concat(`actor_id`,"##",`director_id`) as col  from ActorDirector group by col having count(*)>2
) tmp


# Write your MySQL query statement below

SELECT
    actor_id ,director_id
FROM
    ActorDirector
GROUP BY
    actor_id,director_id
HAVING
    COUNT(actor_id) >= 3;