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
<input type="text" name="sh_name" value= "${shop.sh_name}">
<input type="text" name="it_id" value= "${menu.it_id}">
<input type="text" name="sh_detailId" value= "${shopDetail.sh_detailId}">
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
  	  	  	${shop.sh_name}
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
  	  	  <div class="misc-info">2.운영시간${shop.sh_operTimeS}~${shop.sh_operTimeE}</div>
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
  	  <pre>1
  	  1
  	  1
  	  1
  	
  	  1
  	  11
  	  </pre>
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
  	  	  	  <li></li>
  	  	  	  <li></li>
  	  	  	  <li></li>
  	  	  	  <li></li>
  	  	  	  <li></li>
  	  	  	</ul>
  	  	  </div>
  	  	</div>
  	  	<%-- <div> 
  	  			<span> ${menu.it_name}</span>
  	  	  	  <span> <img src="menuPic/upload/${menu.it_img1}"></span>
  	  	  	  <span> ${menu.it_price}</span>
  	  	</div> --%>
  	  	<div class="location">
  	  	  <p class="loc-txt">${shop.sh_addr1}</p>
  	  	  <p class="loc-txt">${shop.sh_addr2}</p>
  	  	  <div class="loc-img">
  	  	  	
  	  	  </div>
  	  	</div>
  	  </div>
  	  <div class="review">
  	  	<h4>리뷰</h4>
			  	  	<script type="text/javascript">
			
				$(function(){
					$('#slist').load("slist.go");		
			 		$('#repInsert').click(function(){
						if(!frm.replytext.value){
							alert('댓글 입력 후에 클릭하시오');
							frm.replytext.focus();return false;
						}
						var frmData = $('#frm').serialize(); 
						$.post('sInsert.go',frmData,function(data){
							$('#slist').html(data);
							$('#textarea').val("");		
							
							/* function lst(){
								$('#slist').load('slist.go'); 
							}*/
						});				
					}); 
				});
				</script>
				<script type="text/javascript">
				function score(){
					window.open('score.go','popup1','width=300,height=500,toolbar=no,menubar=no,resizable=no, scrollbars=no')
				}
				
				
				</script>
			
			<p>
			<div>
			<form name="frm" id="frm">
			<input type="hidden" name="replyer" value="${rb.replyer}">
			댓글 : <textarea rows="2" cols="100" name="replytext" id="textarea"></textarea>
			<input type="button" value="확인" id="repInsert" class="btn btn-info">
			<input type="button" value="평가하기" onclick="score()">
			<!-- <p><a href="https://naver.com" onclick="winPop(this.href, {name:'팝업1',width:300,height:500}); return false;">팝업보기 </a></p> -->  
			</form>
			</div>
			
			<div id="slist"></div>
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
  	  	<div class="main-photo"><img src="shopPic/upload/${shop.sh_img1}"></div>
  	  	<div class="sub-photo"><img src="shopPic/upload/${shop.sh_img2}"></div>
  	  </div>
  	  <div class="shop-description">
  	  	<h4>기본 정보</h4>
  	  	<div class="ad-info">
  	  	  <span>
  	  	  	 <c:if test="${shopDetail.smoking =='y'}">
  	  	  	  		<img src="${path}/resources/img/smoking-area.png" width="30" height="30">
  	  	  	  </c:if>
  	  	  	  <c:if test="${shopDetail.smoking !='y'}">  	  	  
  	  	  			<img src="${path}/resources/img/home.png" width="30" height="30">	  
  	  	  	  </c:if>
  	  	  </span>
  	  	    <span>
  	  	  	 <c:if test="${shopDetail.freeWifi =='y'}">
  	  	  	  		<img src="${path}/resources/img/wifi.png" width="30" height="30">
  	  	  	  </c:if>
  	  	  	  <c:if test="${shopDetail.freeWifi !='y'}">  	  	  
  	  	  			<img src="${path}/resources/img/home.png" width="30" height="30">	  
  	  	  	  </c:if>
  	  	  </span>
  	  	     <span>
  	  	  	 <c:if test="${shopDetail.toilet =='y'}">
  	  	  	  		<img src="${path}/resources/img/toilet.png" width="30" height="30">
  	  	  	  </c:if>
  	  	  	  <c:if test="${shopDetail.toilet !='y'}">  	  	  
  	  	  			<img src="${path}/resources/img/home.png" width="30" height="30">	  
  	  	  	  </c:if>
  	  	  </span>
  	  	     <span>
  	  	  	 <c:if test="${shopDetail.parking =='y'}">
  	  	  	  		<img src="${path}/resources/img/parking.png" width="30" height="30">
  	  	  	  </c:if>
  	  	  	  <c:if test="${shopDetail.parking !='y'}">  	  	  
  	  	  			<img src="${path}/resources/img/home.png" width="30" height="30">	  
  	  	  	  </c:if>
  	  	  </span>
  	  	     <span>
  	  	  	 <c:if test="${shopDetail.blanket =='y'}">
  	  	  	  		<img src="${path}/resources/img/blanket.png" width="30" height="30">
  	  	  	  </c:if>
  	  	  	  <c:if test="${shopDetail.blanket !='y'}">  	  	  
  	  	  			<img src="${path}/resources/img/home.png" width="30" height="30">	  
  	  	  	  </c:if>
  	  	  </span>
  	  	     <span>
  	  	  	 <c:if test="${shopDetail.mobileCharge =='y'}">
  	  	  	  		<img src="${path}/resources/img/charging-phone.png" width="30" height="30">
  	  	  	  </c:if>
  	  	  	  <c:if test="${shopDetail.mobileCharge !='y'}">  	  	  
  	  	  			<img src="${path}/resources/img/home.png" width="30" height="30">	  
  	  	  	  </c:if>
  	  	  </span>
  	  	</div>
  	  	<div class="description">
  	  	  <pre>${shop.sh_content}</pre>
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