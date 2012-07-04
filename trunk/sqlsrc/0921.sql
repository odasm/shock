select * from serv_afford_man_config;
select * from wsdl_oper;
select * from wsdl_conf for update;
alter table wsdl_para 
modify (PARA_DATA_TYPE  VARCHAR2(32));
commit;
delete from wsdl_conf;
select wsdlconf0_.WSDL_ID        as col_0_0_,
       wsdlconf0_.WSDL_NAME      as col_1_0_,
       wsdlconf0_.BUSI_SERV_ADDR as col_2_0_
  from TSAIP.WSDL_CONF wsdlconf0_
 where 1 = 1
   and wsdlconf0_.WSDL_ID = 5
select * from protocol_info;
insert into protocol_info
 values(1,361,'–≠“È1∫≈','/opt/starit/sun_0_');
select * from bndict_t_dictionary;
select * from serv_define;
select * from bndict_t_busintype;
delete from bndict_t_busintype;
delete from bndict_t_dictionary;

select * from menu_info order by name;
select * from menu_func_info;
select * from v$sql order by last_active_time desc;
