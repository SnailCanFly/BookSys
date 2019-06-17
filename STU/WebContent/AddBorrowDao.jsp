<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加结果</title>
</head>
<body>
	<jsp:useBean id="s" class="com.bean.borrow.borrow"></jsp:useBean>
	<jsp:setProperty property="*" name="s"/>
	<%
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
			String sql = "insert BorrowI(bno,tno,bdate,redate,retdate,fprice,bstate) values(?,?,?,?,?,?,?)";
			// 获取PreparedStatement
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, s.getBno());
			ps.setString(2, s.getTno());
			ps.setString(3, s.getBdate());
			ps.setString(4, s.getRedate());
			ps.setString(5, s.getRetdate());
			ps.setString(6, s.getFprice());
			ps.setString(7, s.getBstate());
	
			
			// 执行更新操作，返回所影响的行数
			int row = ps.executeUpdate();
			// 判断是否更新成功
			if(row > 0){
				// 更新成输出信息
				out.print("添加借阅信息成功");
			}
		   // 关闭PreparedStatement，释放资源
			ps.close();
			// 关闭Connection，释放资源
			conn.close();
		} catch (Exception e) {
			out.print("借阅信息添加失败，该借阅证号不存在，或者图书编号不存在！");
			e.printStackTrace();
		}
	%>
	<br>
	<a href="contain.jsp">返回</a>
</body>
</html>