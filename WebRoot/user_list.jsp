<%@page pageEncoding="utf-8" 
contentType="text/html;charset=utf-8" %>
<%-- <%@taglib prefix="c1" uri="http://www.tarena.com/mytag" %> --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c1:sessionValidate/>
<html>
	<head>
		<title>emplist</title>
		<meta http-equiv="content-type" content="text/html;charset=utf-8"/>
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
						欢迎!
					</h1>
					<table class="table">
						<tr class="table_header">
							<td>
								ID
							</td>
							<td>
								用户名
							</td>
							<td>
								性别
							</td>
							<td>
								年龄
							</td>
							<td>

							</td>
						</tr>
					<c:forEach var="user" items="${users}" 
					varStatus="status">
						<tr class="row${status.index % 2 + 1}">
							<td>
								${user.id}
							</td>
							<td>
								${user.username}
							</td>
							<td>
								<c:if test="${user.gender == 'm'}">男</c:if>
								<c:if test="${user.gender == 'f'}">女</c:if>
							</td>
							<td>
								${user.age}
							</td>
							<td>
								<a href="userDetail.do?id=${user.id}">详细</a>
							</td>
						</tr>
						</c:forEach>
					</table>
					<p>
						<input type="button" class="button" value="退出系统"
							onclick="location='logout.do'" />
					</p>
				</div>
			</div>
			<div id="footer">
				<div id="footer_bg">
					ABC@126.com
				</div>
			</div>
		</div>
	</body>
</html>
