-- Update a customer's contact information.

-- Taylor Jenkins, of 27170 6th Ave., Washington, DC,
-- has moved to 74 Pine St., New York, NY.

SELECT
 c.FirstName,
 c.LastName,
 c.Email
FROM Customers as c
ORDER BY
 c.LastName;

UPDATE
 Customers
SET Address = '74 Pine St.', State = 'NY', City = 'New York'
WHERE
 CustomerID = (SELECT CustomerID FROM Customers WHERE FirstName = 'Taylor' AND LastName = 'Jenkins');

DELETE FROM
 Customers
WHERE CustomerID = 4;

 SELECT * FROM Customers WHERE FirstName = 'Taylor' AND LastName = 'Jenkins';