-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

SELECT
c.CustomerID
FROM Customers as c
WHERE c.LastName = 'Hundey' AND c.FirstName = 'Loretta'
 AND c.Address = '6939 Elka Place'




INSERT INTO
Orders(CustomerID, OrderDate)
VALUES((SELECT
c.CustomerID
FROM Customers as c
WHERE c.LastName = 'Hundey' AND c.FirstName = 'Loretta'
 AND c.Address = '6939 Elka Place'), '2022-09-20 14:00:00')

INSERT INTO
OrdersDishes(OrderID, DishID) 
VALUES
 ((SELECT max(OrderID) FROM Orders), (SELECT d.DishID FROM Dishes d WHERE d.Name = 'House Salad')),
 ((SELECT max(OrderID) FROM Orders), (SELECT d.DishID FROM Dishes d WHERE d.Name = 'Mini Cheeseburgers')),
 ((SELECT max(OrderID) FROM Orders), (SELECT d.DishID FROM Dishes d WHERE d.Name = 'Tropical Blue Smoothie'))


SELECT
sum(d.Price) AS [OrderPrice]
FROM OrdersDishes od
JOIN Dishes d ON od.DishID = d.DishID
WHERE od.OrderID = (SELECT max(OrderID) FROM Orders)
GROUP BY
od.OrderID