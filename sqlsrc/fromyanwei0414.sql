--新增表
create table 'tsaip'.st_config (
    config_id INT8 not null,
    config_key VARCHAR(50),
    config_value VARCHAR(100),
    create_time DATE,
    creator VARCHAR(50),
    update_time DATE,
    updator VARCHAR(50),
    descn VARCHAR(255),
    file_location VARCHAR(255)
)

create synonym 'TSAIP'.st_confit for 'tsaip'.st_confit


--索引aip_message_persistence
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
create synonym 'TSAIP'.CONN_SRP_REG 					for 'tsaip'.CONN_SRP_REG
create synonym 'TSAIP'.CONN_SERV_REG					for 'tsaip'.CONN_SERV_REG 
