<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>qna</title>
		<script type="text/javascript">
		function check(){
			var title = document.getElementById('title');
			var context = document.getElementById('context');
			
			if(title == ''){
				alert('빈 칸을 입력해주세요');
				return false;
			}
			if(context == ''){
				alert('빈 칸을 입력해주세요');
				return false;
			}
			return true;
		}
	</script>
	</head>
	<body>
		<h3>문의하기</h3>
		<form action="writeQ" method="post" onsubmit="return check()">
			<input type="text" id="title" name="title" placeholder="제목">
			<input type="text" id="context" name="context" placeholder="내용" height="50px" width="150px">
			<input type="submit" value="작성하기">
		</form>
	</body>
</html>