create table SERV_DIRECTORY_LEVEL
(
  SERV_DIRECTORY_LEVEL_ID   int8 not null,
  SERV_DIRECTORY_LEVEL_NAME VARCHAR(128),
  SERV_DIRECTORY_LEVEL_TYPE VARCHAR(128),
  P_ID                      int8,
  BUSI_ID                   int8
)

create sequence SERV_DIRECTORY_LEVEL_ID_SEQ
minvalue 1
maxvalue 999999
start with 508
increment by 1
cache 20;

insert into serv_directory_level
  (serv_directory_level_id,
   serv_directory_level_name,
   serv_directory_level_type,
   p_id,
   busi_id)
  (select serv_directory_level_id_seq.nextval,
          t.serv_man_name,
          'serv_man',
          0,
          t.serv_man_id
     from serv_afford_man_config t)



select case 1=1 when from systables 
