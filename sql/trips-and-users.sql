# Write your MySQL query statement below


select tmp1.Day, round(ifnull(ucc,0)/ac,2) as "Cancellation Rate" from

(select Request_at as Day, count(*) as ac from Trips where (Client_Id in (select Users_Id from Users where Banned="No") and Driver_Id in (select Users_Id from Users where Banned="No"))
group by Request_at) tmp1
left join
(select Request_at as Day, count(*) as ucc from Trips where (Client_Id in (select Users_Id from Users where Banned="No") and Driver_Id in (select Users_Id from Users where Banned="No")) and Status != "completed"
group by Request_at) tmp2
on tmp1.Day=tmp2.Day
