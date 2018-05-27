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
	<title>详细新闻</title>
	<link rel="stylesheet" href="css/reset.css" />
	<link rel="stylesheet" href="css/detail_news.css" />

  </head>
  
  <body>
  	<div class="detail_news">
		<div class="newsnav">
			<a href="javascript:history.go(-1)">返回</a>
		</div>
		 <div class="detailnew_content">
			<h2>新闻标题：${title}</h2>
			<div class="fubiaoti">
			<span>${admin}</span>
			<span>${type}</span>
			<span>${date}</span>
			</div>
			<p>${content}</p>
		</div>
	</div> 
 </body>
</html> 

