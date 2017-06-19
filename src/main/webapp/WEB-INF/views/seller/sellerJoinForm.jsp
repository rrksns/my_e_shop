<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html><head>
<script type="text/javascript">
	
	
	function chk() {	var s_id = form.s_id.value;
		if (!form.s_id.value) {
			alert('아이디를 입력하세요');
			form.s_id.focus(); return false;
		}
	}
	function chk2() {
		if (form.s_id.value.length < 6 || form.s_id.value.length > 20 ) {
			alert("아이디는 6 - 20의 영문,숫자조합입니다");
			form.s_id.focus();
			return false;
		}
		var reg_pw = /^.*(?=.{4,8})(?=.*[0-9])(?=.*[a-zA-Z])(?=.*[@!#$*()_&]).*$/; 
		if(!reg_pw.test(form.password.value)) { 
			alert("4~8자 영문 대 소문자, 숫자, 특수문자를 사용하세요."); 
			form.password.focus(); 
			return false;
		}
		return true;
	}
</script>
</head>
<body>
<!--WRAP-->
<section id="wrap">
	<!--HGROUP-->
	<div class="container"><h2>회원가입</h2>
	<!--/HGROUP-->
	<c:choose>
		<c:when test="${not empty message }">
			<script type="text/javascript">alert("${message}");</script>
		</c:when>
	</c:choose>
	<!--CONTENTS-->
	<form action="sellerJoin.go" method="post" name="form" onsubmit="return chk2()">		
		<table>
		<col style="width:150px">
		<col>	
			<tr><th scope="row">아이디</th>
				<c:choose>					
					<c:when test="${not empty s_id }">
						<td><input type="text" name="s_id" value="${s_id}" max="20" 
							min="6"required="required">
							 * 6~20자 &nbsp;
							<input type="button" value="중복확인" onclick="chk()"></td>
					</c:when>					
				</c:choose>			
			</tr>			
			<tr><th scope="row">비밀번호</th>
				<td><input type="password" name="s_pw"  
				max="20" min="8" required="required">
				 * 8~20자의 영문, 숫자, 특수문자( ! # $ * ( ) _ = |) 조합 </td>
			</tr>
			<tr><th scope="row">비밀번호 확인</th>
				<td><input type="password" name="s_pw"  
				max="20" min="8" required="required">
				 * 8~20자의 영문, 숫자, 특수문자( ! # $ * ( ) _ = |) 조합 </td>
			</tr>				
			<tr><th scope="row">이름</th>
				<td><input type="text" name="s_name" required="required"></td>
			</tr>
			<tr><th scope="row">핸드폰 번호</th>
				<td><input type="text" name="s_mobile" required="required"></td>
			</tr>
				<tr><th scope="row">인증번호</th>
				<td><input type="text" name="s_mob_conf" required="required"></td>
			<tr><th scope="row">이메일</th>
				<td><input type="email" name="s_email" required="required"></td>
			</tr>
			<tr><th scope="row">생년월일</th>
				<td><input type="text" name="s_birthdate" required="required"></td>
			</tr>
			</tr>
			<tr><th scope="row">성별</th>
				<td><input type="text" name="s_gender" required="required"></td>
			</tr>
		</table>			
		<div id="h">
			<p><input type="submit" value="등록">&nbsp;
			<input type="reset" value="취소">&nbsp;<a href="main.go">돌아가기</a></p>		
		</div>			
	</form>
	<!--/CONTENTS-->
</div>
</section>
</body>
</html>