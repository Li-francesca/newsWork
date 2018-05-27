<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MainServlet.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  
  
  
  
  
  
  
  
  <c:forEach items="${typeresult}" var="typeresult">  	
	    							 <li> <a href ="${pageContext.request.contextPath}/servlet/TypeServlet?status=doPost &type=${typeresult.type} ">${typeresult.type}</a></li>	    		 
    	       				</c:forEach> 
    	       				
    	       				<table> 
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
    
    	       				
  </body>
</html>
