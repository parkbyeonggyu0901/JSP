<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%
	
	int size = 100 * 1024 * 1024;
	String savePath=request.getServletContext().getRealPath("Upload");
	MultipartRequest multi;
	multi = new MultipartRequest(request,savePath,size,"UTF-8"); 
	
	Enumeration files = multi.getParameterNames();
	
	while (params.hasMoreElements()){
		String name = (string) params.nextElement();
		String value = multi.getParameter(name);
		out.println(name + " = "+value +"<br>");
	}
	out.println("-------------------<br>");
	
	Enumeration files = multi.getFileNames();
	
	while (files.hasMoreElements()){
		String name = (string) files.nextElement();
		String ofilename = multi.getFilesystemName(name);
		String original = multi.getOriginalFileName(name);
		String type = multi.getContentType(name);
		File file = multi.getFile(name);
		
		out.println("요청 파라미터 이름 : "+name+"<br>");
		out.println("실제 파일 이름 "+original+"<br>");
		out.println("저장 파일 이름 : "+filename+"<br>");
		out.println("파일 콘텐츠 유형 이름 : "+file+"<br>");
		
		if(file != null){
			out.println("파일 크기 : "+file.length());
			out.println("<br>");
		}
	}
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