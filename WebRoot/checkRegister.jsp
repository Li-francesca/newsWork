
<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>注册检查页面</title>

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
<%      //接收用户名和密码
    String username =request.getParameter("username");
    String password =request.getParameter("password");

    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/localhost","root","2016");
    Statement stmt=conn.createStatement();
//    String sql="insert into t_user (username,password) values ('"+ user +"','"+ pwd +"')";
//    stmt.executeUpdate(sql);
    //检测用户名是否已经存在
    String sql = "select * from t_admin where username = '" + username + "'";
    ResultSet rs = stmt.executeQuery(sql);
    if(rs.next()){
        out.println("<script language='javascript'>alert('该用户已存在，请重新注册！');window.location.href='regist.jsp';</script>");
    }else {
//        Statement stmt = conn.prepareStatement("Insert into tb_user values('" + user + "','" + pwd + "')");
//        int rst = stmt.executeUpdate();
        String sql2 = "insert into t_admin (username,password) values ('" + username + "','" + password + "')";
        int rs2 = stmt.executeUpdate(sql2);
        if (rs2 != 0) {
            out.println("<script language='javascript'>alert('用户注册成功！请重新登录');window.location.href='login.jsp';</script>");
        } else {
            out.println("<script language='javascript'>alert('用户注册失败！');window.location.href='regist.jsp';</script>");
        }
        rs.close();
        stmt.close();
        conn.close();
    }
%>
</body>
</html>