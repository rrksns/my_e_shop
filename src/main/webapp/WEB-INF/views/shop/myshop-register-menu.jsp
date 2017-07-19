<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="a.css">
<link rel="stylesheet" href="myshop-common.css">
<link rel="stylesheet" href="css/myshop-register-menu.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,700">
</head>
<body>
<div class="universe">
  <header class="page-header">
  	<div class="top-cover">
  	  <div class="home-logo">
  	  	<h1 class="logo"><a href="">AROUND U</a></h1>
  	  </div>
  	  <nav class="user-nav"><h2 class="hide">사용자 메뉴</h2>
  	  	<ul>
  	  	  <li class="nav-list">
  	  	  	<a class="myshop-btn" href="" title="마이 샵">
  	  	  	  <img class="myshop-img" src="img/icon/shop.png" width="25" height="25" alt="마이 샵">
  	  	  	</a>
  	  	  </li>
  	  	  <li class="nav-list">
  	  	  	<a class="dropdown-btn" href=""><span>"사용자"</span>님 <span class="dropdown-img"></span></a>
  	  	  	<ul class="dropdown">
  	  	  	  <li><a href="">마이페이지</a></li>
  	  	  	  <li><a href="">1</a></li>
  	  	  	  <li><a href="">2</a></li>
  	  	  	  <li><a href="">3</a></li>
  	  	  	  <li><a href="">4</a></li>
  	  	  	  <li class="log-out"><a href="">로그아웃</a></li>
  	  	  	</ul>
  	  	  </li>
  	  	</ul>
  	  </nav>
  	</div>
  	<div class="secondary-line">
  	  <div class="page-title">
  	  	<h3><img class="home-img" src="img/icon/home.png" width="25" height="25" alt=""> My e-Shop</h3>
  	  </div>
  	</div>
  </header>
  <div class="page-body">
  	<aside class="support" role="complementary">
  	  <div class="shop-name">
  	  	<p><span class="name-txt">"사용자"</span>님의</p>
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
  	  <form action="" method="post">
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
  	  	  	  	  <input type="text">
  	  	  	  	</div>
  	  	  	  	<div class="wrapper">
  	  	  	  	  <h4>가격</h4>
  	  	  	  	  <input type="text">
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
</html>