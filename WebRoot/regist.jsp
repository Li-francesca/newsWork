



<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <script language="javascript">
        function isValid(form)
        {
            if (form.username.value=="")
            {
                alert("用户名不能为空");
                return false;
            }
            if (form.pwd.value!=form.pwd2.value)
            {
                alert("两次输入的密码不同！");
                return false;
            }
            else  if (form.pwd.value=="")
            {
                alert("用户密码不能为空！");
                return false;
            }
            else return true;
        }
    </script>
    <base href="<%=basePath%>">
    
    <title>My JSP 'reg.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/index.css">
 <link rel="stylesheet" href="./css/login.css">
    </head> 
    
    <body>
    <div class="login">
        <div class="header">
            <h1>
                 <a href="login.jsp">登录</a> 
                 <a href="regist.jsp">注册</a> 
            </h1>
            
        </div>
        <form name="registForm" action=" checkRegister.jsp" method="post" onSubmit="return isValid(this);">
        <table>
        <tr>
       		 <td class="td1">用户名</td>
        <td>
               <input type="text" name="username" />
        </td>
        </tr>
         <td class="td1">密码</td>
        <td>
                <input type="password" name="password" >      
        </td>
        </tr>
          </tr>
          <tr><td>确认密码:</td><td><input type="password"name="password2" ></td><tr> 
         <td class="td1" colspan="2">
             
            
                    <input type="checkbox" checked="checked">
                    记住用户名
              
           
         </td>
        
        </tr>
        <tr>
        <td colspan="2">
        <div class="btn-red">
                <input type="submit" value="提交" id="login-btn">
            </div>
             <a href="login1.jsp">查看其它用户</a>
        </td>
       
        </tr>
        </table>
     
        </form>
    </body>
<!-- <body class="linear">
		
		<div class="list_left">
			<img src="images/left_banner.jpg" border="0">
			
		 		<form name="loginForm" action=" /NewsWork_zhuoyin/servlet/NewsServlet" method="post" >
					    <span class="style">
					    	管理员:<input type="text" name="username" />
					    </span><br /><br />
					    <span class="style">
					    	密&nbsp;码:<input type="password" name="password" >
					    </span><br /><br />
					    <span style=" position:relative;left:175px">
					    	<input type="submit" value="登录"class="button"/>&nbsp;&nbsp;
					   		<input type="reset" value="取消"class="button"/>&nbsp;&nbsp; 
					    </span>
				</form>	  
</body> -->
</html>





<%-- 
<%@ page language="java" import="java.util.*" contentType="text/html;charset=utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>注册页面</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
    <link href="style_admin.css" rel="stylesheet" type="text/css">
    <script language="javascript">
        function isValid(form)
        {
            if (form.username.value=="")
            {
                alert("用户名不能为空");
                return false;
            }
            if (form.pwd.value!=form.pwd2.value)
            {
                alert("两次输入的密码不同！");
                return false;
            }
            else  if (form.pwd.value=="")
            {
                alert("用户密码不能为空！");
                return false;
            }
            else return true;
        }
    </script>
</head>
<body>
<center>
    <body bgcolor="#e3e3e3">
    <h2>用户注册</h2>
    <form action="checkRegister.jsp" method="post" onSubmit="return isValid(this);">
        <table>
            <tr><td>用户名:</td><td><input type="text" name="username" size="20"/></td></tr>
            <tr><td>输入密码:</td><td><input type="text" name="password" size="20"/></td></tr>
          	<tr><td>再次确认密码:</td><td><input type="text"name="password2" size="20"/></td><tr> 
            <tr><td><input type="submit" value="注册"/><td><input type="reset" value="重置"/>
        </table>
    </form>
</center>
<br>
</body>
</html> --%>