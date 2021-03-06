<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html">
<html>
<head>
<meta charset="UTF-8">
<title>AROUDN U</title>
<link rel="stylesheet" href="index.css">

<link href="https://fonts.googleapis.com/css?family=Roboto:100,700" rel="stylesheet">
</head>
<body>
<div class="universe">
  <header class="site-header">
  	<div class="top-cover">
  	  <div class="home-logo">
  	  	<h1 class="logo"><a href="" rel="home">AROUND U</a></h1>
  	  </div>
  	  <nav class="user-nav"><h2 class="hide">사용자 메뉴</h2>
  	  	<ul>
  	  	  <li class="nav-list"><a href="">로그인</a></li>
  	  	  <li class="nav-list"><a href="">회원가입</a></li>
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