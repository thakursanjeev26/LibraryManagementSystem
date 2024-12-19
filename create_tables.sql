CREATE DATABASE LLIBRARYMANAGEMENT;
USE LLIBRARYMANAGEMENT;

CREATE TABLE BOOK(
BookID INT auto_increment primary key,
Title VARCHAR(255) not null,
Author VARCHAR(255) not null,
Genre VARCHAR(50) not null,
PublishedYear INT,
AvailableCopies INT default 1
);


CREATE TABLE Members (
    MemberID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15),
    JoinDate DATE 
);

CREATE TABLE Borrowings(
BorrrowID INT auto_increment primary key,
BookID INT,
MemberID INT,
BorrowDate date,
ReturnDate date,
foreign key(BookID) references BOOk(BookID),
foreign key(MemberID) references Members(MemberID)
);



INSERT INTO BOOK(Title,Author,Genre,PublishedYear,AvailableCopies)
values('The Alchemist', 'Paulo Coelho', 'Fiction', 1988,5),
('Atomic Habits', 'James Clear', 'Self-help', 2018, 3),
('1984', 'George Orwell', 'Dystopian', 1949, 4);

INSERT INTO Members(Name,Email,Phone)
values('Alice Johnson', 'alice@gmail.com', '1234567890'),
('Bob Smith', 'bob@gmail.com', '9876543210'),
('Charlie Brown', 'charlie@gmail.com', '5678901234');

INSERT INTO Borrowings(BookID,MemberID,BorrowDate,ReturnDate)
values(1, 1, '2024-12-01', '2024-12-10'),
(2, 2, '2024-12-05', NULL);

SELECT * FROM Book;
