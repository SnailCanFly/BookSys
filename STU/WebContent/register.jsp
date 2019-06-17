<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册页面</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
	<link rel="stylesheet" href="bootstrap/bootstrap.min.css">  
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="bootstrap/bootstrap.min.js"></script>
<style>
body {
				width: 800px;
				border-radius: 10px;		
				padding-top: 20px;
				margin-left: 300px;
			}

</style>
</head>
<body>
<script language="javascript">
function check()
{

if(document.register.password.value != document.register.password1.value)
{
alert("两次输入的密码不一致");
return ;
}
}
</script>
	<div>
		<div>	
			<h2>用户注册</h2>
			<form  name="register"action="AddUser.jsp" method="post" onsubmit="check()">
				<div class="input-group input-group-lg">
					<p>用户名<input type="text" name="username" class="form-control" placeholder="请输入用户名" size="25" required="required"></p>
					<p>密码<input type="password" name="password" class="form-control" placeholder="请输入密码" size="25" required="required"></p>
					<p>密码<input type="password" name="password1" class="form-control" placeholder="再次输入密码" size="25" required="required"></p>
				<p>
				
					<input type="submit" id="put" value="注册" class="btn btn-primary" />
					<input type="reset" id="put" value="重置" class="btn btn-safe" /> 
				</p>
			</form>
			<a href="login.jsp">已有账号？返回登陆</a>
		</div>
</div>
	
</body>
</html>