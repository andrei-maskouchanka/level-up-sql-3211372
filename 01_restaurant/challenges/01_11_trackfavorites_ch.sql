-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.
SELECT
c.FavoriteDish , d.Name
FROM
 Customers c
JOIN Dishes d ON c.FavoriteDish = d.DishID
WHERE 
 LastName = 'Goldwater' AND FirstName = 'Cleo'

UPDATE
 Customers
SET FavoriteDish = (SELECT DishID FROM Dishes d WHERE d.Name = 'Quinoa Salmon Salad')
WHERE LastName = 'Goldwater' AND FirstName = 'Cleo' 