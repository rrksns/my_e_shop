<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="${path}/resources/css/a.css">
<link rel="stylesheet" href="${path}/resources/css/myshop-common.css">
<link rel="stylesheet" href="${path}/resources/css/myshop-register-menu.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,700">
</head>
<body>
<div class="universe">
  <header class="page-header">
  	<div class="top-cover">
  	  <div class="home-logo">
  	  	<h1 class="logo"><a href="sellerMain.go">AROUND U</a></h1>
  	  </div>
  	  <nav class="user-nav"><h2 class="hide">사용자 메뉴</h2>
  	  	<ul>
  	  	  <li class="nav-list">
  	  	  	<a class="myshop-btn" href="" title="마이 샵">
  	  	  	  <img class="myshop-img" src="img/icon/shop.png" width="25" height="25" alt="마이 샵">
  	  	  	</a>
  	  	  </li>
  	  	  <li class="nav-list">
  	  	  	<a class="dropdown-btn" href=""><span>"${seller.s_name}"</span>님 <span class="dropdown-img"></span></a>
  	  	  	<ul class="dropdown">
  	  	  	  <li><a href="">마이페이지</a></li>
  	  	  	  <li><a href="">1</a></li>
  	  	  	  <li><a href="">2</a></li>
  	  	  	  <li><a href="">3</a></li>
  	  	  	  <li><a href="s_logout.go">4</a></li>
  	  	  	  <li class="log-out"><a href="">로그아웃</a></li>
  	  	  	</ul>
  	  	  </li>
  	  	</ul>
  	  </nav>
  	</div>
  	<div class="secondary-line">
  	  <div class="page-title">
  	  	<h3><img class="home-img" src="${path}/resources/img/icon/home.png" width="25" height="25" alt=""> My e-Shop</h3>
  	  </div>
  	</div>
  </header>
  <div class="page-body">
  	<aside class="support" role="complementary">
  	  <div class="shop-name">
  	  	<p><span class="name-txt">"${seller.s_name}"</span>님의</p>
  	  	<p style="padding:5px 0; border-bottom:2px solid #DEBB3D;">e-Shop</p>
  	  </div>
  	  <div class="input-steb"><h2 class="hide">샵 정보 등록 단계</h2>
  	  	<ol>
  	  	  <li class="steb-list"><p class="steb-txt">기본 정보</p></li>
  	  	  <li class="steb-list"><p class="steb-txt" style="border:none;">사진 등록</p></li>
  	  	  <li class="steb-list here"><p class="steb-txt">메뉴 등록</p></li>
  	  	  <li class="steb-list"><p class="steb-txt">부가 정보</p></li>
  	  	</ol>
  	  </div>
  	</aside>
  	<div class="contents" role="main">
  	  <form action="restaurantMenu.go" method="post">
  	  	<fieldset><legend class="hide">메뉴 등록</legend>
  	  	  <h3 class="title">메뉴 등록</h3>
  	  	  <div class="line-container">
  	  	  	<div class="vertical-line fl_L">
  	  	  	  <div class="category-tab">
  	  	  	  	<div></div>
  	  	  	  	<div class="menu-addition">
  	  	  	  	  <a href=""><span class="addition-img"></span> 카테고리 추가</a>
  	  	  	  	</div>
  	  	  	  </div>
  	  	  	  <div class="menu-category">
  	  	  	  	<ul>
  	  	  	  	  <li class="nav-list">
  	  	  	  	  	<a class="tab-btn" href="#menu1">메뉴1</a>
  	  	  	  	  	<div class="input-cate" id="menu1">
  	  	  	  	  	  <input class="cate-name" type="text" value="메뉴1">
  	  	  	  	  	</div>
  	  	  	  	  </li>
  	  	  	  	  <li class="nav-list">
  	  	  	  	  	<a class="tab-btn" href="#menu2">메뉴2</a>
  	  	  	  	  	<div class="input-cate" id="menu2">
  	  	  	  	  	  <input class="cate-name" type="text" value="메뉴2">
  	  	  	  	  	</div>
  	  	  	  	  </li>
  	  	  	  	  <li class="nav-list">
  	  	  	  	  	<a class="tab-btn" href="#menu3">메뉴3</a>
  	  	  	  	  	<div class="input-cate" id="menu3">
  	  	  	  	  	  <input class="cate-name" type="text" value="메뉴3">
  	  	  	  	  	</div>
  	  	  	  	  </li>
  	  	  	  	</ul>
  	  	  	  </div>
  	  	  	  <div class="input-menu">
  	  	  	  	<div class="wrapper">
  	  	  	  	  <h4>메뉴 이름</h4>
  	  	  	  	  <input type="text" name="it_name">
  	  	  	  	</div>
  	  	  	  	<div class="wrapper">
  	  	  	  	  <h4>가격</h4>
  	  	  	  	  <input type="text" name="it_price">
  	  	  	  	</div>
  	  	  	  	<div class="wrapper">
  	  	  	  	  <h4>설명</h4>
  	  	  	  	  <input type="text">
  	  	  	  	</div>
  	  	  	  	<div class="wrapper">
  	  	  	  	  <h4>메뉴 사진</h4>
  	  	  	  	  <input id="file" type="file" accept="image/*">
  	  	  	  	  <div class="preview">
  	  	  	  	  </div>
  	  	  	  	</div>
  	  	  	  </div>
  	  	  	</div>
  	  	  </div>
  	  	  <div class="btn-box">
  	  	  	<button class="prev-btn" type="button" onclick="window.history.go(-1)">이전으로</button>
  	  	  	<button class="next-btn" type="submit">다음</button>
  	  	  </div>
  	  	</fieldset>
  	  </form>
  	</div>
  </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
