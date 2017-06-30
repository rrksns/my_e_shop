<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="${path}/resources/css/all.css">
<link rel="stylesheet" href="${path}/resources/css/shop.css">
<style type="text/css">
body{background-color:#E6E6E6}
</style>
</head>
<body>
<input type="text" name="sh_id" value= "${sh_id}">
<input type="text" name="sh_id" value= "${sh_name}">
<div class="universe">
  <div class="top-cover">
  	<span>
  	  <input id="bookmark" type="checkbox">
  	  <label class="bookmark_btn" for="bookmark">즐겨찾기</label>
  	</span>
  	<a href="" class="coupon_btn"><span class="img"></span>쿠폰</a>
  </div>
  <div class="main-frame">
  	<header>
  	  <div class="summary">
  	  	<div class="entry">
  	  	  <div class="shop-name">
  	  	  	가계 이름${sh_name}
  	  	  </div>
  	  	  <div class="grade">
  	  	  	<span class="gpa"></span>
  	  	  </div>
  	  	</div>
  	  	<div class="open-closed">
  	  	  <span class="sign open"></span>
  	  	  <span class="txt">운영중</span>
  	  	</div>
  	  	<div class="misc">
  	  	  <div class="misc-info">1.카테고리</div>
  	  	  <div class="misc-info">2.운영시간</div>
  	  	  <div class="misc-info">3.해시태그</div>
  	  	</div>
  	  	<div class="service-type">
  	  	  <div class="allday">
  	  	  	<span class="allday-icon"></span>
  	  	  </div>
  	  	  <div class="misc-type">
  	  	  	<span class="type-style delivery"></span>
  	  	  	<span class="type-style drive_thru"></span>
  	  	  	<span class="type-style take_away"></span>
  	  	  	<span class="type-style dine_in"></span>
  	  	  </div>
  	  	</div>
  	  </div>
  	  <div class="banner">
  	  	배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너
  	  	배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너
  	  	배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너
  	  	배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너배너
  	  	너배너배너배너배너배너배너배너배너
  	  </div>
  	</header>
  	<div class="contents" role="main">
  	  <div class="">
  	  	<div class="menu">
  	  	  <dl class="menu-cate">
  	  	  	<dt>메뉴</dt>
  	  	  	  <dd>식사</dd>
  	  	  	  <dd>음료</dd>
  	  	  	  <dd>디저트</dd>
  	  	  </dl>
  	  	  <div class="signature-menu">
  	  	  	<div class="menu_ea">
  	  	  	  <img class="menu-img" src="${path}/resources/img/top-menu.png" width="118" height="118">
  	  	  	  <span class="menu-info">대표메뉴1</span>
  	  	  	</div>
  	  	  	<div class="menu_ea">
  	  	  	  <span class="menu-img">
  	  	  	  	<img src="${path}/resources/img/top-menu.png" width="118" height="118">
  	  	  	  </span>
  	  	  	  <span class="menu-info">대표메뉴2</span>
  	  	  	</div>
  	  	  	<div class="menu_ea">
  	  	  	  <span class="menu-img">
  	  	  	  	<img src="${path}/resources/img/top-menu.png" width="118" height="118">
  	  	  	  </span>
  	  	  	  <span class="menu-info">대표메뉴3</span>
  	  	  	</div>
  	  	  	<div class="description">
  	  	  	  <span class="txt">대표 메뉴</span>
  	  	  	  <img src="${path}/resources/img/top-menu.png" width="50" height="50">
  	  	  	  <span class="txt">top3</span>
  	  	  	</div>
  	  	  </div>
  	  	  <div class="menu-detail">
  	  	  	<ul>
  	  	  	  <li></li>
  	  	  	</ul>
  	  	  </div>
  	  	</div>
  	  	<div class="location">
  	  	  <p class="loc-txt">서울시 강남구 역삼동</p>
  	  	  <p class="loc-txt">[지번]서울시 서대문구</p>
  	  	  <div class="loc-img">
  	  	  </div>
  	  	</div>
  	  </div>
  	  <div class="review">
  	  	<h4>리뷰</h4>
  	  </div>
  	</div>
  </div>
  <div class="side-frame">
  	<aside>
  	  <div class="hits">
  	  	<div>조회수: <span class="ft_wt"></span></div>
  	  	<div>팔로워: <span class="ft_wt"></span></div>
  	  </div>
  	  <div class="sns">
  	  	<a class="linked facebook" href="https://www.facebook.com/pages/%EC%B9%BC%EB%A7%9E%EC%9D%80-%EC%82%BC%EA%B2%B9%EC%82%B4/348787985214348?rf=336361926461816" target="_blank" rel="external"></a>
  	  	<a class="linked instagram" href="" target="_blank" rel="external"></a>
  	  	<a class="linked twitter" href="" target="_blank" rel="external"></a>
  	  </div>
  	  <div class="photo">
  	  	<div class="main-photo"></div>
  	  	<div class="sub-photo"></div>
  	  </div>
  	  <div class="shop-description">
  	  	<h4>기본 정보</h4>
  	  	<div class="ad-info">
  	  	  <span class="ad-info-icon"></span>
  	  	  <span class="ad-info-icon"></span>
  	  	  <span class="ad-info-icon"></span>
  	  	  <span class="ad-info-icon"></span>
  	  	  <span class="ad-info-icon"></span>
  	  	  <span class="ad-info-icon"></span>
  	  	  <span class="ad-info-icon"></span>
  	  	  <span class="ad-info-icon"></span>
  	  	  <span class="ad-info-icon"></span>
  	  	  <span class="ad-info-icon"></span>
  	  	</div>
  	  	<div class="description">
  	  	  <pre>가계 설명${sh_content}</pre>
  	  	</div>
  	  </div>
  	  <div class="employment">
  	  	<h4>채용 정보</h4>
  	  	<pre class="publish">※ 채용 정보 없음</pre>
  	  </div>
  	</aside>
  </div>
</div>
</body>
</html>