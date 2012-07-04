--informix版本
create table 'tsaip'.aip_message_confirm
(AIP_MSG_CFM_ID int8,
MSG_ID varchar(128),
ESB_ID varchar(128),
CFM_MAN_CODE varchar(128),
CFM_TIME DATETIME YEAR TO FRACTION(5),
CFM_STATUS SMALLINT,
CFM_RECV_STATUS  SMALLINT)
extent size 64 next size 64
lock mode row;
--增加主键
alter table 'tsaip'.aip_message_confirm add constraint primary key 
	(AIP_MSG_CFM_ID)
	constraint pk_aip_message_confirm;
--增加对应序列，供主键使用
create sequence 'tsaip'.AIP_MSG_CFM_SEQ
minvalue 1
maxvalue 999999
start with 508
increment by 1
cache 20;
commit;


INSERT  INTO AIP_MESSAGE_CONFIRM
			(MSG_ID, ESB_ID, CFM_MAN_CODE, CFM_TIME, CFM_STATUS, CFM_RECV_STATUS,AIP_MSG_CFM_ID)
			VALUES ('xxxxx','xxxx','xxxx',null,0,1,AIP_MSG_CFM_SEQ.NEXTVAL);
select * from aip_message_confirm;






