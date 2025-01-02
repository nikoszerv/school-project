select customers.Name, 
       customers.City, 
       count(orders.OrderID) as  ordertwice
from customers
join orders on customers.CustomerID = orders.CustomerID
group by  customers.CustomerID, customers.Name, customers.City 
having count(orders.OrderID) >= 2;