select a.id, b.student
from seat a, seat b
where (a.id - b.id = 1 and a.id%2 = 0) or (a.id - b.id = -1 and a.id%2 != 0) or (a.id%2 !=0 and a.id=(select max(id) from seat) and a.id - b.id = 0)
order by id