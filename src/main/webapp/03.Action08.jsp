<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>이 파일은 1페이지 입니다.</h3>
	<jsp:include page="03.Action09.jsp">
		<jsp:param name="date" value="<%=new java.util.Date() %>"/>
	</jsp:include>
	<p>자바 서버 페이지</p>
</body>
</html>