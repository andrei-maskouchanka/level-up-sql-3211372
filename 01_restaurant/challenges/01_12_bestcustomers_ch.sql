-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT 
o.CustomerID,
c.FirstName, c.LastName, c.Email,
count(*) as Num
FROM Orders o 
JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY
o.CustomerID
ORDER BY
Num DESC
