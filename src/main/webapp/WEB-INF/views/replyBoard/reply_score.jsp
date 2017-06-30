<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script type="text/javascript">
/* 	window.onload=function(){
		
	} */
	$(function(){
		$('#slist').load('slist.go');
		//$('#list').load('list.go');
		$('#repInsert').click(function(){
			if(!frm.replytext.value){
				alert('댓글 입력 후에 클릭하시오');
				frm.replytext.focus();return false;
			}
			var frmData = $('#frm').serialize(); //댓글을 입력하고 입력한 데이터를 삭제 ajax기능
			//var frmData = 'replyer='+frm.replyer.value+
			//'&bno='+frm.bno.value+'&replytext='+frm.replytext.value
			$.post('sInsert.go',frmData,function(data){
				$('#slist').html(data);
				frm.replytext.value='';
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
댓글 : <textarea rows="2" cols="100" name="replytext"></textarea>
<input type="button" value="확인" id="repInsert" class="btn btn-info">
<input type="button" value="평가하기">
</form>
</div>

<div id="slist"></div>

<%--<div class="container" align="center">
	<h2 class="text-primary">댓글</h2>
 <table class="table table-bordered">
	<!-- <tr><td>순번</td><td>작성자</td><td>내용</td><td>작성및 평가</td></tr>	 -->
	<tr><td></td><td>${id}</td><td><textarea rows="2" cols="100" name=""></textarea></td>
	<td><input type="button" value="작성" name=" " id="repInsert" class="btn btn-info"> </td></tr>
		    

</table>
</div> --%>

</body>
</html>