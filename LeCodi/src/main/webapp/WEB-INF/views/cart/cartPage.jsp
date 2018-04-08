<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>cart</title>
	</head>
	<body>
	<jsp:include page="../header.jsp"></jsp:include>
		<h3>장바구니</h3>
		
		<!-- 파라미터로 넘겨주기만 잘하면 되나? 전체주문이면 그 페이지에 있던 상품 전체를 넘겨주고 선택 주문일 경우는 체크박스로 선택된 상품 번호를 끝어다 넘겨주는 걸로 //그럼 주소가 다르게 들어가야 하나? -->
		<a href="order/orderForm">전체 주문하기</a> <a href="order/orderForm">선택 상품 주문하기</a> <a href="emptyCart">장바구니 비우기</a> <a href="deleteGoods">선택 삭제</a> <a href="./">쇼핑 계속하기</a>
		<jsp:include page="../footer.jsp"></jsp:include>
	</body>
</html>