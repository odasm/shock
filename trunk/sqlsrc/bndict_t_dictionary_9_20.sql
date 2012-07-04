delete from bndict_t_dictionary;
commit;
insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('ALARM_CONTENT', '3', '消息包大小告警', 1, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('ALARM_CONTENT', '2', '吞吐量告警', 1, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('ALARM_CONTENT', '1', '并发量告警', 1, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('ALARM_CONTENT', '4', '历时告警', 2, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('ALARM_CONTENT', '5', '响应超时告警', 2, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('ALARM_TYPE', '1', '流量告警', null, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('ALARM_TYPE', '2', '质量告警', null, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('BNDICT_education', '11', '11', 11, '1');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('BNDICT_education', '2', '本科', null, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('BNDICT_education', '1', '大专', null, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('BNDICT_education', '4', '博士以上', null, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('BNDICT_education', '3', '硕士', null, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('CTRL_TYPE', '2', '服务调用频率上限', null, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('CTRL_TYPE', '1', '不控制', null, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('CTRL_TYPE', '4', '业务流量上限', null, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('CTRL_TYPE', '3', '单次业务包大小上限', null, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('DEL_FLAG', '0', '未删除', null, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('DEL_FLAG', '1', '已删除', null, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('IS_SUCCESS', '1', '成功', null, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('IS_SUCCESS', '2', '失败', null, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('IS_VALID', '1', '有效', null, '');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('IS_VALID', '0', '无效', null, '');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('PARA_TYPE', '2', '出参', null, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('PARA_TYPE', '1', '入参', null, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('REASON_FLAG', '2', '不为空', null, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('REASON_FLAG', '1', '为空', null, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERVICE_STATE', '4', '调用的服务未发布', null, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERVICE_STATE', '11', '无此服务', null, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERVICE_STATE', '100', '服务的初始状态', null, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERVICE_STATE', '10', '服务调用超过指定流量 ', null, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERVICE_STATE', '9', '消息包超出限定的大小', null, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERVICE_STATE', '3', '无效的路由属性', null, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERVICE_STATE', '6', '调用的服务没有授权', null, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERVICE_STATE', '5', '调用的服务已注销', null, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERVICE_STATE', '8', '接收方响应超时', null, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERVICE_STATE', '7', '调用的服务已关闭', null, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERVICE_STATE', '99', '其它', null, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERVICE_STATE', '1', '服务调用失败', null, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERVICE_STATE', '2', '消息格式无效', null, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERVICE_STATE', '0', '成功', null, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERV_PROBE_FLAG', '2', '否', null, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERV_PROBE_FLAG', '1', '是', null, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERV_TYPE', '3', 'webservice', null, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERV_TYPE', '4', 'jms', null, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERV_TYPE', '1', 'ftp', null, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERV_TYPE', '2', 'email', null, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERV_TYPE', '6', 'tuxedo', null, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERV_TYPE', '5', 'ejb', null, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('VERSION_STATE', '2', '删除', null, '0');

insert into bndict_t_dictionary (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('VERSION_STATE', '1', '正常', null, '0');
commit;

