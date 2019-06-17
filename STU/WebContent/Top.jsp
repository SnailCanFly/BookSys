<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>图书借阅管理系统</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
	<link rel="stylesheet" href="bootstrap/bootstrap.min.css">
	<script src="js/jquery-3.3.1.min.js"></script>  
	<script src="bootstrap/bootstrap.min.js"></script>
	


<style type="text/css">
	body{
	align-content: center;
}
.top{
				width:auto;
				height: 50px;
				margin: 0 auto;
				
			}
			.left{
				width:300px;
				height: 50px;
			
				margin: 0 auto;
				padding-top:10px;
				float:left;
				
			}
			.center{
				width:300px;
				height: 50px;
				margin: 0 auto;
				padding-top:10px;
				float:left;
				padding-left:10px;
			}
			.r{
				width:300px;
				height: 50px;
				padding-top:10px;
				margin: 0 auto;
				float:left;
				padding-left:10px;
			}
			.r-1{
			width:300px;
				height: 50px;
				padding-top:10px;
				margin: 0 auto;
				float:right;
			
			}
			.r-2{
			width:300px;
				height: 50px;
				padding-top:10px;
				margin: 0 auto;
				float:left;
				padding-left: 10px;
			
			}
			
</style>
</head>
<body>
			

<div class="top">
<div class="left">

	<a href="contain.jsp" target="bottom" class="btn btn-warning btn-block" role="button">图书管理</a>
</div>
<div class="center">

<a href="ReaderPan.jsp" target="bottom" class="btn btn-primary btn-block" role="button">读者管理</a>
</div>
<div class="r">
<a href="BorrowPan.jsp" target="bottom" class="btn btn-primary btn-block" role="button">借阅管理</a>
</div>
<div class="r-1">
	
<div class="dropdown">
	<button type="button" class="btn dropdown-toggle" id="dropdownMenu1" 
			data-toggle="dropdown">
		用户<%=session.getAttribute("username") %>
		<span class="caret"></span>
	</button>
	<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
		<li role="presentation">
			<a role="menuitem" tabindex="-1"  href="AlterUser.jsp" target="bottom">修改密码</a>
		</li>
		<li role="presentation">
			<a role="menuitem" tabindex="-1"href="logout.jsp" target="bottom">注销</a>
		</li>
		<li role="presentation">
			<a role="menuitem" tabindex="-1" href="deleteUse.jsp" target="bottom">删除该用户</a>
		</li>
	
	
</div>
	
</div>
<div class="r-2">
<a href="frame.jsp" target="right" class="btn btn-warning btn-block" role="button">主页</a>
</div>

</div>


		
		
	

</body>
</html>