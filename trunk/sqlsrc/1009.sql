select * from protocol_info;
select protocol_id_seq.nextval from dual;
select * from wsdl_conf;--csb/221
select * from serv_afford_man_config;
select * from wsdl_conf where serv_man_id=221 ;
select * from wsdl_conf where serv_man_id=361;
select * from wsdl_oper where wsdl_id in(23,24);
select * from wsdl_oper where wsdl_id in(5,42);
select * from serv_define;
select *
  from wsdl_para
 where wsdl_para_id in
       (select wsdl_para_id from wsdl_oper where wsdl_id in (71,72)); 

select * from wsdl_para;
--删除221服务商所上传的wsdl及协议及其他内容。
delete from wsdl_para
 where wsdl_oper_id in
       (select wsdl_oper_id
          from wsdl_oper
         where wsdl_id in
               (select wsdl_id from wsdl_conf where serv_man_id = 221));      
delete from wsdl_oper where wsdl_id in(select wsdl_id from wsdl_conf where serv_man_id = 221);
delete from wsdl_conf where wsdl_id in(select wsdl_id from wsdl_conf where serv_man_id = 221);
delete from protocol_info where serv_man_id=221; 
delete  from serv_define where wsdl_id in (select wsdl_id from wsdl_conf where serv_man_id = 221);
commit; 
select * from serv_afford_man_reg;
delete from serv_afford_man_reg where ser_serv_man_id=221;

select * from 
                
 select Protocol_ID_SEQ.nextval from dual;
 select * from protocol_info for update;
 insert into protocol_info values(2,1,'protocol_1','/opt/starit/sun_0_');

 select systimestamp-(systimestamp-1) from dual;
 select * from aip_message_persistence;
select * from aip_message order by id desc;
select * from aip_message_persistence where rownum<10 order by id desc;
