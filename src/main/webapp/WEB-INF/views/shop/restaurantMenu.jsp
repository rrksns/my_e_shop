<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My Shop 등록 : 로드 샵</title>
<link rel="stylesheet" href="${path}/resources/css/all.css">
<link rel="stylesheet" href="${path}/resources/css/myshop.css">

<style>
.tab ul li {
	float: left;
	margin: 0;
	padding: 5px;
	list-style: none border: 1px solid #006633;
	background-color: #CCFDC4
}

.contents {
	border: 1px solid #006633;
	clear: both;
	margin: 0;
}
</style>
<script type="text/javascript">
	function showTabMenu(n) {
		var conId;

		for (i = 1; i < 5; i++) {
			conId = document.getElementById("con" + i);
			if (i == n) {
				conId.style.display = "";
			} else {
				conId.style.display = "none";
			}
		}
	}
</script>
<script type="text/javascript">

	$(function(){
		$('#mlist').load("mlist.go");		
 		$('#menuInsert').click(function(){
			if(!frm.replytext.value){
				alert('댓글 입력 후에 클릭하시오');
				frm.replytext.focus();return false;
			}
			var frmData = $('#frm').serialize(); 
			$.post('mInsert.go',frmData,function(data){
				$('#menulist').html(data);
				$('#textarea').val("");		
				
				/* function lst(){
					$('#slist').load('slist.go'); 
				}*/
			});				
		}); 
	});
	</script>

</head>
<body>
	<div class="universe">
		<aside>
			<h2 class="home_logo">
				<a href="sellerMain.go">Around U</a>
			</h2>
			<div class="shopNameWrap">
				<p>${seller.s_name}님의</p>
				<p>e-shop을 꾸며보세요!</p>
			</div>
			<ul class="phase">
				<li><p>기본 정보</p></li>
				<li><p>사진 등록</p></li>
				<li><p>메뉴 등록</p></li>
				<li><p>부가 정보</p></li>
			</ul>
		</aside>
		<main role="main"> <header>
			<div class="setWrap">
				<button class="set_btn" type="button">
					<img src="${path}/resources/img/set.png" width="36" height="25"
						alt="설정">
				</button>
			</div>
			<div class="titleWrap">
				<h3 class="title">
					<img src="${path}/resources/img/home.png" width="25" height="25"
						alt=""> My e-Shop
				</h3>
			</div>
		</header>
		<section>
			<h2>메뉴 등록</h2>
	<form action="restaurantMenu.go" method="post" name="form" enctype="multipart/form-data">
		<input type="text" name="sh_id" value= "${shop.sh_id}">
		<input type="text" name="sh_name" value="${shop.sh_name}">
		<div class="tab">
			<ul>
				<li><a href="javascript_:showTabMenu(1)">메뉴그룹1</a></li>
				<li><a href="javascript_:showTabMenu(2)">메뉴그룹2</a></li>
				<li><a href="javascript_:showTabMenu(3)">메뉴그룹3</a></li>
				<li><a href="javascript_:showTabMenu(4)">메뉴그룹추가</a></li>
			</ul>
		</div>
		<div>
			<div class="contents" id="con1">
				<table>
					<tr>
						<th scope="row">메뉴</th>
						<td><input type="text" name="it_name"  required="required"></td>
					</tr>
					<tr>
						<th scope="row">가격</th>
						<td><input type="text" name="it_price"  required="required"></td>
					</tr>
					<tr>
						<th scope="row">메뉴설명</th>
						<td><input type="text" name="it_cont"  required="required"></td>
					</tr>
					<tr>
						<th scope="row">사진 등록</th>
						<td><input type="file" name="menu1"></td>
					</tr>
					<tr>
						<th scope="row">사진 추가</th>
						<td><input type="file" name="menu2"></td>
					</tr>
					<tr>
						<th scope="row">사진 추가</th>
						<td><input type="file" name="menu3"></td>
					</tr> 
					<tr>
						<th scope="row">top3</th>
						<td><input type="checkbox" name="it_top3" id="it_top3" value="y">
						<label for="it_top3">선택</label></td>
					</tr>
				</table>
				<input type="button" value="확인" id="menuInsert" class="btn btn-info">
			</div>

			<div class="contents" id="con2" style="display: none;">
				
			</div>
			<div class="contents" id="con3" style="display: none;">
			</div>
		</div>
		<div id ="mlist"></div>
		<div class="nextBtnWrap">
  	  	  	  <button class="prev_btn" type="button" onclick="history.go(-1)">이전으로</button>
  	  	  	  <button class="next_btn" type="submit">다음으로</button>
  	  	</div>
	</form>
			
		</section>
		</main>
	</div>
</body>
</html>
