select * from check_batch;

select to_char(end_time,'yyyy-mm-dd,hh24:mi:ss') from serv_instance_gather_task_sc;
delete from serv_instance_gather_task_sc where task_id=1;
commit;

select * from aip_analysis_end_time;

select * from serv_instance_sc;

delete from serv_instance_sc where serv_instance_sc_id >19;

commit;

select * from serv_instance_gather_task_sc;

delete from serv_instance_gather_task_sc;

select * from aip_message;

select * from serv_instance;
select * from serv_instance_gather_task

select * from serv_instance;

alter table serv_instance modify (serv_instance_sc_id number ,serv_instance_id number);

alter table serv_instance  rename column serv_instance_sc_id to serv_instance_id; 

alter table serv_instance add (sys_flag number(1))

select * from serv_instance_gather_task
insert into serv_instance_gather_task(task_id,serv_man_code,serv_set,address,end_time)
values ()


select serv_set from serv_instance_gather_task_sc;
select * from serv_instance_gather_task_sc;

alter table serv_instance_gather_task drop (serv_set);
alter table serv_instance_gather_task add (serv_set varchar2(2000));
modify (serv_set varchar2(2000))
alter table serv_instance_gather_task_sc drop (serv_set);
alter table serv_instance_gather_task_sc add (serv_set varchar2(2000));
alter table serv_instance_gather_task modify (end_time date default sysdate)

select RECEIVE_TIME from aip_message_persistence ;
select check_batch_id.nextval batch_id from dual


select * from aip_message;
select * from serv_afford_man_reg;

select * from serv_define;



select * from conn_serv_reg_sc;

select * from conn_serv_reg;

select serv_code from aip_message_conn where serv_code='1101.SYNC_SERV01.SynReq';

select  * from aip_message_conn ;


select count(*) from aip_message where serv_code='15.1101.IdcQuery.SynReq';


select max(id) from aip_message where serv_code='15.1101.IdcQuery.SynReq';


update aip_message_persistence set serv_code = '15.1101.IdcQuery.SynReq' where id >23173600

select * from serv_instance_gather_task_sc;

update serv_instance_gather_task_sc set serv_set='1101.SYNC_SERV01.SynReq'

commit;

select * from serv_instance_sc;

select * from serv_instance_gather_task_sc;


delete from serv_instance_gather_task_sc;
delete from serv_instance_sc;
update serv_instance_gather_task_sc set end_time=sysdate-7;
commit;
select * from conn_serv_reg_sc;

update conn_serv_reg_sc set conn_serv_code= '1101.SYNC_SERV01.SynReq'

select * from aip_message_conn order by id desc;

select * from serv_instance;

delete from serv_instance;
commit;
select * from check_batch order by check_batch_id desc;

select * from aip_message;

select * from serv_instance;
