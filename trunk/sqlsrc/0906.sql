select * from aip_message;
--3天前的数据是3483005条，真长，我晕
select count(*) from aip_message_persistence where receive_time<cast(sysdate-3 as timestamp);

--总共条数看是多少
select count(*) from aip_message_persistence;
select * from aip_message_persistence;
select * from aip_message_persistence where rownum<100 order by id;
select csb_id from aip_message_persistence where store_key = ? and rownum<
select 1=1 from aip_message_persistence;

select csb_id from aip_message_persistence where store_key = '0' and rownum<2 order by id desc;
select * from aip_analysis_end_time;
select end_time from aip_analysis_end_time where flag='serv_mon' and rownum<2 order by id desc;
select * from aip_analysis_end_time where rownum<2 order by id desc;
select store_key from aip_message_persistence where csb_id = '123';
select * from aip_message_persistence for update;
