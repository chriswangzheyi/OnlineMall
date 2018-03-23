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
<title>Insert title here</title>
<link rel="stylesheet" href="res/css/bootstrap.css">
<link rel="stylesheet" href="res/css/main.css">
</head>
<body style="background-color: #F5F5F5;">
<form action="front/login.shtml" method="post">
	<section id="login">
		<div class="container">
			<div class="row">
				<div class="col-sm-3"></div>
				<div class="col-sm-6">
					<p align="center">
						<img alt="" src="res/img/taurus.png">
					</p>
					<h1>一个帐号，购买所有的充电宝</h1>
					<div align="center" style="font-size: 30px;color: green;">${info }</div>
					<div align="center" style="font-size: 30px;color: red;">${logininfo }</div>
					<div class="row input">
						<div class="col-sm-3"></div>
						<div class="col-sm-6">
							<input type="text" class="form-control input-lg" name="userPhone" placeholder="请输入账号(手机号)">
						</div>
						<div class="col-sm-3"></div>
					</div>
					<div class="row input">
						<div class="col-sm-3"></div>
						<div class="col-sm-6">
							<input type="text" class="form-control input-lg" name="userPw" placeholder="请输入密码">
						</div>
						<div class="col-sm-3"></div>
					</div>
					<div class="row input">
						<div class="col-sm-3"></div>
						<div class="col-sm-6">
							<input type="submit" value="立即登录" class=" btn btn-danger btn-lg"/>
							<a href="front/loadreg.shtml" class=" btn btn-success btn-lg">免费注册</a>
						</div>
						<div class="col-sm-3"></div>
					</div>
				</div>
				<div class="col-sm-3"></div>
			</div>
		</div>
	</section>

	<footer>
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<p>版权所有：wang zheyi</p>
				</div>
			</div>
		</div>
	</footer>
	</form>
</body>
</html>