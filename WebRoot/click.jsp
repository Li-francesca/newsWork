<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'click.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/lalala.css">
	<style type="text/css">

登录、取消俩按钮*/
 .button{	
	margin: 0px ；
	color:#FF9224;
	/* background-color: #FFEEDD; */
	text-shadow:1px 1px1px #FF9224;
	border-radius: 3px;
		} 
		a:hover{
		
		}
		a:link{
	/* 	text-decoration:none; */
		}
		

	 .div1{
		margin:100px auto;
        width: 24%;  
        
		/* background:-webkit-gradient(linear, 0% 0%, 0% 100%,from(#FFEEDD), to(#FFFAF4));/*渐变色*/   */
	}
	</style>
  <body class="linear">
  		<div class="div1">
				<img src="img/workPlace.png" class="logo"/>
				
					<a href="servlet/MianServlet">点击</a>
			
		</div>	  

  </body>
</html>
