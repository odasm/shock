<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<html>
<head>
<title>消息监控</title>
<script>
		$(document).ready(function() {
			$("#message-tab").addClass("active");
		});
	</script>
	
	<script>
	function xian(xx) {
		var messageId  = "message_" + xx;
		var result = document.getElementById(messageId).value;
		alert(result);
	}
	function yin(){
		document.getElementById("substr").innerHTML = "……";
	}
</script>
</head>

<body>
	<h1>消息监控</h1>
	<c:if test="${not empty message}">
		<div id="message" class="alert alert-success">
			<button data-dismiss="alert" class="close">×</button>
			${message}
		</div>
	</c:if>
	<h2><a href="${ctx}/message/delete">清除日志</a></h2>
	<table id="contentTable"
		class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>服务实例ID</th>
				<th>服务名称</th>
				<th>消息时间</th>
				<th>来源IP</th>
				<th>消息顺序</th>
				<th>详情</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${messages}" var="message">
				<tr>
					<td>${message.servInstanceId}</td>
					<td>${message.service.name}</td>
					<td><fmt:formatDate value="${message.createTime}"
							pattern="yyyy年MM月dd日  HH时mm分ss秒" /></td>
					<td>${message.fromIp}</td>
					<td>${message.orderId}</td>
					<input type="hidden" id="message_${message.id}"
								value='${message.message}' />
					<td><div onmouseover='javascript:xian("${message.id}")' onmouseout='javascript:yin()'><span id="substr">...<span></div></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>
