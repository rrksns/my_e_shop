<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html">
<html>
<head>
<meta charset="UTF-8">
<title>Around U</title>
<link rel="stylesheet" href="resources/css/alll.css">
<link rel="stylesheet" href="resources/css/home.css">

<link href="https://fonts.googleapis.com/css?family=Roboto:100,700" rel="stylesheet">
</head>
<body>
<div class="universe">
  <header class="site-header">
  	<div class="top-cover">
  	  <div class="home-logo">
  	  	<a href="" rel="home">AROUND U</a>
  	  </div>
  	  <nav class="user-nav">
  	  	<ul>
  	  	  <li class="nav-list"><a href="">로그인</a></li>
  	  	  <li class="nav-list"><a href="">회원가입</a></li>
  	  	</ul>
  	  </nav>
  	</div>
  	<div class=" search">
  	  <h2 class="hide">검색</h2>
  	  <form action="" method="get" accept-charset="utf-8" role="search">
  	  	<fieldset><legend>통합 검색</legend>
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
  	  	<li class="nav-list"><a class="navigation" href="">로드샵</a></li>
  	  	<li class="nav-list"><a class="navigation" href="">온라인샵</a></li>
  	  	<li class="nav-list"><a class="navigation" href="">중고마켓</a></li>
  	  </ul>
  	</nav>
  </header><hr class="hide">
  <div class="contents" role="main">
  	<div class="near-shop"><h2 class="hide">주변 샵 정보</h2>
  	  <div class="main-frame">
  	  	<div class="top-cover">
  	  	  <p>현재 위치 : <span>span에 id값 준 후 출력</span></p>
  	  	</div>
  	  	<div class="map">
  	  	  지도 넣을 때 크기 width:750px height:454px로 맞춰주세요.(문장은 삭제)
  	  	</div>
  	  </div>
  	  <div class="side-frame">
  	  	<div class="search">
  	  	  <h3 class="title">주변 샵 검색</h3>
  	  	  <form action="" method="get" accept-charset="utf-8" role="search">
  	  	  	<fieldset><legend>주변 검색</legend>
  	  	  	  <input class="sch-inp" type="search" title="샵 정보 입력" autocomplete="off">
  	  	  	  <button class="sch-btn" type="submit"><span class="hide">검색</span></button>
  	  	  	</fieldset>
  	  	  </form>
  	  	</div>
  	  	<div class="shop-filter">
  	  	</div>
  	  	<div></div>
  	  </div>
  	</div>
  	<div class="new-shop"><h2 class="hide">신규 등록  샵 정보</h2>
  	  <h3 class="title">신규 등록 샵</h3>
  	  <ul class="">
  	  </ul>
  	</div>
  </div>
  <footer>
  </footer>
</div>
</body>
</html>