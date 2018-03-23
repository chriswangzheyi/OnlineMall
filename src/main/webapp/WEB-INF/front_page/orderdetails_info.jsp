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
<h4>订单详情</h4>
	<hr />
	<table class="table">
		<tr>
			<th>订单编号</th>
			<th>商品名称</th>
			<th>订单时间</th>
			<th>订单数量</th>
			<th>商品单价</th>
			<th>商品总价</th>
		</tr>
		<c:forEach items="${list }" var="od">
		<tr>
			<td>${od.order_id }</td>
			<td>${od.goods_name}</td>
			<td>${od.order_time }</td>
			<td>${od.orde_number}</td>
			<td>${od.order_price }</td>
			<td>${od.order_price*od.orde_number }</td>
		</tr>
		</c:forEach>		
	</table>
</body>
</html>