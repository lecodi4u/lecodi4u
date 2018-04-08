<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html> 
<html lang="ko-KR"> 
<head> 
<meta charset="utf-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
<meta name="description" content=""> 
<meta name="author" content=""> 
<title>Le Codi</title> 

<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet"> 
 
<link rel="shortcut icon" href="../../assets/ico/favicon.png"> 
<!-- 1. 파비콘 걸기 --> <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<!-- 구글 폰트 --> 
<link href="https://fonts.googleapis.com/css?family=Chicle|IBM+Plex+Mono|Indie+Flower" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Pacifico|Shadows+Into+Light" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=East+Sea+Dokdo|Hi+Melody|Pacifico|Shadows+Into+Light" rel="stylesheet">
<!-- 2.부트스트랩용 CSS --> 
<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet" /> 
<!-- 3.폰트아이콘용 CSS --> 
<style type="text/css"> 
/*floating menu*/
 body{
    margin-top:20px;
    background:#eee;
    height:1500px;
} 
.main-navigation .menu li a {
    display: block;
    font-size: 12px;
    color: #999;
    text-transform: uppercase;
    text-decoration: none;
    letter-spacing: .1em;
    padding-left: 20px;
    padding-right: 20px;
    -webkit-transition: color 0.3s;
    -o-transition: color 0.3s;
    transition: color 0.3s;
}
.floating-menu-btn {
    display: block;
    position: fixed;
    z-index: 100;
    top: 50px;
    right: 35px;
    width: 56px;
    height: 56px;
    border-radius: 50%;
}
.floating-menu-btn .floating-menu-toggle .bar {
    width: 22px;
    margin: 0 0 4px 0;
}
.mobile-menu-toggle .bar, .floating-menu-toggle .bar {
    display: block;
    will-change: transform, opacity;
    width: 32px;
    height: 2px;
    margin: 0 0 6px 0;
    background: #333;
    opacity: 1;
    -webkit-transform: translate(0) rotate(0deg);
    -moz-transform: translate(0) rotate(0deg);
    -ms-transform: translate(0) rotate(0deg);
    -o-transform: translate(0) rotate(0deg);
    transform: translate(0) rotate(0deg);
    -webkit-transition: all 0.2s ease-out;
    -o-transition: all 0.2s ease-out;
    transition: all 0.2s ease-out;
}
.floating-header {
    position: absolute;
    z-index: 100;
    display: block;
    width: 100%;
    padding: 35px
}

.floating-header .site-logo {
    max-width: 79px;
    padding: 0;
    margin: 0 !important
}

.floating-header+* {
    padding-top: 100px
}

@media screen and (max-width: 768px) {
    .floating-header {
        padding: 25px 15px
    }
    .floating-header+* {
        padding-top: 175px
    }
}

.floating-header .main-navigation-wrap {
    position: fixed;
    z-index: 110;
    display: table;
    width: 300px;
    height: 100%;
    top: 110px;
    left: 50%;
    margin-left: -150px;
    overflow: hidden;
    visibility: hidden
}

.floating-header .main-navigation {
    position: relative;
    display: table-cell;
    vertical-align: middle;
    top: auto;
    right: auto;
    padding: 0;
    text-align: center;
    top: -110px;
    overflow: hidden;
    opacity: 0;
    -webkit-transform: translateY(35px);
    -moz-transform: translateY(35px);
    -ms-transform: translateY(35px);
    -o-transform: translateY(35px);
    transform: translateY(35px);
    -webkit-transition: all 0.35s 0.2s;
    -o-transition: all 0.35s 0.2s;
    transition: all 0.35s 0.2s
}

.floating-header .main-navigation .menu {
    display: inline-block;
    width: 100%;
    -webkit-transform: translate3d(0, 0, 0);
    -moz-transform: translate3d(0, 0, 0);
    -ms-transform: translate3d(0, 0, 0);
    -o-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
    -webkit-transition: all 0.4s cubic-bezier(0.86, 0, 0.07, 1);
    -o-transition: all 0.4s cubic-bezier(0.86, 0, 0.07, 1);
    transition: all 0.4s cubic-bezier(0.86, 0, 0.07, 1)
}

