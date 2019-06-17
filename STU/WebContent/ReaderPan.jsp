<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" type="text/css" href="css/style.css" />
	<link rel="stylesheet" href="bootstrap/bootstrap.min.css">  
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="bootstrap/bootstrap.min.js"></script>
		<script type="text/javascript">
			function del() {
				if(!confirm("确认要删除？")) {
					window.event.returnValue = false;
				}
			}
		</script>
		<title>读者管理</title>
	
	</head>
<body>
<div class="container">
  <h2>读者管理</h2>
  	<form action="findReader.jsp" target="bottom" class="form-inline ">
				
				<div class="form-group search" id="a3">
					<input type="text" name="check" class="form-control" placeholder="请输入查询姓名或学号"  />
					&nbsp;&nbsp;&nbsp;<input type="submit" name="submit" class="btn btn-primary" value="搜索" />
					&nbsp;&nbsp;&nbsp;<button class="btn btn-warning add"><a href="addReader.jsp" target="bottom">添加读者信息</button></a>
				</div>
			</form>
           
  <table class="table table-hover">
    <thead>
      <tr>
      
							<th>借阅证号</th>
							<th>姓名</th>
							<th>性别</th>
							<th>单位</th>
							<th>联系电话</th>
							<th>身份证号码</th>
							  <th>借阅证件类型</th>
							<th>办卡时间</th>
							<th>卡状态</th>
							<th>操作</th>
					
      </tr>
    </thead>
    <tbody>
    				<tbody>
<%
	
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
		String  sql = "select *from ReaderI";
		Statement st=conn.createStatement();
        ResultSet rs=st.executeQuery(sql);
        %>
        <%   while(rs.next()){
        	%>
        	
        	  <td><%=rs.getString("bno") %></td>
        	  <td><%=rs.getString("rname") %></td>
        	  <td><%=rs.getString("sex") %></td>
        	  <td><%=rs.getString("dept") %></td>
        	  <td><%=rs.getString("phone") %></td>
        	  <td><%=rs.getString("idcard") %></td>
        	  <td><%=rs.getString("btype") %></td>
        	  <td><%=rs.getString("ctime") %></td>
        	  <td><%=rs.getString("cstate") %></td>
        	 
      
		 <%
			out.print("<td><a href='AlterReader.jsp?bno="+rs.getString(1)+"'><button class='btn btn-primary'>修改</button></a>&nbsp;&nbsp;&nbsp;<a href='deleteReader.jsp?bno="+rs.getString(1)+"' onclick='javascript:return del();'><button class='btn btn-danger'>删除</button></a></td>");
			out.print("</tr>");
			
            } 
          rs.close();//关闭结果集
          conn.close();//关闭操作
          }
          catch(Exception ex){
          System.out.println(ex.getMessage());
          System.out.println("连接异常");
          ex.printStackTrace();
          }%>
         

	

					</tbody>
  </table>
</div>

			
</body>
</html>