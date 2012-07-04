select '消息ID:'||a.msg_id||' 异常原因:'||a.service_state||','||d.businname||' 服务名：'||r.serv_name||' 接受时间:'||a.receive_time 
alarm  from aip_message_persistence a
left join bndict_t_dictionary d on a.service_state = d.businid
left join serv_afford_man_reg r on a.serv_code = r.serv_code
where a.serv_code in('ts.oipStateCheck.SynReq',
'10.1101.gp_jx_pf_inas_ActiveWorkOrderSend.SynReq',
'10.1101.gp_jx_pf_inas_ServQuery.SynReq',
'10.1101.gp_gx_pf_inas_ActiveWorkOrderSend.SynReq',
'10.1101.gp_gx_pf_inas_ServQuery.SynReq',
'45.1101.ActiveWorkOrderFinish.SynReq',
'45.1101.ActiveWorkOrderSendErrorReport.SynReq',
'36.1101.ActiveWorkOrderFinish.SynReq',
'36.1101.ActiveWorkOrderSendErrorReport.SynReq',
'10.1101.Buz4008OrderSend.SynReq',
'10.1001.Buz4008FirstFinishNotify.SynReq',
'10.1101.FinishIdcWorkOrder.SynReq',
'10.1101.IdcFeedSend.SynReq',
'10.1104.IdcSvrSource.SynReq',
'10.1104.IdcSvrSource.SynReq',
'10.1104.IdcSvrSource.SynReq',
'10.1101.Buz4008OrderSend.SynReq') 
and a.service_state <>0
and d.busintypeid='SERVICE_STATE'
and a.receive_time between  
sysdate - 6000000 units minute and sysdate;--itsm  5 分钟执行一次
--如果有内容则将内容发短信给189

select '消息ID:'||a.msg_id||' 异常原因:'||a.service_state||','||d.businname||' 服务名：'||r.serv_name||' 接受时间:'||a.receive_time 
alarm  from aip_message_persistence a
left join bndict_t_dictionary d on a.service_state = d.businid
left join serv_afford_man_reg r on a.serv_code = r.serv_code
where a.serv_code in('ts.oipStateCheck.SynReq',
'10.1101.gp_jx_pf_inas_ActiveWorkOrderSend.SynReq',
'10.1101.gp_jx_pf_inas_ServQuery.SynReq',
'10.1101.gp_gx_pf_inas_ActiveWorkOrderSend.SynReq',
'10.1101.gp_gx_pf_inas_ServQuery.SynReq',
'45.1101.ActiveWorkOrderFinish.SynReq',
'45.1101.ActiveWorkOrderSendErrorReport.SynReq',
'36.1101.ActiveWorkOrderFinish.SynReq',
'36.1101.ActiveWorkOrderSendErrorReport.SynReq',
'10.1101.Buz4008OrderSend.SynReq',
'10.1001.Buz4008FirstFinishNotify.SynReq',
'10.1101.FinishIdcWorkOrder.SynReq',
'10.1101.IdcFeedSend.SynReq',
'10.1104.IdcSvrSource.SynReq',
'10.1104.IdcSvrSource.SynReq',
'10.1104.IdcSvrSource.SynReq',
'10.1101.Buz4008OrderSend.SynReq') 
and a.service_state <>0
and d.busintypeid='SERVICE_STATE'
and a.receive_time between  
sysdate - 24 units hour and sysdate; --itsm 每天0点以后执行一次
--如果有内容发邮件给18001351470@189.cn


