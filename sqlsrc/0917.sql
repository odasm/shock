select count(*) from aip_message 

where msg_id = 'csb2010091610000';
select *
  from aip_message
 where send_system = 'csb'
   and receive_system = 'ts';
select count(*) from aip_message where msg_id = 'csb201007200000000001'; --344679
select count(*) from aip_message where msg_id = 'csb201007200000000002'; --373464
select count(*) from aip_message where msg_id = 'csb201007200000000003'; --344743
select count(*) from aip_message where msg_id = 'csb201007200000000004'; --373448
--ɾ����������
delete from aip_message_persistence where msg_id = 'csb201007200000000001'
and send_system='csb';
delete from aip_message_persistence
 where msg_id = 'csb201007200000000002'
   and send_system = 'csb';
delete from aip_message_persistence
 where msg_id = 'csb201007200000000003'
   and send_system = 'csb';
delete from aip_message_persistence
 where msg_id = 'csb201007200000000004'
   and send_system = 'csb'; 
commit;
select * from aip_msginfo_persistence;
select count(*) from aip_msginfo_persistence where msg_id ='csb201007200000000004';

--����һ�����������ڲ���Ҫ��(Ϊ�˲���ɾ���õ�)
create index INDEX_MSGINFO_MSG_ID on AIP_MSGINFO_PERSISTENCE (MSG_ID); 
drop index INDEX_MSGINFO_MSG_ID;
create index INDEX_MSGINFO_CSB_ID on AIP_MSGINFO_PERSISTENCE (CSB_ID); 
delete from aip_msginfo_persistence
 where msg_id = 'csb201007200000000001';
delete from aip_msginfo_persistence
 where msg_id = 'csb201007200000000002';
delete from aip_msginfo_persistence
 where msg_id = 'csb201007200000000003';
delete from aip_msginfo_persistence
 where msg_id = 'csb201007200000000004'; 
commit;
--���û���ύ�����񣬲�ɱ���Ự
select b.username,b.sid,b.serial#,logon_time 
from v$locked_object a,v$session b
where a.session_id = b.sid order by b.logon_time;

select * from V$LOCKED_OBJECT;

alter system kill session '222,26181'  immediate;
alter system kill session '222,29178' ;
select count(*) from aip_message_persistence where send_system = 'dt';
create index PERSISTENCE_RECEIVE_TIME on AIP_MESSAGE_PERSISTENCE (RECEIVE_TIME);
create index INDEX_MSGINFO_CSB_ID on AIP_MSGINFO_PERSISTENCE(CSB_ID);
drop index INDEX_MSGINFO_CSB_ID;
select *
  from (select aipmessage0_.AIP_ID       as col_0_0_,
               aipmessage0_.MSG_ID       as col_1_0_,
               aipmessage0_.CSB_ID       as col_2_0_,
               aipmessage0_.MESSAGE_TYPE as col_3_0_,
               aipmessage0_.REQUEST_PKG  as col_4_0_,
               aipmessage0_.RESPONSE_PKG as col_5_0_
          from AIP_MESSAGE_INFO aipmessage0_
         where 1 = 1
           and aipmessage0_.CSB_ID = 'a9399a8e-c1ec-11df-a9d8-8720111a0000')
 where rownum <= 10;
 
 select * from aip_analysis_end_time order by id desc;

select *
  from (select /* +index(aip_message_persistence PERSISTENCE_RECEIVE_TIME) */
               aipmessage0_.MSG_ID         as col_0_0_,
               aipmessage0_.REGION_ID      as col_1_0_,
               aipmessage0_.SEND_SYSTEM    as col_2_0_,
               aipmessage0_.RECEIVE_SYSTEM as col_3_0_,
               aipmessage0_.SERVICE_STATE  as col_4_0_,
               aipmessage0_.RESEND_COUNT   as col_5_0_,
               aipmessage0_.REQUEST_TIME   as col_6_0_,
               aipmessage0_.RESPONSE_TIME  as col_7_0_,
               servafford1_.SERV_MAN_NAME  as col_8_0_,
               servafford2_.SERV_MAN_NAME  as col_9_0_,
               aipmessage0_.RECEIVE_TIME   as col_10_0_,
               bndicttdic3_.BUSINNAME      as col_11_0_,
               servafford4_.SERV_NAME      as col_12_0_,
               aipmessage0_.SEND_TIME      as col_13_0_,
               aipmessage0_.CSB_ID         as col_14_0_
          from TSAIP.AIP_MESSAGE            aipmessage0_,
               TSAIP.SERV_AFFORD_MAN_REG    servafford4_,
               TSAIP.SERV_AFFORD_MAN_CONFIG servafford1_,
               TSAIP.SERV_AFFORD_MAN_CONFIG servafford2_,
               BNDICT_T_DICTIONARY          bndicttdic3_
         where aipmessage0_.SERV_ID = servafford4_.SERV_ID
           and 1 = 1
           and aipmessage0_.SEND_SYSTEM = servafford1_.SERV_MAN_CODE
           and aipmessage0_.RECEIVE_SYSTEM = servafford2_.SERV_MAN_CODE
           and aipmessage0_.SERVICE_STATE = bndicttdic3_.BUSINID
           and bndicttdic3_.BUSINTYPEID = 'SERVICE_STATE'
          -- and  sysdate - 7<=aipmessage0_.RECEIVE_TIME
           and aipmessage0_.RECEIVE_TIME >= sysdate - 7
           and aipmessage0_.RECEIVE_TIME < sysdate
         order by aipmessage0_.RECEIVE_TIME desc)
 where rownum <=10;

  select *
    from (select /* +index(aip_message_persistence.PERSISTENCE_RECEIVE_TIME) */
                 aipmessage0_.MSG_ID         as col_0_0_,
                 aipmessage0_.REGION_ID      as col_1_0_,
                 aipmessage0_.SEND_SYSTEM    as col_2_0_,
                 aipmessage0_.RECEIVE_SYSTEM as col_3_0_,
                 aipmessage0_.SERVICE_STATE  as col_4_0_,
                 aipmessage0_.RESEND_COUNT   as col_5_0_,
                 aipmessage0_.REQUEST_TIME   as col_6_0_,
                 aipmessage0_.RESPONSE_TIME  as col_7_0_,
                 servafford1_.SERV_MAN_NAME  as col_8_0_,
                 servafford2_.SERV_MAN_NAME  as col_9_0_,
                 aipmessage0_.RECEIVE_TIME   as col_10_0_,
                 bndicttdic3_.BUSINNAME      as col_11_0_,
                 servafford4_.SERV_NAME      as col_12_0_,
                 aipmessage0_.SEND_TIME      as col_13_0_,
                 aipmessage0_.CSB_ID         as col_14_0_
            from TSAIP.AIP_MESSAGE            aipmessage0_,
                 TSAIP.SERV_AFFORD_MAN_REG    servafford4_,
                 TSAIP.SERV_AFFORD_MAN_CONFIG servafford1_,
                 TSAIP.SERV_AFFORD_MAN_CONFIG servafford2_,
                 BNDICT_T_DICTIONARY          bndicttdic3_
           where aipmessage0_.SERV_ID = servafford4_.SERV_ID
             and 1 = 1
             and aipmessage0_.SEND_SYSTEM = servafford1_.SERV_MAN_CODE
             and aipmessage0_.RECEIVE_SYSTEM = servafford2_.SERV_MAN_CODE
             and aipmessage0_.SERVICE_STATE = bndicttdic3_.BUSINID
             and bndicttdic3_.BUSINTYPEID = 'SERVICE_STATE'
             and aipmessage0_.RECEIVE_TIME >= cast(sysdate-7 as timestamp)
             and aipmessage0_.RECEIVE_TIME < cast(sysdate as timestamp)
           order by aipmessage0_.RECEIVE_TIME desc)
   where rownum <= 10;
