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
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
		$("#tabs").tabs();
	});
</script>
<!-- <script type="text/javascript">
	$(function() {
		$('#mlist').load("mlist.go");
		$('#mInsert').click(function() {
			if (!form.it_name.value) {
<script type="text/javascript">

$(function(){
		$('#mlist').load("mlist.go");		
 		$('#mInsert').click(function(){
			if(!form.it_name.value){
>>>>>>> 1108ef97a64ecb9a0ba75152bf36f9a75694d9bd
				alert('메뉴이름을 입력 후에 클릭하시오');
				form.it_name.focus();
				return false;
			}

			if (!form.it_price.value) {
				alert('메뉴가격을 입력 후에 클릭하시오');
				form.it_price.focus();
				return false;
			}

			if (!form.it_cont.value) {
				alert('메뉴설명을 입력 후에 클릭하시오');
				form.it_cont.focus();
				return false;
			}

			var frmData = $('#frm').serialize();
			$.post('mInsert.go', frmData, function(data) {
				$('#mlist').html(data);
				$('#it_name').val("");
				$('#it_price').val("");
				$('#it_cont').val("");
				$('#it_pic1').val("");
				$('#it_pic2').val("");
				$('#it_pic3').val("");

				/* function lst(){
					$('#slist').load('slist.go'); 
				}*/
			});
		});
	});

</script>

	</script> -->
 
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
			<form action="restaurantMenu.go" method="post" name="form" id="frm"
				enctype="multipart/form-data">
				<input type="text" name="sh_id" value="${sh_id}"> <input
					type="text" name="sh_name" value="${shop.sh_name}">
				<div id="tabs">
					<ul>
						<li><a href="#tabs-1">메뉴명 1</a></li>
						<li><a href="#tabs-2">메뉴명 2</a></li>
						<li><a href="#tabs-3">메뉴명 3</a></li>
					</ul>
					<div id="tabs-1">
						메뉴 이름 <input type="text" name="it_name" id="it_name"
							required="required" placeholder="메뉴 이름을 입력하세요">
						<p>
							메뉴 가격 <input type="text" name="it_price" id="it_price"
								required="required">
						<p>
							메뉴 내용 <input type="text" name="it_cont" id="it_cont"
								required="required">
						<p>
							메뉴사진 1 <input type="file" id="it_pic1" name="menu1"><p>
							메뉴사진 2 <input type="file" id="it_pic2" name="menu2"><p>
							메뉴사진 3 <input type="file" id="it_pic3" name="menu3"> <p>
							탑 메뉴 등록 <input type="checkbox" name="it_top3" id="it_top3" value="y"><p>
							<label for="it_top3">선택</label> 
							<input type="hidden" name="it_group" value="1">
					</div>
					<div id="tabs-2">
					zzz
						
					</div>
					<div id="tabs-3">
					dddd
					</div>
				</div>
				<div class="nextBtnWrap">
					<button class="prev_btn" type="button" onclick="history.go(-1)">이전으로</button>
					<button class="next_btn" type="submit">다음으로</button>
				</div>
			</form>
		<!-- 	<div id="mlist"></div> -->

	<%-- <form action="restaurantMenu.go" method="post" name="form" id="frm" enctype="multipart/form-data">
		<input type="text" name="sh_id" value= "${shop.sh_id}">
		<input type="text" name="sh_name" value="${shop.sh_name}">
		<input type="text" name="it_id" value="${menu.it_id}">
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
						<td><input type="text" name="it_name"  id="it_name" required="required"></td>
					</tr>
					<tr>
						<th scope="row">가격</th>
						<td><input type="text" name="it_price"  id="it_price" required="required"></td>
					</tr>
					<tr>
						<th scope="row">메뉴설명</th>
						<td><input type="text" name="it_cont"  id="it_cont" required="required"></td>
					</tr>
					<tr>
						<th scope="row">그룹설정</th>
						<td><select name="it_groupId"  id="it_groupId" >
						<option value="1">식사</option>
						<option value="2">음료</option>
						<option value="3">디저트</option>
						</select>
						</td>
					</tr>
					<tr>
						<th scope="row">사진 등록</th>
						<td><input type="file" id="it_pic1" name="menu1"></td>
					</tr>
					<tr>
						<th scope="row">사진 추가</th>
						<td><input type="file" id="it_pic2" name="menu2"></td>
					</tr>
					<tr>
						<th scope="row">사진 추가</th>
						<td><input type="file" id="it_pic3" name="menu3"></td>
					</tr> 
					<tr>
						<th scope="row">top3</th>
						<td><input type="checkbox" name="it_top3" id="it_top3" value="y">
						<label for="it_top3">선택</label></td>
					</tr>
					<input type="hidden" name="it_group" value="1"> <!-- 메뉴그룹을 임의로 지정 -->
				</table>
				
			</div>

			<div class="contents" id="con2" style="display: none;">
				
			</div>
			<div class="contents" id="con3" style="display: none;">
			</div>
		</div>
		
		<div class="nextBtnWrap">
  	  	  	  <button class="prev_btn" type="button" onclick="history.go(-1)">이전으로</button>
  	  	  	  <button class="next_btn" type="submit">입력</button>
  	  	</div>
	</form>
	<input type="button" value="확인" id="mInsert" class="btn btn-info">
	
	
	<div id ="mlist"></div> --%>
			
		</section>
		</main>
	</div>
</body>
</html>