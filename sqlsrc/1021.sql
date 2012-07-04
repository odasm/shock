select * from serv_define where serv_id = 981;
select * from wsdl_conf where serv_man_id = 221 for update;
select * from serv_afford_man_reg where ser_serv_man_id = 221; --ts.crmtest.SynReq/981
select * from serv_afford_man_config; --ts/361
commit;
select * from aip_message order by id desc;
select * from aip_message_persistence order by id desc;
select * from aip_analysis_end_time order by id desc for update;
select * from serv_mon order by serv_monitor_id desc;
select sysdate from dual;
select * from user_jobs;

select trunc(sysdate + 1 / 24, 'HH24') + 30 / 60 / 24 from dual;
select distinct serv_id from aip_message;
select *
  from serv_afford_man_reg
 where serv_id not in (select distinct serv_id from aip_message);
 select disstinct serv_id
   from aip_message
  where serv_id not in (select distinct serv_id from serv_afford_man_reg);
select max(serv_monitor_id) from SERV_mon ;
select SERV_MONITOR_ID_SEQ.Nextval from dual;
