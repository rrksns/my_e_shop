<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html PUBLIC >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <script type="text/javascript"> 
 
  $(function() {
	$('.edit1').click(function() {
		var it_id  = $(this).attr('it_id'); //수정할 id
		var it_cont = $('#td_'+id).text();
	/* 	var it_img1 = $(this).attr('it_img1');
		var it_img2 = $(this).attr('it_img2');
		var it_img3 = $(this).attr('it_img3'); */
		$('#td_'+it_id).html("<textarea rows='1' cols='80' id='tt_"+it_id+"'>"+it_cont
			+"</textarea>");
		$('#btn_'+it_id).html(
			"<input type='button' value='확인' onclick='up("+it_id+")'>"+
			"<input type='button' value='취소' onclick='lst()'>");
	});
});
function up(it_id){
	var it_name ="${menu.it_name}";
	var it_price="${menu.it_price}";	
	/* var it_img1
	var it_img2
	var it_img3	 */
	var it_cont = $('#tt_'+it_id).val();
	var formData = "it_id="+it_id+'&it_name'+it_name+'&it_price'+it_price+'&it_cont='+it_cont;
	$.post('mUpdate.go',formData,function(data){
		$('#mlist').html(data);
	});
} 
function lst(){
	$('#mlist').load('mlist.go');
}
 
	function del(it_id) {
		 alert('삭제');
		var formData="it_id="+it_id;
		$.post("mDelete.go",formData, function(data) {
			$('#mlist').html(data);
		}); 
	}
</script>

</head>
<body>
<div >
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