.floating-header .main-navigation .menu.off-view {
    -webkit-transform: translate3d(-100%, 0, 0);
    -moz-transform: translate3d(-100%, 0, 0);
    -ms-transform: translate3d(-100%, 0, 0);
    -o-transform: translate3d(-100%, 0, 0);
    transform: translate3d(-100%, 0, 0)
}

.floating-header .main-navigation .menu.in-view {
    -webkit-transform: translate3d(0, 0, 0);
    -moz-transform: translate3d(0, 0, 0);
    -ms-transform: translate3d(0, 0, 0);
    -o-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0)
}

.floating-header .main-navigation .menu>li {
    position: static;
    border-bottom: none
}

.floating-header .main-navigation .menu>li>a {
    padding-top: 9px;
    padding-bottom: 9px
}

.floating-header .main-navigation .menu li {
    display: block
}

.floating-header .main-navigation .menu li a {
    display: block;
    font-size: 16px
}

.floating-header .main-navigation .menu li.menu-item-has-children>.sub-menu {
    position: absolute;
    display: block;
    width: 100%;
    height: auto;
    top: 0;
    left: auto;
    right: -100%;
    padding: 0;
    -webkit-box-shadow: none;
    box-shadow: none;
    -webkit-transform: translate3d(100%, 0, 0);
    -moz-transform: translate3d(100%, 0, 0);
    -ms-transform: translate3d(100%, 0, 0);
    -o-transform: translate3d(100%, 0, 0);
    transform: translate3d(100%, 0, 0);
    -webkit-transition: all 0.4s cubic-bezier(0.86, 0, 0.07, 1);
    -o-transition: all 0.4s cubic-bezier(0.86, 0, 0.07, 1);
    transition: all 0.4s cubic-bezier(0.86, 0, 0.07, 1)
}

.floating-header .main-navigation .menu li.menu-item-has-children>.sub-menu>li>a {
    padding-top: 9px;
    padding-bottom: 9px
}

.floating-header .main-navigation .menu li.menu-item-has-children>.sub-menu.in-view {
    -webkit-transform: translate3d(0, 0, 0);
    -moz-transform: translate3d(0, 0, 0);
    -ms-transform: translate3d(0, 0, 0);
    -o-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0)
}

.floating-header .main-navigation .menu li.menu-item-has-children>.sub-menu.off-view {
    -webkit-transform: translate3d(-100%, 0, 0);
    -moz-transform: translate3d(-100%, 0, 0);
    -ms-transform: translate3d(-100%, 0, 0);
    -o-transform: translate3d(-100%, 0, 0);
    transform: translate3d(-100%, 0, 0)
}

.floating-header .main-navigation .menu li.menu-item-has-children:hover .sub-menu {
    -webkit-animation: none;
    -o-animation: none;
    animation: none
}

.floating-header .main-navigation.is-visible {
    visibility: visible;
    opacity: 1;
    -webkit-transform: translateY(0);
    -moz-transform: translateY(0);
    -ms-transform: translateY(0);
    -o-transform: translateY(0);
    transform: translateY(0)
}

.ie .floating-header .main-navigation-wrap .main-navigation,
.edge .floating-header .main-navigation-wrap .main-navigation,
.firefox .floating-header .main-navigation-wrap .main-navigation {
    top: 0
}

.android .floating-header .main-navigation-wrap .main-navigation,
.ios .floating-header .main-navigation-wrap .main-navigation {
    -webkit-transition: all 0.25s 0s;
    -o-transition: all 0.25s 0s;
    transition: all 0.25s 0s
}
.floating-menu-btn {
    display: block;
    position: fixed;
    z-index: 100;
    top: 50px;
    right: 35px;
    width: 56px;
    height: 56px;
    border-radius: 50%
}

