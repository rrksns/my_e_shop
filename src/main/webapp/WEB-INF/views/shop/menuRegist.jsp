<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<title>My Shop 등록 : 로드 샵</title>
<link rel="stylesheet" href="${path}/resources/css/all.css">
<link rel="stylesheet" href="${path}/resources/css/myshop.css">
</head>
<body>
<div class="universe">
  <aside>
  	<h2 class="home_logo"><a href="sellerMain.go">Around U</a></h2>
  	<div class="shopNameWrap">
  	  	<p>${seller.s_name}님의</p>
		<p>e-shop을 꾸며보세요!</p>
  	</div>
  	<ul class="phase">
  	  <li><p>기본 정보</p></li>
  	  <li><p>사진 등록</p></li>
  	  <li><p>메뉴 등록</p></li>
  	  <li><p>부가 정보</p></li>
  	</ul>
  </aside>
  
  <main role="main">
  	<header>
  	  <div class="setWrap">
  	  	<button class="set_btn" type="button">
  	  	  <img src="${path}/resources/img/set.png" width="36" height="25" alt="설정">
  	  	</button>
  	  </div>
  	  <div class="titleWrap">
  	  	<h3 class="title"><img src="${path}/resources/img/home.png" width="25" height="25" alt=""> My e-Shop</h3>
  	  </div>
  	</header>
  		<input type="text" name="sh_id" value= "${sh_id}">
  	  	<input type="text" name="sh_name" value="${shop.sh_name}">
  	<section id="shopInfo_register">
  	  <article class="menu_shopInfo">
  	  	  <fieldset><legend class="hide">메뉴 등록</legend>
  	  	  	<h2>메뉴 등록 방식 선택</h2>
  	  	  	<div class="typeBox">
  	  	  	  <div class="typeWrap">
  	  	  	  	<a href="#"><img src="${path}/resources/img/auto.png"></a>
  	  	  	  </div>
  	  	  	  <div class="typeWrap" style="float:right">
  	  	  	  	<a href="restaurantMenu.go"><img src="${path}/resources/img/manual.png"></a>
  	  	  	  </div>
  	  	  	</div>
  	  	  </fieldset>
  	  </article>
  	</section>
  </main>
</div>
</body>
</html>