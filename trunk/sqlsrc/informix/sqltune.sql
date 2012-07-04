select count(*) as col_0_0_ from 
TSAIP.AIP_MESSAGE aipmessage0_ left  
outer join TSAIP.SERV_AFFORD_MAN_CONFIG 
servafford1_ on  aipmessage0_.SEND_SYSTEM=
servafford1_.SERV_MAN_CODE left 
outer join  TSAIP.SERV_AFFORD_MAN_CONFIG 
servafford2_ on aipmessage0_.RECEIVE_SYSTEM=
servafford2_.SERV_MAN_CODE  left 
outer join TSAIP.SERV_AFFORD_MAN_REG 
servafford3_ on  aipmessage0_.SERV_ID=
servafford3_.SERV_ID, TSAIP.BNDICT_T_DICTIONARY 
bndicttdic4_ where 1=1  and 
aipmessage0_.SERVICE_STATE=
bndicttdic4_.BUSINID and bndicttdic4_.BUSINTYPEID=
'SERVICE_STATE'  and aipmessage0_.RECEIVE_TIME>=
datetime(2011-04-25 00:00:00.0000)year to 
fraction(5) and  
aipmessage0_.RECEIVE_TIME<
datetime(2011-04-29 00:00:00.0000)year to fraction(5)




--查出前10条
select first 10 aipmessage0_.MSG_ID 
as col_0_0_, aipmessage0_.REGION_ID as col_1_0_, 
servafford1_.SERV_MAN_CODE 
as col_2_0_, servafford2_.SERV_MAN_CODE as col_3_0_, 
aipmessage0_.SERVICE_STATE 
as col_4_0_, aipmessage0_.RESEND_COUNT as 
col_5_0_, aipmessage0_.REQUEST_TIME 
as col_6_0_, aipmessage0_.RESPONSE_TIME as 
col_7_0_, servafford1_.SERV_MAN_NAME 
as col_8_0_, servafford2_.SERV_MAN_NAME as 
col_9_0_, aipmessage0_.RECEIVE_TIME 
as col_10_0_, bndicttdic4_.BUSINNAME as 
col_11_0_, servafford3_.SERV_NAME 
as col_12_0_, aipmessage0_.SEND_TIME as 
col_13_0_, aipmessage0_.CSB_ID 
as col_14_0_ from TSAIP.AIP_MESSAGE aipmessage0_ left outer 
join TSAIP.SERV_AFFORD_MAN_CONFIG 
servafford1_ on aipmessage0_.SEND_SYSTEM=servafford1_.SERV_MAN_CODE 
left outer join TSAIP.SERV_AFFORD_MAN_CONFIG 
servafford2_ on 
aipmessage0_.RECEIVE_SYSTEM=
servafford2_.SERV_MAN_CODE left outer join 
TSAIP.SERV_AFFORD_MAN_REG servafford3_ on 
aipmessage0_.SERV_ID=servafford3_.SERV_ID, 
BNDICT_T_DICTIONARY bndicttdic4_ 
where 1=1 and aipmessage0_.SERVICE_STATE=bndicttdic4_.BUSINID and 
bndicttdic4_.BUSINTYPEID='SERVICE_STATE' and 
aipmessage0_.RECEIVE_TIME>=
datetime(2011-04-25 00:00:00.00000)  year to fraction(5) and 
aipmessage0_.RECEIVE_TIME<datetime(2011-04-29 00:00:00.00000)  
year to fraction(5) order by aipmessage0_.RECEIVE_TIME desc
