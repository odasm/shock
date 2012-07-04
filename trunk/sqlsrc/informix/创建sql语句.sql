/********************
--协议格式转换表
********************/
create table 'tsaip'.data_format_convert (
    data_format_id INT8 not null,
    serv_define_id INT8 not null,
    req_convert_script lvarchar(4000),
    res_convert_script lvarchar(4000)
);
	--oracle语句
alter table DATA_FORMAT_CONVERT add primary key (DATA_FORMAT_ID);
alter table DATA_FORMAT_CONVERT add foreign key (SERV_DEFINE_ID) references SERV_DEFINE (SERV_DEFINE_ID);

	--Seq
CREATE SEQUENCE 'tsaip'.data_format_converter_id_seq INCREMENT BY 1 START WITH 321
 MAXVALUE 99999999 MINVALUE 1

/********************
--服务目录层级表
********************/
create table 'tsaip'.serv_directory_level (
    serv_directory_level_id INT8 not null,
    serv_directory_level_name VARCHAR(128),
    serv_directory_level_type VARCHAR(128),
    p_id INT8,
    busi_id INT8
)
	--Seq
CREATE SEQUENCE 'tsaip'.serv_directory_level_id_seq INCREMENT BY 1 START WITH 508
 MAXVALUE 99999999 MINVALUE 1

/********************
--服务订阅表
********************/
create table 'tsaip'.serv_subscribe_conf (
    serv_subscribe_conf_id INT8 not null,
    subscribe_man_id INT8,
    serv_define_id INT8,
    subscribe_serv_id INT8,
    subscribe_serv_version DECIMAL(3,2)
)
	--oracle语句
alter table SERV_SUBSCRIBE_CONF add primary key (SERV_SUBSCRIBE_CONF_ID);

	--Seq
CREATE SEQUENCE 'tsaip'.serv_subscribe_conf_id_seq INCREMENT BY 1 START WITH 321
 MAXVALUE 99999999 MINVALUE 1

/********************
--故障派单表 ，可以不建立，暂时未用
********************/
create table 'tsaip'.ALARM_TRANSMIT_HANDLE
(
  ALARM_ID            VARCHAR(64),
  SERIAL_ID           INT8 not null,
  ALARM_TITLE         VARCHAR(200),
  ALARM_STAFF_MAN     VARCHAR(50),
  ALARM_SYSTEM        VARCHAR(50),
  ALARM_OCCUR_TIME    DATETIME YEAR TO FRACTION(5),
  ALARM_FINISH_TIME   DATETIME YEAR TO FRACTION(5),
  ALARM_FINISH_LIMIT  DATETIME YEAR TO FRACTION(5),
  ALARM_ORIGIN        INT8,
  ALARM_INCIDENCE     INT8,
  ALARM_PRIORITY      INT8,
  ALARM_SYS_TYPE      INT8,
  ALARM_CONTENT       VARCHAR(4000),
  ALARM_HANDLE_DETAIL VARCHAR(4000),
  ALARM_FINISH_FLAG   INT8,
  ALARM_APPENDIX_FLAG INT8,
  ALARM_APPENDIX_NUM  INT8,
  ALARM_APPENDIX_NAME VARCHAR(300),
  ALARM_PROMPT_NUM    INT8,
  ALARM_PROMPT_DETAIL VARCHAR(1000),
  ALARM_PROMPT_TIME   DATETIME YEAR TO FRACTION(5),
  ALARM_CANCEL_MAN    VARCHAR(50),
  ALARM_CANCEL_DETAIL VARCHAR(1000)
);
	--oracle语句
alter table ALARM_TRANSMIT_HANDLE add primary key (SERIAL_ID);

/********************
--重投规则表 ，可以不建立，暂时未用
********************/
create table 'tsaip'.MSG_RESEND_RULE
(
  ID              NUMBER not null,
  RECEIVE_TIMEOUT NUMBER(9),
  RESEND_TIMES    NUMBER(2),
  RESEND_TIMEOUT  NUMBER(9),
  RESEND_INTERVAL NUMBER(9),
  CREATE_TIME     DATE not null,
  IS_ACTIVE       NUMBER(1) not null,
  SERV_DEFINE_ID  NUMBER
)
	--oracle语句
alter table MSG_RESEND_RULE add primary key (ID);
alter table MSG_RESEND_RULE add foreign key (SERV_DEFINE_ID) references SERV_DEFINE (SERV_DEFINE_ID);
