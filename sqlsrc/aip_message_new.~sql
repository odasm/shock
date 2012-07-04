create or replace view aip_message as
select

q.id id,q.msg_id msg_id,q.region_id region_id,q.send_system send_system,q.receive_system receive_system,
q.receive_time receive_time,q.request_time request_time,q.csb_id csb_id,q.trans_id trans_id,
q.msg_size msg_size,p.serv_id,q.response_time response_time,q.send_time send_time,
q.service_state service_state,0 resend_time,0 resend_count
from aip_message_persistence q 
,serv_afford_man_reg p
where q.serv_code=p.serv_code(+)

