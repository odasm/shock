select * from aip_message_persistence where msg_id='test1316';

alter table aip_message_persistence add (host varchar2(32));
select * from aip_msginfo_persistence where msg_id='test1316';
select * from aip_error_message where rownum<10 order by id desc;
commit;
select * from aip_message;
select count(*)from aip_message_persistence where msg_id='test0826';
select * from aip_message_persistence where msg_id='test0826' and rownum<10 order by id desc;
select count(*) from aip_message_persistence where msg_id='test0826' and msg_type='response';
select * from aip_msginfo_persistence where msg_id='test0826';
delete from aip_message_persistence where msg_id='test0826';
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
