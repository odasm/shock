select count(*) from aip_message;
truncate table aip_message_persistence;
truncate table aip_msginfo_persistence
select * from v$session where username is not null
select count(*) from v$session --连接数
Select count(*) from v$session where status='ACTIVE' --并发连接数
show parameter processes --最大连接
select userinfo0_.USER_ID as USER1_1_0_, 
userinfo0_.ORGAN_ID as ORGAN2_1_0_, userinfo0_.NAME as NAME1_0_, 
userinfo0_.PASSWORD as PASSWORD1_0_, userinfo0_.SEX as SEX1_0_, 
userinfo0_.PHONE as PHONE1_0_, userinfo0_.MODILE as MODILE1_0_,
 userinfo0_.EMAIL as EMAIL1_0_, userinfo0_.LAST_LOGIN_TIME as LAST9_1_0_, 
 userinfo0_.LIMIT_TIME_TYPE as LIMIT10_1_0_, userinfo0_.LIMIT_TIME as LIMIT11_1_0_, 
 userinfo0_.DEL_FLAG as DEL12_1_0_, userinfo0_.REMARK
  as REMARK1_0_ from USER_INFO userinfo0_ where userinfo0_.USER_ID='inas01'
  select * from aip_msginfo_persistence where rownum<5 order by aip_id  --2010-7-22 11:15:46
  select * from aip_msginfo_persistence where rownum<10 order by aip_id desc --2010-7-22 11:22:14
  --2010-7-22 11:30:30
  --2010-7-22 12:04:12
  --138708
  select c.count/s.sub from
( select count(*) count from aip_message ) c,
(select (max(create_time)-min(create_time))*24*3600 sub from aip_msginfo_persistence) s
--41.54
select c.count/120 from 
( select count(*) count from aip_message ) c



select * from aip_msginfo_persistence
--2010-7-22 14:16:45
--2010-7-22 14:28:35
select *

ALTER TABLE aip_msginfo_persistence
    MOVE LOB(msg_pkg) STORE AS (
       tablespace  tsaippub
    )
/
ALTER TABLE aip_msginfo_persistence MOVE LOB(msg_pkg) STORE AS  (
TABLESPACE tsaippub
DISABLE STORAGE IN ROW
CHUNK 1000-- lob字段最小长度
RETENTION
NOCACHE);

SELECT
    segment_name "Segment"
  , segment_type "Type"
  , tablespace_name "Tablespace"
FROM user_segments
ORDER BY segment_name DESC;


























