<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Around U 회원가입</title>
<link rel="stylesheet" href="${path}/resources/css/all.css">
<link rel="stylesheet" href="${path}/resources/css/join.css">
</head>
<body>
<div class="universe">
  <header>
  	<div class="logoWrap">
  	  <a class="home_logo" href="main.go" title="메인화면으로">AROUND U</a>
  	</div>
  	<div class="titleWrap_H">
  	  <h2 class="title box">회원 유형을 선택하세요</h2>
  	</div>
  </header>
  <section id="subscriptionType">
  	<p class="txt">Around U에 오신 것을 환영합니다.</p>
  	<p class="txt small">회원유형을 선택하신 후 로그인하세요.</p>
  	<div class="select_container">
  	  <div class="titleWrap_C">
  	  	<h3 class="title">회원 유형을 선택하세요</h3>
  	  </div>
  	  <div class="selectWrap">
  	  	<form action="sellerLoginForm.go" method="post">
  	  	  <div class="selBtnWrap">
  	  	  	<div class="sel_btn fl_L">
  	  	  	  <input type="radio" id="basic" name="select" title="일반회원가입">
  	  	  	  <label for="basic"><a href="userLogin.go">일반회원</a></label>
  	  	  	</div>
  	  	  	<div class="sel_btn fl_R">
  	  	  	  <input type="radio" id="shop" name="select" title="판매회원 가입">
  	  	  	  <label for="shop"><a href ="sellerLoginForm.go">판매회원</a></label>
  	  	  	</div>
  	  	  </div>
  	  	  <div class="btn_container">
  	  	  	<button type="button" class="bkb_btn" onclick="javascript:history.back()">이전으로</button>
  	  	  	<button type="submit" class="nxt_btn">로그인</button>
  	  	  </div>
  	  	</form>
  	  </div>
  	</div>
  </section>
</div>
</body>
</html>