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
	<jsp:useBean id="r" class="com.bean.reader.Reader"></jsp:useBean>
	<jsp:setProperty property="*" name="r"/>
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
			String sql = "insert ReaderI(bno,rname,sex,dept,phone,idcard,btype,ctime,cstate) values(?,?,?,?,?,?,?,?,?)";
			// 获取PreparedStatement
			PreparedStatement ps = conn.prepareStatement(sql);
			// 对SQL语句中的第1个参数赋值
			ps.setString(1, r.getBno());
			// 对SQL语句中的第2个参数赋值
			ps.setString(2, r.getRname());
			ps.setString(3, r.getSex());
			// 对SQL语句中的第3个参数赋值
			ps.setString(4,r.getDept());
			ps.setString(5, r.getPhone());
			ps.setString(6,r.getIdcard());
			ps.setString(7,r.getBtype());
			ps.setString(8, r.getCtime());
			ps.setString(9,r.getCstate());
			// 执行更新操作，返回所影响的行数
			int row = ps.executeUpdate();
			// 判断是否更新成功
			if(row > 0){
				// 更新成输出信息
				out.print("读者信息添加成功！");
			}
		   // 关闭PreparedStatement，释放资源
			ps.close();
			// 关闭Connection，释放资源
			conn.close();
		} catch (Exception e) {
			out.print("读者信息添加失败，借阅证号已存在！");
			e.printStackTrace();
		}
	%>
	<br>
	<a href="ReaderPan.jsp">返回</a>
</body>
</html>