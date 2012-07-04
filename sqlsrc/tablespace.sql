select tablespace_name, status from dba_tablespaces;
select tablespace_name, round(bytes/(1024*1024),0) total_space, file_name from dba_data_files;
select username, default_tablespace from dba_users;
select table_name, tablespace_name from user_tables;
select segment_name, segment_type from user_segments;

select * from serv_afford_man_config;
--�鿴���ռ��С
select tablespace_name, file_id, file_name,
����round(bytes/(1024*1024),0) total_space
����from dba_data_files
����order by tablespace_name; 
--�鿴���ռ�ʹ�����
��select sum(bytes)/(1024*1024) as free_space,tablespace_name��
����from dba_free_space
����group by tablespace_name; 
��SELECT A.TABLESPACE_NAME,A.BYTES TOTAL,B.BYTES USED, C.BYTES FREE,
����(B.BYTES*100)/A.BYTES "% USED",(C.BYTES*100)/A.BYTES "% FREE"
����FROM SYS.SM$TS_AVAIL A,SYS.SM$TS_USED B,SYS.SM$TS_FREE C
����WHERE A.TABLESPACE_NAME=B.TABLESPACE_NAME AND A.TABLESPACE_NAME=C.TABLESPACE_NAME
          and a.tablespace_name='USERS';
--�鿴���ռ�
SELECT UPPER(F.TABLESPACE_NAME) "���ռ���",
����D.TOT_GROOTTE_MB "���ռ��С(M)",
����D.TOT_GROOTTE_MB - F.TOTAL_BYTES "��ʹ�ÿռ�(M)",
����TO_CHAR(ROUND((D.TOT_GROOTTE_MB - F.TOTAL_BYTES) / D.TOT_GROOTTE_MB * 100, 2),��'990.99') "ʹ�ñ�",
����F.TOTAL_BYTES "���пռ�(M)",
����F.MAX_BYTES "����(M)"
����FROM (SELECT TABLESPACE_NAME,
����ROUND(SUM(BYTES) / (1024 * 1024), 2) TOTAL_BYTES,
����ROUND(MAX(BYTES) / (1024 * 1024), 2) MAX_BYTES
����FROM SYS.DBA_FREE_SPACE
����GROUP BY TABLESPACE_NAME) F,
����(SELECT DD.TABLESPACE_NAME,
����ROUND(SUM(DD.BYTES) / (1024 * 1024), 2) TOT_GROOTTE_MB
����FROM SYS.DBA_DATA_FILES DD
����GROUP BY DD.TABLESPACE_NAME) D
����WHERE D.TABLESPACE_NAME = F.TABLESPACE_NAME
����ORDER BY 4 DESC;

select dbms_metadata.get_ddl('TABLE', 'AIP_MSGINFO_PERSISTENCE') from dual; --���ڲ�ѯ��ϸ�ı��ṹ
--�����޸ı��ṹ
ALTER TABLE aip_msginfo_persistence MOVE LOB(msg_pkg) STORE AS(TABLESPACE
                                                               tsaippub
                                                               ENABLE
                                                               STORAGE IN ROW
                                                               CHUNK 4096 -- lob�ֶ���С����
                                                               RETENTION
                                                               CACHE);
--��ʵ�����±��ṹ����
ALTER TABLE aip_msginfo_persistence MOVE LOB(msg_pkg) STORE AS(NOCACHE);
--�������ӵĲ�ѯ
select * from v$session where username is not null;
select count(*) from v$session; --������
Select count(*) from v$session where status = 'ACTIVE'; --����������
show parameter processes; --�������
select count(*),count(*)/500 from v$session;
select * from v$session;

select count(*)
  from aip_message;
      SELECT * FROM AIP_MESSAGE_PERSISTENCE;
select count(*) from aip_message_persistence;
       
--�鿴�ȴ��¼�
select event from v$session_wait;
 --ɾ����Ӧ�ı���¼
truncate table aip_message_persistence;
truncate table aip_msginfo_persistence;
select c.count / s.sub
    from (select count(*) count from aip_message ) c,
         (select (max(create_time) - min(create_time)) * 24 * 3600 sub
            from aip_msginfo_persistence ) s 

/*���ڲ�ѯƽ���־û���������*/
--2010 - 7 - 23 16 :31 :55 2010 - 7 - 23 16 :30 :40
  select c.count / s.sub
    from (select count(*) count from aip_message_persistence ) c,
         (select (max(create_time) - min(create_time)) * 24 * 3600 sub
            from aip_message_persistence ) s  
            union 
  select count(*)/120 from aip_message; 
  --�鿴�������
  SELECT /*+ ORDERED */
