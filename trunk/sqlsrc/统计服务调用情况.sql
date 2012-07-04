--通过时间点设置来统计对应时间段客户端调取其他服务的成功与失败次数
select max(b.serv_man_name) "客户端名称",max(c.serv_name) "调用服务" ,
    sum(1) "调用服务总数",sum(decode(a.service_state, 0, 0, 1)) "失败次数",
    trunc(sum(decode(a.service_state, 0, 0, 1))/sum(1)*100,2)||'%' "失败占比" 
       from aip_message a, serv_afford_man_config b,serv_afford_man_reg c
           where   a.receive_time between 
                    /*开始时间*/             cast(to_date('2010-09-19 00:00:00','yyyy-MM-dd HH24:Mi:ss') as timestamp) 
                     /*结束时间*/                and cast(to_date('2010-09-20 00:00:00','yyyy-MM-dd HH24:Mi:ss') as timestamp)
                and a.serv_id= c.serv_id(+)
                and a.send_system=b.serv_man_code(+)
                      group by a.serv_id,a.send_system
                            order by max(b.serv_man_code);
--通过时间点设置来统计对应时间段客户端调取其他服务的成功与失败次数，及相应的最大业务服务历时及
--最小业务服务历时，平均业务服务历时
select max(b.serv_man_name) "客户端名称",max(c.serv_name) "调用服务" ,
    sum(1) "调用服务总数",sum(decode(a.service_state, 0, 0, 1)) "失败次数",
    trunc(sum(decode(a.service_state, 0, 0, 1))/sum(1)*100,2)||'%' "失败占比" ,
    trunc(AVG(TO_NUMBER(SUBSTR(a.RESPONSE_TIME-a.REQUEST_TIME,2,9))*24*3600000+
TO_NUMBER(SUBSTR(a.RESPONSE_TIME-a.REQUEST_TIME,12,2))*3600000+
TO_NUMBER(SUBSTR(a.RESPONSE_TIME-a.REQUEST_TIME,15,2))*60000+
TO_NUMBER(SUBSTR(a.RESPONSE_TIME-a.REQUEST_TIME,18,2))*1000+
TO_NUMBER(SUBSTR(a.RESPONSE_TIME-a.REQUEST_TIME,21,3))),2)  "业务服务平均历时(单位：毫秒)",        
        MIN(TO_NUMBER(SUBSTR(a.RESPONSE_TIME-a.REQUEST_TIME,2,9))*24*3600000+
TO_NUMBER(SUBSTR(a.RESPONSE_TIME-a.REQUEST_TIME,12,2))*3600000+
TO_NUMBER(SUBSTR(a.RESPONSE_TIME-a.REQUEST_TIME,15,2))*60000+
TO_NUMBER(SUBSTR(a.RESPONSE_TIME-a.REQUEST_TIME,18,2))*1000+
TO_NUMBER(SUBSTR(a.RESPONSE_TIME-a.REQUEST_TIME,21,3))) "业务服务最小历时(单位：毫秒)",
        MAX(TO_NUMBER(SUBSTR(a.RESPONSE_TIME-a.REQUEST_TIME,2,9))*24*3600000+
TO_NUMBER(SUBSTR(a.RESPONSE_TIME-a.REQUEST_TIME,12,2))*3600000+
TO_NUMBER(SUBSTR(a.RESPONSE_TIME-a.REQUEST_TIME,15,2))*60000+
TO_NUMBER(SUBSTR(a.RESPONSE_TIME-a.REQUEST_TIME,18,2))*1000+
TO_NUMBER(SUBSTR(a.RESPONSE_TIME-a.REQUEST_TIME,21,3)))  "业务服务最大历时(单位：毫秒)",
      trunc(AVG(TO_NUMBER(SUBSTR(a.REQUEST_TIME-a.RECEIVE_TIME+a.SEND_TIME-a.RESPONSE_TIME,2,9))*24*3600000+
TO_NUMBER(SUBSTR(a.REQUEST_TIME-a.RECEIVE_TIME+a.SEND_TIME-a.RESPONSE_TIME,12,2))*3600000+
TO_NUMBER(SUBSTR(a.REQUEST_TIME-a.RECEIVE_TIME+a.SEND_TIME-a.RESPONSE_TIME,15,2))*60000+
TO_NUMBER(SUBSTR(a.REQUEST_TIME-a.RECEIVE_TIME+a.SEND_TIME-a.RESPONSE_TIME,18,2))*1000+
TO_NUMBER(SUBSTR(a.REQUEST_TIME-a.RECEIVE_TIME+a.SEND_TIME-a.RESPONSE_TIME,21,3))),2)  "CSB平均历时(单位：毫秒)",        
        MIN(TO_NUMBER(SUBSTR(a.REQUEST_TIME-a.RECEIVE_TIME+a.SEND_TIME-a.RESPONSE_TIME,2,9))*24*3600000+
TO_NUMBER(SUBSTR(a.REQUEST_TIME-a.RECEIVE_TIME+a.SEND_TIME-a.RESPONSE_TIME,12,2))*3600000+
TO_NUMBER(SUBSTR(a.REQUEST_TIME-a.RECEIVE_TIME+a.SEND_TIME-a.RESPONSE_TIME,15,2))*60000+
TO_NUMBER(SUBSTR(a.REQUEST_TIME-a.RECEIVE_TIME+a.SEND_TIME-a.RESPONSE_TIME,18,2))*1000+
TO_NUMBER(SUBSTR(a.REQUEST_TIME-a.RECEIVE_TIME+a.SEND_TIME-a.RESPONSE_TIME,21,3))) "CSB最小历时(单位：毫秒)",
        MAX(TO_NUMBER(SUBSTR(a.REQUEST_TIME-a.RECEIVE_TIME+a.SEND_TIME-a.RESPONSE_TIME,2,9))*24*3600000+
TO_NUMBER(SUBSTR(a.REQUEST_TIME-a.RECEIVE_TIME+a.SEND_TIME-a.RESPONSE_TIME,12,2))*3600000+
TO_NUMBER(SUBSTR(a.REQUEST_TIME-a.RECEIVE_TIME+a.SEND_TIME-a.RESPONSE_TIME,15,2))*60000+
TO_NUMBER(SUBSTR(a.REQUEST_TIME-a.RECEIVE_TIME+a.SEND_TIME-a.RESPONSE_TIME,18,2))*1000+
TO_NUMBER(SUBSTR(a.REQUEST_TIME-a.RECEIVE_TIME+a.SEND_TIME-a.RESPONSE_TIME,21,3)))  "CSB最大历时(单位：毫秒)"
       from aip_message a, serv_afford_man_config b,serv_afford_man_reg c
           where   a.receive_time between 
                    /*开始时间*/             cast(to_date(&begin_time,'yyyy-MM-dd HH24:Mi:ss') as timestamp) 
                     /*结束时间*/                and cast(to_date(&end_time,'yyyy-MM-dd HH24:Mi:ss') as timestamp)
                and a.serv_id= c.serv_id(+)
                and a.send_system=b.serv_man_code(+)
                      group by a.serv_id,a.send_system
                            order by max(b.serv_man_code);    
 select * from serv_mon;                        
        
 select * from aip_message  where serv_id is null order by id desc;             
 select * from aip_message_info where csb_id =&id;
              
 select count(*)
   from aip_message
  where receive_time between
       /*开始时间*/
        cast(to_date('2010-10-13 15:00:00', 'yyyy-MM-dd HH24:Mi:ss') as
             timestamp)
       /*结束时间*/
        and cast(to_date('2010-10-13 20:00:00', 'yyyy-MM-dd HH24:Mi:ss') as
                 timestamp);
             select * from aip_message where serv_code is null;
