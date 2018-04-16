<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>cart</title>
	<style type="text/css">
	body {
	background: #eee;
	margin: 0;
	padding: 0;
	overflow-x: hidden;
}

.clearfix {
  content: "";
  display: table;
  clear: both;	
}

#site-header, #site-footer {
	background: #fff;
}

#site-header {
	margin: 0 0 30px 0;
}

#site-header h1 {
	font-size: 31px;
	font-weight: 300;
	padding: 40px 0;
	position: relative;
	margin: 0;
}

a {
	color: #000;
	text-decoration: none;

	-webkit-transition: color .2s linear;
	-moz-transition: color .2s linear;
	-ms-transition: color .2s linear;
	-o-transition: color .2s linear;
	transition: color .2s linear;
}

a:hover {
	color: #53b5aa;
}

#site-header h1 span {
	color: #53b5aa;
}

#site-header h1 span.last-span {
	background: #fff;
	padding-right: 150px;
	position: absolute;
	left: 217px;

	-webkit-transition: all .2s linear;
	-moz-transition: all .2s linear;
	-ms-transition: all .2s linear;
	-o-transition: all .2s linear;
	transition: all .2s linear;
}

#site-header h1:hover span.last-span, #site-header h1 span.is-open {
	left: 363px;
}

#site-header h1 em {
	font-size: 16px;
	font-style: normal;
	vertical-align: middle;
}

.container {
	font-family: 'Open Sans', sans-serif;
	margin: 0 auto;
	width: 980px;
}

#cart {
	width: 100%;
}

#cart h1 {
	font-weight: 300;
}

#cart a {
	color: #53b5aa;
	text-decoration: none;

	-webkit-transition: color .2s linear;
	-moz-transition: color .2s linear;
	-ms-transition: color .2s linear;
	-o-transition: color .2s linear;
	transition: color .2s linear;
}

#cart a:hover {
	color: #000;
}

.product.removed {
	margin-left: 980px !important;
	opacity: 0;
}

.product {
	border: 1px solid #eee;
	margin: 20px 0;
	width: 100%;
	height: 195px;
	position: relative;

	-webkit-transition: margin .2s linear, opacity .2s linear;
	-moz-transition: margin .2s linear, opacity .2s linear;
	-ms-transition: margin .2s linear, opacity .2s linear;
	-o-transition: margin .2s linear, opacity .2s linear;
	transition: margin .2s linear, opacity .2s linear;
}

.product img {
	width: 100%;
	height: 100%;
}

.product header, .product .content {
	background-color: #fff;
	border: 1px solid #ccc;
	border-style: none none solid none;
	float: left;
}

.product header {
	background: #000;
	margin: 0 1% 20px 0;
	overflow: hidden;
	padding: 0;
	position: relative;
	width: 24%;
	height: 195px;
}

.product header:hover img {
	opacity: .7;
}

.product header:hover h3 {
	bottom: 73px;
}

.product header h3 {
	background: #53b5aa;
	color: #fff;
	font-size: 22px;
	font-weight: 300;
	line-height: 49px;
	margin: 0;
	padding: 0 30px;
	position: absolute;
	bottom: -50px;
	right: 0;
	left: 0;

	-webkit-transition: bottom .2s linear;
	-moz-transition: bottom .2s linear;
	-ms-transition: bottom .2s linear;
	-o-transition: bottom .2s linear;
	transition: bottom .2s linear;
}

.remove {
	cursor: pointer;
}

.product .content {
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	height: 140px;
	padding: 0 20px;
	width: 75%;
}

.product h1 {
	color: #53b5aa;
	font-size: 25px;
	font-weight: 300;
	margin: 17px 0 20px 0;
}

.product footer.content {
	height: 50px;
	margin: 6px 0 0 0;
	padding: 0;
}

.product footer .price {
	background: #fcfcfc;
	color: #000;
	float: right;
	font-size: 15px;
	font-weight: 300;
	line-height: 49px;
	margin: 0;
	padding: 0 30px;
}

.product footer .full-price {
	background: #53b5aa;
	color: #fff;
	float: right;
	font-size: 22px;
	font-weight: 300;
	line-height: 49px;
	margin: 0;
	padding: 0 30px;

	-webkit-transition: margin .15s linear;
	-moz-transition: margin .15s linear;
	-ms-transition: margin .15s linear;
	-o-transition: margin .15s linear;
	transition: margin .15s linear;
}

.qt, .qt-plus, .qt-minus {
	display: block;
	float: left;
}

.qt {
	font-size: 19px;
	line-height: 50px;
	width: 70px;
	text-align: center;
}

.qt-plus, .qt-minus {
	background: #fcfcfc;
	border: none;
	font-size: 30px;
	font-weight: 300;
	height: 100%;
	padding: 0 20px;
	-webkit-transition: background .2s linear;
	-moz-transition: background .2s linear;
	-ms-transition: background .2s linear;
	-o-transition: background .2s linear;
	transition: background .2s linear;
}

