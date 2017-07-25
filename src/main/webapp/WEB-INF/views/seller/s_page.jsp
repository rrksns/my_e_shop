<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="${path}/resources/css/a.css">
<link rel="stylesheet" href="${path}/resources/css/myshop-common.css">
<link rel="stylesheet" href="${path}/resources/css/myshop-management.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,700">
<style>
.user-info {
	margin-top:20px;
}
.user-info .wrapper {
	display:block;
	margin-bottom:20px;
}
.subTitle {
	display:table-cell;
	width:150px;
	height:40px;
	vertical-align:middle;
}
.info {
	display:table-cell;
	width:426px;
	height:36px;
	vertical-align:middle;
	border:2px solid #DEBB3D;
	padding:0 10px;
}
.info input {
	width:426px;
	height:36px;
	font-size:18px;
	outline:none;
	border:none;
}
.srh-btn {
	width:90px;
	height:25px;
	font:15px bold;
	border-radius:5px;
	background-color:#ADADAD;
}
</style>
</head>
<body>
<div class="universe">
  <header class="page-header">
  	<div class="top-cover">
  	  <div class="home-logo">
  	  	<h1 class="logo"><a href="sellerMain.go">AROUND U</a></h1>
  	  </div>
  	  <nav class="user-nav"><h2 class="hide">사용자 메뉴</h2>
  	  	<ul>
  	  	  <li class="nav-list">
  	  	  	<a class="myshop-btn" href="" title="마이 샵">
  	  	  	  <img class="myshop-img" src="${path}/resources/img/icon/shop.png" width="25" height="25" alt="마이 샵">
  	  	  	</a>
  	  	  </li>
  	  	  <li class="nav-list">
  	  	  	<a class="dropdown-btn" href=""><span>"${seller.s_name}"</span>님 <span class="dropdown-img"></span></a>
  	  	  	<ul class="dropdown">
  	  	  	  <li><a href="">마이페이지</a></li>
  	  	  	  <li><a href="">1</a></li>
  	  	  	  <li><a href="">2</a></li>
  	  	  	  <li><a href="">3</a></li>
  	  	  	  <li><a href="">4</a></li>
  	  	  	  <li class="log-out"><a href="s_logout.go">로그아웃</a></li>
  	  	  	</ul>
  	  	  </li>
  	  	</ul>
  	  </nav>
  	</div>
  	<div class="secondary-line">
  	  <div class="page-title">
  	  	<h3><img class="home-img" src="${path}/resources/img/icon/home.png" width="25" height="25" alt=""> 마이 페이지</h3>
  	  </div>
  	</div>
  </header>
  <div class="page-body">
  	<aside class="support" role="complementary">
  	  <div class="shop-name">
  	  	<p><span class="name-txt">"${seller.s_name}"</span>님의</p>
  	  	<p style="padding:5px 0; border-bottom:2px solid #DEBB3D;">마이페이지</p>
  	  </div>
  	  <nav class="management-nav">
  	  	<ol>
  	  	  <li class="open"><a class="nav-btn" href="s_page.go">나의정보</a></li>
  	  	  <li class="not"><a class="nav-btn" href="">찜한 샵</a></li>
  	  	  <li class="not"><a class="nav-btn" href="">쿠폰함</a></li>
  	  	  <li class="not"><a class="nav-btn" href="">마일리지</a></li>
  	  	  <li class="not"><a class="nav-btn" href="">내가 쓴 글</a></li>
  	  	</ol>
  	  </nav>
  	</aside>
  	<div id="main" class="contents" role="main">
  	<form action="sellerUpdate.go" method="post">
