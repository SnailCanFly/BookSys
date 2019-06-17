<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>修改图书</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
	<link rel="stylesheet" href="bootstrap/bootstrap.min.css">  
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="bootstrap/bootstrap.min.js"></script>

<script type="text/javascript">

</script>
<style type="text/css">
  body{
  	text-align:center;
  	background-color:#9FB6CD
  	}
	#a1{
		width: 600px;
		height: 650px;
		margin: 0 auto;

		padding-top: 100px;
		float: left;
		background-color: #9FB6CD
		
	}
	.form-group{
		padding-top: 10px;
	}
	.container{
		width: 1200px;
		height: 600px;
		margin: 0 auto;
	
		float: left;
		
	}
	#left{
		width: 450px;
		height: 600px;
		margin: 0 auto;
	
		float: left;
		
	}
</style>
</head>
<body>
<%  %>>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-3 column" id="left">
		</div>
		
		<div class="col-md-6 column" id="a1">
			<form class="form-horizontal" role="form" action="updateUser.jsp" 
			                       method="post" onsubmit="return check()">
			                       <div class="panel panel-info">
						
							<h3 class="panel-title">修改密码</h3>						
					</div>
				<div class="form-group">
					 <label class="col-sm-2 control-label"  >用户名</label>
					<div class="col-sm-10">
						<input class="form-control" value="<%=session.getAttribute("username") %>"   type="text" name="username" />
					</div>
				</div>
				<div class="form-group">
					 <label class="col-sm-2 control-label" >输入密码</label>
					<div class="col-sm-10">
						<input class="form-control"   type="password" name="password" />
					</div>
					</div>
					<div class="form-group">
					 <label class="col-sm-2 control-label" >再次输入密码</label>
					<div class="col-sm-10">
						<input class="form-control"   type="password" name="password1" />
					</div>
					</div>
				
		
				
				
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						 <button type="submit" class="btn btn-primary btn-lg btn-block">修改</button>
						  <button type="reset" class="btn btn-primary btn-lg btn-block">重置</button>
					</div>
				</div>
			</form>
		</div>
		<div class="col-md-3 column">
		</div>
	</div>
</div>
</body>
</html>