select * from aip_error_message where create_time>sysdate-3
select * from aip_message_persistence where create_time>sysdate-1
select * from aip_msginfo_persistence where create_time>sysdate-1
select * from aip_analysis_end_time where end_time>sysdate-1
select count(*) from serv_mon
select count(*) from serv_invoke_trends
select * from aip_error_message
