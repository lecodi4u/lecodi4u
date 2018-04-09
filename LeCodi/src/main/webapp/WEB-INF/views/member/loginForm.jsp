<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Login</title>
		<script type="text/javascript">
			function check(){
				var checkId = document.getElementById('userid');
				var checkPass = document.getElementById('password');
				
				if(checkId.value == ''){
					alert('ID를 입력해주세요');
					return false;
				}
				if(checkPass.value == ''){
					alert('비밀번호를 입력해주세요');
					return false;
				}
				return true;
			}
		</script>
	</head>
	<body>
	<jsp:include page="../header.jsp"></jsp:include>
	<div class = "login">
		<h3>로그인</h3>
		<form action="login" method="post" onsubmit="return check()">
			<input type="text" id="userid" name="userid" placeholder="ID">
			<br>
			<input type="password" id="password" name="password" placeholder="Password">
			<input type="submit" value="Login">
		</form>
	</div>	
		<br>
		<a href="find">아이디 및 비밀번호 찾기</a><br>
		회원가입을 하시면 다양하고 특별한 혜택이 준비되어 있습니다. <a href="join">Join</a>
	<jsp:include page="../footer.jsp"></jsp:include>	
	</body>
</html>