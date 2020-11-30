select * from tab;
select * from users;
drop table users purge;

--primary key : unique + not null
create table users(
id varchar2(10) primary key,
pwd varchar2(10) not null,
name varchar2(20) not null,
point number(7,2));  

insert into users(id,pwd,name,point) values('admin','1111','어드민',35.34);
insert into users(id,pwd,name,point) values('abcd','1111','테스트',65.78);
commit

select * from users;