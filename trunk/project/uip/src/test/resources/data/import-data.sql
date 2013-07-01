insert into uip_task (id, title, description, user_id) values(1, 'Study PlayFramework 2.0','http://www.playframework.org/', 2);
insert into uip_task (id, title, description, user_id) values(2, 'Study Grails 2.0','http://www.grails.org/', 2);
insert into uip_task (id, title, description, user_id) values(3, 'Try SpringFuse','http://www.springfuse.com/', 2);
insert into uip_task (id, title, description, user_id) values(4, 'Try Spring Roo','http://www.springsource.org/spring-roo', 2);
insert into uip_task (id, title, description, user_id) values(5, 'Release SpringSide 4.0','As soon as posibble.', 2);

insert into uip_user (id, login_name, name, password, salt, roles, register_date) values(1,'admin','Admin','691b14d79bf0fa2215f155235df5e670b64394cc','7efbd59d9741d34f','admin','2012-06-04 01:00:00');
insert into uip_user (id, login_name, name, password, salt, roles, register_date) values(2,'user','Calvin','2488aa0c31c624687bd9928e0a5d29e7d1ed520b','6d65d24122c30500','user','2012-06-04 02:00:00');


insert into uip_serv_template(id,name,template) values(1,'http服务同步透传','<span><label>请输入业务地址：</label><input type="text" id="busi_address_1" name="define" class="input-large" value=""/></span>');
insert into uip_serv_template(id,name,template) values(2,'http服务同步透传1','<div><span><label>业务地址:</label><input type="text" id="busi_0" name="define" value="请输入业务地址" /></span></div><div><span><label>代理地址:</label><input type="text" id="busi_1" name="busi_1" value="请输入代理地址" /></span></div><div><span><label>指定消息ID第一级xpath位置:</label><input type="text" id="busi_2" name="busi_2" value="请输入xpath表达式" /></span></div><div><span><label>指定消息ID第二级xpath位置:</label><input type="text" id="busi_3" name="busi_3" value="请输入xpath表达式" /></span></div><div><label>指定可访问IP及绑定的系统编码:</label> <span id="ip_serv_man"><input type="text" id="busi_3" name="busi_3" value="请输入IP" /><input type="text" id="busi_3" name="busi_3" value="请输入系统编码" /></span> <span><input type="button" value="+"/></span></div>');


insert into uip_service(id,name,code,define,template_id) values(1,'test','test','http://127.0.0.1:8080/uip/cxf/soap/accountservice',1);



					