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
	//	border: solid red;
		padding-top: 100px;
		float: left;
		background-color: #9FB6CD
		
	}
	.container{
		width: 1200px;
		height: 600px;
		margin: 0 auto;
	//	border: solid red;
		float: left;
		
	}
	#left{
		width: 450px;
		height: 600px;
		margin: 0 auto;
		//border: solid red;
		float: left;
		
	}
</style>
</head>
<body>
<%!
String tno;
String bname;
String  writer;
String  pubdept;
float  price;
Integer typnum;
String remark;
	%>
	<%
	request.setCharacterEncoding("UTF-8");
	tno = request.getParameter("tno");
	String sqlid = "SELECT * FROM BookI where tno='"+tno+"'";
	try{
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		// 数据库连接字符串
		String url = "jdbc:sqlserver://localhost:1433;DatabaseName=BookSys";
		// 数据库用户名
		String username = "sa";
		// 数据库密码
		String password = "123456";
		// 创建Connection连接
		Connection conn = DriverManager.getConnection(url,username,password);
		System.out.println("数据库成功");
		Statement sql = conn.createStatement();
		ResultSet rs = sql.executeQuery(sqlid);
		if(rs.next()){
			tno=rs.getString(1);
			bname = rs.getString(2);
			writer = rs.getString(3);
			pubdept = rs.getString(4);
			price = rs.getFloat(5);
			typnum = rs.getInt(6);
			remark=rs.getString(7);
			
		}
		rs.close();
		sql.close();
		conn.close();
	}catch(Exception e){
		e.printStackTrace();
	}
	
	%>


<div class="container">
	<div class="row clearfix">
		<div class="col-md-3 column" id="left">
		</div>
		
		<div class="col-md-6 column" id="a1">
			<form class="form-horizontal" role="form" action="updateBook.jsp" 
			                       method="post" onsubmit="return check()">
			                       <div class="panel panel-info">
						
							<h3 class="panel-title">修改图书信息</h3>						
					</div>
				<div class="form-group">
					 <label class="col-sm-2 control-label" for="inputEmail3" >图书编号</label>
					<div class="col-sm-10">
						<input class="form-control" value="<%=tno %>"  type="text" name="tno" />
					</div>
				</div>
				<div class="form-group">
					 <label class="col-sm-2 control-label" for="inputEmail3">书名</label>
					<div class="col-sm-10">
						<input class="form-control" value="<%=bname %>"  type="text" name="bname" />
					</div>
				</div>
				<div class="form-group">
					 <label class="col-sm-2 control-label" for="inputEmail3">作者</label>
					<div class="col-sm-10">
						<input class="form-control"  value="<%=writer %>"  type="text" name="writer" />
					</div>
				</div>
				<div class="form-group">
					 <label class="col-sm-2 control-label" for="inputEmail3">出版单位</label>
					<div class="col-sm-10">
						<input class="form-control" value="<%=pubdept %>"  type="text"  name="pubdept"/>
					</div>
				</div>
				<div class="form-group">
					 <label class="col-sm-2 control-label" for="inputEmail3">单价</label>
					<div class="col-sm-10">
						<input class="form-control" value="<%=price %>"  type="text"  name="price"/>
					</div>
				</div>
				<div class="form-group">
					 <label class="col-sm-2 control-label" for="inputEmail3">分类号</label>
					<div class="col-sm-10">
						<input class="form-control" value="<%=typnum %>"  type="text" name="typnum" />
					</div>
				</div>
				<div class="form-group">
					 <label class="col-sm-2 control-label" for="inputEmail3">备注</label>
					<div class="col-sm-10">
						<input class="form-control" value="<%=remark%>"  type="text" name="remark" />
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