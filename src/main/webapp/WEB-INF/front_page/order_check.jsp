<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
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
<jsp:include page="head.jsp"></jsp:include>
<section id="nav">
		<div class="container">
			<div class="row">
				<div class="col-sm-1"></div>
				<div class="col-sm-3">
					<a class="btn btn-default">第一步 我的购物车</a>
				</div>
				<div class="col-sm-3">
					<a class="btn btn-primary">第二步 填写核对订单信息</a>
				</div>
				<div class="col-sm-3">
					<a class="btn btn-default">第三步 成功提交订单</a>
				</div>
				<div class="col-sm-1"></div>
			</div>
		</div>
	</section>
	<hr />
	<form action="adminorder/addorder.shtml" method="post">
	<section id="shoppingcart">
		<div class="container">
			<hr />
			<h4>收货人信息</h4>
				<div class="row">
					<table class="table">
						<tr>
							<th></th>
							<th>姓名</th>
							<th>地址</th>
							<th>电话</th>
						</tr>
						<c:forEach items="${consigeelist }" var="con">
							<tr>
								<td>
								
								<input type="radio" name="consigneeId" value="${con.consignee_id }"></td>
							<td>${con.consignee_name }</td>
							<td>${con.consignee_address }</td>
							<td>${con.consignee_phone }</td>
							</tr>
						</c:forEach>
					</table>
					
				</div>
			<hr />
			<h4>送货清单</h4>
			<table class="table">
				<tr>
					<th width="50%">商品</th>
					<th>单价（元）</th>
					<th>数量</th>
					<th>小计</th>
				</tr>
				<c:forEach items="${list }" var="od">
				<tr>
					<td>
					<input type="hidden" name="goodsinfos" value="${od.goodsId },${od.ordeNumber },${od.orderPrice}" />	
					<a href="goodsinfo.html"> <img src="${imgurl }${od.goodsUrl }">${od.goodsName }
					</a></td>
					<td>￥${od.orderPrice }</td>
					<td>${od.ordeNumber }</td>
					<td>￥${od.orderPrice*od.ordeNumber }</td>

				</tr>
				</c:forEach>

			</table>
			<hr />
			<div class="footer">
				<div class="row">
					<div class="col-sm-6">
						</a>
					</div>
					<div class="col-sm-6" align="right">
						共<span style="color: red;">${num }
							
						</span>件商品 &nbsp; 应付总额：<span
							class="price">￥${sum }</span> 
							<input type="hidden" name="orderTotal" value="${sum }"/>
							<input type="submit"
							class="btn btn-danger" value="提交订单">
					</div>
				</div>

			</div>
			<hr />
		</div>

	</section>
</form>
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