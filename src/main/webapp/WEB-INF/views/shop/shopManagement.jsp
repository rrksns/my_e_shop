<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="${path}/resources/css/a.css">
<link rel="stylesheet" href="${path}/resources/css/myshop-common.css">
<link rel="stylesheet" href="${path}/resources/css/myshop-management.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,700">

<script type="text/javascript">
	$(function(){
		$('#sellerShopList').load('sellerShopList.go');
	});
</script>

</head>
<body>
<div class="universe">
  <header class="page-header">
  	<div class="top-cover">
  	  <div class="home-logo">
  	  	<h1 class="logo"><a href="sellerMain.go">AROUND U</a></h1>
  	  </div>
  	  <nav class="user-nav"><h2 class="hide">사용자 메뉴</h2>
  	  	<ul>
  	  	  <li class="nav-list">
  	  	  	<a class="myshop-btn" href="${path}/resources/shopManagement" title="마이 샵">
  	  	  	  <img class="myshop-img" src="${path}/resources/img/icon/shop.png" width="25" height="25" alt="마이 샵">
  	  	  	</a>
  	  	  </li>
  	  	  <li class="nav-list">
  	  	  	<a class="dropdown-btn" href=""><span>"${seller.s_name}"</span>님 <span class="dropdown-img"></span></a>
  	  	  	<ul class="dropdown">
  	  	  	  <li><a href="">마이페이지</a></li>
  	  	  	  <li><a href="">1</a></li>
  	  	  	  <li><a href="">2</a></li>
  	  	  	  <li><a href="">3</a></li>
  	  	  	  <li><a href="">4</a></li>
  	  	  	  <li class="log-out"><a href="s_logout.go">로그아웃</a></li>
  	  	  	</ul>
  	  	  </li>
  	  	</ul>
  	  </nav>
  	</div>
  	<div class="secondary-line">
  	  <div class="page-title">
  	  	<h3><img class="home-img" src="${path}/resources/img/icon/home.png" width="25" height="25" alt=""> My e-Shop 관리</h3>
  	  </div>
  	</div>
  </header>
  <div class="page-body">
  	<aside class="support" role="complementary">
  	  <div class="shop-name">
  	  	<p><span class="name-txt">"${seller.s_name}"</span>님의</p>
  	  	<p style="padding:5px 0; border-bottom:2px solid #DEBB3D;">e-Shop</p>
  	  </div>
  	  <nav class="management-nav">
  	  	<ol>
  	  	  <li class="open"><a class="nav-btn" href="shopManagement.go">나의 e-Shop</a></li>
  	  	  <li><a class="nav-btn" href="">쿠폰 등록</a></li>
  	  	  <li><a class="nav-btn" href="">이벤트 설정</a></li>
  	  	  <li><a class="nav-btn" href="">프리미엄</a></li>
  	  	</ol>
  	  </nav>
  	</aside>
  	<div class="contents" role="main">
  	  <h3 class="title">나의 e-Shop</h3>
  	  <div class="shop-list">
  	  	<h4>현재 보유중인 샵(<span>1</span>개)</h4>
  	  	<!-- <div class="wrapper"> -->
		
			<div class="wrapper" id="sellerShopList"></div>
  	  	<!-- </div> -->
  	  	<div class="shop-addition">
  	  	  <a onclick="new_shop()">
  	  	  	<img src="${path}/resources/img/icon/addition.png">
  	  	  	<span class="comment">샵 추가하기</span>
  	  	  </a>
  	  	</div>
  	  </div>
  	</div>
  </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
$('aside').css({height:$(window).height()});

function new_shop() {
	if(confirm("새로운 샵을 만드시겠습니까?") == true) {
		location.href="shopMain.go";
	} else {
		return "shopManagement.go";
	}
}
</script>
</body>
</html>