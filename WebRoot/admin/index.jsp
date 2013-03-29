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
		.header p{
			color: #fcfafb;
			font-size: 25px;
			font-weight: bold;
			padding-top: 20px;
			padding-left: 10px;
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
					<div class="span2" style="background-color: #f6f6f6">
						<!--Sidebar content-->
						<ul class="nav nav-list">
							<li class="nav-header">用户中心</li>
							<li class="active">
								<a href="#"><i class="icon-book"></i>首页</a>
							</li>
							<li class="divider"></li>
							<li class="nav-header">文章管理</li>
							<li>
								<a href="#"><i class="icon-envelope-alt"></i>发表随笔</a>
							</li>
							<li class="divider"></li>
							<li class="nav-header">账户设置</li>
							<li>
								<a href="#"><i class="icon-cog"></i>修改密码</a>
							</li>
						</ul>
						
					</div>
					<div class="span10">
						<!--Body content-->
						<div>
							<ul class="breadcrumb" style="margin-top: 10px;">
								<li>
									<a href="#">首页</a> <span class="divider">/</span>
								</li>
								<li>
									<a href="#">类库</a> <span class="divider">/</span>
								</li>
								<li class="active">数据</li>
							</ul>
							<div class="alert">
								<a class="close" data-dismiss="alert">×</a>
								<strong>警告！</strong> 不要拿法律当挡箭牌。
							</div>
						</div>
					</div>
				</div>
			</div>
			
		</div>
	</div>
  </body>
</html>
