select distinct a.serv_man_name, a.serv_man_code, b.serv_name, b.serv_code,
d.serv_man_name,d.serv_man_code
  from serv_afford_man_config a,
       serv_afford_man_reg b,
       serv_visit_limit c,
       (select * from serv_afford_man_config where serv_man_id in (1, 152)) d
 where c.serv_man_id = a.serv_man_id
   and c.serv_id = b.serv_id
   and c.serv_id in (select d.serv_id
                       from serv_afford_man_reg d
                      where d.ser_serv_man_id = d.serv_man_id)
 order by a.serv_man_name;
select a.serv_man_code, a.serv_man_id,a.serv_man_name, b.serv_man_Ip
  from serv_afford_man_config a, serv_man_ip_conf b
 where a.serv_man_id = b.serv_man_id
 order by serv_man_code;
select * from aip_msginfo_persistence;
select * from aip_message_persistence;


select * from aip_analysis_end_time order by id desc;
select * from aip_msginfo_persistence where msg_id ='csb201007200000000001'--15k
and msg_type='request';

select * from aip_msginfo_persistence where msg_id ='csb201007200000000002'--9k
and msg_type='request';
select * from aip_msginfo_persistence where msg_id ='csb201007200000000003'--1-2k
select * from aip_msginfo_persistence where msg_id ='csb201007200000000004'
select * from aip_message_info where csb_id='1dae4990-c360-11df-83c2-872011190000';

commit;

select e.serv_man_name,f.*
  from serv_afford_man_config e,
       (select d.serv_man_name,
               c.serv_name,
               a.request_pkg,
               a.response_pkg,
               b.send_system,
               b.receive_system,
               b.csb_id,
               b.msg_id,
               b.service_state,
               b.receive_time
          from aip_message_info       a,
               aip_message            b,
               serv_afford_man_reg    c,
               serv_afford_man_config d
         where a.csb_id = b.csb_id
           and c.serv_id = b.serv_id
           and d.serv_man_id = c.ser_serv_man_id
           and b.send_system = 'dt'
           and c.serv_code = 'crm.queryService.SynReq') f
where f.send_system = e.serv_man_code;

analyze table aip_msginfo_persistence compute statistics ;







