<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Around U 회원가입</title>
<link rel="stylesheet" href="../resources/css/all.css">
<link rel="stylesheet" href="../resources/css/join.css">
</head>
<body>
<div class="universe">
  <header>
  	<div class="logoWrap">
  	  <a class="home_logo" href="#" title="메인화면으로">AROUND U</a>
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
  <section id="userInfo">
  	<form action="" method="post">
  	  <fieldset><legend class="hide">필수 정보 입력</legend>
  	  	<p class="small">기본 정보를 입력해 주세요.</p>
  	  	<div class="info_container">
  	  	  <div class="infoBox">
  	  	  	<span>아이디</span>
  	  	  	<input type="text" id="id" name="id" placeholder="아이디" required>
  	  	  </div>
  	  	  <div class="infoBox">
  	  	  	<span>비밀번호</span>
  	  	  	<input type="password" id="pw" name="pw" placeholder="비밀번호" required><span></span>
  	  	  </div>
  	  	  <div class="infoBox">
  	  	  	<span>비밀번호 확인</span>
  	  	  	<input type="password" id="re_pw" name="re_pw" placeholder="비밀번호 확인" required><span></span>
  	  	  </div>
  	  	</div>
  	  	<div class="info_container">
  	  	  <div class="infoBox">
  	  	  	<span>이름, 성별</span>
  	  	  	<div class="nameWrap">
  	  	  	  <input type="text" id="name" name="name" placeholder="이름" required>
  	  	  	  <input type="radio" id="gender_w" name="gender_w"><label class="gender_btn" for="gender_w">여자</label>
  	  	  	  <input type="radio" id="gender_m" name="gender_m"><label class="gender_btn margin" for="gender_m">남자</label>
  	  	  	</div>
  	  	  </div>
  	  	  <div class="birthdayBox">
  	  	  	<span>생년월일</span>
  	  	  	<div class="birthdayWrap">
  	  	  	  <input class="year" type="text" placeholder="연도 ex)1989" required><span class="">년</span>
  	  	  	  <input class="month" type="text" required><span>월</span>
  	  	  	  <input class="day" type="text" required><span>일</span>
  	  	  	</div>
  	  	  </div>
  	  	  <div class="infoBox">
  	  	  	<span>이메일</span>
  	  	  	<input type="email" id="email" name="email" placeholder="이메일(e-mail)" required>
  	  	  </div>
  	  	</div>
  	  	<div class="info_container">
  	  	  <div class="infoBox">
  	  	  	<span>휴대전화 번호</span>
  	  	  	<input type="text" id="email" name="email" placeholder="휴대전화 번호(-없이)" required>
  	  	  </div>
  	  	</div>
  	  	<div class="btn_container">
  	  	  <button type="button" class="bkb_btn">이전으로</button>
  	  	  <button type="submit" class="nxt_btn">가입하기</button>
  	  	</div>
  	  </fieldset>
  	</form>
  </section>
</div>
</body>
</html>