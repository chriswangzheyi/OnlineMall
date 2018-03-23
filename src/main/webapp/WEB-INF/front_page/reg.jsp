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
<link rel="stylesheet" href="res/css/animate.min.css">
<link rel="stylesheet" href="res/css/main.css">
</head>
<body style="background-color: #F5F5F5;">
	<form action="front/reg.shtml" method="post">
	<section id="logo">
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<a href="index.html"> <!-- <img alt="" src="res/img/taurus.png" width="100" height="100"> -->
				</a>
			</div>
			<div class="col-sm-3"></div>

		</div>
	</section>

	<section id="reg">
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6 content">
				<h3>老牛商城账号注册</h3>
				<hr />
				<div class="row">
					<div class="col-sm-4"></div>
					<div class="col-sm-4">
						<input type="text" class="form-control " name="userPhone" placeholder="请输入账号(手机号)">
					</div>
					<div class="col-sm-4"></div>
				</div>
				<div class="row">
					<div class="col-sm-4"></div>
					<div class="col-sm-4">
						<input type="text" class="form-control "
							placeholder="请输入密码" name="userPw">
					</div>
					<div class="col-sm-4">
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4"></div>
					<div class="col-sm-4">
						<input type="text" class="form-control " name="userName" placeholder="请输入姓名">
					</div>
					<div class="col-sm-4"></div>
				</div>
				<div class="row">
					<div class="col-sm-4"></div>
					<div class="col-sm-4">
						<input type="submit" class="btn btn-info " value="立即注册">
					</div>
					<div class="col-sm-4"></div>
				</div>

			</div>
			<div class="col-sm-3"></div>
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
	</form>
</body>
</html>