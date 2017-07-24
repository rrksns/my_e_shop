<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html">
<html>
<head>
<meta charset="UTF-8">
<title>AROUDN U</title>
<link rel="stylesheet" href="index.css">

<link href="https://fonts.googleapis.com/css?family=Roboto:100,700" rel="stylesheet">
<style>
.top-cover {
	height:45px;
	line-height:45px;
	color:white;
	font-weight:bold;
	padding:0 30px;
	background-color:#FF7D43;
}
	.home-logo {
		float:left;
	}
		.logo {
			font-size:25px;
		}
	.user-nav2 {
		float:right;
		position:relative;
	}
		.user-nav2 .nav-list:hover {
			color:black;
			border-radius:25px;
			background-color:#FFFBE2;
		}
			.myshop-btn {
				display:block;
				width:50px;
				text-align:center;
			}
				.myshop-img {
					vertical-align:middle;
				}
			.dropdown-btn {
				display:block;
				padding:0 5px;
			}
				.dropdown-img {
					width:12px;
					height:12px;
					vertical-align:middle;
					background-image:url('img/btn/dropdown-close.png');
					background-size:contain;
				}
				.nav-list:hover .dropdown-btn > .dropdown-img {
					background-image:url('img/btn/dropdown-open.png');
				}
				.nav-list:hover .dropdown-btn ~ .dropdown {
					display:block;
				}
				.dropdown {
					position:absolute;
					right:0;
					line-height:30px;
					color:#686868;
					font-size:14px;
					font-weight:normal;
					text-align:center;
					border-top:2px solid #DEBB3D;
					box-shadow:0 3px 5px rgba(0,0,0,.35);
					background-color:#EFEFEF;
				}
					.dropdown a {
						display:block;
						width:120px;
					}
					.log-out {
						background-color:#DDDDDD;
					}
						.log-out:hover {
							background-color:#DDDDDD !important;
						}
					.dropdown li:hover {
						background-color:#CCCCCC;
					}
</style>
</head>
<body>
<div class="universe">
  <header class="site-header">
  	<div class="top-cover">
  	  <div class="home-logo">
  	  	<h1 class="logo"><a href="">AROUND U</a></h1>
  	  </div>
  	  <nav class="user-nav2"><h2 class="hide">사용자 메뉴</h2>
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
  	<div class="search">
  	  <h2 class="hide">검색</h2>
  	  <form action="" method="get" accept-charset="utf-8" role="search">
  	  	<fieldset><legend>통합 검색</legend>
  	  	  <select class="sch-filter">
  	  	  	<option selected>전체</option>
  	  	  	<option>1</option>
  	  	  	<option>2</option>
  	  	  	<option>해시태그</option>
  	  	  </select>
  	  	  <input class="sch-inp" type="search" title="검색어 입력" autocomplete="off" autofocus>
  	  	  <button class="sch-btn" type="submit"><span class="hide">검색</span></button>
  	  	</fieldset>
  	  </form>
  	</div>
  	<nav class="site-nav" role="navigation">
  	  <h2 class="hide">사이트 바로가기</h2>
  	  <ul>
  	  	<li class="nav-list">
  	  	  <a class="cate-btn" href="#" role="button" title="카테고리 검색"><span class="cate-icon"></span> 전체 카테고리 <span></span></a>
  	  	</li>
  	  	<li class="nav-list"><a class="nav-btn" href="">로드샵</a></li>
  	  	<li class="nav-list"><a class="nav-btn" href="">온라인샵</a></li>
  	  	<li class="nav-list"><a class="nav-btn" href="">중고마켓</a></li>
  	  </ul>
  	</nav>
  </header>
  <div class="site-body">
  	<div class="contents" role="main">
  	  <div class="near-shop"><h2 class="hide">주변 샵 정보</h2>
  	  	<div class="main-frame">
  	  	  <div id="map">
  	  	  </div>
  	  	</div>
  	  	<div class="side-frame">
  	  	  <div class="ad-banner">
  	  	  </div>
  	  	</div>
  	  </div>
  	  <div class="new-shop"><h2 class="hide">새로 등록한 샵</h2>
  	  	<h3 class="title">1</h3>
<ul>
<li class="shop-list">
<a href="">
<img src="" width="210" height="160">
<span>가게이름</span>
</a>
</li>
</ul>
  	  </div>
  	  <div class="new-shop"><h2 class="hide">새로 등록한 샵</h2>
  	  	<h3 class="title">2</h3>
<ul>
<li class="shop-list">
<a href="">
<img src="" width="210" height="160">
<span>가게이름</span>
</a>
</li>
</ul>
  	  </div>
  	  <div class="new-shop"><h2 class="hide">새로 등록한 샵</h2>
  	  	<h3 class="title">3</h3>
<ul>
<li class="shop-list">
<a href="">
<img src="" width="210" height="160">
<span>가게이름</span>
</a>
</li>
</ul>
  	  </div>
  	</div>
  </div>
  <footer>
  </footer>
</div>
</body>
</html>