<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>H-Blog 管理中心</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <script src="js/jquery-1.8.2.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    
    <style type="text/css">
    	body {
			color: #000;
			font-size: 12px;
			font-family: "Helvetica Neue",Helvetica,STheiti,微软雅黑,宋体,Arial,Tahoma,sans-serif,serif;
		}
		.header {
			height:61px;
			background: url(admin/image/header01.png) repeat-x;
			border-bottom: 1px solid #444c57;
		}
		.header p {
			color: #fcfafb;
			font-size: 25px;
			font-weight: bold;
			padding-top: 20px;
			padding-left: 10px;
		}
		.nav li a {
			padding-left: 30px;
		}
		.nav-header {
			font-size: 14px;
		}
    </style>
  </head>
  
  <body>
  
	<div class="row-fluid">
		<div class="span12">
			<div class="row-fluid">
				<div class="span12">
					<div class="header">
						<p>H-Blog管理中心</p>
					</div>
				</div>
			</div>
			<div class="row-fluid">
				<div style="margin: 10px 10px 10px;">
					<div class="span2">
						<!--Sidebar content-->
						<ul class="nav nav-list well">
							<li class="nav-header"><i class="icon-book icon-large"></i> 文章管理</li>
							<li>
								<a href="#"><i class="icon-envelope-alt"></i> 所有文章</a>
							</li>
							<li>
								<a href="#"><i class="icon-pencil"></i> 写文章</a>
							</li>
							<li>
								<a href="#"><i class="icon-list"></i> 分类目录</a>
							</li>
							<li>
								<a href="#"><i class="icon-tags"></i> 标签</a>
							</li>
							<li class="divider"></li>
							<li class="nav-header"><i class="icon-user icon-large"></i> 个人设置</li>
							<li>
								<a href="#"><i class="icon-cog"></i> 个人资料</a>
							</li>
							<li>
								<a href="#"><i class="icon-lock"></i> 密码修改</a>
							</li>
							<li class="divider"></li>
							<li class="nav-header"><i class="icon-wrench icon-large"></i> 系统设置</li>
							<li>
								<a href="#"><i class="icon-cog"></i> 基本设置</a>
							</li>
						</ul>
						
					</div>
					<div class="span10">
						<!--Body content-->
						<div>
							<ul class="breadcrumb">
								<li>
									<a href="#">首页</a> <span class="divider">/</span>
								</li>
								<li>
									<a href="#">文章</a> <span class="divider">/</span>
								</li>
								<li class="active">写文章</li>
							</ul>
							<div class="alert">
								<a class="close" data-dismiss="alert">×</a>
								<strong>警告！</strong> 请定时保存，以免数据丢失。
							</div>
						</div>
					</div>
				</div>
			</div>
			
		</div>
	</div>
  </body>
</html>
