<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../header.jsp" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Around U 회원가입</title>
<link rel="stylesheet" href="${path}/resources/css/all.css">
<link rel="stylesheet" href="${path}/resources/css/join.css">
</head><body>

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
  <section id="welcome">
  	<p class="small"><a href="">상세정보</a>를 입력하시면 회원정보에 따른 맞춤 서비스가 제공됩니다.</p>
  	<p class="small">로드샵 서비스를 이용하시려면 <a href="">샵 등록</a>이 필요합니다.</p>
  	<div class="msg_container">
  	  <p class="txt_welcome">Around U 회원 가입이 완료되었습니다.</p>
  	  <p class="txt_welcome">Around U에서 주변 샵의 정보와 다양한 서비스 혜택을 누리시기 바랍니다.</p>
  	</div>
  	<div class="btn_container">
  	  <button type="submit" class="nxt_btn"><a href="main.go">확인</a></button>
  	</div>
  </section>
</div>
</body>
</html>