<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<html>
<head>
<title>服务管理</title>
<script>
	$(document).ready(function() {
		$("#serv-tab").addClass("active");
	});
</script>
</head>

<body>
	<h1>服务管理</h1>

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
				<th>服务名称</th>
				<th>服务编码</th>
				<th>服务定义</th>
				<th>管理</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${services.content}" var="service">
				<tr>
					<td>${service.name}</td>
					<td>${service.code}</td>
					<td>${service.define}</td>
					<td><a href="${ctx}/service/delete/${service.id}">删除</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<tags:pagination page="${services}" paginationSize="5" />

	<div>
		<a class="btn" href="${ctx}/service/create">创建服务</a>
	</div>
</body>
</html>
