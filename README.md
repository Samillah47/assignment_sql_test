# Library Management System Database

This database system manages records for a library, including books, authors, members, and loans. The project demonstrates the ability to effectively manage library records using Oracle SQL.

## Purpose

This database is created as part of my school assignment, serving as a practical example of database design and management. It aims to help in understanding key concepts such as relational databases, SQL queries, and data integrity in the context of a library management system.

Feel free to explore 


## Table Structure
## Table authors

CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    Name VARCHAR(100)
);


## Table books

CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(200),
    AuthorID INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

## Table mebers

CREATE TABLE Members (
    MemberID INT PRIMARY KEY,
    Name VARCHAR(100)
);

## Table aloans

CREATE TABLE Loans (
    LoanID INT PRIMARY KEY,
    BookID INT,
    MemberID INT,
    LoanDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);

## Inserting Data
## Inserting data in table authors
 
 insert into authors(authorid,name)values(1,'samuel');
  
 insert into authors(authorid,name)
  values(2, 'cardine');

 insert into authors(authorid,name)
  values( 3,
  'gael');

  ## Inserting data in table books

  insert into books(bookid,title,authorid)
   values(01,'harry potter',1);

 insert into books( bookid,title,authorid)
  values(02,'hunger games',2);

 insert into books(bookid,title,authorid)
  values( 03,'war and peace', 3);

  ## Inserting data in table members

 insert into members(memberid,name)
  values(101,'alice');

 insert into members(memberid,name)
  values(102,'smith');


 insert into members(memberid,name)
  values(103,'jean');

  ## Inserting data in table loans

 insert into loans(loanid,bookid,memberid,loandate)
  values(1001,01,101,to_date('25-01-2924','DD-MM-YYYY'));

 insert into loans(loanid,bookid,memberid,loandate)
 values(1002,02,102,to_date('23-05-2924','DD-MM-YYYY'));

 insert into loans(loanid,bookid,memberid,loandate)
  values(1003,03,103,to_date('12-11-2924','DD-MM-YYYY'));

## Perform Joins
## Joining Table Books and Table Authors
select b.title as booktitle, a.name as authorname
  from books b
  inner join authors a on b.authorid = a.authorid;

## Joining all tables

SELECT m.name AS membername, b.title AS booktitle, a.name AS authorname, l.loandate
  FROM loans l
  INNER JOIN books b ON l.bookid = b.bookid
  INNER JOIN authors a ON b.authorid = a.authorid
  INNER JOIN members m ON l.memberid = m.memberid;

## Joining Table Loans with Table Books and Table Members

SELECT m.Name AS MemberName, b.Title AS BookTitle, l.LoanDate
  FROM Loans l
  INNER JOIN Books b ON l.BookID = b.BookID
  INNER JOIN Members m ON l.MemberID = m.MemberID;



