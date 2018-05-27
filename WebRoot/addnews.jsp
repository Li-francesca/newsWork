<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addnews.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="css/lalala.css" href="styles.css">
	
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
							<li style="background-color: #000000;color: white; font-size: 22px;"> 新闻栏目</li>
							
							<!--  类型查询-->
							
							 <c:forEach items="${typeresult}" var="typeresult"> 
							  	
	    							 <li> 
	    							 <a href ="${pageContext.request.contextPath}/servlet/TypeServlet?status=doPost &type=${typeresult.type} ">${typeresult.type}</a>
	    <%-- 							 <a href ="${pageContext.request.contextPath}/servlet/AddTypeServlet?status=doPost &id=${typeresult.id} ">添加</a> --%>
	    							<%--  <a href ="${pageContext.request.contextPath}/servlet/DeleteType?status=doPost &id=${typeresult.id} ">删除</a> --%>
	    							 </li>	    		 
    	       				</c:forEach>
								<!-- 	 <li><a href ="addType.jsp">增加栏目</a></li>	    	 -->
						</ul>
					</div>
				</div>
				<div id="mright">
  				 		 <form action="servlet/AddServlet" method="post">
    							<table>
    	
    	
			 		<div class="one">
			 			新闻标题：   <input type="text" name="title" id="title" size="40" />
			 		</div>
			 		<div class="two">
			 			内容：  <textarea name="content" cols="60" rows="7" id="content"></textarea>
			 		</div>
			 		<div class="one">
			 			发布人：<input type="text" name="username"  id="type" size="28" />
			 		</div>
			 		<div class="one">
			 			类型：<input type="text" name="type" size="22" />
			 		</div>
			 		<div class="one">
			 			时间：<input type="text"  name="date" size="25" />
			 		</div>
			 		<div class="btn1">
			 			<input type="submit" name="button" id="button" value="提交" />
			 		</div>
			 		<div class="btn2">
			 			<input type="reset" value="重置" />
			 		</div>
    	</table>
    	</div>
    	  <!--  <tr>
    	   	 <td>题目</td>
    	   	 <td><input type="text" name="title"/></td>
    	   </tr>
    	   <tr>
    	   	 <td>类型</td>
    	   	 <td><input type="text" name="type"/></td>
    	   </tr>
    	   <tr>
    	   	 <td>日期</td>
    	   	 <td><input type="text" name="date"/></td>
    	   </tr>
    	   <tr>
    	   	 <td>作者</td>
    	   	 <td><input type="text" name="admin"/></td>
    	   </tr>
    	   <tr>
    	   	 <td>内容</td>
    	   	 <td><input type="text" name="content"/></td>
    	   </tr>   	   
    	   <tr>
    	   	 <td colspan=3><input type="submit" value="增加新闻"/></td>
    	   </tr>
    	</table> -->
    </form>
    
  </body>
</html>
