<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<html>
<head>
<title>服务注册模板管理</title>
<script>
		$(document).ready(function() {
			$("#template-tab").addClass("active");
		});
	</script>
</head>

<body>
	<h1>服务注册模板管理</h1>
	
	<c:if test="${not empty message}">
		<div id="message" class="alert alert-success">
			<button data-dismiss="alert" class="close">×</button>
			${message}
		</div>
	</c:if>
	<div class="row">
		<div class="offset6">
			<form class="form-search" action="#">
				<label>名称：</label> <input type="text" name="search_LIKE_name"
					class="input-medium" value="${param.search_LIKE_name}">
				<button type="submit" class="btn" id="search_btn">Search</button>
			</form>
		</div>
		<tags:sort />
	</div>

	<table id="contentTable"
		class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>模板名称</th>
				<th>模板详细</th>
				<th>管理</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${templates.content}" var="template">
				<tr>
					<td><a href="${ctx}/template/update/${template.id}">${template.name}</a></td>
					<td><a href="${ctx}/template/update/${template.id}">${template.template}</a></td>
					<td><a href="${ctx}/template/delete/${template.id}">删除</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<tags:pagination page="${templates}" paginationSize="5" />

	<div>
		<a class="btn" href="${ctx}/template/create">创建服务注册模板</a>
	</div>
</body>
</html>
