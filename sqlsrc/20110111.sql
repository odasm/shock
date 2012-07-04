select * from aip_message_persistence order by id desc;

select * from aip_message_persistence where store_key='MsgStoreSeq$-1';
select * from aip_message_persistence where store_key='pesb20110110149';

csb201012181301000012

select * from aip_message_persistence where msg_id='W';
delete from aip_message_persistence where id = 12433765
commit;

select * from aip_message_persistence where rownum<3 and store_key='MsgStoreSeq$182897'  
       order by id desc

select count(*) from aip_message;
select * from aip_message_persistence where id >13300000

select * from aip_message_persistence where msg_id='jmsTest2011';

select CSB_ID,RECEIVE_TIME  from (SELECT 
			CSB_ID ,RECEIVE_TIME  FROM AIP_MESSAGE_PERSISTENCE WHERE STORE_KEY = 'MsgStoreSeq$183088'
       ORDER BY RECEIVE_TIME DESC) A WHERE ROWNUM<=1
select * from aip_message_persistence order by id desc;     
select * from aip_message_persistence where store_key='MsgStoreSeq$183814';


select * from aip_message_persistence where create_time >sysdate-1/24
       
