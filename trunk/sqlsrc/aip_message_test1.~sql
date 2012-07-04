create or replace view aip_message_test1 as
select

a.id id,a.msg_id msg_id,a.region_id region_id,a.send_system send_system,a.receive_system receive_system,
a.receive_time receive_time,a.request_time request_time,a.csb_id csb_id,a.trans_id trans_id,
a.msg_size msg_size,s.serv_id,a.response_time response_time,a.send_time send_time,
a.service_state service_state
,/*p.resend_time*/0 resend_time,/*p.resend_count*/0 resend_count
from aip_message_persistence a,serv_afford_man_reg s
where a.msg_type='request' and s.serv_code(+) = a.serv_code


  /*(select a.id id,a.msg_id msg_id,a.region_id region_id,a.send_system send_system,a.receive_system
receive_system ,a.receive_time receive_time,a.request_time request_time ,a.csb_id csb_Id,a.trans_id
trans_id ,a.service_state service_state,a.msg_size msg_size,s.serv_id serv_id
from aip_message_persistence a,serv_afford_man_reg s,aip_message_persistence b
where s.serv_code(+) = a.serv_code
and msg_type='request')  q,

    (select b.csb_id csb_id,b.response_time response_time,b.send_time send_time,
b.service_state service_state,b.resend_time resend_time,b.resend_count resend_count
from aip_message_persistence  b
where msg_type='response') p

where q.csb_id=p.csb_id(+)
