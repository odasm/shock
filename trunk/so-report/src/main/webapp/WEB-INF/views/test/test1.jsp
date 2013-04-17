<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
	<title>运营日报</title>
</head>

<body>
	
	
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead><tr><th>任务</th><th>管理</th></tr></thead>
		<tbody>
			<tr>
				<td>xx</td>
				<td>${test}</td>
			</tr>
		</tbody>
	</table>
	
	<div><a class="btn" href="${ctx}/task/create">发送日报</a></div>
</body>
</html>
