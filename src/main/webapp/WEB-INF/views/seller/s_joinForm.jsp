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
  	  <a class="home_logo" href="#" title="메인화면으로">AROUND U</a>
  	</div>
  	<div class="titleWrap_H">
  	  <h2 class="title box">회원 가입</h2>
  	  <ol class="steb_list box">
  	  	<li>가입유형</li>
  	  	<li style="font-weight:bold;color:#ff7d43;">약관동의</li>
  	  	<li>정보입력</li>
  	  	<li>가입완료</li>
  	  </ol>
  	</div>
  </header>
  <section id="terms">
  	<form action="s_joinForm2.go" method="post">
  	  <fieldset><legend class="hide">Around U 서비스 약관 및 개인정보 수집, 이용에 대한 동의</legend>
  	  	<p class="small">Around U 이용약관, 개인정보 수집 및 이용 등 필수 동의항목에 동의를 하셔야 회원가입이 가능합니다.</p>
  	  	<div class="terms_container">
  	  	  <dl>
  	  	  	<dt>필수 동의항목<button class="allAgr_btn" type="button" onclick="checkAll1()">전체동의</button></dt>
  	  	  	  <dd>
  	  	  	  	<div class="titleWrap">
  	  	  	  	  <h4 class="box1"><span class="txt_color">Around U</span> 회원 이용 약관</h4>
  	  	  	  	  <button class="detail_btn" type="button">내용보기 <span class="open"></span></button>
  	  	  	  	</div>
  	  	  	  	<div class="contentWrap hide">
  	  	  	  	  <p>내용</p>
  	  	  	  	</div>
  	  	  	  	<div class="agrBtnWrap">
  	  	  	  	  <input id="agr_1" type="checkbox">
  	  	  	  	  <label class="chk_btn" for="agr_1">동의</label>
  	  	  	  	</div>
  	  	  	  </dd>
  	  	  	  <dd>
  	  	  	  	<div class="titleWrap">
  	  	  	  	  <h4 class="box1">위치정보 수집 및 이용</h4>
  	  	  	  	  <button class="detail_btn" type="button">내용보기 <span class="open"></span></button>
  	  	  	  	</div>
  	  	  	  	<div class="contentWrap hide">
  	  	  	  	  <input id="" type="checkbox">
  	  	  	  	</div>
  	  	  	  	<div class="agrBtnWrap">
  	  	  	  	  <input id="agr_2" type="checkbox">
  	  	  	  	  <label class="chk_btn" for="agr_2">동의</label>
  	  	  	  	</div>
  	  	  	  </dd>
  	  	  	  <dd>
  	  	  	  	<div class="titleWrap">
  	  	  	  	  <h4 class="box1">개인정보 수집 및 이용</h4>
  	  	  	  	  <button class="detail_btn" type="button">내용보기 <span class="open"></span></button>
  	  	  	  	</div>
  	  	  	  	<div class="contentWrap hide">
  	  	  	  	  <p>내용</p>
  	  	  	  	</div>
  	  	  	  	<div class="agrBtnWrap">
  	  	  	  	  <input id="agr_3" type="checkbox">
  	  	  	  	  <label class="chk_btn" for="agr_3">동의</label>
  	  	  	  	</div>
  	  	  	  </dd>
  	  	  </dl>
  	  	</div>
  	  	<div class="terms_container">
  	  	  <dl>
  	  	  	<dt>선택 동의항목<button class="allAgr_btn"type="button" onclick="checkAll2()">전체동의</button></dt>
  	  	  	  <dd>
  	  	  	  	<h4 class="box"><span class="txt_color">Around U</span> 이메일 수신</h4>
  	  	  	  	<div class="agrBtnWrap">
  	  	  	  	  <input id="agr_4" type="checkbox">
  	  	  	  	  <label class="chk_btn" for="agr_4">동의</label>
  	  	  	  	</div>
  	  	  	  </dd>
  	  	  	  <dd>
  	  	  	  	<h4 class="box"><span class="txt_color">Around U</span> SMS 수신</h4>
  	  	  	  	<div class="agrBtnWrap">
  	  	  	  	  <input id="agr_5" type="checkbox">
  	  	  	  	  <label class="chk_btn" for="agr_5">동의</label>
  	  	  	  	</div>
  	  	  	  </dd>
  	  	  </dl>
  	  	</div>
  	  	<div class="btn_container">
  	  	  <button type="button" class="bkb_btn">이전으로</button>
  	  	  <button type="submit" class="nxt_btn">동의하기</button>
  	  	</div>
  	  </fieldset>
  	</form>
  </section>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
function checkAll1() {
	for(var i=1; i<=3; i++) {
		$('#agr_'+i).prop('checked', true);
	}
}
function checkAll2() {
	for(var i=4; i<=5; i++) {
		$('#agr_'+i).prop('checked', true);
	}
}
</script>
</body>
</html>