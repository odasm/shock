select * from aip_message
select count(*) from aip_message_persistence--2170
select count(*) from aip_message_persistence where msg_type='request'--1204
select count(*) from aip_message_persistence where msg_type='response' --966
select count(*) from aip_message --1204
select * from (select count(*) cou,csb_id from aip_message_persistence group by csb_id) a
where a.cou>2;
select * from aip_message_persistence where csb_id='defd0d99-13fc-4f0b-9fe4-a3986e69bc5e';
select * from serv_mon 
select * from aip_message_persistence where create_time>sysdate-1
select   * from aip_message where create_time>sysdate-1
select * from aip_message_info order by aip_id desc

select * from busi
select * from menu_info where P_id='11111331'
select * from alarm_threshold_conf for update
select * from serv_afford_man_reg where serv_code='csb.test1.SynReq'


select * from menu_info order by menu_Id for update

insert into menu_info values(11111411,'·þÎñ¼àÊÓ',1004,0,1,'flex/ServMonitor.jsp');


select * from busin_dict