<div>
  <h3 class="title">회원 정보</h3>
  <div class="user-info">
  	<div class="wrapper">
  	  <h4 class="subTitle">판매회원</h4>
  	  <span class="info" style="border:none">
  	  </span>
  	</div>
  	<div class="wrapper">
  	  <h4 class="subTitle">사용자 ID</h4>
  	  <span class="info" style="border:none">
  	  	<input type="text" id="id" name="s_id" placeholder="아이디"  value="${seller.s_id}" readonly="readonly">
  	  </span>
  	</div>
  	<div class="wrapper">
  	  <h4 class="subTitle">비밀 번호</h4>
  	  <span class="info">
  	  	<input type="password" id="pw" name="s_pw" placeholder="비밀번호" required value="${seller.s_pw}">
  	  </span>
  	</div>
  	<div class="wrapper">
  	  <h4 class="subTitle">비밀 번호 확인</h4>
  	  <span class="info">
  	  	<input type="password" id="re_pw" name="pwCk"placeholder="비밀번호 확인" required value="${seller.s_pw}" onkeyup="chkPw()"> 
  	  </span>
  	</div>
  	<div class="wrapper">
  	  	 <div id="checkPwd">동일한 암호를 입력하세요</div>
  	</div>
  	<div class="wrapper">
  	  <h4 class="subTitle">이름</h4>
  	  <span class="info" style="border:none">
  	  <input type="text" id="name" name="s_name" placeholder="이름" required value="${seller.s_name}">
  	  </span>	  	  
  	  	  	  
  	</div>
  	<div class="wrapper">
  	  <h4 class="subTitle">생년월일</h4>
  	  <span class="info" style="width:200px; border:none; font-weight:bold">
  	  	<span>${seller.s_birthdate}</span>
  	  	<!-- <span>월</span>
  	  	<span>일</span> -->
  	  </span>
  	  <h4 class="subTitle" style="width:120px; text-align:center;">성별</h4>
  	  <span class="info" style="width:80px; border:none">
  	   	  	  
  	  	  	<!--   <input type="radio" id="gender_w" name="s_gender" value="f" 
  	  	  	  <c:if test="${seller.s_gender=='f'}">
  	  	  	  	checked="checked"
  	  	  	  </c:if>  
  	  	  	  >
  	  	  	  <label class="gender_btn" for="f">여자</label>
  	  	  	  <input type="radio" id="gender_m" name="s_gender" value="m"
  	  	  	  <c:if test="${seller.s_gender=='m'}">
  	  	  	  	checked="checked"
  	  	  	  </c:if>  
  	  	  	  > -->
  	  	  	  <label class="gender_btn margin" for="m">남자</label>
  	  	 
  	  </span>
  	</div>
  	<div class="wrapper">
  	  <h4 class="subTitle">주소</h4>
  	  <span class="info">
  	  	<input type="text" style="width:330px">
  	  	<span><button class="srh-btn" type="button">주소 검색</button></span>
  	  </span>
  	</div>
  	<div class="wrapper">
  	  <h4 class="subTitle">휴대전화</h4>
  	  <span class="info">
  	  	<input type="text" id="email" name="s_mobile" placeholder="휴대전화 번호(-없이)" required value="${seller.s_mobile}">
  	  </span>
  	</div>
  	<div class="wrapper">
  	  <h4 class="subTitle">이메일</h4>
  	  <span class="info">
  	  	<input type="email" id="email" name="s_email" placeholder="이메일(e-mail)" required value="${seller.s_email}">
  	  </span>
  	</div>
  </div>
</div>
<div class="btn-box" style="margin-top:50px">
  	<button type="submit" style="margin-left:300px">수정하기</button>
</div>
</form>
  	</div>
  </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
$('aside').css({height:$('#main').height()});
$("#main").load('sellerInfo.html');

$(".management-nav li").click(function() {
	$(".management-nav li").removeClass('open');
	$(this).addClass('open');
	return false;
});

$(".not").click(function() {
	$("#main").load("premium.html");
	return false;
});

$(".management-nav li:first").click(function() {
	$("#main").load("sellerInfo.html");
	return false;
});
</script>
</body>
</html>


