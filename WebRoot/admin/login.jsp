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
    <link href="./public/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./public/css/font-awesome.min.css">
	<script src="./public/js/jquery-1.8.2.min.js"></script>
    <script src="./public/js/bootstrap.min.js"></script>
	<style type="text/css">
		body {
	        padding-top: 40px;
	        padding-bottom: 40px;
	        background-color: #f5f5f5;
		}
		.form-signin {
	        max-width: 250px;
	        padding: 19px 29px 29px;
	        margin: 100px auto 20px;
	        background-color: #fff;
	        border: 1px solid #e5e5e5;
	        -webkit-border-radius: 5px;
           -moz-border-radius: 5px;
                border-radius: 5px;
           -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                box-shadow: 0 1px 2px rgba(0,0,0,.05);
      	}
	</style>
  </head>
  
  <body>
  	
  	<form class="form-signin" action="admin/userlogin" method="post">
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
