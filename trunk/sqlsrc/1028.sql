SELECT 
    NVL(R.SERV_CODE,'CSB') SERV_CODE,A.ALARM_TYPE,A.ALARM_CONTENT,A.ALARM_THRESHOLD,A.ALARM_TRIGGER_THRESHOLD 
    FROM ALARM_THRESHOLD_CONF A left join SERV_AFFORD_MAN_REG R 
   on A.SERV_ID = R.SERV_ID;
   
  select * from alarm_threshold_conf for update;
  
  select * from aip_message_persistence ;
  
  SELECT CSB_ID FROM AIP_MESSAGE_PERSISTENCE WHERE STORE_KEY = 'MsgStoreSeq$10' AND ROWNUM<4 ORDER BY ID DESC;
select csb_id   from (select id,csb_id from aip_message_persistence where store_key ='MsgStoreSeq$10') old 
where rownum<2 order by id
