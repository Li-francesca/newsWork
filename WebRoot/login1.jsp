<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'reg.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/lalala.css">
	<link rel="stylesheet" type="text/css" href="css/index.css">
 <link rel="stylesheet" href="./css/login.css">
    </head> 
    
    <body>
    <div class="login">
        <div class="header">
        
            <h1>
                <a href="login.jsp">返回登录</a> 
                 <a href="regist.jsp">返回注册</a> 
              
            </h1>
            
        </div>
        <form name="loginForm" action=" /NewsWork_zhuoyin/servlet/NewsServlet" method="post">
        <table>
       	 	<tbody>
    <tr>
        
        <td bgcolor="#FFFFFF" ><strong>用户名</strong></td>
        <td bgcolor="#FFFFFF" ><strong>密码</strong></td>
        
    </tr>
    <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/localhost","root","2016");
        Statement stmt=conn.createStatement();
        String sql="select * from t_admin";
        ResultSet rs=stmt.executeQuery(sql);
        while(rs.next()) {
    %>
    <tr>
        
        <td align="left" bgcolor="#FFFFFF"><div align="left"><%=rs.getString("username")%></div></td>
        <td align="left" bgcolor="#FFFFFF"><%=rs.getString("username")%></td>
      
    </tr>
    <%}
        rs.close();
        stmt.close();
        conn.close();
    %>
  

      

    </tbody>
        	  
        </table>
     
        </form>
    </body>

</html>


<%-- <%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<html>
<head>
    <title>用户管理</title>
    <link href="style_admin.css" rel="stylesheet" type="text/css" />
</head>
<body>

<table border="0" align="center" cellpadding="4" cellspacing="1" bgcolor="#006699" class="table1">
    <tbody>
    <tr>
        
        <td bgcolor="#FFFFFF" ><strong>用户名</strong></td>
        <td bgcolor="#FFFFFF" ><strong>密码</strong></td>
        
    </tr>
    <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/localhost","root","2016");
        Statement stmt=conn.createStatement();
        String sql="select * from t_admin";
        ResultSet rs=stmt.executeQuery(sql);
        while(rs.next()) {
    %>
    <tr>
        
        <td align="left" bgcolor="#FFFFFF"><div align="left"><%=rs.getString("username")%></div></td>
        <td align="left" bgcolor="#FFFFFF"><%=rs.getString("username")%></td>
      
    </tr>
    <%}
        rs.close();
        stmt.close();
        conn.close();
    %>
  

      

    </tbody>
</table>
</body>
</html>



 --%>