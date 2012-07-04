select count(*) from aip_message_persistence;--448505
select count(*) from aip_msginfo_persistence;--448503
truncate table aip_message_persistence;
truncate table aip_msginfo_persistence;
select count(*) from serv_mon;
truncate table serv_mon;
select count(*) from serv_invoke_trends;
truncate table serv_invoke_trends;
select count(*) from aip_error_message;
truncate table aip_error_message;
