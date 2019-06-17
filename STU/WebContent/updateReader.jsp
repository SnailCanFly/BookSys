<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改结果</title>
</head>
<body>
<%
			request.setCharacterEncoding("UTF-8");
			String bno = request.getParameter("bno");
			String rname = request.getParameter("rname");
			String sex = request.getParameter("sex");
			String dept = request.getParameter("dept");
			String phone = request.getParameter("phone");
			String idcard= request.getParameter("idcard");
			String btype= request.getParameter("btype");
			String ctime= request.getParameter("ctime");
			String cstate= request.getParameter("cstate");
			
		try {
			// 加载数据库驱动，注册到驱动管理器
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			// 数据库连接字符串
			String url = "jdbc:sqlserver://localhost:1433;DatabaseName=BookSys";
			// 数据库用户名
			String username = "sa";
			// 数据库密码
			String password = "123456";
			// 创建Connection连接
			Connection conn = DriverManager.getConnection(url,username,password);
			// 添加图书信息的SQL语句
			System.out.println("数据库成功");
			String sql = "update ReaderI set bno=?,rname=?,sex=?,dept=?,phone=?,idcard=?,btype=?,ctime=?,cstate=?  where bno='"+bno+"'";
			// 获取PreparedStatement
			PreparedStatement ps = conn.prepareStatement(sql);
			// 对SQL语句中的第1个参数赋值
			// 对SQL语句中的第2个参数赋值
			ps.setString(1, bno);
			ps.setString(2, rname);
			// 对SQL语句中的第3个参数赋值
			ps.setString(3,sex);
			// 对SQL语句中的第4个参数赋值
			ps.setString(4,dept);
			ps.setString(5, phone);
			ps.setString(6,idcard);
			ps.setString(7,btype);
			ps.setString(8,ctime);
			ps.setString(9,cstate);
			// 执行更新操作，返回所影响的行数
			int row = ps.executeUpdate();
			// 判断是否更新成功
			if(row > 0){
				// 更新成输出信息
				out.print("修改成功！！");
			}
		   // 关闭PreparedStatement，释放资源
			ps.close();
			// 关闭Connection，释放资源
			conn.close();
		} catch (Exception e) {
			out.print("读者信息修改失败！");
			%><a href="containR.jsp">修改失败！</a>
			<% e.printStackTrace();
		}
	%>
	<br>
	<a href="ReaderPan.jsp">返回</a>
</body>
</html>