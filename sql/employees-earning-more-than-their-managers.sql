# Write your MySQL query statement below

select Name as Employee from (
    select emp1.*, emp2.Name as ManagerName,emp2.Salary as ManagerSalary
		from Employee emp1 left join Employee emp2 on emp1.ManagerId = emp2.Id
) as tmp where Salary> ManagerSalary


# Write your MySQL query statement below

select e1.Name as Employee from Employee as e1 ,Employee as e2 where e1.ManagerId=e2.Id AND e1.Salary>e2.Salary