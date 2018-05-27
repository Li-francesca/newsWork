<%@ page import="java.sql.*,java.io.*" language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>存储文章</title>
</head>
<body>
 <% 
  request.setCharacterEncoding("UTF-8");
  response.setCharacterEncoding("UTF-8");
  response.setContentType("text/html;charset=utf-8");
  String title=request.getParameter("title");
  String content=request.getParameter("content");
  String type=request.getParameter("type");
  String admin=request.getParameter("admin");
  String date=request.getParameter("date");
  String  DRIVER = "com.mysql.jdbc.Driver";
  String URL = "jdbc:mysql://localhost:3306/localhost";
  String USERNAME = "root";
  String PASSWORD = "2016";
  Class.forName(DRIVER);
  Connection conn=DriverManager.getConnection(URL,USERNAME,PASSWORD);
  String sql="insert into t_new (title,content,type,admin,date) values('"+title+"','"+content+"','"+type+"','"+admin+"','"+date+"')";
  PreparedStatement ps=conn.prepareStatement(sql);
  int isSucceed=ps.executeUpdate();
  if(isSucceed==1){
	  response.getWriter().print("<script language='javascript'>alert('发表成功');</script>");
	/*   response.setHeader("refresh","1,URL=articleAdd.jsp");  */
  }else{
	  response.getWriter().print("<script language='javascript'>alert('发表失败，请重新发表');</script>");
	 /*  response.setHeader("refresh","1,URL=articleAdd.jsp"); */
  }
 %>
 <a href="javascript:history.go(-2)">返回</a>
</body>
</html>