--redo查看日志文件文件
select * from v$logfile;
--查看数据文件位置
select name
  from v$datafile
 where ts# in (select ts# from v$tablespace where name = 'USERS');
 select * from v$log;
