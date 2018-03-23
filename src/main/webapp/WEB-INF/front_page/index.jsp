<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="cn.liu.utils.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	application.setAttribute("imgurl", Common.IMG_SERVER_URL);
%>
<%@taglib prefix="oscache" uri="http://www.opensymphony.com/oscache" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>老牛商城</title>
<link rel="stylesheet" href="res/css/bootstrap.css">
<link rel="stylesheet" href="res/css/animate.min.css">
<link rel="stylesheet" href="res/css/main.css">
</head>
<body> 
	<jsp:include page="head.jsp"></jsp:include>
	<oscache:cache time="2">
	<div id="myCarousel" class="carousel slide">
		<!-- 轮播（Carousel）指标 -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<!-- 轮播（Carousel）项目 -->
		<div class="carousel-inner">
			<div class="item active">
				<img src="res/img/1.jpg" alt="First slide">
				<div class="carousel-caption">
					<h3>老牛牌充电宝</h3>
					<p>老牛牌充电巨牛逼</p>
				</div>
			</div>
			<div class="item">
				<img src="res/img/2.jpg" alt="Second slide">
				<div class="carousel-caption">
					<h3>老牛牌充电宝</h3>
					<p>老牛牌充电巨牛逼</p>
				</div>
			</div>
			<div class="item">
				<img src="res/img/3.jpg" alt="Third slide">
				<div class="carousel-caption">
					<h3>老牛牌充电宝</h3>
					<p>老牛牌充电巨牛逼</p>
				</div>
			</div>
		</div>
		<!-- 轮播（Carousel）导航 -->
		<a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
		<a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
	</div>

	<section id="goods">
	<div class="container">
		<div class="row ">
			<c:forEach items="${goodslist }" var="goods">

				<div class="col-sm-3">
					<div class="cp wow fadeIn" data-wow-delay="1s">
						<img src="${imgurl}${goods.goods_url }">
						<h4 class="title">${goods.goods_name }</h4>
						<p class="desc">${goods.goods_name }</p>
						<p class="price">￥${goods.goods_price }</p>
						<a href="html/${goods.goods_id }.html" class="btn btn-primary">点击查看</a>
					</div>
				</div>
			</c:forEach>

		</div>
	</div>
	</section>

	<section id="contact">
	<div class="bg">
		<div class="container">
			<div class="row ">
				<div class="col-sm-6  wow fadeInLeft">
					<h2>
						<span class="glyphicon glyphicon-earphone"></span> 联系我们
					</h2>
					<p>
						老牛商城成立于XXXX年01月01日，主要业务充电宝、充电宝、充电宝、充电宝充电宝、充电宝、充电宝、充电宝、充电宝、充电宝</p>
					<address>
						<p>
							<span class="glyphicon glyphicon-home"></span>
							重庆XXXXX街XXX路纳尼亚大厦23-6
						</p>
						<p>
							<span class="glyphicon glyphicon-phone-alt"></span>
							联系电话：023-706xxxxxx
						</p>
						<p>
							<span class="glyphicon glyphicon-envelope"></span>
							电子邮件：363130002@qq.com
						</p>
					</address>

				</div>
				<div class="col-sm-6  wow fadeInRight">
					<form method="post">
						<div class="col-md-6">
							<input type="text" class="form-control" placeholder="请输入您的姓名">
						</div>
						<div class="col-md-6">
							<input type="text" class="form-control" placeholder="请输入您的电子邮件">
						</div>
						<div class="col-md-12">
							<input type="text" class="form-control" placeholder="标题">
						</div>
						<div class="col-md-12">
							<textarea placeholder="留言内容" rows="4" class="form-control"></textarea>
						</div>
						<div class="col-md-8">
							<input type="submit" value="提交信息" class="form-control">
						</div>
					</form>


				</div>
			</div>
		</div>
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
	<script type="text/javascript" src="res/js/jquery.min.js"></script>
	<script type="text/javascript" src="res/js/bootstrap.js"></script>
	<script type="text/javascript" src="res/js/wow.min.js"></script>
	<script type="text/javascript">
		new WOW().init();
	</script>
	</oscache:cache>
</body>
</html>