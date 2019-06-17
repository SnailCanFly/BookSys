<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*"%>
<html>
<head>
		<link href="css/M.css" type="text/css" rel="stylesheet">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

		<script type="text/javascript">
			function del() {
				if(!confirm("确认要删除？")) {
					window.event.returnValue = false;
				}
			}
		</script>
		<title>学生资料管理系统</title>
		
	</head>

	<body>
		<div class="contain pull-left">
			<form action="findBook.jsp" class="form-inline ">
				<h2>查询结果</h2>
				<div class="form-group search">
					<input type="text" name="check" class="form-control" placeholder="请输入查询图书编号或书名" />
					<input type="submit" name="submit" class="btn" value="搜索" />

				</div>
			</form>
		<a href="addBook.jsp" target="bottom"><button class="btn btn-warning add">添加图书信息</button></a>
			<div class="pull-left">
				<table class="table">
					<thead>
						<tr>
							<th>图书编号</th>
							<th>书名</th>
							<th>作者</th>
							<th>出版单位</th>
							<th>单价</th>
							<th>图书类型</th>
							<th>备注</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
	<%
	//查询功能
	request.setCharacterEncoding("UTF-8");
	String search = request.getParameter("check");
	String sql;
	if(search.matches("[0-9]+")){
		sql = "SELECT * FROM BookI where tno='"+search+"'";
	}else{
		sql = "SELECT * FROM BookI where bname like '%"+search+"%'";
	}

	
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
		Statement st=conn.createStatement();
        ResultSet rs=st.executeQuery(sql);
        %>
        <%   while(rs.next()){
        	%>
        	  <td><%=rs.getString("tno") %></td>
        	  <td><%=rs.getString("bname") %></td>
        	  <td><%=rs.getString("writer") %></td>
        	  <td><%=rs.getString("pubdept") %></td>
        	  <td><%=rs.getString("price") %></td>
        	  <td><%=rs.getString("typnum") %></td>
        	   <td><%=rs.getString("remark") %></td>
      
		 <%
			out.print("<td><a href='AlterBook.jsp?tno="+rs.getString(1)+"'><button class='btn btn-primary'>修改</button></a><a href='deleteBook.jsp?tno="+rs.getString(1)+"' onclick='javascript:return del();'><button class='btn btn-danger'>删除</button></a></td>");
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

		</div>
	</body>

</html>