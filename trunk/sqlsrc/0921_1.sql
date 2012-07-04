select * from aip_message_persistence for update;
commit;
select * from aip_message;

select *
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
         where aipmessage0_.SERV_ID = servafford4_.SERV_ID(+)
           and 1 = 1
           and aipmessage0_.SEND_SYSTEM = servafford1_.SERV_MAN_CODE
           and aipmessage0_.RECEIVE_SYSTEM = servafford2_.SERV_MAN_CODE
           and aipmessage0_.SERVICE_STATE = bndicttdic3_.BUSINID
           and bndicttdic3_.BUSINTYPEID = 'SERVICE_STATE'
           and aipmessage0_.RECEIVE_TIME >= cast(sysdate-1 as timestamp)
           and aipmessage0_.RECEIVE_TIME < cast(sysdate as timestamp)
         order by aipmessage0_.RECEIVE_TIME desc)
 where rownum <= 10
  select * from aip_msginfo_persistence;
  
  select * from aip_message_persistence;
