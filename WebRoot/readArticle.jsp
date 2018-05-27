<%@ page language="java" import="java.io.*,java.sql.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");
response.setContentType("text/html;charset=utf-8");
String  DRIVER = "com.mysql.jdbc.Driver";
String URL = "jdbc:mysql://localhost:3306/localhost";
String USERNAME = "root";
String PASSWORD = "2016";
Class.forName(DRIVER);
Connection conn=DriverManager.getConnection(URL,USERNAME,PASSWORD);
String sql="select title,content,type，admin,date from articles where id=12";
ResultSet rs=null;
String title=null;
String content=null;
String type=null;
String admin=null;
String date=null;
PreparedStatement ps=conn.prepareStatement(sql);
rs=ps.executeQuery();
while(rs.next()){
	title=rs.getString(1);
	content=rs.getString(2);
	type=rs.getString(3);
	admin=rs.getString(4);
	date=rs.getString(5);

%>

文章题目：<%=title%><br>
文章内容：<%=content%><br>
文章类型：<%=type%><br>
文章作者：<%=admin%><br>
发表日期：<%=date%><br>
<%
}
%>
</body>
</html>