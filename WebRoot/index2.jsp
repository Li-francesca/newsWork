<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index2.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">  
    <title>编辑器完整版实例</title>  
    <script type="text/javascript" src="ueditor/editor_config.js"></script>  
    <script type="text/javascript" src="ueditor/editor_all.js"></script>  
    <link rel="stylesheet" href="ueditor/themes/default/ueditor.css">  
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <div id="myEditor"></div>  
    <script language="javascript" type="text/javascript">  
        var option = {  
            initialContent : '',//初始化编辑器的内容  
            minFrameHeight : 400,//设置高度  
            textarea : 'content'//设置提交时编辑器内容的名字，之前我们用的名字是默认的editorValue  
        };  
        var editor = new baidu.editor.ui.Editor(option);  
        editor.render("myEditor");  
    </script> 
  </body>
</html>
