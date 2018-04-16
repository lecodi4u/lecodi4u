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
 
<link rel="shortcut icon" href="../../assets/ico/favicon.png"> 
<!-- 1. 파비콘 걸기 --> <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"> 
<link href="https://fonts.googleapis.com/css?family=Chicle|IBM+Plex+Mono|Indie+Flower" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Pacifico|Shadows+Into+Light" rel="stylesheet">
<!-- 2.부트스트랩용 CSS --> 
<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet" /> 
<!-- 3.폰트아이콘용 CSS --> 
<style type="text/css"> 
<<<<<<< HEAD

=======
a:link {
    color: black;
     text-decoration: none;
}

/* visited link */
a:visited {
    color: black;
     text-decoration: none;
}

/* mouse over link */
a:hover {
    color: black;
     text-decoration: none;
}

/* selected link */
a:active {
    color: blue;
     text-decoration: none;
}
>>>>>>> hap

.navbar-toggler{
	border-bottom: none;
	border-top: none;
	 background-color: Transparent;
	 border-left: none;
	 border-right: none;
		
}


	/*floating menu*/
 
 /**/  	
  /* Add a gray background color and some padding to the footer */
  
  
   /* Remove the jumbotron's default bottom margin */ 
     .jumbotron {
      margin-bottom: 0;
      padding-top: 0;
      background-color: white;
    } 
    
    /**/
  	 .navbar {
  	  background-color: white;
      margin-bottom: 50px;
      border-style: none;
    }
    a{
    	color: aqua;		
    }
    .main_category{
		color: black;
	}
	
    .navbar-brand{
    	font-family: 'Chicle', cursive;
		font-family: 'IBM Plex Mono', monospace;
		font-family: 'Indie Flower', cursive;
		font-size: x-large;
		color: black;
    }
    
	/*사이드 바 위치*/
	
    .webpage_title{
		font-family: 'Chicle', cursive;
		font-family: 'IBM Plex Mono', monospace;
		font-family: 'Indie Flower', cursive;
	}
	
	.webpage_subtitle{
		font-family: 'Chicle', cursive;
		font-family: 'IBM Plex Mono', monospace;
		font-family: 'Indie Flower', cursive;
	}
	li{
		font-family: 'Pacifico', cursive;
		font-family: 'Shadows Into Light', cursive;
		font-size: large;
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
 
  

 
<!-- foldable header -->
<div class="pos-f-t">
  <div class="collapse" id="navbarToggleExternalContent">
    <div class="bg-inverse p-4">
      
     
      <!-- top menu -->
  <div class="jumbotron">
  <div class="container text-center">
    <h1 class="webpage_title"><a class ="logo_title" href="<c:url value= '../'/>">Le Codi</a></h1>      
    <p class ="webpage_subtitle">DIBS ON THESE CLOTHES</p>
  </div>
</div>
      <div class="container-fluid">
<<<<<<< HEAD
  
  </div>
    </div>
  </div>
  <nav class="navbar navbar-inverse bg-inverse">
  <!--  -->
  
=======
  
  </div>
    </div>
  </div>
  <nav class="navbar navbar-inverse bg-inverse">
  <!--  -->
  
>>>>>>> hap
      <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
	<a class="navbar-brand" href="#"><button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon">Le Codi </span>
    </button></a>
      
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
		
<<<<<<< HEAD
  	 	 <!-- <li><a href="board/csc">Customer Center</a> </li> -->
  	 	 <li><a class = "main_category" href="<c:url value= '../board/csc'/>">Customer Center</a> </li>
  	 	 <!-- <li><a href="member/join">Join</a></li> -->
  	 	<li><a class = "main_category" href="<c:url value= '../member/agree'/>">Join</a> </li>
  	 	<!-- <li><a href="member/login">Login</a></li>  -->
  	 	<li><a class = "main_category" href="<c:url value= '../member/login'/>">Login</a> </li>
  	 	<!-- <li><a href="cart">Cart</a></li>  -->
		<li><a class = "main_category" href="<c:url value= '../cart'/>">cart</a> </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#" class = "main_category"><span class="glyphicon glyphicon-user"></span> Your Account</a></li>
        <li><a href="#" class = "main_category"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
=======
  	 	 
  	 	 <li><a class = "main_category" href="<c:url value= '../board/csc'/>">Customer Center</a> </li>
  	 	
  	 	<li><a class = "main_category" href="<c:url value= '../member/agree'/>">Join</a> </li>
  	 
  	 	<li><a class = "main_category" href="<c:url value= '../member/login'/>">Login</a> </li>
  	 	
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="<c:url value= '../codi'/>" class = "main_category"><span class="glyphicon glyphicon-user"></span> Codi Tool</a></li>
        <li><a href="<c:url value= '../cart'/>" class = "main_category"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
>>>>>>> hap
      </ul>
    </div>
  </nav>
</div>


  

	

  	 
	
	<div style="position: fixed; right:expression((document.body.clientWidth/2)+515); 
  	  top:700px; width:100px; height:100px; z-index:9; cursor:pointer;">
      <a href="codi"><img src="resources/image/codi-2.png"></a>
      </div>



  	 
  	 <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script> <!--9. jquery 스크립트 --> 
  	 <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script><!--10. bootstrap 스크립트 --> 
  	 
  	 <script type="text/javascript"> 
  	 $(document).ready(function() 
  			 { $('[data-toggle=offcanvas]').click(function() 
  					 { $('.row-offcanvas').toggleClass('active'); }); }); 
  
  
  	 </script> 
  </body> 
</html>

