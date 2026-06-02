-- ================================================
-- Database Fundamentals - SQL Query Assignment
-- Author: Michelle Packman
-- Description: SQL queries for a library database including SELECT, JOIN, and INSERT statements.
-- ================================================

-- Query 1: All clients who borrowed books
SELECT ClientFirstName, ClientLastName
FROM Client
INNER JOIN Borrower ON Borrower.ClientID = Client.ClientID;

-- Query 2: All borrowed books ordered by borrow date
SELECT BookTitle
FROM Book
INNER JOIN Borrower ON Borrower.BookID = Book.BookID
ORDER BY Borrower.BorrowDate;

-- Query 3: All books with author names
SELECT BookTitle, AuthorFirstName, AuthorLastName
FROM Book
LEFT JOIN Author ON Author.AuthorID = Book.AuthorID;

-- Query 4: Insert a new client
INSERT INTO Client (ClientID, ClientFirstName, ClientLastName, ClientDOB, Occupation)
VALUES (256, 'Horrace', 'Redhuman', '02-15-1967', 'pilot');
