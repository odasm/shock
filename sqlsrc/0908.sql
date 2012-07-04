alter table aip_message_persistence add (store_key varchar2(32));
select * from aip_message_persistence;

select store_key from aip_message_persistence where csb_id = '0'
