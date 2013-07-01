<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<div id="leftbar" class="span2">
	<shiro:hasRole name="admin">
		<h1>系统管理</h1>
		<div class="submenu">
			<a id="account-tab" href="${ctx}/admin/user/">帐号管理</a>
		</div>
		<div class="submenu">
			<a id="template-tab" href="${ctx}/template/">服务注册模板管理</a>
		</div>
	</shiro:hasRole>
	<h1>我的服务</h1>
	<div class="submenu">
		<a id="web-tab" href="${ctx}/service/create">新建服务</a> 
		<a id="serv-tab" href="${ctx}/service/">服务管理</a> 
		<a id="message-tab" href="${ctx}/message/">消息监控</a>
	</div>
	<h1>服务使用</h1>
	<div class="submenu">
		<a id="persistence-tab" href="${ctx}/story/persistence">服务查找</a> <a
			id="cache-tab" href="${ctx}/story/cache">服务测试</a> <a id="jms-tab"
			href="${ctx}/story/jms">服务申请</a> <a id="jmx-tab"
			href="${ctx}/story/jmx">服务质量统计</a> <a id="jmx-tab"
			href="${ctx}/story/jmx">服务流量统计</a>

	</div>
</div>