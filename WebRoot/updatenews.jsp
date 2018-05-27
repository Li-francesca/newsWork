<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updatenews.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<meta charset="UTF-8">
	<link rel="stylesheet" href="css/change.css" />
	<link rel="stylesheet" type="text/css" href="css/news.css"/>
  </head>
  
  <body>
  
  
  
  
  <div id="container">
			<div id="header">
				<div id="hleft">后台管理系统</div>
				<div id="hright"></div>
			</div>
			<div id="main">
				<div id="mleft">
					<div id="mlist">
						<ul>
							<li style="background-color: #000000;color: white; font-size: 22px;"> 新闻分类</li>
							
							<!--  类型查询-->
							<c:forEach items="${typeresult}" var="typeresult">  	
	    							 <li> <a href ="${pageContext.request.contextPath}/servlet/TypeServlet?status=doPost &type=${typeresult.type} ">${typeresult.type}</a></li>	    		 
    	       				</c:forEach> 
							<!-- <a href="">娱乐</a>  -->
							
							
							<!-- <li> <a href="">军事</a> </li>
							<li> <a href="">生活</a> </li>
							<li> <a href="">搞笑</a> </li> -->
						</ul>
					</div>
				</div>
				
				<div id="mright">
				
				 <form action="servlet/UpdateServlet" method="post">
      	<div class="changes" id="changes">
			<h3>修改新闻</h3>
			<a href="servlet/QuitServlet">返回</a>
			<form action="" method="post">
				<!-- 新闻标题，内容，发布人，类型，时间 -->
				<p><input type="hidden" name="id" value="${id}" /></p>
				<p><span>新闻标题：</span><input type="text"  name="title" value="${title}" /></p>				
				<p><span>发&nbsp;&nbsp;布&nbsp;人：</span><input type="text"  name="admin" value="${admin}" /></p>
				<p><span>类&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;型：</span>
					<select name="type" value="${type}">
		                <option value="娱乐">娱乐</option>
		                <option value="体育">体育</option>
		                <option value="军事" selected>军事</option>
	                </select>				
				</p>
				<p><span>时&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;间：</span><input type="text"  name="date" value="${date}" /></p>
				<p><span>内&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;容：</span><textarea  cols="30" rows="4" name="content">${content}</textarea></p>
				<input type="submit" value="修改新闻" id="change_submit"/>
				</form>
		</div>            
      </form>
      
      
  </body>
</html>

