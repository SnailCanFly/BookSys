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
<link href="css/book.css" type="text/css" rel="stylesheet">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
	<link rel="stylesheet" href="bootstrap/bootstrap.min.css">  
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="bootstrap/bootstrap.min.js"></script>
</head>
<body>
<div id="con">
<div class="top">
<a href="contain.jsp" class="btn btn-warning btn-block" role="button">图书管理</a>
</div>

<div class="center">
<div class="center-l">


</div>
<div class="center-c">
<div class="container">                                     
  <div class="dropdown">
    <button type="button" class="btn btn-primary dropdown-toggle" >
     <a href="contain.jsp"><h5> 图书管理<h5></a>
    </button>

  </div>
</div>

</div>
<div id="center-r">
</div>

</div>
<div id="bottom">
		
	
</div>

<div>

ok
</body>
</html>