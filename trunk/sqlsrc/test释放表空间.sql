select * from aip_message_persistence;
select * from aip_message_persistence where msg_id='acs20100907123200956103840387';
--没有分析表之前查询（全表扫描）406ms
--分析一下表之后查询（全表扫描）375ms
--分析表
analyze table aip_message_persistence compute statistics;
select * from aip_message_persistence where csb_id='df22257c-ba9d-11df-82e0-872011190000';
drop table temp_jp;
create table temp_jp(col1 number(10),col2 varchar2(20)) tablespace users;
declare
begin
for i in 1..2500 loop
insert into temp_jp values(i,'RAMA');
end loop;
commit;
end;
/
select count(*) from  temp_jp;--2500 
--表空间使用率没有增加。--1603.56M
delete from temp_jp;
commit;
--删除表空间没有减少。--1603.56M
declare
begin
for i in 1..2500 loop
insert into temp_jp values(i,'RAMA');
end loop;
commit;
end;
/
select count(*) from  temp_jp;--2500
--1603.56 增加不会影响表空间
delete from temp_jp;
commit;
begin
for i in 1..10000 loop
insert into temp_jp values(i,'RAMA');
end loop;
commit;
end;
/
select count(*) from temp_jp;--10000,表空间增大1603.69
create index temp_jp_idx on temp_jp(col1) tablespace users;
select index_name,status from user_indexes where table_name='TEMP_JP';
delete from temp_jp;
commit;
begin
for i in 1..20000 loop
insert into temp_jp values(i,'RAMA');
end loop;
commit;
end;
/
select count(*) from temp_jp;--20000,1604.25m
truncate table temp_jp;--1603.62表空间被释放
