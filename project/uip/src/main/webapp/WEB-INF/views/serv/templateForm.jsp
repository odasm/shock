<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
	<title>模板管理</title>
	
	<script>
		$(document).ready(function() {
			//聚焦第一个输入框
			$("#template_name").focus();
			//为inputForm注册validate函数
			$("#inputForm").validate();
		});
	</script>
</head>

<body>
	<form id="inputForm" action="${ctx}/template/${action}" method="post" class="form-horizontal">
		<input type="hidden" name="id" value="${template.id}"/>
		<fieldset>
			<legend><small>管理模板</small></legend>
			<div class="control-group">
				<label for="template_name" class="control-label">模板名称:</label>
				<div class="controls">
					<input type="text" id="template_name" name="name"  value="${template.name}" class="input-large required" minlength="3"/>
				</div>
			</div>	
			<div class="control-group">
				<label for="template_template" class="control-label">模板详细</label>
				<div class="controls">
					<textarea id="template_template" name="template" class="input-large">${template.template}</textarea>
				</div>
			</div>	
			<div class="form-actions">
				<input id="submit_btn" class="btn btn-primary" type="submit" value="提交"/>&nbsp;	
				<input id="cancel_btn" class="btn" type="button" value="返回" onclick="history.back()"/>
			</div>
		</fieldset>
	</form>
</body>
</html>
