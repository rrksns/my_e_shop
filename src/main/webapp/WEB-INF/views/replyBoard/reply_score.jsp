<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script type="text/javascript">

	$(function(){
		$('#slist').load("slist.go");		
 		$('#repInsert').click(function(){
			if(!frm.replytext.value){
				alert('댓글 입력 후에 클릭하시오');
				frm.replytext.focus();return false;
			}
			var frmData = $('#frm').serialize(); 
			$.post('sInsert.go',frmData,function(data){
				$('#slist').html(data);
				$('#textarea').val("");
				
			});
				
		}); 
	});
	

	</script>
<title>Insert title here</title>
</head>
<body>
<p>
<div>
<form name="frm" id="frm">
<input type="hidden" name="replyer" value="${rb.replyer}">
댓글 : <textarea rows="2" cols="100" name="replytext" id="textarea"></textarea>
<input type="button" value="확인" id="repInsert" class="btn btn-info">
<input type="button" value="평가하기">
</form>
</div>

<div id="slist"></div>



</body>
</html>