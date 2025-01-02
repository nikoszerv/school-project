select customers.Name, 
		customers.City, 
        avg(orders.TotalAmount) as mesos_oros
from customers
join orders on customers.CustomerID = orders.CustomerID
group by customers.CustomerID, customers.Name, customers.City;         
