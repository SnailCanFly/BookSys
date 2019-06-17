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
<title>修改读者</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
	<link rel="stylesheet" href="bootstrap/bootstrap.min.css">  
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="bootstrap/bootstrap.min.js"></script>

<script type="text/javascript">

</script>
<style> 
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
 String bno;
 String rname;
 String sex;
 String dept;
 String phone;
 String idcard;
 String btype;
 String ctime;
 String cstate;
	%>
	<%
	request.setCharacterEncoding("UTF-8");
	bno = request.getParameter("bno");
	String sqlid = "SELECT * FROM ReaderI where bno='"+bno+"'";
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
			bno=rs.getString(1);
			rname = rs.getString(2);
			sex = rs.getString(3);
			dept = rs.getString(4);
			phone = rs.getString(5);
			idcard = rs.getString(6);
			btype=rs.getString(7);
			ctime=rs.getString(8);
			cstate=rs.getString(9);
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
	
			<form class="form-horizontal" role="form" action="updateReader.jsp" 
			                       method="post" onsubmit="return check()">
					<div class="panel panel-info">
						
							<h3 class="panel-title">修改读者信息</h3>						
					</div>
					<div class="form-group">
					 <label class="col-sm-2 control-label" for="inputEmail3" >借阅证号</label>
					<div class="col-sm-10">
						<input class="form-control" value="<%=bno %>" id="inputEmail3" type="text" name="bno" />
					</div>
				</div>
				<div class="form-group">
					 <label class="col-sm-2 control-label" for="inputEmail3">姓名</label>
					<div class="col-sm-10">
						<input class="form-control" value="<%=rname %>"id="inputEmail3" type="text" name="rname" />
					</div>
				</div>
				<div class="form-group">
					 <label class="col-sm-2 control-label" for="inputEmail3">性别</label>
					<div class="col-sm-10">
						<input class="form-control" value="<%=sex %>"id="inputEmail3" type="text" name="sex" />
					</div>
				</div>
				<div class="form-group">
					 <label class="col-sm-2 control-label" for="inputEmail3">单位</label>
					<div class="col-sm-10">
						<input class="form-control" value="<%=dept %>"id="inputEmail3" type="text"  name="dept"/>
					</div>
				</div>
				<div class="form-group">
					 <label class="col-sm-2 control-label" for="inputEmail3">联系电话</label>
					<div class="col-sm-10">
						<input class="form-control" value="<%=phone %>"id="inputEmail3" type="text"  name="phone"/>
					</div>
				</div>
				<div class="form-group">
					 <label class="col-sm-2 control-label" for="inputEmail3">身份证号码</label>
					<div class="col-sm-10">
						<input class="form-control" value="<%=idcard %>"id="inputEmail3" type="text" name="idcard" />
					</div>
				</div>
				<div class="form-group">
					 <label class="col-sm-2 control-label" for="inputEmail3">借阅证件类型</label>
					<div class="col-sm-10">
						<input class="form-control"value="<%=btype %>" id="inputEmail3" type="text" name="btype" />
					</div>
				</div>
				<div class="form-group">
					 <label class="col-sm-2 control-label" for="inputEmail3">办卡时间</label>
					<div class="col-sm-10">
						<input class="form-control"value="<%=ctime %>" id="inputEmail3" type="date" name="ctime" />
					</div>
				</div>
				<div class="form-group">
					 <label class="col-sm-2 control-label" for="inputEmail3">卡状态</label>
					<div class="col-sm-10">
						<input class="form-control"value="<%=cstate %>" id="inputEmail3" type="text" name="cstate" />
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