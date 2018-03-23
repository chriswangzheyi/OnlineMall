<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cn.liu.croe.bean.UserInfo"%>
   
<html>
<head>

<body>
	<section id="navbar"> <nav
		class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs" aria-expanded="false">
				<span class="sr-only"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="front/list.shtml">老牛商城</a>
		</div>
		<div class="collapse navbar-collapse" id="bs">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="front/list.shtml">首页</a></li>
				<% UserInfo userInfo = (UserInfo)session.getAttribute("userInfo");
					if(userInfo!=null){
				%>
					<li><a>欢迎您，<%=userInfo.getUserName() %></a></li>
						<li ><a href="adminorder/showorder.shtml" >我的订单</a>
				<%}else{ %>
				<li><a href="front/loadlogin.shtml">用户登录 </a></li>
				<li><a href="front/loadreg.shtml">用户注册</a></li>
				<%} %>
				<li><a href="front/showcart.shtml"><span
						class="glyphicon glyphicon-shopping-cart"></span> 购物车</a></li>
			</ul>
		</div>
	</div>
	</nav> </section>
</body>
</html>