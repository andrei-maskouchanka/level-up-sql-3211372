-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

SELECT CustomerID FROM Customers WHERE FirstName = 'Norby'

DELETE FROM
Reservations
WHERE
ReservationID = (
SELECT
ReservationID
FROM
Reservations
WHERE
CustomerID = (SELECT CustomerID FROM Customers WHERE FirstName = 'Norby')
 AND strftime('%Y-%m-%d', Date) > '2022-01-01')

SELECT
*
FROM
Reservations r
JOIN
Customers c
ON
r.CustomerID = c.CustomerID
WHERE
c.FirstName = 'Norby'