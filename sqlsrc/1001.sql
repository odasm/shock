select * from wsdl_conf ;
select * from wsdl_oper where wsdl_id in(23,24);
select *
  from wsdl_para
 where wsdl_para_id in
       (select wsdl_para_id from wsdl_oper where wsdl_id in (25));
delete from wsdl_para 
 where wsdl_para_id in
       (select wsdl_para_id from wsdl_oper where wsdl_id in (25));
delete from wsdl_oper where wsdl_id in(25);
delete from wsdl_conf where wsdl_id in(25);
commit;
 select Protocol_ID_SEQ.nextval from dual;
 select * from protocol_info;
 insert into protocol_info values(2,1,'protocol_1','/opt/starit/sun_0_');
 commit;
 
 select * from aip_message_persistence;
