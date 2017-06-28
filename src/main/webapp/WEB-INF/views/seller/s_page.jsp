<%@ page language="java" contentType="text/html; charset=UTF-8"
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
</html>