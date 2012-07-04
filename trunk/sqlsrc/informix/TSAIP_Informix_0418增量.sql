--------------------------------------------
-- Export file for user TSAIP             --
-- Created by wyan on 2011/4/13, 14:44:51 --
--------------------------------------------
CREATE TABLE CONN_SRP_REG (
    CONN_ROUTE_PLAT_ID INT8 NOT NULL,
    CONN_ROUTE_PLAT_CODE VARCHAR(64) NOT NULL,
    CONN_ROUTE_PLAT_NAME VARCHAR(128),
    CONN_ROUTE_PLAT_AREA VARCHAR(64),
    CONN_ROUTE_PLAT_URL VARCHAR(255),
    SRP_DYNAMIC_STATUS SMALLINT,
    SRP_STATIC_STATUS SMALLINT,
    DEL_FLAG SMALLINT
);
ALTER TABLE CONN_SRP_REG ADD CONSTRAINT PRIMARY KEY 
	(CONN_ROUTE_PLAT_ID)
	CONSTRAINT PK_CONN_SRP_REG;



create table  CONN_SRP_REG_SC(
   CONN_ROUTE_PLAT_ID   INT8                          not null,
   CONN_ROUTE_PLAT_CODE VARCHAR(64)                    not null,
   CONN_ROUTE_PLAT_NAME VARCHAR(128),
   CONN_ROUTE_PLAT_AREA VARCHAR(64),
   CONN_ROUTE_PLAT_URL  VARCHAR(255),
   SRP_DYNAMIC_STATUS   SMALLINT,
   SRP_STATIC_STATUS    SMALLINT,
   DEL_FLAG             SMALLINT
);
alter table CONN_SRP_REG_SC add constraint primary key 
	(CONN_ROUTE_PLAT_ID)
	constraint PK_CONN_SRP_REG_SC;
	
create table CONN_SERV_REG (
    CONN_SERV_ID INT8 NOT NULL,
    CONN_SERV_CODE VARCHAR(128) NOT NULL,
    CONN_SERV_NAME VARCHAR(128),
    CONN_SERV_TYPE SMALLINT,
    AREA_CODE VARCHAR(128),
    CONN_ROUTE_PLAT_CODE VARCHAR(64),
    PROVIDE_CODE VARCHAR(128),
    SERV_DEFINE_ID INT8 NOT NULL,
    CONN_SERV_INVOKE_MODE SMALLINT,
    CONN_SERV_STATUS SMALLINT,
    CONN_SERV_PROC_STATUS SMALLINT,
    WSDL_ID INT8,
    PROTOCOL_ID INT8,
    DEL_FLAG SMALLINT,
    DESCRIPTION VARCHAR(255)
);
alter table CONN_SERV_REG add constraint primary key 
	(CONN_SERV_ID)
	constraint PK_CONN_SERV_REG;

	
create table CONN_SERV_REG_SC  (
   CONN_SERV_ID         INT8                          not null,
   CONN_SERV_CODE       VARCHAR(128)                   not null,
   CONN_SERV_NAME       VARCHAR(128),
   CONN_SERV_TYPE       SMALLINT,
   AREA_CODE            VARCHAR(128),
   CONN_ROUTE_PLAT_CODE VARCHAR(64),
   PROVIDE_CODE         VARCHAR(128),
   SERV_DEFINE_ID       INT8                          not null,
   CONN_SERV_INVOKE_MODE SMALLINT,
   CONN_SERV_STATUS     SMALLINT,
   CONN_SERV_PROC_STATUS SMALLINT,
   WSDL_ID              INT8,
   PROTOCOL_ID          INT8,
   DEL_FLAG             SMALLINT,
   DESCRIPTION          VARCHAR(255)
);
alter table CONN_SERV_REG_SC add constraint primary key 
	(CONN_SERV_ID)
	constraint PK_CONN_SERV_REG_SC;

create table CONN_HEART_BEAT  (
   SRP_HEART_BEAT_ID    INT8                          not null,
   CONN_ROUTE_PLAT_CODE VARCHAR(64),
   END_REPORT_TIME      DATE,
   PRIMARY KEY(SRP_HEART_BEAT_ID) constraint  PK_CONN_HEART_BEAT 
);

create table CONN_PROTOCOL_SC  (
   CONN_PROTOCOL_ID     INT8                          not null,
   CONN_ROUTE_PLAT_CODE VARCHAR(64),
   PROTOCOL_ID          INT8,
   PROTOCOL_NAME        varchar(64),
   FILE_PATH            varchar(64),
   DEL_FLAG             SMALLINT,
   primary key (CONN_PROTOCOL_ID) constraint PK_CONN_PROTOCOL_SC 
);

create table CONN_WSDL_SC  (
   CONN_WSDL_ID         INT8                          not null,
   CONN_ROUTE_PLAT_CODE VARCHAR(64),
   WSDL_ID              INT8,
   WSDL_NAME            VARCHAR(64),
   PROXY_WSDL_TEXT      CLOB,
   DEL_FLAG             SMALLINT,
   primary key (CONN_WSDL_ID) constraint PK_CONN_WSDL_SC 
);

create table CONN_VISIT_LIMIT  (
   CONN_SERV_LIMIT_ID   INT8                          not null,
   CONN_SERV_CODE       VARCHAR(128),
   CONN_SERV_MAN_CODE   VARCHAR(64),
   DEL_FLAG             SMALLINT,
   primary key (CONN_SERV_LIMIT_ID) constraint PK_CONN_VISIT_LIMIT 
);

create table CONN_VISIT_LIMIT_SC  (
   CONN_SERV_LIMIT_ID   INT8                          not null,
   CONN_SERV_CODE       VARCHAR(128),
   CONN_SERV_MAN_CODE   VARCHAR(64),
   DEL_FLAG             SMALLINT,
   primary key (CONN_SERV_LIMIT_ID) constraint PK_CONN_VISIT_LIMIT_SC
);

