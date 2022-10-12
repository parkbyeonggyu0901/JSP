<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%
	int size = 100 * 1024 * 1024;
	String savePath=request.getServletContext().getRealPath("Upload");
	MultipartRequest multi;
	multi = new MultipartRequest(request,savePath,size,"UTF-8",new DefaultFileRenamePolicy()); 
	String tilte = multi.getParameter("title");
	out.println("<h3>"+title+"</h3>");
	
	Enumeration files = multi.getFileNames();
	String name = (String) files.nextElement();
	
	String filename = multi.getFilesystemName(name);
	String original = multi.getOriginalFileName(name);
	
	out.println("실제 파일 이름 : "+original + "<br>");
	out.println("저장 파일 이름 : "+filename + "<br>");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>

