<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html">
<html>
<head>
<meta charset="UTF-8">
<title>Around U 로그인</title>
<link rel="stylesheet" href="../resources/css/all.css">
<link rel="stylesheet" href="../resources/css/login.css">
</head>
<body>
<div class="universe">
  <section class="login">
  	<header>
  	  <a class="home_logo" href="main.go" title="메인화면으로">Around U</a>
  	</header>
  	<div class="titleWrap">
  	  <img class="box" src=../resources/img/enter.png width="45" height="45">
  	  <h2 class="title box">로그인</h2>
  	</div>
  	<div class="userInfoWrap">
  	  <form action="login.go" method="post">
  	  	<fieldset><legend class="hide">아이디, 비밀번호 로그인 정보 입력 폼</legend>
  	  	  <div class="inputWrap">
  	  	  	<label>아이디</label>
  	  	  	<input id="s_id" name ="id" type="text" title="아이디 입력">
  	  	  	<label>비밀번호</label>
  	  	  	<input id="s_pw" name="password" type="password" maxlength="32" autocomplete="off" title="비밀번호 입력">
  	  	  </div>
  	  	  <button class="log_btn" type="submit">로그인</button>
  	  	  <div class="saveIdWrap">
  	  	  	<input id="saveId" type="checkbox">
  	  	  	<label class="chk_btn" for="saveId">아이디 저장</label>
  	  	  </div>
  	  	</fieldset>
  	  </form>
  	</div>
  	<div class="miscWrap">
  	  <a href="join.go">회원 가입</a>
  	  <span class="txt_bar">|</span>
  	  <a href="#">아이디 찾기</a>
  	  <span class="txt_bar">|</span>
  	  <a href="#">비밀번호 찾기</a>
  	</div>
  </section>
</div>
</body>
</html>