.qt-plus:hover, .qt-minus:hover {
	background: #53b5aa;
	color: #fff;
	cursor: pointer;
}

.qt-plus {
	line-height: 50px;
}

.qt-minus {
	line-height: 47px;
}

#site-footer {
	margin: 30px 0 0 0;
}

#site-footer {
	padding: 40px;
}

#site-footer h1 {
	background: #fcfcfc;
	border: 1px solid #ccc;
	border-style: none none solid none;
	font-size: 24px;
	font-weight: 300;
	margin: 0 0 7px 0;
	padding: 14px 40px;
	text-align: center;
}

#site-footer h2 {
	font-size: 24px;
	font-weight: 300;
	margin: 10px 0 0 0;
}

#site-footer h3 {
	font-size: 19px;
	font-weight: 300;
	margin: 15px 0;
}

.left {
	float: left;
}

.right {
	float: right;
}

.btn {
	background: #53b5aa;
	border: 1px solid #999;
	border-style: none none solid none;
	cursor: pointer;
	display: block;
	color: #fff;
	font-size: 20px;
	font-weight: 300;
	padding: 16px 0;
	width: 290px;
	text-align: center;

	-webkit-transition: all .2s linear;
	-moz-transition: all .2s linear;
	-ms-transition: all .2s linear;
	-o-transition: all .2s linear;
	transition: all .2s linear;
}

.btn:hover {
	color: #fff;
	background: #429188;
}

.type {
	background: #fcfcfc;
	font-size: 13px;
	padding: 10px 16px;
	left: 100%;
}

.type, .color {
	border: 1px solid #ccc;
	border-style: none none solid none;
	position: absolute;
}

.color {
	width: 40px;
	height: 40px;
	right: -40px;
}

.red {
	background: #cb5a5e;
}

.yellow {
	background: #f1c40f;
}

.blue {
	background: #3598dc;
}

.minused {
	margin: 0 50px 0 0 !important;
}