.floating-menu-btn:before {
    display: block;
    position: absolute;
    z-index: -1;
    content: "";
    width: 56px;
    height: 56px;
    background-color: #fff;
    border-radius: 50%;
    -webkit-transform-origin: center 30%;
    -moz-transform-origin: center 30%;
    -ms-transform-origin: center 30%;
    transform-origin: center 30%;
    -webkit-transform: scale(1);
    -moz-transform: scale(1);
    -ms-transform: scale(1);
    -o-transform: scale(1);
    transform: scale(1);
    -webkit-transition: all 0.35s ease-out;
    -o-transition: all 0.35s ease-out;
    transition: all 0.35s ease-out;
    -webkit-box-shadow: 0px 12px 18px 0px rgba(0, 0, 0, 0.26);
    box-shadow: 0px 12px 18px 0px rgba(0, 0, 0, 0.26)
}

.floating-menu-btn .floating-menu-toggle-wrap {
    position: absolute;
    z-index: 1;
    width: 56px;
    height: 56px;
    border-radius: 50%;
    top: 28px;
    left: 27px;
    cursor: pointer
}

.floating-menu-btn .floating-menu-toggle {
    display: block;
    width: 22px;
    right: auto;
    left: 50%;
    margin-top: -6px;
    margin-left: -11px
}

.floating-menu-btn .floating-menu-toggle .bar {
    width: 22px;
    margin: 0 0 4px 0
}

.floating-menu-btn .floating-menu-toggle .bar:last-child {
    margin-bottom: 0
}

.floating-menu-btn.expanded .floating-menu-toggle {
    -webkit-transform: rotate(-180deg);
    -moz-transform: rotate(-180deg);
    -ms-transform: rotate(-180deg);
    -o-transform: rotate(-180deg);
    transform: rotate(-180deg)
}

.floating-menu-btn.expanded .floating-menu-toggle .bar:nth-child(1) {
    -webkit-transform: translate(-9px, 3px) rotate(-45deg) scale(0.5, 1);
    -moz-transform: translate(-9px, 3px) rotate(-45deg) scale(0.5, 1);
    -ms-transform: translate(-9px, 3px) rotate(-45deg) scale(0.5, 1);
    -o-transform: translate(-9px, 3px) rotate(-45deg) scale(0.5, 1);
    transform: translate(-9px, 3px) rotate(-45deg) scale(0.5, 1)
}

.floating-menu-btn.expanded .floating-menu-toggle .bar:nth-child(3) {
    -webkit-transform: translate(-9px, -3px) rotate(45deg) scale(0.5, 1);
    -moz-transform: translate(-9px, -3px) rotate(45deg) scale(0.5, 1);
    -ms-transform: translate(-9px, -3px) rotate(45deg) scale(0.5, 1);
    -o-transform: translate(-9px, -3px) rotate(45deg) scale(0.5, 1);
    transform: translate(-9px, -3px) rotate(45deg) scale(0.5, 1)
}

.floating-menu-btn.expanded:before {
    -webkit-transform: scale(80);
    -moz-transform: scale(80);
    -ms-transform: scale(80);
    -o-transform: scale(80);
    transform: scale(80)
}

@media screen and (max-width: 768px) {
    .floating-menu-btn {
        right: 15px
    }
}
 /**/                                  


	
  /* Add a gray background color and some padding to the footer */
    footer {
     
      padding: 25px;
    }

  
   /* Remove the jumbotron's default bottom margin */ 
     .jumbotron {
      margin-top:-100px;
      margin-bottom: -20px;
      background-color: white;
     
    }
  	
  	 .navbar {
  	  background-color: white;
      margin-bottom: 50px;
      border-radius: 0px;
    }
    a{
    	color: aqua;		
    }
    .carousel-inner > .item > img {
    margin: 0 auto;
	}
	
	h1{
		font-family: 'Chicle', cursive;
		font-family: 'IBM Plex Mono', monospace;
		font-family: 'Indie Flower', cursive;
	}
	p{
		font-family: 'Chicle', cursive;
		font-family: 'IBM Plex Mono', monospace;
		font-family: 'Indie Flower', cursive;
	}
	li{
		font-family: 'Pacifico', cursive;
		font-family: 'Shadows Into Light', cursive;
		font-size: large;
	}
	.navbar-brand{
		font-family: 'Pacifico', cursive;
		font-family: 'Shadows Into Light', cursive;
		font-size: x-large;
		color: black;
	}
	
	.collapse navbar-collapse{
		border-radius: 10px;
		border-color: black;
	}	

	.main_category{
		color: black;
	}
	
	

