prompt PL/SQL Developer import file
prompt Created on 2011年4月18日 by wyan
set feedback off
set define off
prompt Loading BNDICT_T_BUSINTYPE...
insert into BNDICT_T_BUSINTYPE (BUSINTYPEID, BUSINTYPENAME)
values ('DEL_FLAG', '删除标志位');
insert into BNDICT_T_BUSINTYPE (BUSINTYPEID, BUSINTYPENAME)
values ('AREA_CODE', '区域编码');
insert into BNDICT_T_BUSINTYPE (BUSINTYPEID, BUSINTYPENAME)
values ('SERV_PROBE_FLAG', '服务探针标志');
insert into BNDICT_T_BUSINTYPE (BUSINTYPEID, BUSINTYPENAME)
values ('SERV_INVOKE_MODE', '服务调用模式');
insert into BNDICT_T_BUSINTYPE (BUSINTYPEID, BUSINTYPENAME)
values ('CONN_SERV_MAN_CODE', '互联服务商编码');
insert into BNDICT_T_BUSINTYPE (BUSINTYPEID, BUSINTYPENAME)
values ('VERSION_STATE', '版本状态');
insert into BNDICT_T_BUSINTYPE (BUSINTYPEID, BUSINTYPENAME)
values ('SRP_DYNAMIC_STATUS', 'srp运行状态');
insert into BNDICT_T_BUSINTYPE (BUSINTYPEID, BUSINTYPENAME)
values ('PARA_TYPE', '参数类型');
insert into BNDICT_T_BUSINTYPE (BUSINTYPEID, BUSINTYPENAME)
values ('SUBSCRIBE_FLAG', '订阅标志');
insert into BNDICT_T_BUSINTYPE (BUSINTYPEID, BUSINTYPENAME)
values ('PROTOCOL_CONVERT_FLAG', '协议转换标志');
insert into BNDICT_T_BUSINTYPE (BUSINTYPEID, BUSINTYPENAME)
values ('CONN_INTER_TYPE', '互联接口地址类型');
insert into BNDICT_T_BUSINTYPE (BUSINTYPEID, BUSINTYPENAME)
values ('SRP_STATIC_STATUS', 'srp静态状态');
insert into BNDICT_T_BUSINTYPE (BUSINTYPEID, BUSINTYPENAME)
values ('SERV_MAN_CONVERT', '服务商编码关联关系');
insert into BNDICT_T_BUSINTYPE (BUSINTYPEID, BUSINTYPENAME)
values ('SERVICE_STATE', '服务状态');
insert into BNDICT_T_BUSINTYPE (BUSINTYPEID, BUSINTYPENAME)
values ('IS_SUCCESS', '是否成功');
insert into BNDICT_T_BUSINTYPE (BUSINTYPEID, BUSINTYPENAME)
values ('REASON_FLAG', '原因标识');
insert into BNDICT_T_BUSINTYPE (BUSINTYPEID, BUSINTYPENAME)
values ('CTRL_TYPE', '服务控制类型');
insert into BNDICT_T_BUSINTYPE (BUSINTYPEID, BUSINTYPENAME)
values ('SERV_TYPE', '服务消息类型');
insert into BNDICT_T_BUSINTYPE (BUSINTYPEID, BUSINTYPENAME)
values ('ALARM_TYPE', '告警类型');
insert into BNDICT_T_BUSINTYPE (BUSINTYPEID, BUSINTYPENAME)
values ('ALARM_CONTENT', '告警内容');
insert into BNDICT_T_BUSINTYPE (BUSINTYPEID, BUSINTYPENAME)
values ('IS_VALID', '版本是否有效');
insert into BNDICT_T_BUSINTYPE (BUSINTYPEID, BUSINTYPENAME)
values ('CONN_SERV_PROC_STATUS', '互联服务流程状态');
commit;
prompt 22 records loaded
prompt Loading BNDICT_T_DICTIONARY...
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('BNDICT_education', '11', '11', 11, '1');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('IS_VALID', '1', '有效', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('IS_VALID', '0', '无效', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('BNDICT_education', '1', '大专', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('BNDICT_education', '2', '本科', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('BNDICT_education', '3', '硕士', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('BNDICT_education', '4', '博士以上', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERVICE_STATE', '0', '成功', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERVICE_STATE', '1', '服务调用失败', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERVICE_STATE', '2', '消息格式无效', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERVICE_STATE', '3', '无效的路由属性', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERVICE_STATE', '4', '调用的服务未发布', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERVICE_STATE', '5', '调用的服务已注销', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERVICE_STATE', '6', '调用的服务没有授权', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERVICE_STATE', '7', '调用的服务已关闭', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERVICE_STATE', '8', '接收方响应超时', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERVICE_STATE', '9', '消息包超出限定的大小', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERVICE_STATE', '10', '服务调用超过指定流量 ', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERVICE_STATE', '99', '其它', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('IS_SUCCESS', '1', '成功', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('IS_SUCCESS', '2', '失败', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('REASON_FLAG', '1', '为空', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('REASON_FLAG', '2', '不为空', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('CTRL_TYPE', '1', '不控制', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('CTRL_TYPE', '2', '服务调用频率上限', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('CTRL_TYPE', '3', '单次业务包大小上限', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('CTRL_TYPE', '4', '业务流量上限', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERV_TYPE', '1', 'ftp', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERV_TYPE', '2', 'email', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERV_TYPE', '3', 'webservice', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERV_TYPE', '4', 'jms', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERV_TYPE', '5', 'ejb', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERV_TYPE', '6', 'tuxedo', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERVICE_STATE', '100', '服务交易中', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERVICE_STATE', '11', '无此服务', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('PROTOCOL_CONVERT_FLAG', '0', '不需要', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERV_INVOKE_MODE', '0', '同步模式', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERV_INVOKE_MODE', '1', '异步模式', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('AREA_CODE', '35', '福建', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('AREA_CODE', '36', '江西', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('AREA_CODE', '37', '山东', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('AREA_CODE', '41', '河南', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('AREA_CODE', '42', '湖北', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('AREA_CODE', '43', '湖南', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('AREA_CODE', '44', '广东', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('AREA_CODE', '45', '广西', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('AREA_CODE', '46', '海南', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SRP_STATIC_STATUS', '5', '已上报' || chr(10) || '', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('ALARM_TYPE', '1', '流量告警', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('ALARM_TYPE', '2', '质量告警', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('VERSION_STATE', '1', '正常', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('VERSION_STATE', '2', '注销', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('DEL_FLAG', '0', '未删除', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('DEL_FLAG', '1', '已删除', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('PARA_TYPE', '1', '入参', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('PARA_TYPE', '2', '出参', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERV_PROBE_FLAG', '1', '是', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERV_PROBE_FLAG', '2', '否', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('AREA_CODE', '51', '四川', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('AREA_CODE', '54', '西藏', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('AREA_CODE', '63', '青海', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('AREA_CODE', '81', '台湾', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('AREA_CODE', '70', '电信学院', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('CONN_SERV_MAN_CODE', '10.1101', '集团开通激活系统', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('CONN_INTER_TYPE', '1', 'SRP信息下发接口地址', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('CONN_INTER_TYPE', '2', '互联服务信息下发接口地址', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('ALARM_CONTENT', '1', '并发量告警', 1, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('ALARM_CONTENT', '2', '吞吐量告警', 1, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('ALARM_CONTENT', '3', '消息包大小告警', 1, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('ALARM_CONTENT', '4', '历时告警', 2, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('ALARM_CONTENT', '5', '响应超时告警', 2, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SUBSCRIBE_FLAG', '1', '是订阅', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SUBSCRIBE_FLAG', '2', '不是订阅', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SRP_DYNAMIC_STATUS', '1', '正常', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SRP_DYNAMIC_STATUS', '2', '连接失败', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('AREA_CODE', '10', '集团', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('AREA_CODE', '11', '北京', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('AREA_CODE', '12', '天津', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('AREA_CODE', '13', '河北', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('AREA_CODE', '14', '山西', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('AREA_CODE', '15', '内蒙古', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('AREA_CODE', '21', '辽宁', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('AREA_CODE', '22', '吉林', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('AREA_CODE', '23', '黑龙江', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('AREA_CODE', '31', '上海', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('AREA_CODE', '32', '江苏', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('AREA_CODE', '33', '浙江', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('AREA_CODE', '34', '安徽', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('AREA_CODE', '52', '贵州', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('AREA_CODE', '61', '陕西', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('AREA_CODE', '64', '宁夏', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('AREA_CODE', '82', '香港', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('AREA_CODE', '91', '中国电信欧洲公司', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('CONN_SERV_MAN_CODE', '34.1109', '安徽服务质量系统', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('PROTOCOL_CONVERT_FLAG', '1', '数据协议转换(请求)', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('PROTOCOL_CONVERT_FLAG', '2', '数据协议转换(响应)', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('PROTOCOL_CONVERT_FLAG', '3', '数据协议转换(请求+响应)', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('PROTOCOL_CONVERT_FLAG', '4', '传输协议转换(请求)', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('PROTOCOL_CONVERT_FLAG', '5', '传输协议转换(响应)', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('PROTOCOL_CONVERT_FLAG', '6', '传输协议转换(请求+响应)', null, '0');
commit;
prompt 100 records committed...
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SRP_STATIC_STATUS', '1', '初始状态', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SRP_STATIC_STATUS', '2', '已下发', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SRP_STATIC_STATUS', '3', '未审核', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SRP_STATIC_STATUS', '4', '已审核', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('AREA_CODE', '50', '重庆', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('AREA_CODE', '53', '云南', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('AREA_CODE', '62', '甘肃', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('AREA_CODE', '65', '新疆', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('AREA_CODE', '83', '澳门', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('AREA_CODE', '92', '中国电信美洲公司', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('CONN_SERV_MAN_CODE', '10.1109', '集团服务质量系统', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERV_MAN_CONVERT', '1001', 'crm', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERV_MAN_CONVERT', '1101', 'pf', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERV_MAN_CONVERT', '1111', 'esb', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('SERV_MAN_CONVERT', '1109', 'sa', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('CONN_SERV_PROC_STATUS', '1', '初始状态', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('CONN_SERV_MAN_CODE', '34.1101', '安徽开通系统', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('CONN_SERV_PROC_STATUS', '2', '已下发', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('CONN_SERV_PROC_STATUS', '3', '未审核', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('CONN_SERV_PROC_STATUS', '4', '已审核', null, '0');
insert into BNDICT_T_DICTIONARY (BUSINTYPEID, BUSINID, BUSINNAME, PRIVILEGE, STATUS)
values ('CONN_SERV_PROC_STATUS', '5', '已上报', null, '0');
commit;
prompt 121 records loaded
prompt Loading CUSTOMIZE_MY_WORKSHOP...
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1101', 'inas02', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('2011', '0791001', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1101', 'start', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('2011', 'admin', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1101', 'admin', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('3301', 'admin', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1101', '0791001', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('2011', 'inas02', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1203', 'admin', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('2011', '0791000', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1101', '0791000', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('2011', '0791014', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1101', '0791014', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('sheetQuery', '1750', 'Y');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('BUSHUPACKAGE', '1750', 'N');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('sheetQuery', '14750', 'Y');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('2011', 'inas03', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1101', 'inas03', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('2011', 'inas04', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1101', 'inas04', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('sheetQuery', '1751', 'Y');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('regionTmlUnion', '1751', 'N');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('DevTypeConf', '1751', 'N');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('devInfoSet', '1751', 'N');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('regionConf', '1751', 'N');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('NE_ROAD', '1751', 'N');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('2011', 'test', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1101', 'test', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1101', 'jlsu', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1101', 'zxzhang', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('2011', 'tsaip', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('2011', 'lbl', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('2011', 'jlsu', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('2011', 'zxzhang', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1101', 'lbl', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('2011', 'guolimin', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1101', 'tsaip', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1101', 'guolimin', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('2011', '12345', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('2011', 'hhh', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('2011', 'ggg', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1101', 'ggg', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('2011', 'ssss', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('2011', 'telstar1', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('2011', 'dingzy', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1101', '12345', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1101', 'aa', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('2011', 'kxu', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1101', 'yuxi', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1101', 'telstar1', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('11111340', '1234', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('2011', 'telstar', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1101', 'aaaa', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('11111492', 'inas01', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('2011', '1234', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1101', 'inas01', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('11111212', 'inas01', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('2011', 'wyan', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1101', 'kxu', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('2011', 'aaaa', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('2011', 'dingzy', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('11111391', '1234', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1101', 'hhh', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1101', 'ssss', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('2011', 'byli', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('2011', 'aa', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('11111551', 'inas01', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('2012', 'inas01', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('2011', 'ls', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1101', 'wyan', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1101', 'inas02', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('2011', '0791001', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1101', 'start', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('2011', 'admin', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1101', 'admin', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('3301', 'admin', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1101', '0791001', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('2011', 'inas02', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1203', 'admin', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('2011', '0791000', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1101', '0791000', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('2011', '0791014', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1101', '0791014', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('sheetQuery', '1750', 'Y');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('BUSHUPACKAGE', '1750', 'N');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('sheetQuery', '14750', 'Y');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('2011', 'inas03', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1101', 'inas03', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('2011', 'inas04', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1101', 'inas04', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('sheetQuery', '1751', 'Y');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('regionTmlUnion', '1751', 'N');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('DevTypeConf', '1751', 'N');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('devInfoSet', '1751', 'N');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('regionConf', '1751', 'N');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('NE_ROAD', '1751', 'N');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('2011', 'test', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1101', 'test', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1101', 'jlsu', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1101', 'zxzhang', '1');
commit;
prompt 100 records committed...
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1101', 'telstar', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1101', 'ls', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('2011', 'lbl', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('2011', 'jlsu', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('2011', 'zxzhang', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1101', 'lbl', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('2011', 'yuxi', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('11111176', 'inas01', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('11111172', 'inas01', '0');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1101', 'byli', '1');
insert into CUSTOMIZE_MY_WORKSHOP (MENU_ID, USER_ID, IS_HOME)
values ('1101', 'dingzy', '1');
commit;
prompt 111 records loaded
prompt Loading MENU_FUNC_INFO...
insert into MENU_FUNC_INFO (FUNCID, MENU_ID, FUNCNAME)
values (100005, 11111176, '权限操作(接入系统)');
insert into MENU_FUNC_INFO (FUNCID, MENU_ID, FUNCNAME)
values (1, 1001001, '增加');
insert into MENU_FUNC_INFO (FUNCID, MENU_ID, FUNCNAME)
values (2, 1001001, '修改');
insert into MENU_FUNC_INFO (FUNCID, MENU_ID, FUNCNAME)
values (3, 1001001, '删除');
insert into MENU_FUNC_INFO (FUNCID, MENU_ID, FUNCNAME)
values (88888888, 11111212, '测试');
insert into MENU_FUNC_INFO (FUNCID, MENU_ID, FUNCNAME)
values (10000, 11111176, '添加');
insert into MENU_FUNC_INFO (FUNCID, MENU_ID, FUNCNAME)
values (100004, 11111176, '权限操作(服务)');
insert into MENU_FUNC_INFO (FUNCID, MENU_ID, FUNCNAME)
values (123132, 11111251, '第三方');
insert into MENU_FUNC_INFO (FUNCID, MENU_ID, FUNCNAME)
values (120301, 11111191, '增加');
insert into MENU_FUNC_INFO (FUNCID, MENU_ID, FUNCNAME)
values (120302, 11111191, '更新');
insert into MENU_FUNC_INFO (FUNCID, MENU_ID, FUNCNAME)
values (100001, 11111176, '增加');
insert into MENU_FUNC_INFO (FUNCID, MENU_ID, FUNCNAME)
values (120303, 11111191, '删除');
insert into MENU_FUNC_INFO (FUNCID, MENU_ID, FUNCNAME)
values (100002, 11111176, '更新');
insert into MENU_FUNC_INFO (FUNCID, MENU_ID, FUNCNAME)
values (100003, 11111176, '删除');
commit;
prompt 14 records loaded
prompt Loading MENU_INFO...
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111531, '服务查找', 1002, 0, 1, 'serviceSearch/serviceSearch.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111732, '互联服务注册', 11111731, 0, 1, 'connregister/conn_servReg.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111791, '系统参数配置', 2001, 0, 1, 'register/stConfig.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111871, 'SRP平台接口配置', 11111851, 0, 1, 'connregister/conn_srpIntefaces.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111341, '告警阀值配置', 11111331, 0, 0, 'alarm/alarmThresholdConfig.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111591, '组装规则管理', 1003, 0, 1, 'message/messageRuleCfg.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111592, '消息模板管理', 1003, 0, 1, 'message/messageTemplatgeCfg.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111491, '拓扑管理', null, 1, 1, null);
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111852, '互联SRP注册', 11111851, 0, 1, 'connregister/conn_SRPReg_SC.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111492, '服务拓扑', 11111491, 0, 1, 'topo/NetMap.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111851, '互联控制中心', null, 1, 1, null);
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111854, '互联服务权限', 11111851, 0, 1, 'connregister/conn_servLimitSC.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111411, '服务监视', 1004, 0, 1, 'flex/ServMonitor.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111711, '消息重投管理', 11111331, 0, 1, 'register/msgResend.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111551, '服务监控趋势图', 1005, 0, 1, 'flex/ServiceMonSearch.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111731, '互联模块', null, 1, 1, null);
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111751, '互联SRP注册', 11111731, 0, 1, 'connregister/conn_SRPReg.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111853, '互联服务注册', 11111851, 0, 1, 'connregister/conn_servRegSC.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111175, '服务访问权限', 1002, 0, 0, 'monitor/monitorInfoCfg.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (1002, '服务注册', null, 1, 1, null);
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111174, '服务定义', 1002, 0, 0, 'monitor/monitorInfoCfg.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (1005, '综合查询', null, 1, 1, null);
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111251, '服务流量监控', 1004, 0, 1, 'monitor/fluxMonitor.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111334, '性能监控', 11111331, 0, 0, 'itsa/itsaPerf/PerfMain.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111339, '过滤器配置', 11111331, 0, 0, 'alarm/alarmPresentConfig.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111372, '业务规则管理', 11111371, 0, 1, 'rule/bizruleIndex.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111373, '规则元管理', 11111371, 0, 1, 'rule/ruleElementIndex2.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (1003, '服务消息管理', null, 1, 1, null);
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111254, '异常服务统计', 1005, 0, 0, 'audit/AipMessageAbnormalCount.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111331, '告警管理', null, 1, 1, null);
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111336, '监控设备配置', 11111331, 0, 0, 'itsa/sysDevConfig/sysDevConfig.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111340, '实时监控', 11111331, 0, 0, 'alarm/alarmMonitor.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111671, '服务编排', 1002, 0, 1, 'orchestration/busitypeManage.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (1004, '服务监控', null, 1, 1, null);
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111173, '服务注册', 1002, 0, 0, 'register/ServManServReg.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111271, '数据稽核查询', 1005, 0, 0, 'audit/AipMsgContrastQuery.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111176, '系统服务注册', 1002, 0, 1, 'register/servMan_servReg.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111332, '性能门限配置', 11111331, 0, 0, 'itsa/itsaAlarmParaLimit/itsaAlarmParaLimit.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111335, '进程监控', 11111331, 0, 0, 'itsa/itsaPerf/processMain.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111337, '颜色声音设置', 11111331, 0, 0, 'alarm/alarmSoundConfig.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (2002, '角色管理', 2001, 0, 1, 'security/role_info.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (2003, '机构管理', 2001, 0, 0, 'security/organ_info.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (2004, '用户管理', 2001, 0, 1, 'security/user_info.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (2005, '菜单管理', 2001, 0, 1, 'security/menu_info.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (2006, '定制菜单', 2001, 0, 1, 'security/order_menu.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (2010, '公告管理', null, 1, 1, null);
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (1101, '公告浏览', 2010, 0, 1, 'maintenance/notice/displayNotice.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (2012, '公告发布', 2010, 0, 1, 'maintenance/notice/issueNotice.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (3060, 'ce333', 3041, 0, 0, null);
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (2009, '日志操作', 2001, 0, 1, 'maintenance/log/operateLog.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (2001, '安全管理', null, 1, 1, null);
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (2007, '角色业务配置', 2001, 0, 0, 'security/role_business.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111272, '数据稽核统计', 1005, 0, 0, 'audit/AipMsgContrastCount.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111338, '呈现配置', 11111331, 0, 0, 'alarm/alarmViewConfig.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111371, '规则管理', null, 1, 0, null);
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111374, '规则决策管理', 11111371, 0, 1, 'rule/decision_index2.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111375, '规则部署管理', 11111371, 0, 1, 'rule/DeployIndex.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (1006, '系统维护', null, 1, 0, null);
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111391, '服务调用趋势图', 1005, 0, 1, 'flex/servCallTrend.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (2013, '业务字典', 2001, 0, 1, 'systemMng/businessDictionary.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (1601, '南向接口监控', 1006, 0, 0, 'querySystemCrtl.action');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (1, '北向接口监控', 1006, 0, 0, 'queryNorthSystemCrtl.action');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (21, '网络信息监控', 1006, 0, 0, 'sheetMoni/netConnectMoni.jsp ');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (282, '用户局关联配置', 2001, 0, 0, 'configMng/UserOfficeConfig.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (6002, '工单监控', null, null, 0, 'sheetMoni/indexSheetMoniResult.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (6004, '网络信息监控', null, null, 0, 'sheetMoni/indexNetConnectMoni.jsp ');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (1000, 'AIP首页', null, 1, 0, null);
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (3301, 'AIP首页', 1000, 0, 0, 'getAllNoticeTitle2.action');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (6001111, '公告浏览', null, null, 0, 'maintenance/notice/indexDisplayNotice.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (6003, '超时工单监控', null, null, 0, 'sheetMoni/indexSheetLimitMoni.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111131, '流量控制配置', 1004, 0, 0, 'monitor/monitorInfoCfg.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111172, '接入系统管理', 1002, 0, 1, 'register/ServManCfg.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111212, '服务消息查询', 1005, 0, 1, 'audit/AipMessageQuery.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111252, '服务质量监控', 1004, 0, 1, 'monitor/qualityMonitor.jsp');
insert into MENU_INFO (MENU_ID, NAME, P_ID, IS_HEAD, ISDISPLAY, PAGEURL)
values (11111253, '服务消息统计', 1005, 0, 1, 'audit/AipMessageCount.jsp');
commit;
prompt 75 records loaded
prompt Loading NOTICE_TYPE...
insert into NOTICE_TYPE (TYPE_ID, NAME)
values (5, '紧急通知');
insert into NOTICE_TYPE (TYPE_ID, NAME)
values (41, '公司信息');
insert into NOTICE_TYPE (TYPE_ID, NAME)
values (81, '新的通知');
commit;
prompt 3 records loaded
prompt Loading ORDER_MENU...
insert into ORDER_MENU (USER_ID, MENU_ID, POSITION)
values ('inas01', 6003, 1);
insert into ORDER_MENU (USER_ID, MENU_ID, POSITION)
values ('admin', 6002, 2);
commit;
prompt 2 records loaded
prompt Loading ORGAN_INFO...
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (160, 7, '数据监视组', ' ', '0000000', ' ', 'a@a.com', 7, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (161, 701, '侯马', ' ', '0000000', ' ', 'a@a.com', 7, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (162, 702, '霍州', ' ', '0000000', ' ', 'a@a.com', 7, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (163, 703, '汾西', ' ', '0000000', ' ', 'a@a.com', 7, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (164, 704, '吉县', ' ', '0000000', ' ', 'a@a.com', 7, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (165, 705, '安泽', ' ', '0000000', ' ', 'a@a.com', 7, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (166, 706, '大宁', ' ', '0000000', ' ', 'a@a.com', 7, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (167, 707, '浮山', ' ', '0000000', ' ', 'a@a.com', 7, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (168, 708, '古县', ' ', '0000000', ' ', 'a@a.com', 7, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (169, 709, '隰县', ' ', '0000000', ' ', 'a@a.com', 7, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (170, 7, 'lfxf', ' ', '0000000', ' ', 'a@a.com', 7, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (171, 7, 'lfyc', ' ', '0000000', ' ', 'a@a.com', 7, 4, 1, ' ');
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (172, 0, '省中心工单组', ' ', '000', ' ', 'a@a.com', 12, 3, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (173, 7, 'lfyh', ' ', '0000000', ' ', 'a@a.com', 7, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (174, 713, '乡宁', ' ', '0000000', ' ', 'a@a.com', 7, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (175, 714, '曲沃', ' ', '0000000', ' ', 'a@a.com', 7, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (176, 0, '省中心话务组', ' ', '000', ' ', 'a@a.com', 12, 3, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (177, 715, '洪洞', ' ', '0000000', ' ', 'a@a.com', 7, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (178, 0, '省中心安全组', ' ', '000', ' ', 'a@a.com', 12, 3, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (179, 716, '蒲县', ' ', '0000000', ' ', 'a@a.com', 7, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (180, 0, '省中心维护组', ' ', '000', ' ', 'a@a.com', 12, 3, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (181, 7, '临汾设备中心', ' ', '0000000', ' ', 'a@a.com', 7, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (182, 7, '临汾数据制作组', ' ', '0000000', ' ', 'a@a.com', 7, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (183, 8, '吕梁市', ' ', '0000000', ' ', 'a@a.com', 8, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (184, 8, '吕梁恒星测试', ' ', '0000000', ' ', 'a@a.com', 8, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (185, 9, '运城恒星测试', ' ', '0000000', ' ', 'a@a.com', 9, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (186, 9, '运城设备维护', ' ', '0000000', ' ', 'a@a.com', 9, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (187, 10, '朔州网管中心', ' ', '0000000', ' ', 'a@a.com', 10, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (11111111, 550, 'fdf', 'fdf', '2334343', '33434343', 'fdkfj@jl.com', 1, 4, 1, 'fdfd');
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (11111131, 795, '太原中心', '123456', '474645', '44646', 'guo.ljimin@163.com', null, 3, 1, 'dasdfasfd');
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (15, 103, '清徐', ' ', '000', ' ', 'a@a.com', 1, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (16, 1, '话务组', ' ', '000', ' ', 'a@a.com', 1, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (17, 104, '阳曲', ' ', '000', ' ', 'a@a.com', 1, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (18, 11, '网维综合业务组', ' ', '0000000', ' ', 'a@a.com', 11, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (19, 102, '娄烦', ' ', '000', ' ', 'a@a.com', 1, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (20, 11, '网维固话支撑组', ' ', '0000000', ' ', 'a@a.com', 11, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (21, 101, '古交', ' ', '000', ' ', 'a@a.com', 1, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (12, 0, '省中心', '省中心', '03510000000', '03510000000', '444@34.com', null, 2, 0, '省中心');
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (22, 0, '交换监控组', ' ', '000', ' ', 'a@a.com', 1, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (23, 1, '数据外围组', ' ', '000', ' ', 'a@a.com', 1, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (13, 0, '测试机构', '44', '443', '4353', '3543@343.com', 12, 3, 0, '3444');
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (24, 1, '网管组', ' ', '000', ' ', 'a@a.com', 1, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (25, 11, '接入维护中心', ' ', '0000000', ' ', 'a@a.com', 11, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (26, 1, '省网管', ' ', '000', ' ', 'a@a.com', 1, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (27, 1112, '定襄局', ' ', '0000000', ' ', 'a@a.com', 11, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (28, 1, '测试班组', ' ', '000', ' ', 'a@a.com', 1, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (29, 1102, '代县局', ' ', '0000000', ' ', 'a@a.com', 11, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (30, 1, '接入网组', ' ', '000', ' ', 'a@a.com', 1, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (31, 1111, '保德局', ' ', '0000000', ' ', 'a@a.com', 11, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (32, 2, '恒星测试班组', ' ', '000', ' ', 'a@a.com', 2, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (33, 2, '网管中心分析班', ' ', '000', ' ', 'a@a.com', 2, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (34, 2, '网管中心业务班', ' ', '000', ' ', 'a@a.com', 2, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (35, 1109, '繁峙局', ' ', '0000000', ' ', 'a@a.com', 11, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (36, 2, '省网管', ' ', '000', ' ', 'a@a.com', 2, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (37, 1110, '河曲局', ' ', '0000000', ' ', 'a@a.com', 11, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (38, 2, '网管中心监控班', ' ', '000', ' ', 'a@a.com', 2, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (39, 1108, '静乐局', ' ', '0000000', ' ', 'a@a.com', 11, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (40, 1113, '岢岚局', ' ', '0000000', ' ', 'a@a.com', 11, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (41, 2, '设备中心维护班', ' ', '000', ' ', 'a@a.com', 2, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (42, 2, '新荣交换维护', ' ', '000', ' ', 'a@a.com', 2, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (43, 1107, '宁武局', ' ', '0000000', ' ', 'a@a.com', 11, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (44, 1106, '偏关局', ' ', '0000000', ' ', 'a@a.com', 11, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (45, 2, '平旺交换维护', ' ', '000', ' ', 'a@a.com', 2, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (46, 1103, '神池局', ' ', '0000000', ' ', 'a@a.com', 11, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (47, 1105, '五台局', ' ', '0000000', ' ', 'a@a.com', 11, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (48, 1104, '五寨局', ' ', '0000000', ' ', 'a@a.com', 11, 4, 1, ' ');
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (49, 2, '南郊交换维护', ' ', '000', ' ', 'a@a.com', 2, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (50, 1101, '原平局', ' ', '0000000', ' ', 'a@a.com', 11, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (51, 2, '云冈交换维护', ' ', '000', ' ', 'a@a.com', 2, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (52, 1100, '网维话务分析组', ' ', '0000000', ' ', 'a@a.com', 11, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (53, 201, '左云县交换维护', ' ', '000', ' ', 'a@a.com', 2, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (54, 202, '大同县交换维护', ' ', '000', ' ', 'a@a.com', 2, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (55, 10, '恒星测试', ' ', '0000000', ' ', 'a@a.com', 10, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (56, 203, '浑源交换维护', ' ', '000', ' ', 'a@a.com', 2, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (57, 204, '广灵交换维护', '  ', '000', ' ', 'a@a.com', 2, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (58, 205, '灵丘交换维护', ' ', '000', ' ', 'a@a.com', 2, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (59, 10, '设备维护中心', ' ', '0000000', ' ', 'a@a.com', 10, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (60, 206, '阳高交换维护', ' ', '000', ' ', 'a@a.com', 2, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (61, 10, '值班维护', ' ', '0000000', ' ', 'a@a.com', 10, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (62, 207, '天镇交换维护', ' ', '000', ' ', 'a@a.com', 2, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (1, 1, '太原', ' ', '0000000', ' ', 'a@a.com', null, 3, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (2, 2, '大同', ' ', '000000', '  ', 'a@a.com', null, 3, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (3, 3, '阳泉', ' ', '000', ' ', 'a@a.com', null, 3, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (4, 4, '晋中', ' ', '000', ' ', 'a@a.com', null, 3, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (5, 5, '长治', ' ', '000', ' ', 'a@a.com', null, 3, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (6, 6, '晋城', ' ', '000', ' ', 'a@a.com', null, 3, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (7, 7, '临汾', ' ', '000', ' ', 'a@a.com', null, 3, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (8, 8, '吕梁', ' ', '000', ' ', 'a@a.com', null, 3, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (9, 9, '运城', ' ', '000', ' ', 'a@a.com', null, 3, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (10, 10, '朔州', ' ', '000', ' ', 'a@a.com', null, 3, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (11, 11, '忻州', ' ', '000', ' ', 'a@a.com', null, 3, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (63, 1004, '怀仁局', ' ', '0000000', ' ', 'a@a.com', 10, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (64, 3, '省网管中心', ' ', '000', ' ', 'a@a.com', 3, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (65, 10, '振华局', ' ', '0000000', ' ', 'a@a.com', 10, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (66, 3, '支撑组', ' ', '000', ' ', 'a@a.com', 3, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (67, 1003, '应县局', ' ', '0000000', ' ', 'a@a.com', 10, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (68, 3, '网管组', ' ', '000', ' ', 'a@a.com', 3, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (69, 1005, '平鲁局', ' ', '0000000', ' ', 'a@a.com', 10, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (70, 3, '监控组', ' ', '000', ' ', 'a@a.com', 3, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (71, 1001, '山阴局', ' ', '0000000', ' ', 'a@a.com', 10, 4, 1, null);
commit;
prompt 100 records committed...
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (72, 301, '平定交换机房', ' ', '000', ' ', 'a@a.com', 3, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (73, 1002, '右玉局', ' ', '0000000', ' ', 'a@a.com', 10, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (74, 302, '盂县交换机房', ' ', '000', ' ', 'a@a.com', 3, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (83, 4, '设备中心', ' ', '000', ' ', 'a@a.com', 4, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (76, 9, '运城网管监控', ' ', '0000000', ' ', 'a@a.com', 9, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (77, 9, '数据制作组', ' ', '0000000', ' ', 'a@a.com', 9, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (78, 9, '统计分析组', ' ', '0000000', ' ', 'a@a.com', 9, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (79, 912, '临猗交换', ' ', '0000000', ' ', 'a@a.com', 9, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (80, 9, 'NGN管理', ' ', '0000000', ' ', 'a@a.com', 9, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (81, 4, '测试班组', ' ', '000', ' ', 'a@a.com', 4, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (82, 901, '河津', ' ', '0000000', ' ', 'a@a.com', 9, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (84, 901, '河津铝厂', ' ', '0000000', ' ', 'a@a.com', 9, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (85, 4, '网调中心', ' ', '000', ' ', 'a@a.com', 4, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (86, 902, '永济', ' ', '0000000', ' ', 'a@a.com', 9, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (87, 401, '太谷', ' ', '000', ' ', 'a@a.com', 4, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (88, 903, '闻喜', ' ', '0000000', ' ', 'a@a.com', 9, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (89, 402, '左权', ' ', '000', ' ', 'a@a.com', 4, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (90, 9, '东镇', ' ', '0000000', ' ', 'a@a.com', 9, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (91, 403, '寿阳', ' ', '000', ' ', 'a@a.com', 4, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (92, 904, '新绛', ' ', '0000000', ' ', 'a@a.com', 9, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (93, 404, '平遥', ' ', '000', ' ', 'a@a.com', 4, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (94, 905, '平陆', ' ', '0000000', ' ', 'a@a.com', 9, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (95, 405, '昔阳', ' ', '000', ' ', 'a@a.com', 4, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (96, 906, '垣曲', ' ', '0000000', ' ', 'a@a.com', 9, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (97, 406, '和顺', ' ', '000', ' ', 'a@a.com', 4, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (98, 9, '东峰山', ' ', '0000000', ' ', 'a@a.com', 9, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (99, 407, '榆社', ' ', '000', ' ', 'a@a.com', 4, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (100, 907, '绛县', ' ', '0000000', ' ', 'a@a.com', 9, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (101, 408, '灵石', ' ', '000', ' ', 'a@a.com', 4, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (102, 908, '稷山交换', ' ', '0000000', ' ', 'a@a.com', 9, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (103, 908, '稷山交换', ' ', '0000000', ' ', 'a@a.com', 9, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (104, 409, '祁县', ' ', '000', ' ', 'a@a.com', 4, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (105, 409, '祁县', ' ', '000', ' ', 'a@a.com', 4, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (106, 909, '芮城', ' ', '0000000', ' ', 'a@a.com', 9, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (107, 909, '芮城', ' ', '0000000', ' ', 'a@a.com', 9, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (108, 410, '介休', ' ', '000', ' ', 'a@a.com', 4, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (109, 5, '恒星测试', ' ', '000', ' ', 'a@a.com', 5, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (110, 9, '风陵渡', ' ', '0000000', ' ', 'a@a.com', 9, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (111, 9, '风陵渡', ' ', '0000000', ' ', 'a@a.com', 9, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (112, 5, '故县', ' ', '000', ' ', 'a@a.com', 5, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (113, 910, '夏县', ' ', '0000000', ' ', 'a@a.com', 9, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (114, 911, '万荣', ' ', '0000000', ' ', 'a@a.com', 9, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (115, 5, '网管调度中心', ' ', '000', ' ', 'a@a.com', 5, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (116, 504, '黎城', ' ', '000', ' ', 'a@a.com', 5, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (117, 9, '荣河', ' ', '0000000', ' ', 'a@a.com', 9, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (118, 5, '设备中心交换组', ' ', '000', ' ', 'a@a.com', 5, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (119, 912, '临猗', ' ', '0000000', ' ', 'a@a.com', 9, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (120, 5, '系统管理员', ' ', '000', ' ', 'a@a.com', 5, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (121, 510, '武乡', ' ', '000', ' ', 'a@a.com', 5, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (122, 9, '临晋', ' ', '0000000', ' ', 'a@a.com', 9, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (123, 505, '潞城', ' ', '000', ' ', 'a@a.com', 5, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (124, 507, '沁县', ' ', '000', ' ', 'a@a.com', 5, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (125, 511, '襄垣', ' ', '000', ' ', 'a@a.com', 5, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (126, 8, '网络监控分析组', ' ', '0000000', ' ', 'a@a.com', 8, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (127, 808, '柳林', ' ', '0000000', ' ', 'a@a.com', 8, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (128, 509, '屯留', ' ', '000', ' ', 'a@a.com', 5, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (129, 801, '孝义', ' ', '0000000', ' ', 'a@a.com', 8, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (130, 507, '沁源', ' ', '000', ' ', 'a@a.com', 5, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (131, 802, '汾阳', ' ', '0000000', ' ', 'a@a.com', 8, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (132, 501, '长治县', ' ', '000', ' ', 'a@a.com', 5, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (133, 8, '命令配置', ' ', '0000000', ' ', 'a@a.com', 8, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (134, 502, '长子', ' ', '000', ' ', 'a@a.com', 5, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (135, 8, '大客户响应中心', ' ', '0000000', ' ', 'a@a.com', 8, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (136, 503, '壶关', ' ', '000', ' ', 'a@a.com', 5, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (137, 506, '平顺', ' ', '000', ' ', 'a@a.com', 5, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (138, 803, '文水', ' ', '0000000', ' ', 'a@a.com', 8, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (139, 804, '中阳', ' ', '000000', ' ', 'a@a.com', 8, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (140, 805, '兴县', ' ', '0000000', ' ', 'a@a.com', 8, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (141, 5, '省网管(长治)', ' ', '000', ' ', 'a@a.com', 5, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (142, 806, '临县', ' ', '0000000', ' ', 'a@a.com', 8, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (143, 807, '方山', ' ', '0000000', ' ', 'a@a.com', 8, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (144, 6, '恒星测试(晋城)', ' ', '000', ' ', 'a@a.com', 6, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (145, 6, '设备维护中心', ' ', '000', ' ', 'a@a.com', 6, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (146, 809, '岚县', ' ', '0000000', ' ', 'a@a.com', 8, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (147, 6, '泽洲局', ' ', '000', ' ', 'a@a.com', 6, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (148, 810, '交口', ' ', '0000000', ' ', 'a@a.com', 8, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (149, 6, 'EWSD厂家', ' ', '000', ' ', 'a@a.com', 6, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (150, 811, '交城', ' ', '0000000', ' ', 'a@a.com', 8, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (151, 603, '阳城县设备维护', ' ', '000', ' ', 'a@a.com', 6, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (152, 605, '高平市设备维护', ' ', '000', ' ', 'a@a.com', 6, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (153, 812, '石楼', ' ', '0000000', ' ', 'a@a.com', 8, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (154, 601, '陵川县设备维护', ' ', '000', ' ', 'a@a.com', 6, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (155, 602, '沁水县设备维护', ' ', '000', ' ', 'a@a.com', 6, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (156, 7, '科大恒星', ' ', '0000000', ' ', 'a@a.com', 7, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (157, 6, '网络维护中心', ' ', '000', ' ', 'a@a.com', 6, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (158, 7, '分析组', ' ', '0000000', ' ', 'a@a.com', 7, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (159, 6, '网络管理中心', ' ', '000', ' ', 'a@a.com', 6, 4, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (11111271, 888, 'test', 'test', '1234567', '1234567', '1@1.cn', 11111251, 5, 0, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (11111291, 0, '测试', 'test', '12', '12', '12@126.com', 12, 3, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (11111292, 0, '1243', '12313', '1321', '123', '12@163.com', null, 1, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (11111293, 691, '12', 'test', '1231', '12312', '12@123.com', 12, 3, 1, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (11111231, 870, '测试机构2', '纷纷', '0512', '231', 'sizel@163.com', 12, 3, 0, 'f1');
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (11111251, 0, 'ces', 'ce', '123', '123', '123@12.cn', 12, 5, 0, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (11111232, 0, '次中心', '张力', '232', '3223', '11@163.com', null, 1, 1, 'ss');
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (11111233, 691, 'ss', 'ss', '23', '12', '12@1.com', 12, 4, 1, '12');
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (11111273, 888, 'test11', 'test11', '123456', '123456', '1@1.cn', 11111272, 5, 0, null);
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (11111234, 692, 'sd', 'fd', '23', '12', '112@1.com', 11111233, 5, 1, 'd');
insert into ORGAN_INFO (ORGAN_ID, TML_ID, NAME, PRINCIPAL, PHONE, FAX, EMAIL, P_ORGAN_ID, LEVEL_ID, DEL_FLAG, REMARK)
values (11111272, 888, 'test1', 'test1', '123456', '123456', '1@1.cn', 11111271, 5, 0, null);
commit;
prompt 198 records loaded
prompt Loading ROLE_DEV...
prompt Table is empty
prompt Loading ROLE_INFO...
insert into ROLE_INFO (ROLE_ID, ORGAN_ID, NAME, REMARK)
values (1, 12, '省中心用户', null);
insert into ROLE_INFO (ROLE_ID, ORGAN_ID, NAME, REMARK)
values (5, 12, '省中心工单组', null);
insert into ROLE_INFO (ROLE_ID, ORGAN_ID, NAME, REMARK)
values (25, 13, '网管中心', null);
insert into ROLE_INFO (ROLE_ID, ORGAN_ID, NAME, REMARK)
values (27, 180, '省中心维护', null);
insert into ROLE_INFO (ROLE_ID, ORGAN_ID, NAME, REMARK)
values (26, 172, '省中心工单角色', null);
insert into ROLE_INFO (ROLE_ID, ORGAN_ID, NAME, REMARK)
values (46, 24, '太原网调管理员', '太原网调管理员');
insert into ROLE_INFO (ROLE_ID, ORGAN_ID, NAME, REMARK)
values (69, 85, '网调中心管理员', '网调中心管理员');
insert into ROLE_INFO (ROLE_ID, ORGAN_ID, NAME, REMARK)
values (67, 81, '晋中管理员', '晋中管理员');
insert into ROLE_INFO (ROLE_ID, ORGAN_ID, NAME, REMARK)
values (68, 34, '大同网管业务分析', '大同网管业务分析');
insert into ROLE_INFO (ROLE_ID, ORGAN_ID, NAME, REMARK)
values (86, 26, '省网管管理员', '省网管管理员');
insert into ROLE_INFO (ROLE_ID, ORGAN_ID, NAME, REMARK)
values (4, 1, '太原管理员', '-太原管理员');
insert into ROLE_INFO (ROLE_ID, ORGAN_ID, NAME, REMARK)
values (41, 2, '大同管理员', '大同管理员');
insert into ROLE_INFO (ROLE_ID, ORGAN_ID, NAME, REMARK)
values (61, 32, '大同激活测试管理员', '大同激活测试管理员');
insert into ROLE_INFO (ROLE_ID, ORGAN_ID, NAME, REMARK)
values (82, 81, '测试', '测试');
insert into ROLE_INFO (ROLE_ID, ORGAN_ID, NAME, REMARK)
values (101, 22, '交换监控组', '-交换监控组');
insert into ROLE_INFO (ROLE_ID, ORGAN_ID, NAME, REMARK)
values (8, 36, 'dafd打通', '打通');
insert into ROLE_INFO (ROLE_ID, ORGAN_ID, NAME, REMARK)
values (11111131, 74, '123', null);
insert into ROLE_INFO (ROLE_ID, ORGAN_ID, NAME, REMARK)
values (11111191, 13, '测试1', '测试角色');
insert into ROLE_INFO (ROLE_ID, ORGAN_ID, NAME, REMARK)
values (11111171, 11111231, '测试角色', null);
commit;
prompt 19 records loaded
prompt Loading ROLE_MENU_FUNC_INFO...
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (1, 110105);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (1, 120301);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (1, 120302);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (1, 120303);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (1, 123132);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (4, 110101);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (4, 110102);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (4, 110104);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (4, 110106);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (4, 110107);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (4, 110108);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (4, 130101);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (4, 130102);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (4, 130103);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (4, 130104);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (25, 100001);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (25, 100002);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (25, 100003);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (25, 100004);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (25, 120301);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (25, 120302);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (25, 120303);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 110101);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 110102);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 120101);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 120102);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 120103);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 120201);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 120202);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 120203);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 120301);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 120302);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 120303);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 120304);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 120305);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 120306);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 120601);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 120602);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 120603);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 120701);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 120702);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 120703);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 120801);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 120802);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 120803);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 120901);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 120902);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 120903);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 121001);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 121002);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 121003);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 121101);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 121102);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 121103);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 121104);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 121105);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 121106);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 121201);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 121202);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 121203);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 130101);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 130102);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 130103);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 130104);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (46, 300301);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 110101);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 110102);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 110106);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 120101);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 120102);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 120103);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 120201);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 120202);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 120203);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 120301);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 120302);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 120303);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 120304);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 120305);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 120306);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 120401);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 120402);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 120403);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 120501);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 120601);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 120602);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 120603);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 120701);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 120702);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 120703);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 120801);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 120802);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 120803);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 120901);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 120902);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 120903);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 121001);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 121002);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 121003);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 121101);
commit;
prompt 100 records committed...
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 121102);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 121103);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 121104);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 121105);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 121106);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 121201);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 121202);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 121203);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 121301);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 121302);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 121303);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 121401);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 121402);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 121403);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 130101);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 130102);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 130103);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 130104);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (67, 300301);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (68, 110101);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (68, 110102);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (68, 120101);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (68, 120201);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (68, 120202);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (69, 110101);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (69, 110102);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (69, 120801);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (69, 120802);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (69, 120803);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (69, 120901);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (69, 120902);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (69, 120903);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (69, 121001);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (69, 121002);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (69, 121003);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (69, 300301);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (86, 110101);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (86, 110102);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (86, 120101);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (86, 120102);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (86, 120103);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (86, 120201);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (86, 120202);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (86, 120203);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (86, 120301);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (86, 120302);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (86, 120303);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (86, 120304);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (86, 120305);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (86, 120306);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (86, 120601);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (86, 120602);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (86, 120603);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (86, 120701);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (86, 120702);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (86, 120703);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (86, 120801);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (86, 120802);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (86, 120803);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (86, 120901);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (86, 120902);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (86, 120903);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (86, 121101);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (86, 121102);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (86, 121103);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (86, 121104);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (86, 121105);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (86, 121106);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (86, 121201);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (86, 121202);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (86, 121203);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (86, 130101);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (86, 130102);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (86, 130103);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (86, 130104);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (86, 300301);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (162, 11);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (221, 110101);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (221, 110102);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (221, 120101);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (221, 120102);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (221, 120103);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (221, 120301);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (221, 120302);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (221, 120303);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (221, 120304);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (221, 120305);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (221, 120306);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (221, 120901);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (221, 120902);
insert into ROLE_MENU_FUNC_INFO (ROLE_ID, FUNCID)
values (221, 120903);
commit;
prompt 191 records loaded
prompt Loading ROLE_MENU_INFO...
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1, 26);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1, 27);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1, 46);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1, 69);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1, 86);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1, 221);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2, 4);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2, 46);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2, 69);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2, 86);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (21, 46);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (21, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (21, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (21, 69);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (21, 86);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (202, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (221, 4);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (261, 4);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (261, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (281, 4);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (282, 4);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1101, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1101, 4);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1101, 26);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1101, 27);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1101, 46);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1101, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1101, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1101, 69);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1101, 86);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1101, 101);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1101, 221);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1102, 4);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1102, 26);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1102, 27);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1102, 46);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1102, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1102, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1102, 69);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1102, 86);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1102, 101);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1102, 221);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1201, 4);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1201, 27);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1201, 46);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1201, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1201, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1201, 69);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1201, 86);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1201, 221);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1202, 4);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1202, 27);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1202, 46);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1202, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1202, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1202, 69);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1202, 86);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1202, 221);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1203, 46);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1203, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1203, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1203, 69);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1203, 86);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1203, 221);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1204, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1204, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1204, 221);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1205, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1205, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1205, 221);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1206, 46);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1206, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1206, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1206, 69);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1206, 86);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1206, 221);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1207, 46);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1207, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1207, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1207, 69);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1207, 86);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1207, 221);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1208, 25);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1208, 46);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1208, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1208, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1208, 69);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1208, 86);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1208, 221);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1209, 46);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1209, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1209, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1209, 69);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1209, 86);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1209, 221);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1210, 46);
commit;
prompt 100 records committed...
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1210, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1210, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1210, 69);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1210, 221);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1211, 46);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1211, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1211, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1211, 69);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1211, 86);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1211, 221);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1212, 46);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1212, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1212, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1212, 69);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1212, 86);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1212, 221);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1213, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1213, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1213, 221);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1214, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1214, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1214, 221);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1301, 4);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1301, 46);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1301, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1301, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1301, 69);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1301, 86);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1301, 221);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1302, 4);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1302, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1302, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1302, 86);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1302, 221);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1303, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1303, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1303, 221);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1304, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1304, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1304, 221);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1401, 4);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1401, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1401, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1401, 69);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1401, 86);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1401, 221);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1402, 4);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1402, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1402, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1402, 69);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1402, 86);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1402, 221);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1501, 4);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1501, 26);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1501, 27);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1501, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1501, 69);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1501, 162);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1501, 221);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1502, 4);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1502, 26);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1502, 27);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1502, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1502, 69);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1502, 162);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1502, 221);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1503, 4);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1503, 26);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1503, 27);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1503, 46);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1503, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1503, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1503, 69);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1503, 86);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1503, 162);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1503, 221);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1504, 4);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1504, 26);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1504, 27);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1504, 46);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1504, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1504, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1504, 69);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1504, 86);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1504, 162);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1504, 221);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1505, 4);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1505, 26);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1505, 27);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1505, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1505, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1505, 69);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1505, 86);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1505, 162);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1505, 221);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1510, 4);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1510, 82);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1601, 26);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1601, 27);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1601, 46);
commit;
prompt 200 records committed...
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1601, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1601, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1601, 69);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1601, 86);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1601, 162);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1601, 221);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (1607, 82);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2002, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2002, 46);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2002, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2002, 69);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2002, 86);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2002, 141);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2002, 201);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2002, 221);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2003, 41);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2003, 162);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2003, 201);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2003, 221);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2004, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2004, 4);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2004, 5);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2004, 46);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2004, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2004, 69);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2004, 86);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2004, 141);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2004, 201);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2004, 221);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2005, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2005, 5);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2005, 46);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2005, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2005, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2005, 69);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2005, 86);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2005, 141);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2005, 201);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2005, 221);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2006, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2006, 4);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2006, 5);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2006, 26);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2006, 27);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2006, 46);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2006, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2006, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2006, 69);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2006, 86);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2006, 141);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2006, 201);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2006, 221);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2007, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2007, 5);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2007, 46);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2007, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2007, 86);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2007, 141);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2007, 201);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2007, 221);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2009, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2009, 4);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2009, 5);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2009, 26);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2009, 27);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2009, 46);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2009, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2009, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2009, 69);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2009, 86);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2009, 162);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2009, 221);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2011, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2011, 4);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2011, 5);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2011, 25);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2011, 26);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2011, 27);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2011, 41);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2011, 46);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2011, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2011, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2011, 69);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2011, 86);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2011, 141);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2011, 201);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2012, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2012, 4);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2012, 5);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2012, 25);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2012, 26);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2012, 27);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2012, 41);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2012, 46);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2012, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2012, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2012, 69);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2012, 86);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2012, 141);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2012, 201);
commit;
prompt 300 records committed...
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2012, 221);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2013, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2013, 5);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2013, 141);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (2013, 221);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3003, 46);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3003, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3003, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3003, 69);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3003, 86);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3003, 221);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3042, 162);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3160, 46);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3160, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3160, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3160, 69);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3160, 86);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3161, 46);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3161, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3161, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3161, 69);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3162, 46);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3162, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3162, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3162, 69);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3162, 86);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3163, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3164, 46);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3164, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3164, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3164, 69);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3164, 86);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3165, 46);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3165, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3165, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3165, 69);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3165, 86);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3166, 46);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3166, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3166, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3167, 46);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3167, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3167, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3167, 86);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3168, 46);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3168, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3168, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3168, 69);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3168, 86);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3169, 46);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3169, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3169, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3170, 46);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3170, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3170, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3170, 86);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3171, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3172, 46);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3172, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3172, 68);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3172, 86);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3301, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (3301, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (12345, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111131, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111131, 25);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111172, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111172, 5);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111172, 25);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111172, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111172, 11111131);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111172, 11111171);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111172, 11111191);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111173, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111173, 25);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111174, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111174, 25);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111175, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111175, 25);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111176, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111176, 5);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111176, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111176, 11111131);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111176, 11111171);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111176, 11111191);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111191, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111191, 25);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111192, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111192, 25);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111212, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111212, 25);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111231, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111231, 25);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111251, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111251, 25);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111251, 67);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111252, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111252, 25);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111253, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111253, 25);
commit;
prompt 400 records committed...
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111254, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111254, 25);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111271, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111271, 25);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111272, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111272, 25);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111332, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111333, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111334, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111336, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111337, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111338, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111340, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111341, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111391, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111411, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111492, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111511, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111531, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111531, 5);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111531, 11111191);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111551, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111571, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111591, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111591, 25);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111592, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111592, 25);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111611, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111631, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111651, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111671, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111671, 5);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111692, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111711, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111711, 5);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111732, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111751, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111771, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111791, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111811, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111831, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111852, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111853, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111854, 1);
insert into ROLE_MENU_INFO (MENU_ID, ROLE_ID)
values (11111871, 1);
commit;
prompt 445 records loaded
prompt Loading ROLE_POWER_INFO...
prompt Table is empty
prompt Loading ROLE_TML...
prompt Table is empty
prompt Loading ROLE_USER_TYPE...
prompt Table is empty
prompt Loading ST_CONFIG...
insert into ST_CONFIG (CONFIG_ID, CONFIG_KEY, CONFIG_VALUE, CREATE_TIME, CREATOR, UPDATE_TIME, UPDATOR, DESCN, FILE_LOCATION)
values (2, 'SRP_CODE', '34.1111', to_date('11-04-2011 14:12:50', 'dd-mm-yyyy hh24:mi:ss'), null, to_date('16-04-2011 16:34:00', 'dd-mm-yyyy hh24:mi:ss'), null, 'srp区域信息', null);
insert into ST_CONFIG (CONFIG_ID, CONFIG_KEY, CONFIG_VALUE, CREATE_TIME, CREATOR, UPDATE_TIME, UPDATOR, DESCN, FILE_LOCATION)
values (22, 'SERV_REPORT_WS_URL', 'http://192.168.20.28:9081/oip/wsservice/servReportSCService?wsdl', to_date('12-04-2011 14:37:02', 'dd-mm-yyyy hh24:mi:ss'), null, to_date('16-04-2011 19:27:44', 'dd-mm-yyyy hh24:mi:ss'), null, '跨域服务上报接口', null);
insert into ST_CONFIG (CONFIG_ID, CONFIG_KEY, CONFIG_VALUE, CREATE_TIME, CREATOR, UPDATE_TIME, UPDATOR, DESCN, FILE_LOCATION)
values (9, 'HEAR_BEAT_REPORT_URL', 'http://192.168.20.28:9081/oip/wsservice/beatHeartService?wsdl', to_date('11-04-2011 20:46:53', 'dd-mm-yyyy hh24:mi:ss'), null, to_date('17-04-2011 15:14:54', 'dd-mm-yyyy hh24:mi:ss'), null, '心跳包上报接口', null);
insert into ST_CONFIG (CONFIG_ID, CONFIG_KEY, CONFIG_VALUE, CREATE_TIME, CREATOR, UPDATE_TIME, UPDATOR, DESCN, FILE_LOCATION)
values (5, 'PROTOCOL_FILE_SAVE_PATH', '/home/tsaip/protocolFile', to_date('11-04-2011 16:10:36', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '协议文档存放位置', null);
insert into ST_CONFIG (CONFIG_ID, CONFIG_KEY, CONFIG_VALUE, CREATE_TIME, CREATOR, UPDATE_TIME, UPDATOR, DESCN, FILE_LOCATION)
values (8, 'SRP_REPORT_WS_URL', 'http://192.168.20.28:9081/oip/wsservice/reportService?wsdl', to_date('11-04-2011 20:38:51', 'dd-mm-yyyy hh24:mi:ss'), null, to_date('16-04-2011 19:25:53', 'dd-mm-yyyy hh24:mi:ss'), null, 'srp上报地址', null);
insert into ST_CONFIG (CONFIG_ID, CONFIG_KEY, CONFIG_VALUE, CREATE_TIME, CREATOR, UPDATE_TIME, UPDATOR, DESCN, FILE_LOCATION)
values (1, 'SYS_NAME', '中国电信OIP应用集成平台', to_date('11-04-2011 14:10:49', 'dd-mm-yyyy hh24:mi:ss'), null, to_date('11-04-2011 19:49:14', 'dd-mm-yyyy hh24:mi:ss'), null, '平台名称', null);
commit;
prompt 6 records loaded
prompt Loading ST_FLOW_BUSITYPE...
insert into ST_FLOW_BUSITYPE (BUSITYPEID, CREATETIME, CREATOR, UPDATETIME, UPDATOR, ISLEAF, NAME, PARENTID, THESORT, CODE)
values (101, to_date('11-03-2011 14:02:10', 'dd-mm-yyyy hh24:mi:ss'), null, to_date('11-03-2011 14:02:55', 'dd-mm-yyyy hh24:mi:ss'), null, '1', 'asdfaddd', 12, 11, 'fadf');
insert into ST_FLOW_BUSITYPE (BUSITYPEID, CREATETIME, CREATOR, UPDATETIME, UPDATOR, ISLEAF, NAME, PARENTID, THESORT, CODE)
values (16, null, null, to_date('11-03-2011 13:57:39', 'dd-mm-yyyy hh24:mi:ss'), null, '1', '服务查询类', 5, 1, 'serv_search');
insert into ST_FLOW_BUSITYPE (BUSITYPEID, CREATETIME, CREATOR, UPDATETIME, UPDATOR, ISLEAF, NAME, PARENTID, THESORT, CODE)
values (3, to_date('30-11-2010 15:15:14', 'dd-mm-yyyy hh24:mi:ss'), null, to_date('30-11-2010 15:22:53', 'dd-mm-yyyy hh24:mi:ss'), null, '1', '类型21', 3, 21, 'code21');
insert into ST_FLOW_BUSITYPE (BUSITYPEID, CREATETIME, CREATOR, UPDATETIME, UPDATOR, ISLEAF, NAME, PARENTID, THESORT, CODE)
values (121, to_date('17-03-2011 17:06:55', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '1', 'dd', 0, 2, 'dd');
insert into ST_FLOW_BUSITYPE (BUSITYPEID, CREATETIME, CREATOR, UPDATETIME, UPDATOR, ISLEAF, NAME, PARENTID, THESORT, CODE)
values (8, to_date('30-11-2010 15:47:11', 'dd-mm-yyyy hh24:mi:ss'), null, to_date('30-11-2010 15:43:50', 'dd-mm-yyyy hh24:mi:ss'), null, '0', '测试4', 0, 33, 'code3');
insert into ST_FLOW_BUSITYPE (BUSITYPEID, CREATETIME, CREATOR, UPDATETIME, UPDATOR, ISLEAF, NAME, PARENTID, THESORT, CODE)
values (12, null, null, to_date('11-03-2011 09:50:38', 'dd-mm-yyyy hh24:mi:ss'), null, '0', '测试44', 8, 3, 'code44');
insert into ST_FLOW_BUSITYPE (BUSITYPEID, CREATETIME, CREATOR, UPDATETIME, UPDATOR, ISLEAF, NAME, PARENTID, THESORT, CODE)
values (15, null, null, to_date('11-03-2011 13:58:18', 'dd-mm-yyyy hh24:mi:ss'), null, '1', '信息查询类', 5, 2, 'info_search');
insert into ST_FLOW_BUSITYPE (BUSITYPEID, CREATETIME, CREATOR, UPDATETIME, UPDATOR, ISLEAF, NAME, PARENTID, THESORT, CODE)
values (5, null, null, to_date('11-03-2011 13:59:02', 'dd-mm-yyyy hh24:mi:ss'), null, '0', '查询类', 0, 2, 'search');
commit;
prompt 8 records loaded
prompt Loading ST_FLOW_BUSIPROCESS...
insert into ST_FLOW_BUSIPROCESS (BUSIPROCESSID, BUSITYPEID, DESCN, FLOWNAME, TYPE, CREATETIME, CREATOR, UPDATETIME, UPDATOR)
values (81, 101, 'asdf', 'asd', 'flow', to_date('11-03-2011 14:03:26', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into ST_FLOW_BUSIPROCESS (BUSIPROCESSID, BUSITYPEID, DESCN, FLOWNAME, TYPE, CREATETIME, CREATOR, UPDATETIME, UPDATOR)
values (21, 15, '流程描述', '查询信息', 'flow', null, null, to_date('02-12-2010 10:51:17', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into ST_FLOW_BUSIPROCESS (BUSIPROCESSID, BUSITYPEID, DESCN, FLOWNAME, TYPE, CREATETIME, CREATOR, UPDATETIME, UPDATOR)
values (82, 101, 'asdfadsfad', 'afasdf', 'flow', to_date('11-03-2011 15:06:55', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into ST_FLOW_BUSIPROCESS (BUSIPROCESSID, BUSITYPEID, DESCN, FLOWNAME, TYPE, CREATETIME, CREATOR, UPDATETIME, UPDATOR)
values (48, 16, '订单类', '服务查询', 'flow', to_date('22-02-2011 15:13:31', 'dd-mm-yyyy hh24:mi:ss'), null, to_date('22-02-2011 15:12:27', 'dd-mm-yyyy hh24:mi:ss'), null);
commit;
prompt 4 records loaded
prompt Loading USER_INFO...
insert into USER_INFO (USER_ID, ORGAN_ID, NAME, PASSWORD, SEX, PHONE, MODILE, EMAIL, LAST_LOGIN_TIME, LIMIT_TIME_TYPE, LIMIT_TIME, DEL_FLAG, REMARK)
values ('12345', 11111251, 'ceshi', 'SZsqcMLbvdffg', 0, '1111111', null, null, null, 0, null, 0, '1111');
insert into USER_INFO (USER_ID, ORGAN_ID, NAME, PASSWORD, SEX, PHONE, MODILE, EMAIL, LAST_LOGIN_TIME, LIMIT_TIME_TYPE, LIMIT_TIME, DEL_FLAG, REMARK)
values ('ggg', 11111251, 'gggg', 'SZsqcMLbvdffg', 0, null, null, null, null, 0, null, 0, null);
insert into USER_INFO (USER_ID, ORGAN_ID, NAME, PASSWORD, SEX, PHONE, MODILE, EMAIL, LAST_LOGIN_TIME, LIMIT_TIME_TYPE, LIMIT_TIME, DEL_FLAG, REMARK)
values ('byli', 13, '000000', 'SZsqcMLbvdffg', 0, null, null, null, null, 0, null, 0, null);
insert into USER_INFO (USER_ID, ORGAN_ID, NAME, PASSWORD, SEX, PHONE, MODILE, EMAIL, LAST_LOGIN_TIME, LIMIT_TIME_TYPE, LIMIT_TIME, DEL_FLAG, REMARK)
values ('ls', 11111251, 'lsen', 'SZsqcMLbvdffg', 0, null, null, null, null, 0, null, 0, null);
insert into USER_INFO (USER_ID, ORGAN_ID, NAME, PASSWORD, SEX, PHONE, MODILE, EMAIL, LAST_LOGIN_TIME, LIMIT_TIME_TYPE, LIMIT_TIME, DEL_FLAG, REMARK)
values ('hhh', 11111251, 'hhhh', 'SZsqcMLbvdffg', 0, null, null, null, null, 0, null, 0, null);
insert into USER_INFO (USER_ID, ORGAN_ID, NAME, PASSWORD, SEX, PHONE, MODILE, EMAIL, LAST_LOGIN_TIME, LIMIT_TIME_TYPE, LIMIT_TIME, DEL_FLAG, REMARK)
values ('aa', 11111251, 'aa', 'SZsqcMLbvdffg', 0, null, null, null, null, 0, null, 0, null);
insert into USER_INFO (USER_ID, ORGAN_ID, NAME, PASSWORD, SEX, PHONE, MODILE, EMAIL, LAST_LOGIN_TIME, LIMIT_TIME_TYPE, LIMIT_TIME, DEL_FLAG, REMARK)
values ('telstar1', 13, '恒星测试', 'SZsqcMLbvdffg', 0, '1234567', '13645510346', '1@qq.com', null, 0, null, 0, 'beizhu');
insert into USER_INFO (USER_ID, ORGAN_ID, NAME, PASSWORD, SEX, PHONE, MODILE, EMAIL, LAST_LOGIN_TIME, LIMIT_TIME_TYPE, LIMIT_TIME, DEL_FLAG, REMARK)
values ('telstar', 11111231, '科大恒星', 'r.BF8RVw56BOA', 0, '0551', '15255459836', 'si@163.com', null, 0, null, 0, 'sss');
insert into USER_INFO (USER_ID, ORGAN_ID, NAME, PASSWORD, SEX, PHONE, MODILE, EMAIL, LAST_LOGIN_TIME, LIMIT_TIME_TYPE, LIMIT_TIME, DEL_FLAG, REMARK)
values ('dingzy', 12, 'ding.zhenyuan', 'SZsqcMLbvdffg', 0, '132123', null, null, null, 0, null, 0, null);
insert into USER_INFO (USER_ID, ORGAN_ID, NAME, PASSWORD, SEX, PHONE, MODILE, EMAIL, LAST_LOGIN_TIME, LIMIT_TIME_TYPE, LIMIT_TIME, DEL_FLAG, REMARK)
values ('12121', 11111251, '12', 'SZsqcMLbvdffg', 0, null, null, null, null, 0, null, 0, null);
insert into USER_INFO (USER_ID, ORGAN_ID, NAME, PASSWORD, SEX, PHONE, MODILE, EMAIL, LAST_LOGIN_TIME, LIMIT_TIME_TYPE, LIMIT_TIME, DEL_FLAG, REMARK)
values ('wyan', 13, 'wyan', '3Gspx.GN/hoJE', 0, null, null, null, null, 0, null, 0, null);
insert into USER_INFO (USER_ID, ORGAN_ID, NAME, PASSWORD, SEX, PHONE, MODILE, EMAIL, LAST_LOGIN_TIME, LIMIT_TIME_TYPE, LIMIT_TIME, DEL_FLAG, REMARK)
values ('ssss', 11111251, 's', 'SZsqcMLbvdffg', 0, null, null, null, null, 0, null, 0, null);
insert into USER_INFO (USER_ID, ORGAN_ID, NAME, PASSWORD, SEX, PHONE, MODILE, EMAIL, LAST_LOGIN_TIME, LIMIT_TIME_TYPE, LIMIT_TIME, DEL_FLAG, REMARK)
values ('inas01', 13, '科大恒星', '3Gspx.GN/hoJE', 0, '0551-5396793', '13555555123', 'aip@starit.com.cn', null, 0, null, 0, null);
insert into USER_INFO (USER_ID, ORGAN_ID, NAME, PASSWORD, SEX, PHONE, MODILE, EMAIL, LAST_LOGIN_TIME, LIMIT_TIME_TYPE, LIMIT_TIME, DEL_FLAG, REMARK)
values ('1234', 11111251, 'ces', 'SZsqcMLbvdffg', 0, '1111111', '15211111111', '11111111@162.com', null, 0, null, 0, '1111111');
insert into USER_INFO (USER_ID, ORGAN_ID, NAME, PASSWORD, SEX, PHONE, MODILE, EMAIL, LAST_LOGIN_TIME, LIMIT_TIME_TYPE, LIMIT_TIME, DEL_FLAG, REMARK)
values ('tsaip', 13, 'tsaip', 'SZsqcMLbvdffg', 0, '1333', '13523434343', 'guo@163.com', null, 1, to_date('29-01-2011', 'dd-mm-yyyy'), 0, 'ddd');
insert into USER_INFO (USER_ID, ORGAN_ID, NAME, PASSWORD, SEX, PHONE, MODILE, EMAIL, LAST_LOGIN_TIME, LIMIT_TIME_TYPE, LIMIT_TIME, DEL_FLAG, REMARK)
values ('aaaa', 13, 'aaaa', 'SZsqcMLbvdffg', 0, null, null, null, null, 0, null, 0, null);
commit;
prompt 16 records loaded
prompt Loading USER_ROLE_INFO...
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('0000001', 27);
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('0100001', 4);
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('0100001', 46);
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('0100001', 86);
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('0100002', 101);
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('0100006', 46);
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('0100999', 86);
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('0200022', 68);
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('0400001', 67);
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('0400001', 82);
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('0400015', 69);
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('1234', 1);
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('1234', 5);
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('aaaa', 1);
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('aaaa', 5);
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('aaaa', 25);
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('dingzy', 1);
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('ggg', 1);
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('ggg', 5);
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('guolimin', 1);
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('hhh', 1);
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('hhh', 5);
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('huanghui', 66);
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('inas01', 1);
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('inas01', 5);
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('inas01', 25);
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('inas02', 1);
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('inas02', 221);
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('inas10', 4);
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('jlsu', 1);
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('lbl', 1);
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('long', 46);
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('ssss', 1);
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('ssss', 5);
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('telstar', 1);
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('telstar', 5);
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('telstar', 11111171);
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('telstar1', 11111191);
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('test', 4);
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('tsaip', 1);
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('wyan', 11111191);
insert into USER_ROLE_INFO (USER_ID, ROLE_ID)
values ('zxzhang', 1);
commit;
prompt 42 records loaded
set feedback on
set define on
prompt Done.
