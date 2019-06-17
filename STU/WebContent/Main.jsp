<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" type="text/css" href="css/style.css" />
	<link rel="stylesheet" href="bootstrap/bootstrap.4.0.min.css">  
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.4.0.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

	
	<style>
  /* Make the image fully responsive */
  .carousel-inner img {
      width: 100%;
      height: 700px;
  }
  </style>
</head>
<body>
<div id="demo" class="carousel slide" data-ride="carousel">
 
  <!-- 指示符 -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
 
  <!-- 轮播图片 -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/1.jpg">
      <div class="carousel-caption">
        <h3>奔跑</h3>
        <p></p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="images/2.jpg">
      <div class="carousel-caption">
        <h3>单车</h3>
        <p></p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="images/3.jpg">
      <div class="carousel-caption">
        <h3>书籍</h3>
        <p></p>
      </div>
    </div>
  </div>
 
  <!-- 左右切换按钮 -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
 
</div>
</body>
</html>