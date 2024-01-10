-- Add a customer to the restaurant's loyalty program.

-- Use the following information to create a record:
-- Anna Smith (asmith@samoca.org)
-- 479 Lapis Dr., Memphis, TN
-- Phone: (555) 555-1212; Birthday: July 21, 1973

INSERT INTO
 Customers(FirstName)
VALUES('Anna'); 

UPDATE
 Customers
SET LastName = 'Smith', Email = 'asmith@samoca.org', Address = '479 Lapis Dr.', 
 City = 'Memphis', State = 'TN', Phone = '555-555-1212', Birthday = '1973-07-21'
WHERE
 CustomerID = 101;

SELECT
  *
FROM
  Customers
WHERE
 CustomerID = 101;