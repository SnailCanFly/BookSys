<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>删除用户</title>
<script type="text/javascript">
			function del() {
				if(!confirm("确认要删除？")) {
					window.event.returnValue = false;
				}
			}
		</script>
		<style type="text/css">
		body{
		text-align: center;
		}
		</style>
</head>
<body>

<jsp:useBean id="user1" class="com.bean.reader.USER"></jsp:useBean>
		<jsp:setProperty property="username" name="user1"/>
		<form action="deleteUser.jsp">
	用户名：<input type="text" name="username" value="<%=session.getAttribute("username") %>" >
	<input type="submit" onclick="javascript:return del()" value="删除">
	
</form>
</body>
</html>