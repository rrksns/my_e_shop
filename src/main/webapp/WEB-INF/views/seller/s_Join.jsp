<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
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
  	  <h2 class="title box">회원 가입</h2>
  	  <ol class="steb_list box">
  	  	<li>가입유형</li>
  	  	<li>약관동의</li>
  	  	<li>정보입력</li>
  	  	<li>가입완료</li>
  	  </ol>
  	</div>
  </header>
  <section id="subscriptionType">
  	<p class="txt">Around U에 오신 것을 환영합니다.</p>
  	<p class="txt small">회원 가입 후, Around U의 다양한 서비스를 만나보세요.</p>
  	<div class="select_container">
  	  <div class="titleWrap_C">
  	  	<h3 class="title">가입 유형을 선택하세요</h3>
  	  </div>
  	  <div class="selectWrap">
  	  	<form action="s_joinForm.go" method="post">
  	  	  <div class="selBtnWrap">
  	  	  	<div class="sel_btn fl_L">
  	  	  	  <input type="radio" id="basic" name="select" title="일반회원가입">
  	  	  	  <label for="basic">일반회원가입</label>
  	  	  	</div>
  	  	  	<div class="sel_btn fl_R">
  	  	  	  <input type="radio" id="shop" name="select" title="샵 등록">
  	  	  	  <label for="shop">샵 등록</label>
  	  	  	</div>
  	  	  </div>
  	  	  <div class="btn_container">
  	  	  	<button type="button" class="bkb_btn">이전으로</button>
  	  	  	<button type="submit" class="nxt_btn">가입하기</button>
  	  	  </div>
  	  	</form>
  	  </div>
  	</div>
  </section>
</div>
</body>
</html>