
insert into aip_message_persistence (id,csb_id,msg_id,send_system,serv_code,receive_time,
request_time,response_time,send_time)values 
(aip_message_id_seq.nextval,'10.1111_20111110_101',
'10.1103_20111110_001','1103','1101.SYNC_SERV01.SynReq',cast(sysdate-4 as timestamp),cast(sysdate-4 as timestamp),
cast(sysdate-4 as timestamp),cast(sysdate-4 as timestamp));


insert into aip_message_persistence (id,csb_id,msg_id,send_system,serv_code,receive_time,
request_time,response_time,send_time)values 
(aip_message_id_seq.nextval,'10.1111_20111110_103',
'10.1103_20111110_002','1103','1101.SYNC_SERV01.SynReq',cast(sysdate-4 as timestamp),cast(sysdate-4 as timestamp),
cast(sysdate-4 as timestamp),cast(sysdate-4 as timestamp));

insert into aip_message_persistence (id,csb_id,msg_id,send_system,serv_code,receive_time,
request_time,response_time,send_time)values 
(aip_message_id_seq.nextval,'10.1111_20111110_105',
'10.1103_20111110_003','1103','1101.SYNC_SERV01.SynReq',cast(sysdate-4 as timestamp),cast(sysdate-4 as timestamp),
cast(sysdate-4 as timestamp),cast(sysdate-4 as timestamp));


insert into aip_message_persistence (id,csb_id,msg_id,send_system,serv_code,receive_time,
request_time,response_time,send_time)values 
(aip_message_id_seq.nextval,'10.1111_20111110_107',
'10.1103_20111110_004','1103','1101.SYNC_SERV01.SynReq',cast(sysdate-4 as timestamp),cast(sysdate-4 as timestamp),
cast(sysdate-4 as timestamp),cast(sysdate-4 as timestamp));

insert into aip_message_persistence (id,csb_id,msg_id,send_system,serv_code,receive_time,
request_time,response_time,send_time)values 
(aip_message_id_seq.nextval,'10.1111_20111110_109',
'10.1103_20111110_005','1103','1101.SYNC_SERV01.SynReq',cast(sysdate-4 as timestamp),cast(sysdate-4 as timestamp),
cast(sysdate-4 as timestamp),cast(sysdate-4 as timestamp));

insert into aip_message_persistence (id,csb_id,msg_id,send_system,serv_code,receive_time,
request_time,response_time,send_time)values 
(aip_message_id_seq.nextval,'10.1111_20111110_111',
'10.1103_20111110_006','1103','1101.SYNC_SERV01.SynReq',cast(sysdate-4 as timestamp),cast(sysdate-4 as timestamp),
cast(sysdate-4 as timestamp),cast(sysdate-4 as timestamp));

insert into aip_message_persistence (id,csb_id,msg_id,send_system,serv_code,receive_time,
request_time,response_time,send_time)values 
(aip_message_id_seq.nextval,'10.1111_20111110_113',
'10.1103_20111110_007','1103','1101.SYNC_SERV01.SynReq',cast(sysdate-4 as timestamp),cast(sysdate-4 as timestamp),
cast(sysdate-4 as timestamp),cast(sysdate-4 as timestamp));


insert into aip_message_persistence (id,csb_id,msg_id,send_system,serv_code,receive_time,
request_time,response_time,send_time)values 
(aip_message_id_seq.nextval,'10.1111_20111110_117',
'10.1103_20111110_009','1103','1101.SYNC_SERV01.SynReq',cast(sysdate-4 as timestamp),cast(sysdate-4 as timestamp),
cast(sysdate-4 as timestamp),cast(sysdate-4 as timestamp));

insert into aip_message_persistence (id,csb_id,msg_id,send_system,serv_code,receive_time,
request_time,response_time,send_time)values 
(aip_message_id_seq.nextval,'10.1111_20111110_119',
'10.1103_20111110_010','1103','1101.SYNC_SERV01.SynReq',cast(sysdate-4 as timestamp),cast(sysdate-4 as timestamp),
cast(sysdate-4 as timestamp),cast(sysdate-4 as timestamp));



update aip_message_persistence set receive_time=to_timestamp('2011-01-13 11:01:16','yyyy-mm-dd hh24:mi:ss') 
,request_time=to_timestamp('2011-01-13 11:01:16','yyyy-mm-dd hh24:mi:ss') ,
response_time=to_timestamp('2011-01-13 11:01:16','yyyy-mm-dd hh24:mi:ss'),
send_time=to_timestamp('2011-01-13 11:01:16','yyyy-mm-dd hh24:mi:ss'),
receive_system='1101',conn_flag=1 
where msg_id in ('10.1103_20111110_001','10.1103_20111110_002',
'10.1103_20111110_003','10.1103_20111110_004','10.1103_20111110_005','10.1103_20111110_006','10.1103_20111110_007',
'10.1103_20111110_009','10.1103_20111110_010');
--对账时间为2011-01-13 至2011-01-14


select * from serv_instance;
select * from aip_message where receive_time between to_timestamp('2011-01-12 11:01:16','yyyy-mm-dd hh24:mi:ss')
and to_timestamp('2011-01-14 11:01:16','yyyy-mm-dd hh24:mi:ss');

select * from aip_message_persistence where receive_time between to_timestamp('2011-01-12 11:01:16','yyyy-mm-dd hh24:mi:ss')
and to_timestamp('2011-01-14 11:01:16','yyyy-mm-dd hh24:mi:ss')


commit;
