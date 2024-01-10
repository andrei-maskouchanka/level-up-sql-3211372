-- Return three books to the library using
-- their bar codes.
-- Return date: July 5, 2022
-- Book 1: 6435968624
-- Book 2: 5677520613
-- Book 3: 8730298424

UPDATE
 Loans
SET ReturnedDate = '2022-06-05'
WHERE LoanID = (
SELECT l.LoanID FROM Loans l
 JOIN Books b ON l.BookID = b.BookID
WHERE b.BookID = (SELECT BookID FROM Books WHERE Barcode = '6435968624')
AND l.ReturnedDate IS NULL)

SELECT * FROM Loans
WHERE LoanID = 1991