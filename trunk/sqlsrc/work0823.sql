select * from aip_error_message where rownum < 10 order by id desc;
select count(*) from aip_error_message;
insert into aip_error_message
  (id, message)
values
  (aip_error_message_seq.nextval, 'haha');
select aip_error_message_seq.nextval from dual;
aip_error_message_seq.currval
-------------------
  select * from wsdl_conf;
select * from wsdl_oper;
select * from serv_define;
SELECT B.SERV_TYPE,
       A.SERV_STAT,
       C.BUSI_SERV_ADDR,
       A.SERV_CODE,
       A.SERV_ID,
       A.SERV_NAME,
       B.VERSION_NO,
       B.VERSION_STATE
  FROM SERV_AFFORD_MAN_REG A, SERV_DEFINE B, WSDL_CONF C
 WHERE A.SERV_ID = B.SERV_ID
   AND B.WSDL_ID = C.WSDL_ID
   AND A.SERV_ID = 241;

SELECT B.SERV_TYPE,
       A.SERV_STAT,
       C.BUSI_SERV_ADDR,
       A.SERV_CODE,
       A.SERV_ID,
       A.SERV_NAME,
       B.VERSION_NO,
       B.VERSION_STATE
  FROM SERV_AFFORD_MAN_REG A, SERV_DEFINE B, WSDL_CONF C
 WHERE A.SERV_ID = B.SERV_ID
   AND B.WSDL_ID = C.WSDL_ID
   
select * from bndict_t_dictionary;
   
   
   
   
   
   
   
   
   
   
   
   
   
   