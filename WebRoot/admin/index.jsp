<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>后台管理中心</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/jquery-1.8.2.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    
  </head>
  
  <body>
	<h2>欢迎来到Blog4J后台管理中心</h2>
	
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span2">
			<!--Sidebar content-->
			</div>
			<div class="span10">
			<!--Body content-->
			</div>
		</div>
	</div>
  </body>
</html>
