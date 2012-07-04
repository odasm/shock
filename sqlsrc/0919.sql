select * from dbms_stats.gather_index_stats

select * from aip_message;
select  * from aip_message_info;
update aip_msginfo_persistence
 set msg_pkg=empty_clob() where csb_id not in(select distinct csb_id from aip_message_persistence);

select sysdate from dual;
select count(*) from aip_message;
select count(*) from aip_message where service_state<>0;
--查看谁锁住了这个表
SELECT owner FROM syslocks WHERE tabname="aip_msginfo_persistence"
--查看死锁
select t2.username || '      ' || t2.sid || '     ' || t2.serial# ||
       '      ' || t2.logon_time || '     ' || t3.sql_text
  from v$locked_object t1, v$session t2, v$sqltext t3
 where t1.session_id = t2.sid
   and t2.sql_address = t3.address
 order by t2.logon_time;
 --通过session id 查到对应的操作系统进程，在Unix中杀掉操作系统的进程。 
SELECT a.username, c.spid AS os_process_id, c.pid AS oracle_process_id
  FROM v$session a, v$process c
 WHERE c.addr = a.paddr
   and a.sid =222
   and a.serial# =26181;
   
   
   select * from aip_message 
       where service_state<>0
       and receive_time < to_date('2010-09-20 00:00:00','yyyy-MM-dd HH24:MI:ss')
            and receive_time> to_date('2010-09-19 00:00:00','yyyy-MM-dd HH24:MI:ss')
   
   select * from serv_mon where update_time>to_date('2010-09-19 00:00:00','yyyy-MM-dd HH24:MI:ss')
   select * from aip_message where send_system='csb'
   and receive_time>sysdate-1;
   select * from serv_mon where update_time>sysdate-1 and serv_man_send_code='csb';
   
   
