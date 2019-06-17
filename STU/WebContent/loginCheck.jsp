<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录检查</title>
</head>
<body>

	<% boolean  getPermit= false;
	String uname=request.getParameter("username");
	String pwd=request.getParameter("password");
	 try {
			// 加载数据库驱动，注册到驱动管理器
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			// 数据库连接字符串
			String url = "jdbc:sqlserver://localhost:1433;DatabaseName=BookSys";
			// 数据库用户名
			String USERname = "sa";
			// 数据库密码
			String password = "123456";
			// 创建Connection连接
			Connection conn = DriverManager.getConnection(url,USERname,password);
			
			System.out.println("数据库成功");
			String sql = "select * from BUser where username=? and password=?";
			// 获取PreparedStatement
			PreparedStatement ps = conn.prepareStatement(sql);
			// 对SQL语句中的第1个参数赋值
			ps.setString(1, uname);
			ps.setString(2,pwd);
			System.out.println("用户名"+uname);
			session.setAttribute("username", uname);
			ResultSet rs=ps.executeQuery();
			
			// 判断是否更新成功
			if(rs.next()){
				// 更新成输出信息
				getPermit= true;
	
			}
		   // 关闭PreparedStatement，释放资源
			ps.close();
			// 关闭Connection，释放资源
			conn.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	if(getPermit){
		request.getRequestDispatcher("frame.jsp").forward(request, response);
	}else{
		request.getRequestDispatcher("logout2.jsp").forward(request, response);
	}
	%>
	<br>
</body>
</html>