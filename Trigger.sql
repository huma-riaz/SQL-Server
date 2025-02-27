CREATE TRIGGER after_insert
on myindex
after insert 
AS
declare @myid int,
