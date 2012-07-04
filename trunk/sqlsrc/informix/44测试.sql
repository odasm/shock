select first 10 * from serv_mon order by serv_monitor_id desc; 
call starit:'tsaip'.proc_msg_analysis();
select first 10 * from aip_analysis_end_time order by id desc;
select first 10 * from serv_mon order by serv_monitor_id desc; 
select first 10 * from serv_invoke_trends;
select first 10 * from alert;
select first 10
truncate table alert;
truncate table aip_analysis_end_time;
call proc_mon_insert(datetime(2011-04-12 09:00:00.00000) year to fraction(5),
datetime(2011-04-12 10:00:00.00000) year to fraction(5));