create table CONN_SERV_CONTROL_SC  (
   CONN_SERV_CTRL_ID    INT8                          not null,
   CONN_SERV_CODE       VARCHAR(128),
   FREQUENCY_LIMIT      INT8,
   PKG_SIZE_LIMIT       INT8,
   FLOW_LIMIT           INT8,
   DEL_FLAG             SMALLINT,
   primary key (CONN_SERV_CTRL_ID) constraint PK_CONN_SERV_CONTROL_SC 
);

create table CONN_SRP_INTERFACE_SC  (
   CONN_SRP_INTER_ID    INT8                          not null,
   CONN_ROUTE_PLAT_CODE VARCHAR(64),
   CONN_INTER_ADDR      VARCHAR(128),
   CONN_INTER_TYPE      SMALLINT,
   DEL_FLAG             SMALLINT,
   primary key (CONN_SRP_INTER_ID) constraint PK_CONN_SRP_INTERFACE_SC 
);

create table ST_CONFIG
(
  CONFIG_ID     INT8 not null,
  CONFIG_KEY    VARCHAR(50),
  CONFIG_VALUE  VARCHAR(100),
  CREATE_TIME   DATE,
  CREATOR       VARCHAR(50),
  UPDATE_TIME   DATE,
  UPDATOR       VARCHAR(50),
  DESCN         VARCHAR(255),
  FILE_LOCATION VARCHAR(255)
);
--date后面修改成datetime
create sequence OIP_HEARTBEAT_SEQ
minvalue 1
maxvalue 999999999
start with 160
increment by 1
cache 20;


create sequence OIP_PROTOCOL_SEQ
minvalue 1
maxvalue 999999999
start with 100
increment by 1
cache 20;


create sequence OIP_SCSERV_SEQ
minvalue 1
maxvalue 999999999
start with 70
increment by 1
cache 20;


create sequence OIP_SCSRP_SEQ
minvalue 1
maxvalue 999999999
start with 90
increment by 1
cache 20;


create sequence OIP_SERV_CTRL_SEQ
minvalue 1
maxvalue 999999999
start with 100
increment by 1
cache 20;


create sequence OIP_SERV_LIMIT_SC_SEQ
minvalue 1
maxvalue 999999999
start with 29341
increment by 1
cache 20;


create sequence OIP_SERV_LIMIT_SEQ
minvalue 1
maxvalue 999999999
start with 120
increment by 1
cache 20;


create sequence OIP_SERV_LIMIT_SRP_SEQ
minvalue 1
maxvalue 999999999
start with 21
increment by 1
cache 20;


create sequence OIP_SERV_SEQ
minvalue 1
maxvalue 9999999
start with 45
increment by 1
cache 20;


create sequence OIP_SRP_INTER_SEQ
minvalue 1
maxvalue 999999
start with 100
increment by 1
cache 20;


create sequence OIP_SRP_SEQ
minvalue 1
maxvalue 9999999
start with 1202
increment by 1
cache 20;


create sequence OIP_WSDL_SEQ
minvalue 1
maxvalue 999999999
start with 100
increment by 1
cache 20;

create sequence ST_CONFIG_ID_SEQ
minvalue 1
maxvalue 9999999
start with 41
increment by 1
cache 20;

create synonym 'TSAIP'.CONN_SRP_REG 					for 'tsaip'.CONN_SRP_REG;
create synonym 'TSAIP'.CONN_SERV_REG					for 'tsaip'.CONN_SERV_REG ;
create synonym 'TSAIP'.CONN_SRP_REG_SC 				for 'tsaip'.CONN_SRP_REG_SC;
create synonym 'TSAIP'.CONN_SERV_REG_SC				for 'tsaip'.CONN_SERV_REG_SC   ;       
create synonym 'TSAIP'.CONN_HEART_BEAT        for 'tsaip'.CONN_HEART_BEAT           ;
create synonym 'TSAIP'.CONN_PROTOCOL_SC       for 'tsaip'.CONN_PROTOCOL_SC     ;     
create synonym 'TSAIP'.CONN_WSDL_SC           for 'tsaip'.CONN_WSDL_SC         ;     
create synonym 'TSAIP'.CONN_VISIT_LIMIT       for 'tsaip'.CONN_VISIT_LIMIT     ;     
create synonym 'TSAIP'.CONN_VISIT_LIMIT_SC    for 'tsaip'.CONN_VISIT_LIMIT_SC     ;  
create synonym 'TSAIP'.CONN_SERV_CONTROL_SC   for 'tsaip'.CONN_SERV_CONTROL_SC      ;
create synonym 'TSAIP'.CONN_SRP_INTERFACE_SC  for 'tsaip'.CONN_SRP_INTERFACE_SC     ;
create synonym 'TSAIP'.CONN_SERV_MON_SC       for 'tsaip'.CONN_SERV_MON_SC         ; 
create synonym 'TSAIP'.ST_CONFIG   悠 for 'tsaip'.ST_CONFIG ;
--4月28日修改。

alter table st_config
modify create_time DATETIME YEAR TO FRACTION(5);
alter table st_config
modify UPDATE_TIME DATETIME YEAR TO FRACTION(5);

alter table CONN_SERV_MON_SC
modify UPDATE_TIME DATETIME YEAR TO FRACTION(5);
alter table CONN_SERV_MON_SC
modify STATISTICS_END_TIME DATETIME YEAR TO FRACTION(5);

alter table CONN_HEART_BEAT
modify END_REPORT_TIME DATETIME YEAR TO FRACTION(5);
commit;