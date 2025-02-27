CREATE TRIGGER after_insert
on myindex
after insert 
AS
declare @myid int;
declare @myname varchar(50);
declare @myemail varchar(40);
declare @myage int;

select @myid = id from inserted;
select @myid = id from inserted;