/*회전 슬라이드*/
.carousel slide{
	position: relative;
	margin: 0; 
	z-index: -2;
}
.footer_font{
	font-family: 'Hi Melody', cursive;
	font-size: medium;
}

  </style> 
  
  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries --> 
  <!--[if lt IE 9]> <!-- 5. 인터넷익스플로러 9버전 이하일 경우 html5가 인식될 수 있게 해주는 스크립트 --> 
  
  <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script> 
  <script src="./images/respond.min.js"></script> 
 
  <!--[if IE 7]> <!-- 6. 인터넷익스플로러 7버전 일 경우 폰트아이콘이 인식될 수 있게 해주는 스크립트 --> 
  <link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome-ie7.min.css" rel="stylesheet">
  </head>
  
  <body> 
	

<!-- floating menu -->	
<header class="floating-header">
  
  <div class="floating-menu-btn">
    <div class="floating-menu-toggle-wrap">
      <div class="floating-menu-toggle">
        <span class="bar"></span>
        <span class="bar"></span>
        <span class="bar"></span>
      </div>
    </div>
  </div>

  <div class="main-navigation-wrap">
    <nav class="main-navigation" data-back-btn-text="Back">
      <ul class="menu">
        <li class="menu-item-has-children current-menu-item delay-0">
          <a href="#"><i class="fa fa-arrow-right" aria-hidden="true"></i>More Options</a>
          <ul class="sub-menu">
 
            <li class="current-menu-item"><a href="#">Home Design Agency</a></li>
            <li><a href="#">Home Architecture</a></li>
            <li><a href="#">Home Photographer</a></li>
          </ul>
        </li>
        <li class="delay-1"><a href="#">Portfolio</a></li>
        <li class="delay-2"><a href="#">Blog</a></li>
        <li class="delay-3"><a href="#">About Us</a></li>
        <li class="delay-4"><a href="#">Contacts</a></li>
        <li class="delay-5"><a href="#">Elements</a></li>
      </ul><!-- .menu -->
    </nav><!-- .main-navigation -->
  </div><!-- .main-navigation-wrap -->
</header>
	
  
  
  

  
  <nav class="navbar navbar-fixed-top">
  <div class="container-fluid">
  <div class="jumbotron">
  <div class="container text-center">
    <h1>Le Codi</h1>      
    <p>DIBS ON THESE CLOTHES</p>
  </div>
 </div>
 
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Le Codi</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
		<li class="active"><a href="" class ="main_category">HOME</a></li> 
  	 	 <li><a href="board/csc" class ="main_category">Customer Center</a> </li>
 	 	<c:if test="${loginId == null}">
			<li><a href="member/agree" class ="main_category">Join</a></li>
			<li><a href="member/login" class ="main_category">Login</a></li>
		</c:if>
		<c:if test="${loginId == 'admin'}">
			<li><a href="admin/main">Admin</a></li>
		</c:if>
		<c:if test="${loginId != null}">
			<li><a href="member/logout" class ="main_category">Logout</a></li>
		</c:if>
  	 
		
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#" class ="main_category"><span class="glyphicon glyphicon-user"></span> Your Account</a></li>
        <li><a href="#" class ="main_category"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
      </ul>
    </div>
  </div>
</nav>
	

  	 <!--8. 모바일 시 사이드 메뉴 숨기기 시작 --> 
  	 <p class="pull-right visible-xs"> 
  	 <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button> 
  	 </p> 
  	 <!--모바일 시 사이드 메뉴 숨기기 끝 --> 
  	<div id="myCarousel" class="carousel slide">
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>
  
  <!-- 회전광고판 항목 -->
  <div class="carousel-inner">
		  	  
		
    <div class="active item"><img alt="carousel" src="resources/image/img1.jpg"></div>
    <div class="item"><img alt="carousel" src="resources/image/img2.jpg"></div>
    <div class="item"><img alt="carousel" src="resources/image/img3.jpg"></div>
    
    
    
  </div>
  

  
  
  
  <!-- 회전광고판 탐색 -->
  <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
  <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
