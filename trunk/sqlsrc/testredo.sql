--redo�鿴��־�ļ��ļ�
select * from v$logfile;
--�鿴�����ļ�λ��
select name
  from v$datafile
 where ts# in (select ts# from v$tablespace where name = 'USERS');
 select * from v$log;
