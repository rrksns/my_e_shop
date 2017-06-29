<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
/* $(function() {
	$('.edit1').click(function() {
		var id  = $(this).attr('id'); //수정할 rno
		var txt = $('#td_'+id).text();
		$('#td_'+id).html("<textarea rows='3' cols='30' id='tt_"+id+"'>"+txt
			+"</textarea>");
		$('#btn_'+id).html(
			"<input type='button' value='확인' onclick='up("+id+")'>"+
			"<input type='button' value='취소' onclick='lst()'>");
	});
});
function up(id){
	var replytext = $('#tt_'+id).val();
	var formData = "rno="+id+'&replytext='+replytext+"&bno=${board.num}";
	$.post('${path}/repUpdate',formData,function(data){
		$('#slist').html(data);
	});
}
function lst(){
	$('#slist').load('${path}/slist/num/${board.num}');
}
function del(rno,bno) {
	var formData="rno="+rno+"&bno="+bno;
	$.post("${path}/repDelete",formData, function(data) {
		$('#slist').html(data);
	});
} */
</script>
<title>Insert title here</title>
</head>
<body>
<div class="container" align="center">
	<h2 class="text-primary">댓글</h2>
<table class="table table-bordered">
	<!-- <tr><td>순번</td><td>작성자</td><td>내용</td><td>작성및 평가</td></tr>	 -->
	<tr><td></td><td>${id}</td><td><textarea rows="2" cols="100" name=""></textarea></td>
	<td><input type="button" value="작성" name=" "> <input type="button" value="평가하기"></td></tr>
		    
<%-- <c:forEach var="rb" items="${slist}">
	<tr><td>${rb.replyer}</td><td id="td_${rb.rno}">${rb.replytext}</td>
		<td>${rb.updatedate }</td><td id="btn_${rb.rno}">
	<c:if test="${rb.replyer==board.writer }">
		<input type="button" value="수정" class="edit1" id="${rb.rno}">
		<input type="button" value="삭제" onclick="del(${rb.rno},${rb.bno})">
	</c:if></td></tr>
</c:forEach> --%>
</table>
</div>

</body>
</html>