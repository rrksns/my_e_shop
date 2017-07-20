<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="${path}/resources/css/a.css">
<link rel="stylesheet" href="${path}/resources/css/myshop-common.css">
<link rel="stylesheet" href="${path}/resources/css/myshop-register-template.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,700">
<style>
</style>
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
  	  	  	  <li><a href="">4</a></li>
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
  	  	  <li class="steb-list here"><p class="steb-txt">기본 정보</p></li>
  	  	  <li class="steb-list"><p class="steb-txt">사진 등록</p></li>
  	  	  <li class="steb-list"><p class="steb-txt">메뉴 등록</p></li>
  	  	  <li class="steb-list"><p class="steb-txt">부가 정보</p></li>
  	  	</ol>
  	  </div>
  	</aside>
  	<div class="contents" role="main">
  	  <form id="register" action="shopRegist.go" method="post">
  	  	<fieldset><legend class="hide">템플릿 선택</legend>
  	  	  <h3 class="title">템플릿 선택</h3>
  	  	  <div class="select-template">
  	  	  	<div class="template">
  	  	  	  <label  onMouseMove="setPreviewBox(event);" onMouseOver="showPreview(); return true;"
  	  	  	  	onMouseOut="hidePreview(); return true;">
  	  	  	  	<input id="" name="template" type="radio" value="restaurant">
  	  	  	  	<span class="template-img restaurant"></span>
  	  	  	  	<span class="comment"><a href = "restaurantBasic.go">음식점과 같이 메뉴 설명에 적합한 템플릿입니다.</a></span>
  	  	  	  </label>
  	  	  	  <div id="preview"></div>
  	  	  	</div>
  	  	  	<div class="template">
  	  	  	  <label>
  	  	  	  	<input id="" name="template" type="radio" value="academy">
  	  	  	  	<span class="template-img academy"></span>
  	  	  	  	<span class="comment">학원과 같이 커리큘럼, 프로세스 설명에 적합한 템플릿 입니다.</span>
  	  	  	  </label>
  	  	  	</div>
  	  	  	<div class="template">
  	  	  	  <label>
  	  	  	  	<input id="" name="template" type="radio" value="clotes">
  	  	  	  	<span class="template-img clothes"></span>
  	  	  	  	<span class="comment">의류와 같이 상품 이미지를 부각시키는데 적합한 템플릿 입니다.</span>
  	  	  	  </label>
  	  	  	</div>
  	  	  	<div class="template">
  	  	  	  <label>
  	  	  	  	<input id="" name="template" type="radio" value="facility">
  	  	  	  	<span class="template-img facility"></span>
  	  	  	  	<span class="comment">헬스장과 같이 시설이 제공하는 서비스를 설명하는데 적합한 템플릿 입니다.</span>
  	  	  	  </label>
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

$("input[name='template']").change(function() {
	var select = this.value;
	if(select == "restaurant"){
		$('#register').attr('action', 'restaurantBasic.go');
	} else {
		$('#register').attr('action', '');
	}
});

function setPreviewBox(e) { 
	var e = e || window.event; 
	document.getElementById('preview').style.left = e.clientX+ document.body.scrollLeft + 20 + 'px';
	document.getElementById('preview').style.top = e.clientY  + document.body.scrollTop + 'px';
} 

function showPreview() { 
	var text; 
	text = '<img src="${path}/resources/img/bg/preview-restaurant.png" width="350" height="auto">'
	document.getElementById('preview').innerHTML = text; 
	document.getElementById('preview').style.visibility = 'visible';
} 

function hidePreview() { 
	document.getElementById('preview').innerHTML = ''; 
	document.getElementById('preview').style.visibility = 'hidden'; 
}
</script>
</body>
</html>



<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My Shop 등록 : 로드 샵</title>
<link rel="stylesheet" href="${path}/resources/css/all.css">
<link rel="stylesheet" href="${path}/resources/css/myshop.css">
</head>
<body>
<div class="universe">
  <aside>
  	<h2 class="home_logo"><a href="sellerMain.go">Around U</a></h2>
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
  <main role="main">
  	<header>
  	  <div class="setWrap">
  	  	<button class="set_btn" type="button">
  	  	  <img src="${path}resources/img/set.png" width="36" height="25" alt="설정">
  	  	</button>
  	  </div>
  	  <div class="titleWrap">
  	  	<h3 class="title"><img src="${path}/resources/img/home.png" width="25" height="25" alt=""> My e-Shop</h3>
  	  </div>
  	</header>
  	<section id="shopInfo_register">
  	  <article class="basic_shopInfo">
  	  	  <fieldset><legend class="hide">템플릿 선택</legend>
  	  	  	<h2>템플릿 선택</h2>
  	  	  	<div class="templateBox">
  	  	  	  <label onclick = "selectTemplate()" class="template1">
  	  	  	  <input id="sh_cate" name="template" type="radio">
  	  	  	  <a href = "restaurantBasic.go">음식점과 같이 메뉴 설명에 적합한 템플릿 입니다.</a></label>
  	  	  	  <label class="template2"><input id="" name="template" type="radio">
  	  	  	  <a href = "#">학원과 같이 커리큘럼, 프로세스 설명에 적합한 템플릿 입니다.</a></label>
  	  	  	  <label class="template3"><input id="" name="template" type="radio">
  	  	  	  <a href = "#">옷 가계와 같이 상품 이미지를 부각시키는데 적합한 템플릿 입니다.</a></label>
  	  	  	  <label class="template4"><input id="" name="template" type="radio">
  	  	  	  <a href = "#">헬스장, 요가등 시설 및 제공 서비스를 설명하는데 적합한 템플릿 입니다.</a></label>
  	  	  	</div>
  	  	  </fieldset>
  	  </article>
  	</section>
  </main>
</div>
</html> --%>