<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html PUBLIC >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <!--<script type="text/javascript">
  $(function() {
	$('.edit1').click(function() {
		var id  = $(this).attr('id'); //수정할 rno
		var txt = $('#td_'+id).text();
		$('#td_'+id).html("<textarea rows='2' cols='100' id='tt_"+id+"'>"+txt
			+"</textarea>");
		$('#btn_'+id).html(
			"<input type='button' value='확인' onclick='up("+id+")'>"+
			"<input type='button' value='취소' onclick='lst()'>");
	});
});
function up(id){
	var replytext = $('#tt_'+id).val();
	var formData = "rno="+id+'&replytext='+replytext;
	$.post('repUpdate.go',formData,function(data){
		$('#slist').html(data);
	});
} 
function lst(){
	$('#slist').load('slist.go');
}
 function del(rno,bno) {
	var formData="rno="+rno;
	$.post("repDelete.go",formData, function(data) {
		$('#slist').html(data);
	}); 
}
</script> -->
</head>
<body>
<div align="center">
	<h2 >메뉴</h2>
<table >
	<tr><td>메뉴명</td><td>가격</td><td>설명</td><td></td></tr>	

<c:forEach var="menu" items="${mlist}">
	<tr><td>${menu.it_name}</td><td>${menu.it_price}</td><td id="td_${menu.it_id}">${menu.it_cont}</td>
		<td id="btn_${menu.it_id}">	 
		<input type="button" value="수정" class="edit1" id="${menu.it_id}">
		<input type="button" value="삭제" onclick="del(${menu.it_id})">
		</td></tr>
</c:forEach>
</table>
</div>
</body>
</html>