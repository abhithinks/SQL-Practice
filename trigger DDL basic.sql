create database trigger_db;

create trigger DDL_table_create
on database
for Create_table
as
begin
    print 'new table created';
end

create table Test_table(
id int);

create trigger DDL_table_drop
on database
for Drop_table
as
begin
    print 'you have just deleted a table';
end

drop table Test_table;

