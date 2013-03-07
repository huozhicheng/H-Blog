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
	
	<div class="row-fluid">
		<div class="offset1 span10" style="height: 500px;background-color: red;">
			<div class="row-fluid">
				<div class="span12" style="background-color: blue;">
					<h2>欢迎来到H-Blog后台管理中心</h2>
				</div>
			</div>
			<div class="row-fluid">
				<div class="span2" style="background-color: green;">
				<!--Sidebar content-->
				</div>
				<div class="span10" style="background-color: orange;">
				<!--Body content-->
				</div>
			</div>
		</div>
	</div>
  </body>
</html>
