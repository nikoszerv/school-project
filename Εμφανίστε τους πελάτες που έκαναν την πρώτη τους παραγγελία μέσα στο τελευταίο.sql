select customers.Name, 
		customers.City, 
        min(orders.OrderDate) as first_order
from customers
join orders on customers.CustomerID = orders.CustomerID
where orders.OrderDate >= date_sub(curdate(), interval 3 month)
group by customers.CustomerID, customers.Name, customers.City;