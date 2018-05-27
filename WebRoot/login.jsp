<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
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
                <a href="login.jsp">登录</a> 
                 <a href="regist.jsp">注册</a> 
              
            </h1>
            
        </div>
        <form name="loginForm" action=" /NewsWork_zhuoyin/servlet/NewsServlet" method="post">
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
         <td class="td1" colspan="2">
             
            
                    <input type="checkbox" checked="checked">
                    记住用户名
              
           
         </td>
        
        </tr>
        <tr>
        <td colspan="2">
        <div class="btn-red">
                <input type="submit" value="登录" id="login-btn">
            </div>
               <a href="login1.jsp">查看其它用户</a>
        </td>
        </tr>
         
        </table>
     
        </form>
    </body>

</html>

<%--  
 <%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title>登录</title>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
</head>
<body>
	<div class="bg"></div>
	<div class="container">
		<div class="line bouncein">
			<div class="xs6 xm4 xs3-move xm4-move">
				<div style="height: 150px;"></div>
				<div class="media media-y margin-big-bottom"></div>
				<form action="./login.do" method="post">
					<div class="panel loginbox">
						<div class="text-center margin-big padding-big-top">
							<h1>后台管理中心</h1>
						</div>
						<div class="panel-body"
							style="padding: 30px; padding-bottom: 10px; padding-top: 10px;">
							<div class="form-group">
								<div class="field field-icon-right">
									<input type="text" class="input input-big" name="user.username"
										placeholder="登录账号" data-validate="required:请填写账号" /> <span
										class="icon icon-user margin-small"></span>
								</div>
							</div>
							<div class="form-group">
								<div class="field field-icon-right">
									<input type="password" class="input input-big"
										name="user.password" placeholder="登录密码"
										data-validate="required:请填写密码" /> <span
										class="icon icon-key margin-small"></span>
								</div>
							</div>
						</div>
						${error }
						<s:property value="#request.error"/>
						<div style="padding: 30px;">
							<input type="submit"
								class="button button-block bg-main text-big input-big"
								value="登录">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

</body>
</html> --%>