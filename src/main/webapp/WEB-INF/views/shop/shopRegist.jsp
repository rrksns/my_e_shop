<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
  	  	  <img src="${path}resources/img/set.png" width="36" height="25" alt="설정">
  	  	</button>
  	  </div>
  	  <div class="titleWrap">
  	  	<h3 class="title"><img src="${path}/resources/img/home.png" width="25" height="25" alt=""> My e-Shop</h3>
  	  </div>
  	</header>
  	<section id="shopInfo_register">
  	  <article class="basic_shopInfo">
  	  	  <fieldset><legend class="hide">템플릿 선택</legend>
  	  	  	<h2>템플릿 선택</h2>
  	  	  	<div class="templateBox">
  	  	  	  <label onclick = "selectTemplate()" class="template1">
  	  	  	  <input id="sh_cate" name="template" type="radio">
  	  	  	  <a href = "restaurantBasic.go">음식점과 같이 메뉴 설명에 적합한 템플릿 입니다.</a></label>
  	  	  	  <label class="template2"><input id="" name="template" type="radio">
  	  	  	  <a href = "#">학원과 같이 커리큘럼, 프로세스 설명에 적합한 템플릿 입니다.</a></label>
  	  	  	  <label class="template3"><input id="" name="template" type="radio">
  	  	  	  <a href = "#">옷 가계와 같이 상품 이미지를 부각시키는데 적합한 템플릿 입니다.</a></label>
  	  	  	  <label class="template4"><input id="" name="template" type="radio">
  	  	  	  <a href = "#">헬스장, 요가등 시설 및 제공 서비스를 설명하는데 적합한 템플릿 입니다.</a></label>
  	  	  	</div>
  	  	  </fieldset>
  	  </article>
  	</section>
  </main>
</div>
</html>