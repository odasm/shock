delete from bndict_t_busintype;

commit;
insert into bndict_t_busintype (BUSINTYPEID, BUSINTYPENAME)
values ('DEL_FLAG', '删除标志位');

insert into bndict_t_busintype (BUSINTYPEID, BUSINTYPENAME)
values ('SERV_PROBE_FLAG', '服务探针标志');

insert into bndict_t_busintype (BUSINTYPEID, BUSINTYPENAME)
values ('VERSION_STATE', '版本状态');

insert into bndict_t_busintype (BUSINTYPEID, BUSINTYPENAME)
values ('sex', '性别');

insert into bndict_t_busintype (BUSINTYPEID, BUSINTYPENAME)
values ('zhiwei', '职位');

insert into bndict_t_busintype (BUSINTYPEID, BUSINTYPENAME)
values ('PARA_TYPE', '参数类型');

insert into bndict_t_busintype (BUSINTYPEID, BUSINTYPENAME)
values ('BNDICT_education  ', '学历');

insert into bndict_t_busintype (BUSINTYPEID, BUSINTYPENAME)
values ('SERVICE_STATE', '服务状态');

insert into bndict_t_busintype (BUSINTYPEID, BUSINTYPENAME)
values ('IS_SUCCESS', '是否成功');

insert into bndict_t_busintype (BUSINTYPEID, BUSINTYPENAME)
values ('REASON_FLAG', '原因标识');

insert into bndict_t_busintype (BUSINTYPEID, BUSINTYPENAME)
values ('CTRL_TYPE', '服务控制类型');

insert into bndict_t_busintype (BUSINTYPEID, BUSINTYPENAME)
values ('SERV_TYPE', '服务消息类型');

insert into bndict_t_busintype (BUSINTYPEID, BUSINTYPENAME)
values ('ALARM_TYPE', '告警类型');

insert into bndict_t_busintype (BUSINTYPEID, BUSINTYPENAME)
values ('ALARM_CONTENT', '告警内容');

insert into bndict_t_busintype (BUSINTYPEID, BUSINTYPENAME)
values ('IS_VALID', '版本是否有效');

commit;
