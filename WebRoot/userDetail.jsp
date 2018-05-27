<%@page pageEncoding="utf-8" 
contentType="text/html;charset=utf-8" %>
<%-- <%@taglib prefix="c1" uri="http://www.tarena.com/mytag" %> --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c1:sessionValidate/>
<html>
	<head>
		<title>update Emp</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="css/style.css" />
	</head>
	<body>
		<div id="wrap">
			<div id="top_content">
				<%@include file="head.jsp" %>
				<div id="content">
					<p id="whereami">
					</p>
					<h1>
						用户详细信息:
					</h1>
					<table class="table">
						<tr>
							<td>
								姓名
							</td>
							<td>
								电话
							</td>
						</tr>
						<tr>
							<td>
								${user.name}
							</td>
							<td>
								${user.phone}
							</td>
						</tr>
					</table>
					<h1>
						对方要求:
					</h1>
					<table>
						<tr>
							<td colspan="2">
								<textarea cols="80" style="border:0px;resize:none;">${user.ask}</textarea>
							</td>
						</tr>
					</table>
					<br/>
					<h1>
						上传照片:
					</h1>
					<c:if test="${sessionScope.user.id == requestScope.user.id}">
						<form action="upload.do?id=${user.id}" method="post"
							enctype="multipart/form-data">
							<input type="file" name="file1" />
							<input type="submit" value="确定" />
						</form>
					</c:if>
					<h1>
						查看照片:
					</h1>
					<table>	
								<c:if test="${!empty sessionScope.user}">
								<c:forEach var="pic" items="${pics}">
								<tr>
									<td>
										<img src="upload/pic_${user.id}/${pic.picName}" width="300"
											height="200" />
									</td>
								</tr>
								</c:forEach>
								</c:if>
					</table>
				</div>
				<input type="button" onclick="location='list.do'" value="查看所有用户"/>
				
			</div>
			<div id="footer">
				<div id="footer_bg">
					ABC@126.com
				</div>
			</div>
		</div>
	</body>
</html>
