<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type = "text/javascript">
	function checkForm(){
		var form = document.loginForm;
		
		if(document.frm.id.value.length<4||document.frm.id.value.length>12){
			alert("아이디는 4~12자 이내로 입력해주세요.");
			document.frm.id.select();
			return;
		}
		else if(form.passwd.value.length<4){
			alert("비밀번호는 4자 이상으로 입력해야 합니다.");
			form.passwd.select();
			return;
		}
		form.submit();
	}
</script>
<body>
	<form name="loginForm" action="validation07.jsp" method="post">
		<p> 아이디 : <input type="text" name="id">
		<p>비밀번호 : <input type="text" name="passwd">
		<p> <input type="button" value="전송" onclick="checklogin">
	</form>
</body>
</html>