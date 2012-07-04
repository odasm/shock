select * from aip_error_message order by id desc;
select * from aip_message_persistence for update
alter table aip_message_persistence 
 add(STORE_KEY varchar2(64));
 commit;
