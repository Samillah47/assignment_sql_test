
-- joining books and authors
select b.title as booktitle, a.name as authorname
  from books b
  inner join authors a on b.authorid = a.authorid;

-- joining all tables

SELECT m.name AS membername, b.title AS booktitle, a.name AS authorname, l.loandate
  FROM loans l
  INNER JOIN books b ON l.bookid = b.bookid
  INNER JOIN authors a ON b.authorid = a.authorid
  INNER JOIN members m ON l.memberid = m.memberid;

-- joining loans with books and members

SELECT m.Name AS MemberName, b.Title AS BookTitle, l.LoanDate
  FROM Loans l
  INNER JOIN Books b ON l.BookID = b.BookID
  INNER JOIN Members m ON l.MemberID = m.MemberID;
