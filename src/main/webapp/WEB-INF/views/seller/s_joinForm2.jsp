<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>    
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>Around U 회원가입</title>
<link rel="stylesheet" href="${path}/resources/css/all.css">
<link rel="stylesheet" href="${path}/resources/css/join.css">

<script type="text/javascript">
	/* 중복체크 */
	$(function(){
		$('#idChk').click(function(){
			var id = $('#id').val();
			if(id==""){alert('아이디 입력하고 체크하세요!')
				$('#id').focus(); return false;	}
			$.post("idChk.go","id="+id, function(msg){
				alert(msg);
			});
		});
	});

	
	function chk() {
		if (frm.s_id.value.length >= 6 || frm.s_id.value.length <= 20 ) {
			alert("아이디는 6 - 20의 영문,숫자조합입니다");
			form.id.focus();
			return false;
		}
		
		var reg_pw = /^.*(?=.{4,8})(?=.*[0-9])(?=.*[a-zA-Z])(?=.*[@!#$*()_&]).*$/; 
		if(!reg_pw.test(frm.s_pw.value)) { 
			alert("4~8자 영문 대 소문자, 숫자, 특수문자를 사용하세요."); 
			frm.s_pw.focus(); 
			return false;		
		
		if(frm.s_pw.value != frm.re_pw.value){ 
			alert("비밀번호가 일치하지 않습니다. 확인하세요"); 
			frm.pw.focus(); 
			return false;			
		}
		return true;
		}		
	}
</script>

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
  <section id="userInfo">
  	<form action="sellerJoin.go" name="frm" method="post">
  	  <fieldset><legend class="hide">필수 정보 입력</legend>
  	  	<p class="small">기본 정보를 입력해 주세요.</p>
  	  	<div class="info_container">
  	  	  <div class="infoBox">
  	  	  	<span>아이디</span>
  	  	  	<input type="text" id="id" name="s_id" placeholder="아이디" min="6" max="20"required="required"> * 6~20자 &nbsp;
  	  	  	<input type="button" value="중복확인" id="idChk" >
  	  	  </div>
  	  	  <div class="infoBox">
  	  	  	<span>비밀번호</span>
  	  	  	<input type="password" id="pw" name="s_pw" placeholder="비밀번호" required max="20" min="8">* 8~20자의 영문, 숫자, 특수문자( ! # $ * ( ) _ = |)<span></span>
  	  	  </div>
  	  	  <div class="infoBox">
  	  	  	<span>비밀번호 확인</span>
  	  	  	<input type="password" id="re_pw" name="re_pw" placeholder="비밀번호 확인" required >  <span></span>
  	  	  </div>
  	  	</div>
  	  	<div class="info_container">
  	  	  <div class="infoBox">
  	  	  	<span>이름, 성별</span>
  	  	  	<div class="nameWrap">
  	  	  	  <input type="text" id="name" name="s_name" placeholder="이름" required>
  	  	  	  <input type="radio" id="gender_w" name="s_gender"><label class="gender_btn" for="f">여자</label>
  	  	  	  <input type="radio" id="gender_m" name="s_gender"><label class="gender_btn margin" for="m">남자</label>
  	  	  	</div>
  	  	  </div>
  	  	  <div class="birthdayBox">
  	  	  	<span>생년월일</span> <!-- 생년월일 따로따로 설정 하나로 조합해야함 -->
  	  	  	<div class="birthdayWrap">
  	  	  	<input type="text" name="s_birthdate" placeholder="20170707" required="required">
  	  	  	  <!-- <input class="year" type="text" placeholder="연도 ex)1989" required><span class="">년</span>
  	  	  	  <input class="month" type="text" required><span>월</span>
  	  	  	  <input class="day" type="text" required><span>일</span>  --> 	  	  	  
  	  	  	</div>
  	  	  </div>
  	  	  <div class="infoBox">
  	  	  	<span>이메일</span>
  	  	  	<input type="email" id="email" name="s_email" placeholder="이메일(e-mail)" required>
  	  	  </div>
  	  	</div>
  	  	<div class="info_container">
  	  	  <div class="infoBox">
  	  	  	<span>휴대전화 번호</span>
  	  	  	<input type="text" id="email" name="s_mobile" placeholder="휴대전화 번호(-없이)" required>
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