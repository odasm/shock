delete from aip_message_persistence where msg_id='oiptest2011041420000';
commit;

truncate table aip_message_persistence;

select count(*) from aip_message_persistence where msg_id='oiptest2011041420000';

select first 20 * from aip_message_persistence order by id desc;

select host from aip_message_persistence where msg_id='ngixtest2011041420000';
select count(*) from aip_message_persistence;


select count(*)/(frac_between(min(create_time),max(create_time))/1000 ),min(receive_time)
 from aip_message_persistence where msg_id='oiptest2011041420000';

select first 10 * from aip_message_persistence order by id desc;
create index 'tsaip'.idx_receive_time on 'tsaip'.aip_message_persistence
	(
	receive_time
	);

create index 'tsaip'.persistence_csb_id on 'tsaip'.aip_message_persistence
	(
	csb_id
	);

create index 'tsaip'.persistence_serv_code on 'tsaip'.aip_message_persistence
	(
	serv_code
	);

create index 'tsaip'.service_state on 'tsaip'.aip_message_persistence
	(
	service_state
	);
commit;
drop  index 'tsaip'.persistence_serv_code
drop index  'tsaip'.service_state