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
	
  /* Add a gray background color and some padding to the footer */
  
  
   /* Remove the jumbotron's default bottom margin */ 
     .jumbotron {
      margin-bottom: 0;
      background-color: white;
    } 
  	
  	 .navbar {
  	  background-color: white;
      margin-bottom: 50px;
      border-radius: 0;
    }
    a{
    	color: aqua;		
    }
    .navbar-brand{
    	font-family: 'Chicle', cursive;
		font-family: 'IBM Plex Mono', monospace;
		font-family: 'Indie Flower', cursive;
    }
    
	/*사이드 바 위치*/
	td, th {
    vertical-align: middle !important;
    }
.left1, .right1 {
        float:left;
        height:100vh;
    }
    
.left1 {
        background: #337ab7;
        display: inline-block;
        white-space: nowrap;
        width: 50px;
        transition: width 1s ;
    }

.right1 {
        background: #fff;
        width: 350px;
        transition: width 1s;
        border-style:solid;
        border-color:#ccc;
        border-width:1px;
    }    

.left1:hover {
        width: 250px;
    }    
    
.sideitem:hover {
        background-color:#ccc;
        }
        
.left1 .glyphicon {
        margin:15px;
        width:20px;
        color:#fff;
    }
    
.right1 .glyphicon {
        color:#a9a9a9;
    }
span.glyphicon.glyphicon-refresh{
    font-size:17px;
    vertical-align: middle !important;
    }
    
.sideitem {
        height:50px;
        overflow:hidden;
        color:#fff;
    }
.title {
        background-color:#eee;
        border-style:solid;
        border-color:#ccc;
        border-width:1px;
        box-sizing: border-box;
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

  </style> 
  
  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries --> 
  <!--[if lt IE 9]> <!-- 5. 인터넷익스플로러 9버전 이하일 경우 html5가 인식될 수 있게 해주는 스크립트 --> 
  
  <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script> 
  <script src="./images/respond.min.js"></script> 
 
  <!--[if IE 7]> <!-- 6. 인터넷익스플로러 7버전 일 경우 폰트아이콘이 인식될 수 있게 해주는 스크립트 --> 
  <link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome-ie7.min.css" rel="stylesheet">
  </head>
  
  <body> 
  	<div class="jumbotron">
  <div class="container text-center">
    <h1>Le Codi</h1>      
    <p>DIBS ON THESE CLOTHES</p>
  </div>
</div>
  
  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
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
		<li class="active"><a href="">HOME</a></li> 
  	 	 <li><a href="board/csc">Customer Center</a> </li>
  	 	 <li><a href="member/join">Join</a></li>
  	 	<li><a href="member/login">Login</a></li> 
  	 	<li><a href="cart">Cart</a></li> 

      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Your Account</a></li>
        <li><a href="cart"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
      </ul>
    </div>
  </div>
</nav>
	

  	 
	
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

