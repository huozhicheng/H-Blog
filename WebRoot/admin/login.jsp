<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户登录</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link rel="stylesheet" href="css/font-awesome.min.css">
	<script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="js/bootstrap.min.js"></script>

  </head>
  
  <body>
  	
  	<form class="form-horizontal" action="admin/userlogin" method="post">
		<div class="control-group">
			<div class="controls">
  				<h4>用户登录</h4>
				<div class="input-prepend">
					<span class="add-on"><i class="icon-user"></i></span>
					<input name="user.username" type="text" placeholder="username">
				</div>
			</div>
		</div>
		<div class="control-group">
			<div class="controls">
				<div class="input-prepend">
					<span class="add-on"><i class="icon-key"></i></span>
					<input name="user.password" type="password" placeholder="password">
				</div>
			</div>
		</div>
		<div class="control-group">
			<div class="controls">
				<button type="submit" class="btn btn-info"><i class="icon-signin"></i> 登录</button>
				<button type="reset" class="btn btn-info"><i class="icon-refresh"></i> 重置</button>
			</div>
		</div>
	</form>
	
  </body>
</html>
