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
<title>添加借阅信息</title>
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
<div class="container">
	<div class="row clearfix">
		<div class="col-md-3 column" id="left">
		</div>
		
		<div class="col-md-6 column" id="a1">
			<form class="form-horizontal" role="form" action="AddBorrowDao.jsp" 
			                       method="post" onsubmit="return check()">
			                       <div class="panel panel-info">
						
							<h3 class="panel-title">添加借阅信息</h3>						
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label" for="inputEmail3">借阅证号</label>
						<div class="col-sm-10">
							<input class="form-control" id="inputEmail3" type="text"
								name="bno" />
						</div>
					</div>
					<div class="form-group">
					 <label class="col-sm-2 control-label" for="inputEmail3" >图书编号</label>
					<div class="col-sm-10">
						<input class="form-control" id="inputEmail3" type="text" name="tno" />
					</div>
				</div>
				
				
				<div class="form-group">
					 <label class="col-sm-2 control-label" for="inputEmail3">借阅日期</label>
					<div class="col-sm-10">
						<input class="form-control" id="inputEmail3" type="date"  name="bdate"/>
					</div>
				</div>
				<div class="form-group">
					 <label class="col-sm-2 control-label" for="inputEmail3">续借日期</label>
					<div class="col-sm-10">
						<input class="form-control" id="inputEmail3" type="date"  name="redate"/>
					</div>
				</div>
				<div class="form-group">
					 <label class="col-sm-2 control-label" for="inputEmail3">归还日期</label>
					<div class="col-sm-10">
						<input class="form-control" id="inputEmail3" type="date" name="retdate" />
					</div>
				</div>
				<div class="form-group">
					 <label class="col-sm-2 control-label" for="inputEmail3">罚款金额</label>
					<div class="col-sm-10">
						<input class="form-control" id="inputEmail3" type="text" name="fprice" />
					</div>
				</div>
				<div class="form-group">
					 <label class="col-sm-2 control-label" for="inputEmail3">借阅状态</label>
					<div class="col-sm-10">
						<input class="form-control" id="inputEmail3" type="text" name="bstate" />
					</div>
				</div>
		
				
			
					<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						 <button type="submit" class="btn btn-primary btn-lg btn-block">添加</button>
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