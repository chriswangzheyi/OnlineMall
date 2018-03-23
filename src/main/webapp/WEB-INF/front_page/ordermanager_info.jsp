<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>    
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="res/css/bootstrap.css">
<link rel="stylesheet" href="res/css/animate.min.css">
<link rel="stylesheet" href="res/css/main.css">
</head>
<body>
<h4>订单管理</h4>
	<hr />
	<table class="table">
		<tr>
			<th>订单编号</th>
			<th>订单时间</th>
				<th> 购买人</th>
			<th>收货人</th>
			<th>总金额</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${list }" var="om">
		<tr>
			<td>${om.order_id }</td>
			<td>${om.order_time }</td>
			<td>${om.user_name }</td>
			<td>${om.consignee_name }</td>
			<td>${om.order_total }</td>
			<td><a href="javascript:void(0)" onclick="load('adminorder/detailslist.shtml?orderId=${om.order_id}')">详情</a></td>
		</tr>
		</c:forEach>		
	</table>
</body>
</html>