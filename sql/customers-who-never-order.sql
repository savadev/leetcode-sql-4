# Write your MySQL query statement below

select Name as Customers from(
   select c.Id,c.Name,o.Id as orderId,o.CustomerId from Customers c left join Orders o on c.Id=o.CustomerId
) as tmp where tmp.CustomerId is Null


# Write your MySQL query statement below

select Name as Customers from Customers left join Orders on Customers.Id = Orders.CustomersId where Orders.CustomerId is null