sql_text
FROM v$sqltext a
WHERE (a.hash_value, a.address) IN (
SELECT DECODE (sql_hash_value,
0, prev_hash_value,
sql_hash_value
),
DECODE (sql_hash_value, 0, prev_sql_addr, sql_address)
FROM v$session b
WHERE b.paddr = (SELECT addr
FROM v$process c
WHERE c.spid = '&pid'))
ORDER BY piece ASC��


select * from aip_message_persistence where msg_id='test_10K_tc';
select * from aip_message_persistence;

select count(*) from aip_msginfo_persistence ;
select count(*) from aip_message_persistence;
select * from aip_message_persistence where rownum<10 order by id desc;


select * from aip_message_persistence where create_time>sysdate-1/48;

select * from aip_msginfo_persistence;

select instance_name from v$instance;

select count(*) from aip_message_persistence 
       where receive_time between to_date('2010:08:03 10:41:00','yyyy:MM:dd HH24:MI:SS')
             and to_date('2010:08:03 11:41:00','yyyy:MM:dd HH24:MI:SS')
             and msg_type!='request'
--��ѯ�ַ������
select * from aip_message_persistence
select count(*)
  from aip_message_persistence
 where host = 'grp1@135.32.17.25'
   and msg_type = 'request'
union
select count(*)
  from aip_message_persistence
 where host = 'grp1@135.32.17.26'
   and msg_type = 'request'
union
select count(*) from aip_message;

select * from aip_message_persistence ;


select * from aip_msginfo_persistence where csb_id='1d244000-9f58-11df-8550-872011190000'

select * from aip_message_persistence where csb_id='d309484e-9f0c-11df-b19b-8720111a0000';
select * from aip_msginfo_persistence where csb_id='d309484e-9f0c-11df-b19b-8720111a0000';
select *
  from V$UNDOSTAT
       
        select count(*) / 120
          from aip_message
         where msg_id = 'test_20K_100_17';


select count(*) from aip_message_persistence;
select *
  from aip_msginfo_persistence
        select *
          from aip_message_info
               
                select max(create_time)
                  from aip_message_persistence
                 where create_time >
                       to_date('2010-07-23 16:29:40',
                               'yyyy-MM-dd HH24:MI:SS')
                 order by id;

  select c.count / s.sub
    from (select count(*) count from aip_message where receive_time between to_date('2010:08:03 09:48:00','yyyy:MM:dd HH24:MI:SS')
             and to_date('2010:08:03 10:28:00','yyyy:MM:dd HH24:MI:SS') ) c,
         (select (max(create_time) - min(create_time)) * 24 * 3600 sub
            from aip_message_persistence where receive_time between to_date('2010:08:03 09:48:00','yyyy:MM:dd HH24:MI:SS')
             and to_date('2010:08:03 10:28:00','yyyy:MM:dd HH24:MI:SS')) s  
            union 
  select count(*)/120 from aip_message; 

select *
  from aip_msginfo_persistence
 where csb_id = '5ee979b0-99c2-11df-b16e-8720111a0000';
select 14033 * 20 * 1024 from dual; --287395840
select 940978016 - 631140512 from dual; --309837504

select * from aip_msginfo_persistence;
select * from aip_message_persistence where msg_id = 'test_no_tt';
select * from aip_msginfo_persistence where msg_id = 'test_no_tt';

select *
  from aip_message_persistence
 where msg_type = 'request'
   and service_state != 100
  select *
          from aip_message_persistence
         where msg_type = 'request'
           and service_state = 100
        
          select *
                  from aip_msginfo_persistence
                 where csb_id = '5ee979b0-99c2-11df-b16e-8720111a0000'
                
                  select *
                          from aip_message_persistence
                         where csb_id =
                               '76d3c318-99c3-11df-b16f-8720111a0000'
                        
                          select count(*)
                                  from aip_message
                                 where service_state != 0
                                 where host = 'grp1@135.32.17.25';

select count(*) count
  from aip_message_persistence
 where host = 'grp1@135.32.17.25';
 --94472 21��40�ٹ�10���Ӳ��£��־û���
select * from aip_message_persistence where service_state = 99;
select * from aip_error_message where rownum < 5 order by id desc;

select count(*)
  from aip_message_persistence
 where msg_id = 'test_20K_100_17';

select * from aip_message_persistence where msg_id = 'test_20K_100_17';
create table testxmltype(doc xmltype);

select * from testxmltype;
insert into testxmltype values ('<a><b>text</b><b>text1</b></a>');
select t.doc.extract('//b/text()') .getStringVal() from testxmltype t;
select count(*) from aip_error_message;
select * from aip_error_message;