<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html PUBLIC >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
 function chkPw(){
		
		var pw1 = frm.s_pw.value;
		var pw2 = frm.pwCk.value;
		if(pw1 != pw2){
			document.getElementById('checkPwd').style.color = "red";
			document.getElementById('checkPwd').innerHTML = "동일한 암호를 입력하세요";
		}else{
			document.getElementById('checkPwd').style.color = "black";
			document.getElementById('checkPwd').innerHTML = "암호가 확인 되었습니다"
		}
	 }
	 
	 function chk() {				
		if(frm.s_pw.value != frm.re_pw.value){ 
			alert("비밀번호가 일치하지 않습니다. 확인하세요"); 
			frm.pwCk.focus(); 
			return false;			
		}
		return true;
	}		
	
	</script>
<!-- 	<script type="text/javascript">
	var a='${seller.s_gender}'
	$('input:radio[name=s_gender]:input[value='+a+']').attr("checked",true);
	</script> -->
</head>
<body>
<section id="userInfo">
  	<form action="sellerUpdate.go" name="frm" method="post" onsubmit="return chk()">
  	  <fieldset><legend class="hide">정보 수정</legend>
  	  	<p class="small">정보를 수정해 주세요.</p>
  	  	<div class="info_container">
  	  	  <div class="infoBox">
  	  	  	<span>아이디</span>
  	  	  	 	<input type="hidden" id="id" name="s_id" placeholder="아이디"  value="${seller.s_id}"> 	  	  	
  	  	  </div>
  	  	  <div class="infoBox">
  	  	  	<span>비밀번호</span>
  	  	  	<input type="password" id="pw" name="s_pw" placeholder="비밀번호" required value="${seller.s_pw}"><span></span>
  	  	  </div>
  	  	  <div class="infoBox">
  	  	  	<span>비밀번호 확인</span>
  	  	  	<input type="password" id="re_pw" name="pwCk"placeholder="비밀번호 확인" required value="${seller.s_pw}" onkeyup="chkPw()">  <span></span>
  	  	  </div>
  	  	  <div>
  	  	  	<div id="checkPwd">동일한 암호를 입력하세요</div>
  	  	  </div>
  	  	</div>
  	  	<div class="info_container">
  	  	  <div class="infoBox">
  	  	  	<span>이름, 성별</span>
  	  	  	<div class="nameWrap">
  	  	  	  <input type="text" id="name" name="s_name" placeholder="이름" required value="${seller.s_name}">
  	  	  	  
  	  	  	  <input type="radio" id="gender_w" name="s_gender" value="f" 
  	  	  	  <c:if test="${seller.s_gender=='f'}">
  	  	  	  	checked="checked"
  	  	  	  </c:if>  
  	  	  	  >
  	  	  	  <label class="gender_btn" for="f">여자</label>
  	  	  	  <input type="radio" id="gender_m" name="s_gender" value="m"
  	  	  	  <c:if test="${seller.s_gender=='m'}">
  	  	  	  	checked="checked"
  	  	  	  </c:if>  
  	  	  	  >
  	  	  	  <label class="gender_btn margin" for="m">남자</label>
  	  	  	</div>
  	  	  </div>
  	  	  <div class="birthdayBox">
  	  	  	<span>생년월일</span> <!-- 생년월일 따로따로 설정 하나로 조합해야함 -->
  	  	  	<div class="birthdayWrap">
  	  	  	<input type="text" name="s_birthdate" placeholder="2017-07-07" required="required" value="${seller.s_birthdate}">
  	  	  	  	  	  
  	  	  	</div>
  	  	  </div>
  	  	  <div class="infoBox">
  	  	  	<span>이메일</span>
  	  	  	<input type="email" id="email" name="s_email" placeholder="이메일(e-mail)" required value="${seller.s_email}">
  	  	  </div>
  	  	</div>
  	  	<div class="info_container">
  	  	  <div class="infoBox">
  	  	  	<span>휴대전화 번호</span>
  	  	  	<input type="text" id="email" name="s_mobile" placeholder="휴대전화 번호(-없이)" required value="${seller.s_mobile}">
  	  	  </div>
  	  	</div>
  	  	<div class="btn_container">
  	  	  <button type="button" class="bkb_btn" onclick="javascript:history.back()">이전으로</button>
  	  	  <button type="submit" class="nxt_btn">수정</button>
  	  	</div>
  	  </fieldset>
  	</form>
  </section>

</body>
</html> --%>