alter table serv_afford_man_config
     add(AUTH_CODE varchar2(128),RECEIVE_QUEUE_ID NUMBER);
create table QUEUE_CONF  (
   QUEUE_ID     NUMBER,
   CONNECTION_FACTORY VARCHAR2(128),
   QUEUE_NAME   VARCHAR2(128),
   INITIAL_CONTEXT_FACTORY VARCHAR2(128),
   URL                VARCHAR2(128),
   USER_NAME       VARCHAR2(64),
   PASSWORD        VARCHAR2(64)
);
--建立一个主键约束
alter table QUEUE_CONF
  add constraint queue_conf_id primary key (QUEUE_ID);
  insert into  queue_conf values(queue_conf_id.nextval,'xxx','xxx','xxx','xxxx','xxx','xxx');
  select * from queue_conf;
select * from queue_conf;
commit;
select * from serv_visit_limit;
alter table serv_visit_limit add (is_confirm number,version_no number(3,2));
alter table serv_visit_limit modify(version_no number(3,2) default 0.1)

select * from serv_visit_limit;
commit;
select * from serv_flux_ctl;
select * from alarm_threshold_conf;

SELECT I.SERV_MAN_IP_ID AS ID,
		C.SERV_MAN_CODE,I.SERV_MAN_IP 
		FROM SERV_MAN_IP_CONF I,SERV_AFFORD_MAN_CONFIG C 
		WHERE I.SERV_MAN_ID=C.SERV_MAN_ID 
		AND I.DEL_FLAG!=2

 SELECT 
		 M.SERV_MAN_ID,M.SERV_MAN_CODE,
			     M.SERV_MAN_NAME ,
           q.queue_name,
           q.connection_factory,
           q.initial_context_factory,
           q.url,
           q.user_name,
           q.password         
			FROM SERV_AFFORD_MAN_CONFIG M left join queue_conf Q
      on m.receive_queue_id=q.queue_id 

SELECT     L.SERV_LIMIT_ID,
			      C.SERV_MAN_CODE, 
			      R.SERV_CODE  ,
            l.is_confirm,
            l.version_no
			 FROM SERV_AFFORD_MAN_REG R, SERV_AFFORD_MAN_CONFIG C,SERV_VISIT_LIMIT L 
			 WHERE R.SERV_ID = L.SERV_ID 
			 AND C.SERV_MAN_ID = L.SERV_MAN_ID 




/**
alter table serv_afford_man_config
     add(AUTH_CODE varchar(128),RECEIVE_QUEUE_ID int8);

create table QUEUE_CONF  (
   QUEUE_ID     int8,
   CONNECTION_FACTORY VARCHAR(128),
   QUEUE_NAME   VARCHAR(128),
   INITIAL_CONTEXT_FACTORY VARCHAR(128),
   URL                VARCHAR(128),
   USER_NAME       VARCHAR(64),
   PASSWORD        VARCHAR(64)
);

alter table 'tsaip'.QUEUE_CONF   add constraint primary key 
	(QUEUE_ID)
	constraint queue_conf_id;



*/