$('aside').css({height:$(window).height()});

$(document).ready(function() {
	$(".input-cate").hide();
	$(".menu-category li").click(function() {
		$(".input-cate").hide();
		var activeTab = $(this).find("a").attr("href");
		$(activeTab).show();
		return false;
	});
});

var sel_files = new Array();
$('#file').on('change',preview);
function preview(input) {
	var files = input.target.files;
	var fileArr = Array.prototype.slice.call(files);
	fileArr.forEach(function(f) {
		if(!f.type.match("image.*")) {
			alert("이미지로 된 확장자만 첨부할 수 있습니다.")
			return;
		}
		sel_files.push(f);
		var reader = new FileReader();
		reader.onload = function(e) {
			var img = "<img src=\""+e.target.result+"\"/>";
			$('.preview').html(img);
		}
		reader.readAsDataURL(f);
	});
}
</script>
</body>
</html> --%>



<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My Shop 등록 : 로드 샵</title>
<link rel="stylesheet" href="${path}/resources/css/a.css">
<link rel="stylesheet" href="${path}/resources/css/myshop-common.css">
<link rel="stylesheet" href="${path}/resources/css/myshop-register-menu.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,700">


<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script type="text/javascript">
function addMenuForm(){
	window.open('addMenuForm.go','popup','width=500,height=500,toolbar=no,menubar=no,resizable=no, scrollbars=no')
	

}
</script>
<script>
	$(function() {
		$("#tabs").tabs();
	});
	
		
</script>

