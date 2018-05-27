<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>添加文章</title>
<script type="text/javascript" src="ueditor/ueditor.config.js"></script>
<script type="text/javascript" src="ueditor/ueditor.all.js"></script>
</head>
<body>
<div>
<form action="articleSave.jsp" method="post">
 文章题目：<input type="text" name="title"/>
 <!-- 文章内容：<textarea name="content" cols="10" rows="10" id="content"></textarea> -->
<!--   文章内容：<input type="text" name="content"/> -->
 文章类型：<input type="text" name="type"/>
 文章作者：<input type="text" name="admin"/>
 发表日期：<input type="date" name="date"/>
 
 <textarea id="container" name="content" style="width: 800px; height: 400px;">
</textarea>
<input type="submit" value="提交"/>
</form>
<script type="text/javascript">
  var ue=UE.getEditor("container");
</script>
</div>
</body>
</html>