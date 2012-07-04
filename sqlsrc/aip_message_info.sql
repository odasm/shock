create or replace view aip_message_info as
select q.aip_id aip_id,q.msg_id msg_Id,q.csb_id csb_id,q.msg_pkg request_pkg,
p.msg_pkg response_pkg,case when p.msg_type is not null then p.msg_type
                             else q.msg_type
                             end message_type
from
  (select b.id aip_id,a.msg_id msg_id,a.msg_type msg_type,a.msg_pkg msg_pkg
  ,a.csb_id csb_id
from aip_msginfo_persistence a ,aip_message_persistence b
where a.msg_type ='request'
   and   a.csb_id = b.csb_id
   and b.msg_type ='request'
) q,

    (select b.msg_type msg_type,b.msg_pkg msg_pkg,b.csb_id csb_id
from aip_msginfo_persistence b
where b.msg_type='response') p
where q.csb_id =p.csb_id(+)

