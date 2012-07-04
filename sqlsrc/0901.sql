select * from aip_message_persistence where msg_id = 'test1316';
select count(*) from aip_msginfo_persistence;
select * from aip_message;
alter table aip_message_persistence add(host varchar2(32));
select * from aip_msginfo_persistence where msg_id = 'test1316';
select * from aip_error_message where rownum < 10 order by id desc;
commit;
select * from aip_message;
select count(*) from aip_message_persistence where msg_id = 'test0901';
select *
  from aip_message_persistence
 where msg_id = 'test0901'
   and rownum < 10
 order by id desc;
 
 select * from aip_message_persistence
select count(*)
  from aip_message_persistence
 where msg_id = 'test0901'
   and msg_type = 'response';
select * from aip_msginfo_persistence where msg_id = 'test0901';
truncate table aip_message_persistence;
delete from aip_message_persistence ;
commit;
--计算插入的消息平均时间
--总条数：80377
select c.count / s.sub
  from (select count(*) count
          from aip_message_persistence
         where msg_id = 'test0901') c,
       (select (max(create_time) - min(create_time)) * 24 * 3600 sub
          from aip_message_persistence
         where msg_id = 'test0901') s;
