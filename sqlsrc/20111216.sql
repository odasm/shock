

select * from conn_srp_reg_sc;


select * from conn_serv_reg_sc;

select *
  from (select bean.oip_code,
               bean.consumer,
               reg.conn_serv_code,
               reg.conn_serv_name,
               reg.provide_code,
               sum(decode(bean.receive_status, 1, 1, 0)) receiveTimes,
               sum(decode(bean.request_status, 1, 1, 0)) requestTimes,
               sum(decode(response_status, 1, 1, 0)) responseTimes,
               sum(decode(send_status, 1, 1, 0)) sendTimes,
               srp.conn_route_plat_name
          from serv_instance_sc bean,
               conn_serv_reg_sc reg,
               conn_srp_reg_sc  srp
         where bean.serv_code = reg.conn_serv_code
           and bean.oip_code=srp.conn_route_plat_code
         group by bean.oip_code,
                  bean.consumer,
                  reg.provide_code,
                  reg.conn_serv_code,
                  reg.conn_serv_name,
                  srp.conn_route_plat_name)
 where rownum <= 10;
 
 
 
 select * from conn_serv_reg_sc

