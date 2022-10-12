<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%
change_text change = new change_text();
PrintWriter script = response.getWriter();
ImageBoardDB IBDB = new ImageBoardDB();
String directory = "/common/DownloadImage/";
int maxSize = 1024 * 1024 * 100;
String encoding = "UTF-8";

/* try{ */
    
    File upDir = new File(directory);
    if(!upDir.exists()){ // 폴더가 없으면 생성
        upDir.mkdirs(); 
    }

    MultipartRequest multipartRequest = new MultipartRequest(request, directory,maxSize ,encoding, new DefaultFileRenamePolicy());
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

