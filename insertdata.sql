 --inserting data in table authors
 
 insert into authors(authorid,name)values(1,'samuel');
  
 insert into authors(authorid,name)
  values(2, 'cardine');

 insert into authors(authorid,name)
  values( 3,
  'gael');

  --inserting data in table books

  insert into books(bookid,title,authorid)
   values(01,'harry potter',1);

 insert into books( bookid,title,authorid)
  values(02,'hunger games',2);

 insert into books(bookid,title,authorid)
  values( 03,'war and peace', 3);

  --inserting data in table members

 insert into members(memberid,name)
  values(101,'alice');

 insert into members(memberid,name)
  values(102,'smith');


 insert into members(memberid,name)
  values(103,'jean');

  --inserting data in table loans

 insert into loans(loanid,bookid,memberid,loandate)
  values(1001,01,101,to_date('25-01-2924','DD-MM-YYYY'));

 insert into loans(loanid,bookid,memberid,loandate)
 values(1002,02,102,to_date('23-05-2924','DD-MM-YYYY'));

 insert into loans(loanid,bookid,memberid,loandate)
  values(1003,03,103,to_date('12-11-2924','DD-MM-YYYY'));

  