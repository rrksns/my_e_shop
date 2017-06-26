<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Shop 등록 : 로드 샵</title>
<link rel="stylesheet" href="../resources/css/all.css">
<link rel="stylesheet" href="../resources/css/myshop.css">
</head>
<body>
<div class="universe">
  <aside>
  	<h2 class="home_logo"><a href="">Around U</a></h2>
  	<div class="shopNameWrap">
  	  <p>님</p>
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
  	  	  <img src="../resources/img/set.png" width="36" height="25" alt="설정">
  	  	</button>
  	  </div>
  	  <div class="titleWrap">
  	  	<h3 class="title"><img src="../resources/img/home.png" width="25" height="25" alt=""> My e-Shop</h3>
  	  </div>
  	</header>
  	<section id="shopInfo_register">
  	  <article class="menu_shopInfo">
  	  	<form action="" method="post">
  	  	  <fieldset><legend class="hide">메뉴 등록</legend>
  	  	  	<h2>메뉴 등록 방식 선택</h2>
  	  	  	<div class="typeBox">
  	  	  	  <div class="typeWrap">
  	  	  	  	<input type="image" src="../resources/img/auto.png" onclick="this.form.action='';">
  	  	  	  </div>
  	  	  	  <div class="typeWrap" style="float:right">
  	  	  	  	<input type="image" src="../resources/img/manual.png" onclick="this.form.action='';">
  	  	  	  </div>
  	  	  	</div>
  	  	  </fieldset>
  	  	</form>
  	  </article>
  	</section>
  </main>
</div>
</body>
</html>