select count(*)
  from aip_message
 where service_state <> 0
   and receive_time between
      /*开始时间*/
       cast(to_date('2010-10-13 15:00:00', 'yyyy-MM-dd HH24:Mi:ss') as
            timestamp)
      /*结束时间*/
       and cast(to_date('2010-10-13 20:00:00', 'yyyy-MM-dd HH24:Mi:ss') as
                timestamp);
select * from aip_message_persistence where csb_id='19c70d7a-d31a-11df-b228-8720111a0000';
select * from aip_msginfo_persistence  where csb_id='d04d8520-d544-11df-8e4c-872011190000';

                                                  
                                                  
                                                  
                                                  
                                                 
   select * from serv_invoke_trends order by serv_invoke_time desc;                                               
  select * from serv_mon;                                                
                                                  
   --统计负载均衡                                               
 Select '135.32.17.25', count(*)  from aip_message_persistence 
       where host='grp1@135.32.17.25' and msg_type='request' And receive_time > 
       to_date('2010-10-13 15:00:01','yyyy-MM-dd HH24:Mi:ss')                  
union
select '135.32.17.26',count(*)  from aip_message_persistence 
       where host='grp1@135.32.17.26' and msg_type='request' And receive_time>
       to_date('2010-10-13 15:00:01','yyyy-MM-dd HH24:Mi:ss') 
union
Select '135.32.17.17', count(*) from aip_message Where   receive_time > 
to_date('2010-10-13 15:00:01','yyyy-MM-dd HH24:Mi:ss')      --7771/3987/3784
