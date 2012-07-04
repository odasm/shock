select * from serv_define;
select * from serv_afford_man_reg where serv_type!=0;
select * from bndict_t_dictionary;

drop table subscribe_conf;
create table SUBSCRIBE_CONF  (
   ID                   NUMBER                          not null,
   SERV_MAN_ID          NUMBER,
   SERV_ID              NUMBER,
   constraint PK_SUBSCRIBE_CONF primary key (ID)
);

alter table serv_define  add(IS_SUBSCRIBE NUMBER(1));
commit;
select * from serv_define;
rename subscribe_conf to serv_subscribe_conf;
alter table serv_subscribe_conf 
    rename column id to serv_subscribe_conf_id;
    alter table serv_define 
    rename column IS_SUBSCRIBE to subscribe_flag;
    commit;
    
    select * from serv_define
select * from serv_subscribe_conf;   

select * from  bndict_t_dictionary;


alter table serv_subscribe_conf rename 
      column SERV_ID to serv_define_id;
      
alter table serv_subscribe_conf rename
       column serv_man_id to subscribe_man_id;
alter table serv_subscribe_conf 
       add (subscribe_serv_id number,subscribe_serv_version number(3,2));
       select * from serv_subscribe_conf;
       
       
       select * from       DATA_FORMAT_CONVERT
--缓存模块设计订阅模块设计
select * from serv_subscribe_conf;
select * from serv_define;
select * from bndict_t_dictionary;
--查找所有esb下面的jms服务。
       
       
       
       
       
       
       
       
       
       
