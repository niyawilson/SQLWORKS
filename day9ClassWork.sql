--- Creating a table for books-- 
CREATE TABLE books(
    bookid INT PRIMARY KEY,
    title VARCHAR (255)
);

INSERT INTO books(bookid, title)
VALUES
(1,'The Alchemist'),
(2,'The Power of Now'),
(3,'Think and Grow Rich'),
(4,'Clean Code');

--- Creating a table for borrowers---
CREATE TABLE borrowers(
    borrowerid INT PRIMARY KEY,
    name VARCHAR (255),
    bookid INT
);

INSERT INTO borrowers(borrowerid, name, bookid)
VALUES
(101, 'Alice', 1),
(102, 'Bob', 2),
(103, 'Charlie', NULL);

--- Show the list of all books along with the name of the person who borrowed them---

SELECT books.bookid, books.title, borrowers.name
FROM books
LEFT JOIN borrowers ON books.bookid = borrowers.bookid;

---Show the list of all borrowers along with the book details they borrowed ---
SELECT borrowers.borrowerid, borrowers.name, books.title
FROM borrowers
LEFT JOIN books ON borrowers.bookid = books.bookid;

--- Show the list of all books that have not been borrowed by anyone.---
SELECT books.bookid, books.title
FROM books
LEFT JOIN borrowers ON books.bookid = borrowers.bookid
WHERE borrowers.bookid IS NULL;

---Show the list of all borrowers even if they haven't borrowed any book---
SELECT borrowers.borrowerid, borrowers.name, books.title
FROM borrowers
LEFT JOIN books ON borrowers.bookid = books.bookid;