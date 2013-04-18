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
    <link href="./public/css/bootstrap.min.css" rel="stylesheet">
    <script src="./public/js/jquery-1.8.2.min.js"></script>
    <script src="./public/js/bootstrap.min.js"></script>
    
    <style type="text/css">
    	body {
			color: #000;
			font-size: 12px;
			font-family: "Helvetica Neue",Helvetica,STheiti,微软雅黑,宋体,Arial,Tahoma,sans-serif,serif;
		}
		.header {
			height:61px;
			background: url(./admin/image/header01.png) repeat-x;
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
			<!-- 头部开始 -->
			<div class="row-fluid">
				<div class="span12">
					<div class="header">
						<p>H-Blog管理中心</p>
					</div>
				</div>
			</div>
			<!-- 头部结束 -->
			<!-- 内容开始 -->
			<div class="row-fluid">
				<div style="margin: 10px 10px 10px;">
					<!-- 左侧菜单开始 -->
					<div class="span2">
						<!--Sidebar content-->
						<ul class="nav nav-list well">
							<li class="nav-header"><i class="icon-book"></i> 文章管理</li>
							<li class="active">
								<a href="#"><i class="icon-list-alt"></i> 所有文章</a>
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
							<li class="nav-header"><i class="icon-user"></i> 个人设置</li>
							<li>
								<a href="#"><i class="icon-cog"></i> 个人资料</a>
							</li>
							<li>
								<a href="#"><i class="icon-lock"></i> 密码修改</a>
							</li>
							<li class="divider"></li>
							<li class="nav-header"><i class="icon-wrench"></i> 系统设置</li>
							<li>
								<a href="#"><i class="icon-cog"></i> 基本设置</a>
							</li>
						</ul>
						<div class="well" style="margin-top: 20px">
							<p>
								<a href="http://weibo.com/22817237" target="_blank"><span class="badge badge-info">Weibo</span></a>
								<a href="https://github.com/huozhicheng/H-Blog" target="_blank"><span class="badge badge-info">Github</span></a>
							</p>
							<p>Powered by <span class="label label-success">H-Blog</span></p>
						</div>
					</div>
					<!-- 左侧菜单结束 -->
					<!-- 右侧内容开始 -->
					<div class="span10">
						<!--Body content-->
						<div>
							<ul class="breadcrumb">
								<li>
									<a href="#">首页</a> <span class="divider">/</span>
								</li>
								<li>
									<a href="#">文章管理</a> <span class="divider">/</span>
								</li>
								<li class="active">所有文章</li>
							</ul>
							<table class="table table-bordered table-hover">
								<thead>
									<tr>
										<th><input type="checkbox"></th>
										<th>编号</th>
										<th>标题</th>
										<th>分类</th>
										<th>日期</th>
										<th>作者</th>
										<th style="text-align: center;">操作</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><input type="checkbox"></td>
										<td>1</td>
										<td><a href="#">Java垃圾收集机制</a></td>
										<td>Java</td>
										<td>2013-04-18</td>
										<td>Horrion</td>
										<td style="text-align: center;">
											<div class="btn-group">
												<a href="#" title="查看" class="btn btn-small"><i class="icon-eye-open"></i></a>
												<a href="#" title="编辑" class="btn btn-small"><i class="icon-edit"></i></a>
												<a href="#" title="删除" class="btn btn-small"><i class="icon-trash"></i></a>
											</div>
										</td>
									</tr>
									<tr>
										<td><input type="checkbox"></td>
										<td>2</td>
										<td>C#开发入门</td>
										<td>C#</td>
										<td>2013-04-17</td>
										<td>Horrion</td>
										<td style="text-align: center;">
											<div class="btn-group">
												<a href="#" title="查看" class="btn btn-small"><i class="icon-eye-open"></i></a>
												<a href="#" title="编辑" class="btn btn-small"><i class="icon-edit"></i></a>
												<a href="#" title="删除" class="btn btn-small"><i class="icon-trash"></i></a>
											</div>
										</td>
									</tr>
									<tr>
										<td><input type="checkbox"></td>
										<td>3</td>
										<td>Python 开发基础</td>
										<td>Python</td>
										<td>2013-04-16</td>
										<td>Horrion</td>
										<td style="text-align: center;">
											<div class="btn-group">
												<a href="#" title="查看" class="btn btn-small"><i class="icon-eye-open"></i></a>
												<a href="#" title="编辑" class="btn btn-small"><i class="icon-edit"></i></a>
												<a href="#" title="删除" class="btn btn-small"><i class="icon-trash"></i></a>
											</div>
										</td>
									</tr>
									<tr>
										<td><input type="checkbox"></td>
										<td>4</td>
										<td>Python 开发基础</td>
										<td>Python</td>
										<td>2013-04-16</td>
										<td>Horrion</td>
										<td style="text-align: center;">
											<div class="btn-group">
												<a href="#" title="查看" class="btn btn-small"><i class="icon-eye-open"></i></a>
												<a href="#" title="编辑" class="btn btn-small"><i class="icon-edit"></i></a>
												<a href="#" title="删除" class="btn btn-small"><i class="icon-trash"></i></a>
											</div>
										</td>
									</tr>
									<tr>
										<td><input type="checkbox"></td>
										<td>5</td>
										<td>Python 开发基础</td>
										<td>Python</td>
										<td>2013-04-16</td>
										<td>Horrion</td>
										<td style="text-align: center;">
											<div class="btn-group">
												<a href="#" title="查看" class="btn btn-small"><i class="icon-eye-open"></i></a>
												<a href="#" title="编辑" class="btn btn-small"><i class="icon-edit"></i></a>
												<a href="#" title="删除" class="btn btn-small"><i class="icon-trash"></i></a>
											</div>
										</td>
									</tr>
									<tr>
										<td><input type="checkbox"></td>
										<td>6</td>
										<td>Python 开发基础</td>
										<td>Python</td>
										<td>2013-04-16</td>
										<td>Horrion</td>
										<td style="text-align: center;">
											<div class="btn-group">
												<a href="#" title="查看" class="btn btn-small"><i class="icon-eye-open"></i></a>
												<a href="#" title="编辑" class="btn btn-small"><i class="icon-edit"></i></a>
												<a href="#" title="删除" class="btn btn-small"><i class="icon-trash"></i></a>
											</div>
										</td>
									</tr>
									<tr>
										<td><input type="checkbox"></td>
										<td>7</td>
										<td>Python 开发基础</td>
										<td>Python</td>
										<td>2013-04-16</td>
										<td>Horrion</td>
										<td style="text-align: center;">
											<div class="btn-group">
												<a href="#" title="查看" class="btn btn-small"><i class="icon-eye-open"></i></a>
												<a href="#" title="编辑" class="btn btn-small"><i class="icon-edit"></i></a>
												<a href="#" title="删除" class="btn btn-small"><i class="icon-trash"></i></a>
											</div>
										</td>
									</tr>
									<tr>
										<td><input type="checkbox"></td>
										<td>8</td>
										<td>Python 开发基础</td>
										<td>Python</td>
										<td>2013-04-16</td>
										<td>Horrion</td>
										<td style="text-align: center;">
											<div class="btn-group">
												<a href="#" title="查看" class="btn btn-small"><i class="icon-eye-open"></i></a>
												<a href="#" title="编辑" class="btn btn-small"><i class="icon-edit"></i></a>
												<a href="#" title="删除" class="btn btn-small"><i class="icon-trash"></i></a>
											</div>
										</td>
									</tr>
									<tr>
										<td><input type="checkbox"></td>
										<td>9</td>
										<td>Python 开发基础</td>
										<td>Python</td>
										<td>2013-04-16</td>
										<td>Horrion</td>
										<td style="text-align: center;">
											<div class="btn-group">
												<a href="#" title="查看" class="btn btn-small"><i class="icon-eye-open"></i></a>
												<a href="#" title="编辑" class="btn btn-small"><i class="icon-edit"></i></a>
												<a href="#" title="删除" class="btn btn-small"><i class="icon-trash"></i></a>
											</div>
										</td>
									</tr>
									<tr>
										<td><input type="checkbox"></td>
										<td>10</td>
										<td>Python 开发基础</td>
										<td>Python</td>
										<td>2013-04-16</td>
										<td>Horrion</td>
										<td style="text-align: center;">
											<div class="btn-group">
												<a href="#" title="查看" class="btn btn-small"><i class="icon-eye-open"></i></a>
												<a href="#" title="编辑" class="btn btn-small"><i class="icon-edit"></i></a>
												<a href="#" title="删除" class="btn btn-small"><i class="icon-trash"></i></a>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
							<!-- 分页开始 -->
							<div class="pagination pagination-right">
								<ul>
									<li class="disabled"><a href="#">&laquo;</a></li>
									<li class="active"><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#">&raquo;</a></li>
								</ul>
							</div>
							<!-- 分页结束 -->
						</div>
					</div>
					<!-- 右侧内容结束 -->
				</div>
			</div>
			<!-- 内容结束 -->
		</div>
	</div>
  </body>
</html>
