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
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<h3 style="margin-left: 50px;">用户登录</h3>
  	<form action="admin/userlogin" method="post">
  		<div>
  			<ul style="list-style: none;">
  				<li><input type="text" name="user.username"> </li>
  				<li><input type="password" name="user.password"></li>
  				<li><input type="submit" value="登录" ></li>
  				<li><s:property value="tips"/></li>
  			</ul>
  		</div>
  	</form>
  </body>
</html>
