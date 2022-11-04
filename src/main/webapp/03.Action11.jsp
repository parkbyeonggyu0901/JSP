<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>param 액션 태그</h3>
	<jsp:forward page="03.Action10.jsp">
		<jsp:param value="admin" name="id"/>
		<jsp:param value='<%=java.net.URLEncoder.encode("관리자") %>' name="name"/>
	</jsp:forward>
	<p>자바 서버 페이
</body>
</html>