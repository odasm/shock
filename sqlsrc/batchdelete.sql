select * from aip_msginfo_persistence where rownum<10 order by aip_id 
select min(aip_id) from aip_msginfo_persistence;--37764321
select max(aip_id) from aip_msginfo_persistence;--41070340
select min(aip_id) from aip_msginfo_persistence where msg_id = 'csb201007200000000003';
select max(aip_id) from aip_msginfo_persistence where msg_id = 'csb201007200000000003';
select *
  from aip_msginfo_persistence
 where msg_id = 'csb201007200000000003'
   and rownum < 10
 order by aip_id; --最小38188635 2010-9-16 17:58:23
select *
  from aip_msginfo_persistence
 where msg_id = 'csb201007200000000003'
   and rownum < 10
 order by aip_id desc; --最大38188635 2010-9-16 17:58:23
 --重新找到aip_id最小值 --38188185
 select * from aip_msginfo_persistence where csb_id='69a7275a-c1c5-11df-8333-872011190000';
 --max 41061502
 select * from aip_msginfo_persistence where csb_id='7cea2286-c25b-11df-837d-872011190000';
 select * from aip_msginfo_persistence where aip_id>41061502;
 --两个相差 2873317,分14个格子来删除 一直到加到2800000
 select 41061502-38188185 from dual;
 delete from aip_msginfo_persistence
 where aip_id>=38188185+2800000
       and aip_id<38188185+2873317
  and msg_id = 'csb201007200000000004';
  commit;
