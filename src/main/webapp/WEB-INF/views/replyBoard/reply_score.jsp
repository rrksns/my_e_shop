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
				
				/* function lst(){
					$('#slist').load('slist.go'); 
				}*/
			});				
		}); 
	});
	</script>
	<script type="text/javascript">
	function score(){
		window.open('score.go','popup1','width=300,height=500,toolbar=no,menubar=no,resizable=no, scrollbars=no')
	}
	
	function winPop(url, opts) {
		   
		   var popupName = opts.name || 'popup';
		   var options = '';
		   options += 'width=' + (opts.width ? opts.width : 200) + ', height=' + (opts.height ? opts.height : 200);
		   options += opts.left && opts.width ? ', left=' + opts.left : ', left=' + ( (screen.availWidth - opts.width) / 2);
		   options += opts.top && opts.height ? ', top=' + opts.top : ', top=' + ( (screen.availHeight - opts.height) / 2);
		   options += opts.scrollbars ? ', scrollbars=' + opts.scrollbars : ', scrollbars=no';
		   options += opts.resizable ? ', resizable=' + opts.resizable : ', resizable=no';
		       console.log(popupName);
		   window.open(url, popupName, options);
		}
	</script>
<title>Insert title here</title>
</head>
<body>
<p>
<div>
<form name="frm" id="frm">
<input type="text" name="replyer" value="${rb.replyer}" readonly="readonly">
댓글 : <textarea rows="2" cols="100" name="replytext" id="textarea"></textarea>
<input type="button" value="확인" id="repInsert" class="btn btn-info">
<input type="button" value="평가하기" onclick="score()">
<!-- <p><a href="https://naver.com" onclick="winPop(this.href, {name:'팝업1',width:300,height:500}); return false;">팝업보기 </a></p> -->  
</form>
</div>

<div id="slist"></div>



</body>
</html>