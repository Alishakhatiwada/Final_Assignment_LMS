CREATE TABLE LMS;
USE LMS;
CREATE TABLE Librarian (
    Librarian_ID INT AUTO_INCREMENT PRIMARY KEY,
    Username VARCHAR(255) NOT NULL,
    Password VARCHAR(255)  NOT NULL
);
insert into Librarian (Librarian_ID, Username, Password) values
(1, 'admin', 'admin');

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    role ENUM('admin', 'user') NOT NULL
);

CREATE TABLE books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    isbn VARCHAR(13) UNIQUE,
    available TINYINT(1) DEFAULT 1
);

CREATE TABLE Borrowing (
	Borrowid int not null primary key auto_increment,
    Book_ID INT,
    User_ID INT,
    Borrow_Date DATE NOT NULL,
    Return_Date DATE,
    Fines DECIMAL(10,2) DEFAULT 0.00,
    FOREIGN KEY (Book_ID) REFERENCES books(id) ON DELETE CASCADE,
    FOREIGN KEY (User_ID) REFERENCES users(id) ON DELETE CASCADE
);
drop table Borrowing;
select * from Librarian;
SELECT id, username, email, role FROM users;
SELECT id, title, author, isbn, available FROM books;
SELECT book_id, user_id, borrow_date, return_date, fines FROM borrowing;
SELECT * FROM Borrowing WHERE Fines = 0;
DESC books;
ALTER TABLE books ADD COLUMN available TINYINT(1) DEFAULT 1;
SHOW CREATE TABLE books;
ANALYZE TABLE books;
REPAIR TABLE books;

DESC Borrowing;


