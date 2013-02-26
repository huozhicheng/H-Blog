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
    <title>首页 - 欢迎来到我的Blog</title>
  </head>
  
  <body>
	<h1>我的博客</h1>
	<div>O(∩_∩)O哈哈~</div>
	<div><a href="<%=basePath%>admin">点击进入后台管理</a></div>
  </body>
</html>
