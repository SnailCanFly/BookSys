<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
	<link rel="stylesheet" href="bootstrap/bootstrap.min.css">  
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="bootstrap/bootstrap.min.js"></script>

<script type="text/javascript">

</script>
<style type="text/css">
#a1{
	
    margin-top:200px;
  
}
h3{
	margin-top:400px;

}
body{
background: url('images/6.jpg');
background-size:cover;
no-repeat fixed center;
font-size: 1.7em;
font-color:#EE7600;
}

</style>
</head>
<body>
 
		
<div class="container">
	<div class="row clearfix">
		
		<div class="col-md-7 column"  id="a2"> 
		
		
		</div>
		<div class="col-md-5 column" id="a1">
			<form class="form-horizontal" role="form" action="loginCheck.jsp">
				<div class="form-group">
					 <label class="col-sm-2 control-label" for="inputEmail3"><font color="#EE7600">用户名</font></label>
					<div class="col-sm-10">
						<input class="form-control" id="inputEmail3" name="username" type="text" required="required" />
					</div>
				</div>
				<div class="form-group" >
					 <label class="col-sm-2 control-label" for="inputPassword3"><font color="#EE7600">密&nbsp;&nbsp;&nbsp;码</font></label>
					<div class="col-sm-10">
						<input class="form-control" id="inputPassword3" name="password"type="password" required="required" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<div class="radio">
							 <label><input type="radio" name="TYPE" /><font color="#EE7600">管理员</font></label>
							 <label><input type="radio" name="TYPE" checked="checked" /><font color="#EE7600">学生</font></label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						 <button class="btn btn-warning " type="submit">登陆</button>&nbsp;&nbsp;&nbsp;&nbsp;
						<font color="#EE7600" >还没有账号？<a href="register.jsp" ><font color="red">去注册</font></a></font>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>

</body>
</html>