</div>




<br><br><br><br><br><br><br><br><br>
	
	<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-danger">
        <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-success">
        <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
      </div>
    </div>
  </div>
</div>




<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
        
      </div>
    </div>
  </div>
</div><br><br>
	
	<div style="position: fixed; right:expression((document.body.clientWidth/2)+515); 
  	  top:700px; width:100px; height:100px; z-index:9; cursor:pointer;">
      <a href="codi"><img src="resources/image/codi-2.png"></a>
      </div>
      


<footer class="container-fluid text-center">
  <p class = "footer_font">Le Codi</p> 
  <a class = "footer_font">회사소개 | </a>  
  <a class = "footer_font">공지사항 | </a>  
  <a class = "footer_font">이용약관 | </a>  
  <a class = "footer_font">개인정보취급방침 | </a>  
  
 

<p class = "footer_font">르 코디  |  대표 : 남유송  |  문의전화 : 0507-1403-6313  |  서울시 관악구 봉천동 2311, Biz6</p>
<p class = "footer_font">사업자등록번호 : 053-30-00343  |  통신판매업신고 : 제2017-용인기흥-00248호 [사업자정보확인]  |  개인정보책임자 : 남유송 (lecodi4u@naver.com)</p>

<p class = "footer_font">COPYRIGHT 2017 LeCodi. ALL RIGHTS RESERVED.</p> 
  
</footer>
  	 
  	 <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script> <!--9. jquery 스크립트 --> 
  	 <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script><!--10. bootstrap 스크립트 --> 
  	 
  	 <script type="text/javascript"> 
  	 $(document).ready(function() 
  			 { $('[data-toggle=offcanvas]').click(function() 
  					 { $('.row-offcanvas').toggleClass('active'); }); }); 
  	$('.carousel').carousel({
  	  interval: 2000
  	})
  	
	
  	
  	jQuery(document).ready(function($) {
/* Floating Menu
	**************************************************************/

 	var $floatingMenuToggle = $('.floating-menu-toggle-wrap'),
			$floatingMenu = $('.floating-header .main-navigation'),
			$floatingMenuItem = $('.floating-header .main-navigation .menu > li');
	if($floatingMenu.length) {
		$floatingMenuItem.each(function(index, element) {
			$(element).addClass('delay-' + index);
		});

		$floatingMenuToggle.click(function() {
		  var clicks = $(this).data('clicks');
		  if (clicks) {
				$floatingMenu.removeClass('is-visible');
				setTimeout(function(){
					$floatingMenuToggle.parent().removeClass('expanded');
				}, 500);
		  } else {
				$floatingMenuToggle.parent().addClass('expanded');
				$floatingMenu.addClass('is-visible');
		  }
		  $(this).data("clicks", !clicks);
		});

	}

	// Back Button
	var backBtnText = $floatingMenu.data( 'back-btn-text' ),
			subMenu = $( '.floating-header .main-navigation .sub-menu' );

	subMenu.each( function () {
		$( this ).prepend( '<li class="back-btn"><a href="#"><i class="fa fa-arrow-left" aria-hidden="true"></i>' + backBtnText + '</a></li>' );
	} );

	var hasChildLink = $( '.floating-header .menu-item-has-children > a' ),
		backBtn = $( '.floating-header .main-navigation .sub-menu .back-btn' );

	backBtn.on('click', function (e) {
		var self = this,
			parent = $( self ).parent(),
			siblingParent = $( self ).parent().parent().siblings().parent(),
			menu = $( self ).parents( '.menu' );

		parent.removeClass( 'in-view' );
		siblingParent.removeClass( 'off-view' );

		e.stopPropagation();
	});

	hasChildLink.on( 'click', function ( e ) {
		var self = this,
			parent = $( self ).parent().parent(),
			menu = $( self ).parents( '.menu' );

		parent.addClass( 'off-view' );
		$( self ).parent().find( '> .sub-menu' ).addClass( 'in-view' );

		e.preventDefault();
		return false;
	} );
    } );
	/******************************************************************/ 
  
  	 </script> 
  </body> 
</html>

