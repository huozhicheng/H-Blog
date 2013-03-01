<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户登录</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
	<script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="js/bootstrap.min.js"></script>

  </head>
  
  <body>
  	<h3 style="margin-left: 50px;">用户登录</h3>
  	
  	<form class="form-horizontal" action="admin/userlogin" method="post">
  <div class="control-group">
    <label class="control-label" for="inputEmail">username</label>
    <div class="controls">
    	<input type="text" name="user.username">
    </div>
  </div>
  <div class="control-group">
    <label class="control-label" for="inputPassword">Password</label>
    <div class="controls">
    	<input type="password" name="user.password" placeholder="Password">
    </div>
  </div>
  <div class="control-group">
    <div class="controls">
      <!-- <label class="checkbox">
        <input type="checkbox"> Remember me
      </label> -->
      <button type="submit" class="btn btn-primary">Sign in</button>
      <s:property value="tips"/>
    </div>
  </div>
</form>
  	
  </body>
</html>
