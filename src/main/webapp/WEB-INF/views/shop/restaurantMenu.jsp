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
		</section>
		</main>
	</div>
</body>
</html>