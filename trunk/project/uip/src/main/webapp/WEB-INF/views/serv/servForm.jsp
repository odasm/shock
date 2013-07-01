<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<html>
<head>
<title>服务管理</title>
<script>
	$(document).ready(function() {
		$("#web-tab").addClass("active");
	});
</script>
<script>
	$(document).ready(function() {
		//聚焦第一个输入框
		$("#serv_name").focus();
		//$(".myInput").click(function() {
		//	$(this).value = "";
		//});
		//为inputForm注册validate函数
		//$("#inputForm").validate();
	});
</script>
<script>
	function changeTemplate() {
		var selectTemplateId = document.getElementById("templates").value;
		selectTemplateId = "template_" + selectTemplateId;
		var selectTemplate = document.getElementById(selectTemplateId).value;
		document.getElementById("varDefine").innerHTML = selectTemplate;
		//document.getElementById("varDefine").innerHTML='<input type="text" id="busi_address_1" name="busi_address_1" class="input-large" value="请输入业务地址" onfocus="hi()"/>';
	}
	function compute(){
		
	}
</script>



</head>

<body>
<h1>服务修改</h1>
	<form id="inputForm" action="${ctx}/service/${action}" method="post"
		class="form-horizontal">
		<input type="hidden" name="id" value="${service.id}" /> 
		  <input
			type="hidden" id="servDefine" name="servDefine"
			value="${service.define}" />
		<fieldset>
			<!--  <legend>
				<small>管理服务</small>
			</legend>-->
			<div class="control-group">
				<label for="serv_name" class="control-label">服务名称:</label>
				<div class="controls">
					<input type="text" id="serv_name" name="name"
						value="${service.name}" class="input-large required" minlength="3" />
				</div>
			</div>
			<div class="control-group">
				<label for="serv_code" class="control-label">服务编码:</label>
				<div class="controls">
					<input type="text" name="code" class="input-large"
						value="${service.code}" />
				</div>
			</div>
			<div class="control-group">
				<label for="serv_code" class="control-label">服务类型:</label>
				<div class="controls">
				<c:forEach items="${templates}" var="template">
					<input type="hidden" id="template_${template.id}"
								value='${template.template}' />
						</c:forEach>		
					<select id="templates" name="template.id" onchange='javascript:changeTemplate()'>
						<option selected value="0">请选择</option>
						<c:forEach items="${templates}" var="template">
							<option value="${template.id}">${template.name}</option>
							  
						</c:forEach>
					</select>
				</div>
			</div>
			<div class="control-group">
				<div class="control-group">
					<label class="control-label">详细服务定义:</label>
				</div>
				<div id="varDefine" class="controls"></div>
			</div>
			<div class="form-actions">
				<input id="submit_btn" class="btn btn-primary" type="submit"
					onsubmit="compute()" value="提交" />&nbsp; <input id="cancel_btn"
					class="btn" type="button" value="返回" onclick="history.back()" />
			</div>
		</fieldset>
	</form>
</body>
</html>
