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
  	 			<li><a href="s_page.go">My Page</a></li>
  	  	  	  	<li><a href="shopManagement.go"></a>My eShop</li>
  	  	  	  	<li><a href="boardList.go">2</a>Q&A</li>
  	  	  	  	<li class="log-out"><a href="s_logout.go">로그아웃</a></li>
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
					<tr>				
					<td>${menu.it_name}</td><td>${menu.it_price}</td>
					<td>${menu.it_img1}</td><td>${menu.it_groupId}</td>
				</tr>				
				</c:forEach></c:if>
				</table>
			
		</section>
		</div>
	</div>
</body>
</html>