--����һ�����ݣ�ʹ���ݿ��ָܻ���������ʹ������
analyze table aip_message_persistence compute statistics for all indexed columns;
analyze table aip_msginfo_persistence compute statistics ;
select * from aip_message_persistence where RECEIVE_TIME=sysdate;
--������������Ч
select *
  from aip_message_persistence
 where RECEIVE_TIME >= sysdate - 7
   and RECEIVE_TIME < sysdate;
   select *
     from aip_message_persistence
    where RECEIVE_TIME >= cast(sysdate-7 as timestamp)
      and receive_time < cast(sysdate as timestamp);
      select *
     from aip_message_persistence
    where RECEIVE_TIME between cast(sysdate-7 as timestamp)
      and  cast(sysdate as timestamp);
      
select *
  from (select row_.*, rownum rownum_
          from (select aipmessage0_.MSG_ID         as col_0_0_,
                       aipmessage0_.REGION_ID      as col_1_0_,
                       aipmessage0_.SEND_SYSTEM    as col_2_0_,
                       aipmessage0_.RECEIVE_SYSTEM as col_3_0_,
                       aipmessage0_.SERVICE_STATE  as col_4_0_,
                       aipmessage0_.RESEND_COUNT   as col_5_0_,
                       aipmessage0_.REQUEST_TIME   as col_6_0_,
                       aipmessage0_.RESPONSE_TIME  as col_7_0_,
                       servafford1_.SERV_MAN_NAME  as col_8_0_,
                       servafford2_.SERV_MAN_NAME  as col_9_0_,
                       aipmessage0_.RECEIVE_TIME   as col_10_0_,
                       bndicttdic3_.BUSINNAME      as col_11_0_,
                       servafford4_.SERV_NAME      as col_12_0_,
                       aipmessage0_.SEND_TIME      as col_13_0_,
                       aipmessage0_.CSB_ID         as col_14_0_
                  from TSAIP.AIP_MESSAGE            aipmessage0_,
                       TSAIP.SERV_AFFORD_MAN_REG    servafford4_,
                       TSAIP.SERV_AFFORD_MAN_CONFIG servafford1_,
                       TSAIP.SERV_AFFORD_MAN_CONFIG servafford2_,
                       BNDICT_T_DICTIONARY          bndicttdic3_
                 where aipmessage0_.SERV_ID = servafford4_.SERV_ID
                   and 1 = 1
                   and aipmessage0_.SEND_SYSTEM = servafford1_.SERV_MAN_CODE
                   and aipmessage0_.RECEIVE_SYSTEM =
                       servafford2_.SERV_MAN_CODE
                   and aipmessage0_.SERVICE_STATE = bndicttdic3_.BUSINID
                   and bndicttdic3_.BUSINTYPEID = 'SERVICE_STATE'
                   and aipmessage0_.RECEIVE_TIME >= ?
                   and aipmessage0_.RECEIVE_TIME < ?
                 order by aipmessage0_.RECEIVE_TIME desc) row_
         where rownum <= ?)
 where rownum_ > ?
select sql_text,last_load_time from v$sql order by last_load_time desc;

select col.*, com.Comments
  from sys.all_tab_columns col, sys.all_col_comments com
 where col.owner = 'SYS'
   and col.table_name = 'V_$SQL'
   and com.Owner(+) = 'SYS'
   and com.Table_Name(+) = 'V_$SQL'
   and com.Column_Name(+) = col.Column_Name
 order by col.column_id
   
   
   