<!-- 
<script type="text/javascript">
	$(function() {
		$('#mlist').load("mlist.go");
		$('#mInsert').click(function() {
			if (!form.it_name.value) {
<script type="text/javascript">

$(function(){
		$('#mlist').load("mlist.go");		
 		$('#mInsert').click(function(){
			if(!form.it_name.value){
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

	</script>  -->
 
</head>
<body>
	<div class="universe">
  <header class="page-header">
  	<div class="top-cover">
  	  <div class="home-logo">
  	  	<h1 class="logo"><a href="sellerMain.go">AROUND U</a></h1>
  	  </div>
  	  <nav class="user-nav"><h2 class="hide">사용자 메뉴</h2>
  	  	<ul>
  	  	  <li class="nav-list">
  	  	  	<a class="myshop-btn" href="" title="마이 샵">
  	  	  	  <img class="myshop-img" src="${path}/resources/img/icon/shop.png" width="25" height="25" alt="마이 샵">
  	  	  	</a>
  	  	  </li>
  	  	  <li class="nav-list">
  	  	  	<a class="dropdown-btn" href=""><span>"${seller.s_name}"</span>님 <span class="dropdown-img"></span></a>
  	  	  	<ul class="dropdown">
  	  	  	  <li><a href="">마이페이지</a></li>
  	  	  	  <li><a href="">1</a></li>
  	  	  	  <li><a href="">2</a></li>
  	  	  	  <li><a href="">3</a></li>
  	  	  	  <li><a href="s_logout.go">4</a></li>
  	  	  	  <li class="log-out"><a href="">로그아웃</a></li>
  	  	  	</ul>
  	  	  </li>
  	  	</ul>
  	  </nav>
  	</div>
  	<div class="secondary-line">
  	  <div class="page-title">
  	  	<h3><img class="home-img" src="${path}/resources/img/icon/home.png" width="25" height="25" alt=""> My e-Shop</h3>
  	  </div>
  	</div>
  </header>
  <div class="page-body">
  	<aside class="support" role="complementary">
  	  <div class="shop-name">
  	  	<p><span class="name-txt">"${seller.s_name}"</span>님의</p>
  	  	<p style="padding:5px 0; border-bottom:2px solid #DEBB3D;">e-Shop</p>
  	  </div>
  	  <div class="input-steb"><h2 class="hide">샵 정보 등록 단계</h2>
  	  	<ol>
  	  	  <li class="steb-list"><p class="steb-txt">기본 정보</p></li>
  	  	  <li class="steb-list"><p class="steb-txt" style="border:none;">사진 등록</p></li>
  	  	  <li class="steb-list here"><p class="steb-txt">메뉴 등록</p></li>
  	  	  <li class="steb-list"><p class="steb-txt">부가 정보</p></li>
  	  	</ol>
  	  </div>
  	</aside>
  	<div class="contents" role="main"> 
		<section>
			<h2>메뉴 등록</h2>
			 <form action="restaurantMenu.go" method="post" name="form" id="frm" 
				enctype="multipart/form-data">
				<input type="text" name="sh_id" value="${sh_id}"> <input
					type="text" name="sh_name" value="${shop.sh_name}">
					
					<!-- 메뉴그룹등록 -->
					<input type="button" name="addGroup" value="+그룹추가"  onclick="addMenuForm()">
				<div id="tabs">
					<ul>
						<li><a href="#tabs-1">메뉴명 1</a></li>
						<!-- <li><a href="#tabs-2">메뉴명 2</a></li>
						<li><a href="#tabs-3">메뉴명 3</a></li> -->
					</ul>
					<div id="tabs-1">
						메뉴 그룹
						<%-- <c:if test="${!empty testList}">
							<select name="selectBox" id="selectBox" style="width: 80px;"
								class="select_02">
								<c:forEach var="testList" items="${testList}" varStatus="i">
									<option value="${testList.name}">${testList.name}</option>
								</c:forEach>
							</select>
						</c:if> --%>
						<script type="text/javascript">
						function SelectValue(slvalue){
							var obj_id = document.getElementById('group');
							obj_id.value = slvalue;
						}
						
						</script>
						<input type="text" id="group" name="it_groupId">
						<select name="sl" onchange="SelectValue(this.value)">
						<option selected>선택
						<option  value="식사">식사</option>
						<option value="음료">음료</option>
						<option value="디저트">디저트</option>
						</select>
						<p>

						메뉴 이름 <input type="text" name="it_name" id="it_name"
							required="required" placeholder="메뉴 이름을 입력하세요">
						<p>
							메뉴 가격 <input type="text" name="it_price" id="it_price"
								required="required" placeholder="숫자를 입력하세요">
						<p>
							메뉴 내용 <input type="text" name="it_cont" id="it_cont"
								required="required">
						<p>
							메뉴 사진 <input type="file" id="it_pic1" name="menu1"><p>
							<!-- 메뉴사진 2 <input type="file" id="it_pic2" name="menu2"><p>
							메뉴사진 3 <input type="file" id="it_pic3" name="menu3"> <p> -->
							탑 메뉴 등록 <input type="checkbox" name="it_top3" id="it_top3" value="y" style="display:inline-block;"><p>
							<label for="it_top3">선택</label> 
							
					</div>
				<!-- 	<div id="tabs-2">
					zzz
						
					</div>
					<div id="tabs-3"> 
					dddd
					</div> -->
				</div>
				<div class="nextBtnWrap">
					<button class="prev_btn" type="button" onclick="history.go(-1)">이전으로</button>
					<button class="next_btn" type="submit">추가하기</button>
					<input type="button" class="next_btn" onclick="location.href='restaurantMenuResult.go?sh_id=${sh_id}'" value="다음으로">
				</div>
			</form>
			<br>
			<table class="table table-striped">
			<tr><td>메뉴</td><td>가격</td><td>소개</td><td>분류</td></tr>			
			<c:if test="${empty mlist}">
			<tr><td colspan="3">데이터가 없습니다</td>
			</c:if>

			 <c:if test="${not empty mlist}">
				<c:forEach var="menu" items="${mlist}">
					<tr><td>${menu.it_id}</td>				
					<td>${menu.it_name}</td><td>${menu.it_price}</td>
					<td>${menu.it_img1}</td><td>${menu.it_groupId}</td>
				</tr>				
				</c:forEach></c:if>
						
			</table>
		
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
		</div>
	</div>
</body>
</html>