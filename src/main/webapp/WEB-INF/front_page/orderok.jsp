<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>    
<!DOCTYPE html >
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<title>购物车</title>
<link rel="stylesheet" href="res/css/bootstrap.css">
<link rel="stylesheet" href="res/css/animate.min.css">
<link rel="stylesheet" href="res/css/main.css">
</head>
<body>
	<jsp:include page="head.jsp"></jsp:include>

	<section id="nav">
		<div class="container">
			<div class="row">
				<div class="col-sm-1"></div>
				<div class="col-sm-3">
					<a class="btn btn-default">第一步 我的购物车</a>
				</div>
				<div class="col-sm-3">
					<a class="btn btn-default">第二步 填写核对订单信息</a>
				</div>
				<div class="col-sm-3">
					<a class="btn btn-primary">第三步 成功提交订单</a>
				</div>
				<div class="col-sm-1"></div>
			</div>
		</div>
	</section>
	<hr />

	<section id="orderok">
		<div class="container">
			<div class="col-sm-2"></div>
			<div class="col-sm-8">
				<div class="ok" style="display: ${info=='yes'?'block':'none'};">
					<h1 ><span class="glyphicon glyphicon-ok"></span>下单成功</h1>
					<p>您现在可以去：<a href="adminorder/showorder.shtml">查看订单</a></p>
				</div>
				<div class="ok" style="display: ${info=='no'?'block':'none'};">
					<h1  style="color: red;">下单失败</h1>
					
				</div>
			</div>
			<div class="col-sm-2"></div>
		</div>
	</section>




	<footer>
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<p>版权所有：老牛</p>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>