-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

SELECT count(*) FROM Books WHERE Title = 'Dracula'

SELECT 
*
FROM Loans l
JOIN Books b ON l.BookID = b.BookID 
WHERE
b.BookID = (SELECT BookID FROM Books WHERE Title = 'Dracula') 

SELECT 
count(*) AS recCounter
FROM Loans l
JOIN Books b ON l.BookID = b.BookID 
WHERE b.Title = 'Dracula' AND l.ReturnedDate IS NULL

SELECT
 (SELECT count(*) FROM Books WHERE Title = 'Dracula') - 
 (SELECT count(*) AS recCounter
FROM Loans l
JOIN Books b ON l.BookID = b.BookID 
WHERE b.Title = 'Dracula' AND l.ReturnedDate IS NULL) as numberOfAvailableBooks