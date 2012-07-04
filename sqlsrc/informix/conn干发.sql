
alter table CONN_SERV_REG
   drop constraint FK_REFEREN_CONN_SR;

drop table CONN_SRP_REG;

--==============================================================
-- Table: CONN_SRP_REG
--==============================================================

create table CONN_SRP_REG  (
  CONN_ROUTE_PLAT_ID   NUMERIC                         not null,
  CONN_ROUTE_PLAT_CODE   VARCHAR(64)                     not null,
  CONN_ROUTE_PLAT_NAME   VARCHAR(128),
  CONN_ROUTE_PLAT_ARER   VARCHAR(64),
  CONN_ROUTE_PLAT_URL   VARCHAR(128),
  SRP_DYNAMIC_STATUS   NUMERIC(2),
  SRP_STATIC_STATUS    NUMERIC(2),
  DEL_FLAG             NUMERIC(2),
primary key (CONN_ROUTE_PLAT_ID)
      constraint PK_CONN_SRP_REG
);

select * from conn_srp_reg;

alter table CONN_SERV_CONTROLl
   drop constraint FK_REFEREN_CONN_SE;

alter table CONN_SERV_REG
   drop constraint FK_REFEREN_CONN_SR;

alter table CONN_SERV_REG
   drop constraint FK_REFEREN_CONN_WS;

alter table CONN_SERV_REG
   drop constraint FK_REFEREN_CONN_PR;

alter table CONN_VISIT_LIMIT
   drop constraint FK_REFEREN_CONN_SE;

drop table CONN_SERV_REG;

--==============================================================
-- Table: CONN_SERV_REG
--==============================================================

create table CONN_SERV_REG  (
  CONN_SERV_ID         NUMERIC                         not null,
  CONN_SERV_CODE       VARCHAR(128)                    not null,
  CONN_SERV_NAME       VARCHAR(128),
  CONN_SERV_TYPE       NUMERIC(2),
  AREA_CODE            VARCHAR(128),
  CONN_ROUTE_PLAT_CODE   VARCHAR(64),
  PROVIDE_CODE         VARCHAR(128),
  SERV_DEFINE_ID       NUMERIC                         not null,
  CONN_SERV_INVOKE_METHOD   NUMERIC(2),
  CONN_SERV_STATUS     NUMERIC(2),
  CONN_SERV_PROC_STATUS  NUMERIC(2),
  WSDL_ID              NUMERIC,
  PROTOCOL_ID          NUMERIC,
  DEL_FLAG             NUMERIC(2),
  DESCRIPTION          VARCHAR(255),
primary key (CONN_SERV_ID)
      constraint PK_CONN_SERV_REG
);

alter table CONN_SERV_REG
   add constraint foreign key (CONN_ROUTE_PLAT_CO)
      references CONN_SRP_REG (CONN_ROUTE_PLAT_CO) 
      constraint FK_REFEREN_CONN_SR;

alter table CONN_SERV_REG
   add constraint foreign key (WSDL_ID)
      references CONN_WSDL (WSDL_ID) 
      constraint FK_REFEREN_CONN_WS;

alter table CONN_SERV_REG
   add constraint foreign key (PROTOCOL_ID)
      references CONN_PROTOCOL (PROTOCOL_ID) 
      constraint FK_REFEREN_CONN_PR;
select * from CONN_SERV_REG;

alter table CONN_VISIT_LIMIT
   drop constraint FK_REFEREN_CONN_SE;

drop table CONN_VISIT_LIMIT;

--==============================================================
-- Table: CONN_VISIT_LIMIT
--==============================================================

create table CONN_VISIT_LIMIT  (
  CONN_SERV_LIMIT_ID   NUMERIC                         not null,
  CONN_SERV_CODE       VARCHAR(128),
  CONN_SERV_MAN_CODE   VARCHAR(64),
  DEL_FLAG             NUMERIC(2),
primary key (CONN_SERV_LIMIT_ID)
      constraint PK_CONN_VISIT_LIMI
);

alter table CONN_VISIT_LIMIT
   add constraint foreign key (CONN_SERV_CODE)
      references CONN_SERV_REG (CONN_SERV_CODE) 
      constraint FK_REFEREN_CONN_SE;

select * from CONN_VISIT_LIMIT;

alter table CONN_SERV_CONTROLl
   drop constraint FK_REFEREN_CONN_SE;

drop table CONN_SERV_CONTROLl;

--==============================================================
-- Table: CONN_SERV_CONTROLl
--==============================================================

create table CONN_SERV_CONTROLl  (
  CONN_SERV_CTRL_ID    NUMERIC                         not null,
  CONN_SERV_CODE       VARCHAR(128),
  frequency_limit      NUMERIC,
  pkg_size_limit       NUMERIC,
  flow_limit           NUMERIC,
  del_flag             NUMERIC(2),
primary key (CONN_SERV_CTRL_ID)
      constraint PK_CONN_SERV_CONTR
);

alter table CONN_SERV_CONTROLl
   add constraint foreign key (CONN_SERV_CODE)
      references CONN_SERV_REG (CONN_SERV_CODE) 
      constraint FK_REFEREN_CONN_SE;
select * from CONN_SERV_CONTROLl;
------下面为开发测试用的。

select frac_between(datetime(2010-12-18 10:00:00.00000) year to fraction(5),
datetime(2010-12-18 11:00:00.00000) year to fraction(5) )from sysmaster:informix.sysdual; ;
select * from conn_serv_reg
select * from conn_visit_limit;
select conn_serv_ctrl_id,conn_serv_code,frequency_limit,pkg_size_limit,flow_limit from conn_serv_controll 
where del_flag!=1 ;
select * from 
select conn_serv_id,conn_serv_code,conn_serv_name,
conn_serv_type,area_code,conn_route_plat_code,
provide_code,serv_define_id,conn_serv_invoke_method,
conn_serv_status,conn_serv_proc_status from conn_serv_reg 
where del_flag!=1 ;

select conn_serv_limit_id,conn_serv_code,
conn_serv_man_code from conn_visit_limit where del_flag!=1;

select * from serv_define;

select * from CONN_SRP_REG where (del_flag!=1 or del_flag is null);

insert into CONN_SRP_REG values(1,'34.1111','anhuioip','34','http://www.baidu.com',1,1,2);
insert into CONN_SRP_REG values(2,'10.1111','oip','10','http://www.126.com',1,1,null);
insert into CONN_SRP_REG values(3,'11.1111','xxoip','11','http://www.163.com',null,null,null);
commit;
select * from serv_define;





