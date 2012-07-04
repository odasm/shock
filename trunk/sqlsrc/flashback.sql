select dbms_flashback.get_system_change_number from dual;
select count(*) from test;
delete from test;
commit;
--11250185785102
select count(*) from tEST as of scn 11250185785102;
--查询之间时间点的值，则可以搞定被删除的数据
select count(*) from tEST as of scn 11250185780000;
--恢复数据
insert into test select * from test as of scn 11250185780000;
--再次查询数据
select * from test;
commit;
　--文章2
　　--误删数据后的还原
　　select timestamp_to_scn(to_timestamp('2009-03-13 09:00:00','YYYY-MM-DD HH:MI:SS')) from dual;
　　--结果:13526973
　--　将删除时间转换为scn
　　select * from reportinfo
　　AS OF SCN 13526973
　　--将reportinfo表中的scn点的数据取出
　　--然后可以根据这个数据进行还原操作
　　create table reporttest as select * from reportinfo where 1=0;
　　insert into reporttest select * from reportinfo AS OF SCN 13526973;
　　--上面两句应该可以合成一句
　　--create table reporttest as select * from reportinfo AS OF SCN 13526973;
　　--这是reporttest表中就是scn点的reportinfo数据.处理即可
