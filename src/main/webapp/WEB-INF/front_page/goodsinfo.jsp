<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>    
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

<section id="goodsinfo">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<img alt="" src="${imgurl}${goods.goods_url }" height="400" width="100%">
				</div>
				<div class="col-sm-6">
					<h1>${goods.goods_name }</h1>
					<p class="desc">
					${goods.goods_name }
					</p>
					<hr />
					<p class="price">￥${goods.goods_price }</p>
					<hr />
					<a class="btn btn-warning btn-lg">加入购物车</a><a
						class="btn btn-success btn-lg">直接购买</a>
				</div>
			</div>
		</div>
	</section>
	<section id="goodsdesc">
		<hr />
		<p class="title">详情描述</p>
		<hr />
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					${goods.goods_desc }
				</div>
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
</body>
</html>