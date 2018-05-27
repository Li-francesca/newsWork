<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<meta charset="UTF-8">
	<title>添加失败！</title>
	<link rel="stylesheet" href="css/reset.css" />
	<link rel="stylesheet" href="css/login_fail.css" />

  </head>
  
  <body>
    <div class="fail">
			<h3>类型添加失败！</h3>
            <p>请检查</p>
			<a href="manage.jsp">返回蓝后台管理</a>
		</div>
  </body>
</html>
