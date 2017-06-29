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
		
		var pw1 = frm.u_pw.value;
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
		if(frm.u_pw.value != frm.re_pw.value){ 
			alert("비밀번호가 일치하지 않습니다. 확인하세요"); 
			frm.pwCk.focus(); 
			return false;			
		}
		return true;
	}		
	
	</script>

</head>
<body>
<section id="userInfo">
  	<form action="userUpdate.go" name="frm" method="post" onsubmit="return chk()">
  	  <fieldset><legend class="hide">정보 수정</legend>
  	  	<p class="small">정보를 수정해 주세요.</p>
  	  	<div class="info_container">
  	  	  <div class="infoBox">
  	  	  	<span>아이디</span>
  	  	  	 	<input type="hidden" id="id" name="u_id" placeholder="아이디"  value="${user.u_id}"> 	  	  	
  	  	  </div>
  	  	  <div class="infoBox">
  	  	  	<span>비밀번호</span>
  	  	  	<input type="password" id="pw" name="u_pw" placeholder="비밀번호" required value="${user.u_pw}"><span></span>
  	  	  </div>
  	  	  <div class="infoBox">
  	  	  	<span>비밀번호 확인</span>
  	  	  	<input type="password" id="re_pw" name="pwCk"placeholder="비밀번호 확인" required value="${user.u_pw}" onkeyup="chkPw()">  <span></span>
  	  	  </div>
  	  	  <div>
  	  	  	<div id="checkPwd">동일한 암호를 입력하세요</div>
  	  	  </div>
  	  	</div>
  	  	<div class="info_container">
  	  	  <div class="infoBox">
  	  	  	<span>이름, 성별</span>
  	  	  	<div class="nameWrap">
  	  	  	  <input type="text" id="name" name="u_name" placeholder="이름" required value="${user.u_name}">
  	  	  	  
  	  	  	  <input type="radio" id="gender_w" name="u_gender" value="f" 
  	  	  	  <c:if test="${user.u_gender=='f'}">
  	  	  	  	checked="checked"
  	  	  	  </c:if>  
  	  	  	  >
  	  	  	  <label class="gender_btn" for="f">여자</label>
  	  	  	  <input type="radio" id="gender_m" name="u_gender" value="m"
  	  	  	  <c:if test="${user.u_gender=='m'}">
  	  	  	  	checked="checked"
  	  	  	  </c:if>  
  	  	  	  >
  	  	  	  <label class="gender_btn margin" for="m">남자</label>
  	  	  	</div>
  	  	  </div>
  	  	  <div class="birthdayBox">
  	  	  	<span>생년월일</span> <!-- 생년월일 따로따로 설정 하나로 조합해야함 -->
  	  	  	<div class="birthdayWrap">
  	  	  	<input type="text" name="u_birthdate" placeholder="2017-07-07" required="required" value="${user.u_birthdate}">
  	  	  	  	  	  
  	  	  	</div>
  	  	  </div>
  	  	  <div class="infoBox">
  	  	  	<span>이메일</span>
  	  	  	<input type="email" id="email" name="u_email" placeholder="이메일(e-mail)" required value="${user.u_email}">
  	  	  </div>
  	  	</div>
  	  	<div class="info_container">
  	  	  <div class="infoBox">
  	  	  	<span>휴대전화 번호</span>
  	  	  	<input type="text" id="email" name="u_mobile" placeholder="휴대전화 번호(-없이)" required value="${user.u_mobile}">
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