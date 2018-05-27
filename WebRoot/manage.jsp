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
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="css/lalala.css" href="styles.css">
	
	<link rel="stylesheet" type="text/css" href="css/news.css"/>
	<meta charset="UTF-8">
	<title>后台管理界面</title>
	<link rel="stylesheet" href="css/reset.css" />
	<link rel="stylesheet" href="css/guanli.css" />

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
							<li style="background-color: #000000;color: white; font-size: 22px;"> 
							<a href="servlet/NewsServlet">新闻栏目</a>
							
							</li>
							
							<!--  类型查询-->
							
							 <c:forEach items="${typeresult}" var="typeresult"> 
							  	
	    							 <li> 
	    							 <a href ="${pageContext.request.contextPath}/servlet/TypeServlet?status=doPost &type=${typeresult.type} ">${typeresult.type}</a>
	    <%-- 							 <a href ="${pageContext.request.contextPath}/servlet/AddTypeServlet?status=doPost &id=${typeresult.id} ">添加</a> --%>
	    							 <a href ="${pageContext.request.contextPath}/servlet/DeleteType?status=doPost &id=${typeresult.id} ">删除</a>
	    							 </li>	    		 
    	       				</c:forEach>
									 <li><a href ="addType.jsp">增加栏目</a></li>	    	
						</ul>
					</div>
				</div>
				
				<div id="mright">
				
        
		
		<div id="list">
			<table border="1" width="750" height="500px">
				<tr >             
				<!-- 	<td>新闻ID</td> -->
					<td>新闻标题</td>
					
					<!-- <td>新闻内容</td> -->
					<td>新闻发布人</td>
					<td>新闻类型</td>
					<td>发布时间</td>
					<td>删除新闻</td>
					<td>修改新闻</td>
				</tr>
			<!-- </table>
		</div>	
     <table> -->
    	   <c:forEach items="${newsresult}" var="newsresult">  
	    	   <tr>    	   	  	    	 
	    	   	 <td><a href = "${pageContext.request.contextPath}/servlet/ContentQServlet?status=doPost &id=${newsresult.id} ">${newsresult.title}</a></td>
	    	   	 <td>${newsresult.admin}</td>
	    	   	 <td>${newsresult.type}</td>
	    	   	 <td>${newsresult.date}</td>
	    	   	 <td><a href ="${pageContext.request.contextPath}/servlet/ContentServlet?status=doPost &id=${newsresult.id} ">更改</a></td>
	    		 <td><a href ="${pageContext.request.contextPath}/servlet/DelServlet?status=doPost &id=${newsresult.id} ">删除</a></td>	    		 
	    	   </tr>
	       </c:forEach>  	       
     </table>
     
      <div>  
	                       第${requestScope.currentPage}页/共${requestScope.totalPage}页
	         <a href="${pageContext.request.contextPath}/servlet/TypeServlet?status=doPost&currentPage=1&type=${requestScope.type}">首页</a>  
	         
	         <c:choose>  
	             <c:when test="${requestScope.currentPage=='1'}">  
	                                          上一页  
	             </c:when>  
		         <c:otherwise>  
		               
		               <a href="${pageContext.request.contextPath}/servlet/TypeServlet?currentPage=${currentPage-1}&type=${type}">上一页</a>   
		         
		         </c:otherwise> 
		          
	         </c:choose> 
	         
	         <c:choose>  
	             <c:when test="${requestScope.currentPage==requestScope.totalPage}">  
	                                         下一页  
	             </c:when>  
		         <c:otherwise>  
		             <a href="${pageContext.request.contextPath}/servlet/TypeServlet?&currentPage=${requestScope.currentPage+1}&type=${requestScope.type}"> 下一页</a>  
		         </c:otherwise>  	         
	         </c:choose> 
	        
	         <a href="${pageContext.request.contextPath}/servlet/TypeServlet?status=doPost &currentPage=${requestScope.totalPage}&type=${requestScope.type}">尾页</a>  
       </div>  
    
				
				
				</div>
				<!-- <a href ="addnews.jsp">增加新闻</a> -->
				<a href ="articleAdd.jsp">增加新闻</a>
				<form action="servlet/QueryServlet" method="post">     
			     <table>	     	
				    <tr>
				     	<td>请输入<input type = "text" name="key" value="${key}"/></td>
				     	<td colspan=3><input type="submit" value="查询新闻" /></td>
				    </tr>		 	      
			     </table>
	 </form>
				
			</div>
			
			
		</div>
  <%-- <p>欢迎你 ${user_name}</p>
	 <table>   	   
    	   <tr> 
    	   		 <td><a href ="${pageContext.request.contextPath}/servlet/TypeServlet?status=doPost  ">综合</a></td>   	   	  	    	 
	    	   <c:forEach items="${typeresult}" var="typeresult">  	
	    		 <td><a href ="${pageContext.request.contextPath}/servlet/TypeServlet?status=doPost &type=${typeresult.type} ">${typeresult.type}</a></td>	    		 
    	       </c:forEach> 
    	   </tr>	        	       
      </table> --%>
      
     
      
      
     
     
	</body>
</html>
		
 