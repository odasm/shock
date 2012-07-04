select count(*) from aip_analysis_end_time;
delete from aip_analysis_end_time;
insert into aip_analysis_end_time (id,end_time)values (aip_analysis_time_id.nextval,sysdate);
commit;
select * from aip_analysis_end_time;