.added {
	margin: 0 -50px 0 0 !important;
}
	
	</style>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js" type="text/javascript"></script>
	<script src="https://clippingmagic.com/api/v1/ClippingMagic.js" type="text/javascript"></script>
	<script type="text/javascript">
	//이거 뭐였지 
	$( document ).ready(function() {
  // Handler for .ready() called.
	var errorsArray = ClippingMagic.initialize({apiId: 123});
	if (errorsArray.length > 0) alert("Sorry, your browser is missing some required features: \n\n " + errorsArray.join("\n "));
	
	ClippingMagic.edit({
	    "images" : [ {
	      "id" : 2345,
	      "secret" : "image_secret"
	    }, {
	      "id" : 2346,
	      "secret" : "image_secret2"
	    } ],
	    "locale" : "en-US"
	  }, c
  
});
	
	
	
		
	
	
	
	function changeVal(el) {
	  var qt = parseFloat(el.parent().children(".qt").html());
	  var price = parseFloat(el.parent().children(".price").html());
	  var eq = Math.round(price * qt * 100) / 100;
	  
	  el.parent().children(".full-price").html( eq + "원" );
	  
	  changeTotal();			
	}

	function changeTotal() {
	  
	  var price = 0;
	  
	  $(".full-price").each(function(index){
	    price += parseFloat($(".full-price").eq(index).html());
	  });
	  
	  price = Math.round(price * 100) / 100;
	  var tax = Math.round(price * 0.05 * 100) / 100
	  var shipping = parseFloat($(".shipping span").html());
	  var fullPrice = Math.round((price + tax + shipping) *100) / 100;
	  
	  if(price == 0) {
	    fullPrice = 0;
	  }
	  
	  $(".subtotal span").html(price);
	  $(".tax span").html(tax);
	  $(".total span").html(fullPrice);
	}

	$(document).ready(function(){
	  
	  $(".remove").click(function(){
	    var el = $(this);
	    el.parent().parent().addClass("removed");
	    window.setTimeout(
	      function(){
	        el.parent().parent().slideUp('fast', function() { 
	          el.parent().parent().remove(); 
	          if($(".product").length == 0) {
	            if(check) {
	              $("#cart").html("<h1>The shop does not function, yet!</h1><p>If you liked my shopping cart, please take a second and heart this Pen on <a href='https://codepen.io/ziga-miklic/pen/xhpob'>CodePen</a>. Thank you!</p>");
	            } else {
	              $("#cart").html("<h1>No products!</h1>");
	            }
	          }
	          changeTotal(); 
	        });
	      }, 200);
	  });
	  
	  $(".qt-plus").click(function(){
	    $(this).parent().children(".qt").html(parseInt($(this).parent().children(".qt").html()) + 1);
	    
	    $(this).parent().children(".full-price").addClass("added");
	    
	    var el = $(this);
	    window.setTimeout(function(){el.parent().children(".full-price").removeClass("added"); changeVal(el);}, 150);
	  });
	  
	  $(".qt-minus").click(function(){
	    
	    child = $(this).parent().children(".qt");
	    
	    if(parseInt(child.html()) > 1) {
	      child.html(parseInt(child.html()) - 1);
	    }
	    
	    $(this).parent().children(".full-price").addClass("minused");
	    
	    var el = $(this);
	    window.setTimeout(function(){el.parent().children(".full-price").removeClass("minused"); changeVal(el);}, 150);
	  });
	  
	  window.setTimeout(function(){$(".is-open").removeClass("is-open")}, 1200);
	  
	  $(".btn").click(function(){
	    check = true;
	    $(".remove").click();
	  });
	});
	
	
	</script>
	</head>
	<body>
	<jsp:include page="../header.jsp"></jsp:include>
		<h3>장바구니</h3>
		
		<!-- 파라미터로 넘겨주기만 잘하면 되나? 전체주문이면 그 페이지에 있던 상품 전체를 넘겨주고 선택 주문일 경우는 체크박스로 선택된 상품 번호를 끝어다 넘겨주는 걸로 //그럼 주소가 다르게 들어가야 하나? -->
			<header id="site-header">
		<div class="container">
			<h1>Shopping cart <span>[</span> <em><a href="https://codepen.io/tag/rodeo-007" target="_blank"></a></em> <span class="last-span is-open">]</span></h1>
		</div>
	</header>

	<div class="container">

		<section id="cart"> 
			<article class="product">
				<header>
					<a class="remove">
						<img src="http://www.astudio.si/preview/blockedwp/wp-content/uploads/2012/08/1.jpg" alt="">

						<h3>삭제</h3>
					</a>
				</header>

				<div class="content">

					<h1>장바구니</h1>

					뭘 적지
					<div title="You have selected this product to be shipped in the color yellow." style="top: 0" class="color yellow"></div>
					<div style="top: 43px" class="type small">XXL</div>
				</div>

				<footer class="content">
					<span class="qt-minus">-</span>
					<span class="qt">2</span>
					<span class="qt-plus">+</span>

					<h2 class="full-price">
						29000원
					</h2>

					<h2 class="price">
						15000원
					</h2>
				</footer>
			</article>

			<article class="product">
				<header>
					<a class="remove">
						<img src="http://www.astudio.si/preview/blockedwp/wp-content/uploads/2012/08/3.jpg" alt="">

						<h3>삭제</h3>
					</a>
				</header>

				<div class="content">

					<h1>장바구니1</h1>

					아이신나

					<div title="You have selected this product to be shipped in the color red." style="top: 0" class="color red"></div>
					<div title="You have selected this product to be shipped sized Small."  style="top: 43px" class="type small">Small</div>
				</div>

				<footer class="content">
					
					<span class="qt-minus">-</span>
					<span class="qt">1</span>
					<span class="qt-plus">+</span>

					<h2 class="full-price">
						70000원
					</h2>

					<h2 class="price">
						70000원
					</h2>
				</footer>
			</article>

			<article class="product">
				<header>
					<a class="remove">
						<img src="http://www.astudio.si/preview/blockedwp/wp-content/uploads/2012/08/5.jpg" alt="">

						<h3>삭제</h3>
					</a>
				</header>

				<div class="content">

					<h1>장바구니2</h1>

					아이신나2.

					<div title="You have selected this product to be shipped in the color blue." style="top: 0" class="color blue"></div>
					<div style="top: 43px" class="type small">Large</div>
				</div>

				<footer class="content">
					
					<span class="qt-minus">-</span>
					<span class="qt">3</span>
					<span class="qt-plus">+</span>

					<h2 class="full-price">
						50000원
					</h2>

					<h2 class="price">
						17000원
					</h2>
				</footer>
			</article>

		</section>

	</div>

	<footer id="site-footer">
		<div class="container clearfix">

			<div class="left">
				<h2 class="subtotal">총합: <span>16000원</span></h2>
				<h3 class="tax">부가세 (5%): <span>800원</span></h3>
				<h3 class="shipping">Shipping: <span>3000원</span></h3>
			</div>

			<div class="right">
				<h1 class="total">합계: <span>17000원</span></h1>
				<a class="btn">체크아웃</a>
			</div>

		</div>
	</footer>
	<button onclick="myFunction()">Click me</button>
	
		<div style="text-align: center;">
		<a href="order/orderForm">전체 주문하기</a>
		<br> 
		<a href="order/orderForm">선택 상품 주문하기</a> 
		<br>
		<a href="emptyCart">장바구니 비우기</a> 
		<br>
		<a href="deleteGoods">선택 삭제</a> 
		<br>
		<a href="./">쇼핑 계속하기</a>
		<br>
		</div>
		<jsp:include page="../footer.jsp"></jsp:include>
	</body>
</html>