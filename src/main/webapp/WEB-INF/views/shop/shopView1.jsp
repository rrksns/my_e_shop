<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="${path}/resources/css/a.css">
<link rel="stylesheet" href="${path}/resources/css/myshop.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,700">
<style>
.title {
	border-color:#4A7EBB;
}
</style>
</head>
<body>
	
<%-- <input type="text" name="sh_id" value= "${sh_id}"> <!-- 필요없는 정보 -->
<input type="text" name="sh_name" value= "${shop.sh_name}"><!-- 필요없는 정보 -->
<input type="text" name="it_id" value= "${menu.it_id}"><!-- 필요없는 정보 -->
<input type="text" name="sh_detailId" value= "${shopDetail.sh_detailId}"> <!-- 필요없는 정보 --> --%>

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
  	  <div class="wrapper">
  	  	<input id="bookmark" type="checkbox">
  	  	<label class="bookmark-btn" for="bookmark">팔로잉</label>
  	  </div>
  	  <div class="wrapper">
  	  	<a href="" class="coupon-btn">
  	  	  <img class="coupon-img" src="${path}/resources/img/icon/coupon.png" width="25" height="25" alt="쿠폰">쿠폰</a>
  	  </div>
  	</div>
  </header>

<%-- 
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
  	  	   <div class="gpa">
  	  	  	<span class="gpa-img"></span>
  	  	  	</div>  	  	  	  	     
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
  	  <pre>
  	   배너.
  	  .
  	  .
  	  .
  	     	
  	  
  	  
  	  </pre>
  	  ${ap.aver}/5점 (${count})명
  	  </div>
  	</header> --%>
  	
  	<div class="page-body">
  	<div class="contents" role="main">
  	  <div class="head-line"><h2 class="hide">샵 정보</h2>
  	  	<div class="entry">
  	  	  <div class="shop-name">
  	  	  	<span id="">${shop.sh_name}</span>
  	  	  </div>
  	  	  <div class="gpa">
  	  	  	<span class="gpa-img">  ${ap.aver}/5점 (${count})명</span>
  	  	  </div>
  	  	</div>
  	  	<div class="open-closed">
  	  	  <img src="${path}/resources/img/icon/open.png" width="50" height="50">
  	  	  <span class="open-txt">운영중</span>
  	  	</div>	
  	  	<div class="summary">
  	  	    <div class="summary-info">1.카테고리 <span>Restaurant</span></div>
  	  	  <div class="summary-info">2.운영시간 <span>${sh_operTimeS1}:${sh_operTimeS2}:${sh_operTimeS3}</span>
  	  	  <span>~</span><span>${sh_operTimeE1}:${sh_operTimeE2}:${sh_operTimeE3}</span></div>
  	  	  <div class="summary-info">3.해시태그 <span>${shop.sh_hash}</span></div>
  	  	</div>
  	  	<div class="service-type">
  	  	  <div class="vertical-line_L">
  	  	  	<span>
  	  	  		<c:if test="${shop.allday_open =='y'}">
  	  	  			<img src="${path}/resources/img/icon/allday.png" width="64" height="64" alt="24시간 영업">
  	  	  		</c:if>
  	  	  	</span>
  	  	  </div>
  	  	  <div class="vertical-line_R">
  	  	  	<span>
  	  	  		<c:if test="${shop.driveThru =='y'}">
  	  	  			<img src="${path}/resources/img/icon/drive-thru.png" width="35" height="35" alt="드라이브쓰루">
  	  	  		</c:if>
  	  	  	</span>
  	  	  	<span>
  	  	  		<c:if test="${shop.dineIn =='y'}">	
  	  	  			<img src="${path}/resources/img/icon/dine-in.png" width="35" height="35" alt="매장식사">
  	  	  		</c:if>
  	  	  	</span>
  	  	  	<span>
  	  	  		<c:if test="${shop.takeOut =='y'}">	
  	  	  			<img src="${path}/resources/img/icon/take-out.png" width="35" height="35" alt="테이크아웃">
  	  	  		</c:if>
  	  	  	</span>
  	  	  	<span>
  	  	  		<c:if test="${shop.delivery =='y'}">	
  	  	  			<img src="${path}/resources/img/icon/delivery.png" width="35" height="35" alt="배달">
  	  	  		</c:if>
  	  	  	</span>
  	  	  </div>
  	  	</div>
  	  </div>
  	  
  	  <div class="banner"><h2 class="hide">배너광고</h2>
  	  </div>
  	  <div class="menu-line">
  	  	<div class="menu">
  	  	  <div class="menu-category">
  	  	  	<h3>메뉴</h3>
  	  	  	<ul>
  	  	  	  <li>식사</li>
  	  	  	  <li>음료</li>
  	  	  	  <li>디저트</li>
  	  	  	</ul>
  	  	  </div>
  	  	  <div class="top-menu">
  	  	  		<img class="menu-img" src="menuPic/upload/${menu.it_img3}" width="118" height="118" alt="대표메뉴1">
  	  	  	<img class="menu-img" src="menuPic/upload/${menu.it_img2}" width="118" height="118" alt="대표메뉴2">
  	  	  	<img class="menu-img" src="menuPic/upload/${menu.it_img1}" width="118" height="118" alt="대표메뉴3">
  	  	  	  <p>대표 메뉴</p>
  	  	  	  <img src="${path}/resources/img/icon/top3.png" width="50" height="50">
  	  	  	  <p>top3</p>
  	  	  	</div>
  	  	  </div>
  			<div	class="menu-list">
  	  	  	<div class="tab-container">
  	  	  	  <div class="wrapper">
  	  	  	    <table>
  	  	  	  <c:if test="${empty mlist1}">
			<tr><td colspan="3">데이터가 없습니다</td>
			</c:if>
			
  	  	  	 <c:if test="${not empty mlist1}">
				<c:forEach var="menu" items="${mlist1}">
					<tr><td>${menu.it_id}</td>				
					<td>${menu.it_name}</td><td>${menu.it_price}원</td>					
				</tr>				
				</c:forEach></c:if>
				</table>
  	  	  	  <!-- 	<span class="menu-name">메뉴이름</span>
  	  	  	  	<span class="price">가격</span>
  	  	  	  </div>
  	  	  	  <div class="space"></div>
  	  	  	  <div class="wrapper">
  	  	  	  	<span class="menu-name">메뉴이름</span>
  	  	  	  	<span class="price">가격</span> -->
  	  	  	  </div>
  	  	  	  <button class="view-btn" type="button"><span class="view-img"></span></button>  	  	  	
  	  	  	  
  	  	  	</div>
  	  	  	<div> <table>
  	  	  	  <c:if test="${empty mlist2}">
			<tr><td colspan="3">데이터가 없습니다</td>
			</c:if>
			
  	  	  	 <c:if test="${not empty mlist2}">
				<c:forEach var="menu" items="${mlist2}">
					<tr><td>${menu.it_id}</td>				
					<td>${menu.it_name}</td><td>${menu.it_price}원</td>					
				</tr>				
				</c:forEach></c:if>
				</table></div>
  	  	  	<div> <table>
  	  	  	  <c:if test="${empty mlist3}">
			<tr><td colspan="3">데이터가 없습니다</td>
			</c:if>
			
  	  	  	 <c:if test="${not empty mlist3}">
				<c:forEach var="menu" items="${mlist3}">
					<tr><td>${menu.it_id}</td>				
					<td>${menu.it_name}</td><td>${menu.it_price}원</td>					
				</tr>				
				</c:forEach></c:if>
				</table></div>
  	  	  </div>
  	  	</div>
  	
  	
  	<%-- <div class="contents" role="main">
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
  	  	  <div class="menu-detail"> --%>
  	  	  <%-- 	<ul>
  	  	  	  <li>${menu.it_name}</li>
  	  	  	  <li>${menu.it_price}</li>
  	  	  	  <li>${menu.it_cont}</li>
  	  	  	  
  	  	  	  <div><img src="menuPic/upload/${menu.it_img3}"></div>
  	  	  	  <div><img src="menuPic/upload/${menu.it_img2}"></div>
  	  	  	  <div><img src="menuPic/upload/${menu.it_img1}"></div>
  	  	  	  
  	  	  	  <li></li>
  	  	  	  <li></li>
  	  	  	</ul> --%>
  	  	  	<table class="table table-striped">
			<!-- <tr><td>메뉴</td><td>가격</td><td>소개</td><td>분류</td></tr> -->			
			<c:if test="${empty mlist}">
			<tr><td colspan="3">데이터가 없습니다</td>
			</c:if>
			
  	  	  	 <c:if test="${not empty mlist}">
				<c:forEach var="menu" items="${mlist}">
					<tr><td>${menu.it_id}</td>				
					<td>${menu.it_name}</td><td>${menu.it_price}원</td>
					<td><img src="menuPic/upload/${menu.it_img3}" height="100" width="100"></td><td>${menu.it_groupId}</td>
				</tr>				
				</c:forEach></c:if>
				</table>
  	  	  </div>
  	  	</div>
  	  	<%-- <div> 
  	  			<span> ${menu.it_name}</span>
  	  	  	  <span> <img src="menuPic/upload/${menu.it_img1}"></span>
  	  	  	  <span> ${menu.it_price}</span>
  	  	</div> --%>
  	  	<div class="location">
  	  	  <p class="loc-txt" id="sample6_address">${shop.sh_addr1}</p>
  	  	  <p class="loc-txt">${shop.sh_addr2}</p>
  	  	  <!-- <div class="loc-img"> -->
  	  	  	<div id="map" style="width:250px;height:250px;"></div>
  	  	  	  		<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=f6eed7143332943349595b742f572fde&libraries=services"></script>
					<script>
					
					var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
					    mapOption = {
					        center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
					        level: 3 // 지도의 확대 레벨
					    };  
					
					// 지도를 생성합니다    
					var map = new daum.maps.Map(mapContainer, mapOption);
					var fullAddr = '';
					/*  document.getElementById('sample6_address').value = fullAddr */  
					fullAddr = $("#sample6_address").text()
					// 주소-좌표 변환 객체를 생성합니다
					var geocoder = new daum.maps.services.Geocoder();
					
					// 주소로 좌표를 검색합니다
				
					/*  geocoder.addr2coord('제주특별자치도 제주시 첨단로 242', function(status, result) {  */ 
						 geocoder.addr2coord(fullAddr, function(status, result) {   
					
					    // 정상적으로 검색이 완료됐으면 
					     if (status === daum.maps.services.Status.OK) {
					
					        var coords = new daum.maps.LatLng(result.addr[0].lat, result.addr[0].lng);
					
					        // 결과값으로 받은 위치를 마커로 표시합니다
					        var marker = new daum.maps.Marker({
					            map: map,
					            position: coords
					        });
					
					        // 인포윈도우로 장소에 대한 설명을 표시합니다
					        var infowindow = new daum.maps.InfoWindow({
					            content: '<div style="width:150px;text-align:center;padding:6px 0;">my shop</div>'
					        });
					        infowindow.open(map, marker);
					
					        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
					        map.setCenter(coords);
					    } 
					});   
					
					
					</script>	
				</div> 
  	  	  </div>
  	  	</div>
	<div class="review">
		<h4 class="title">리뷰</h4>
		<form name="frm" id="frm">
			<input type="hidden" name="replyer" value="${rb.replyer}">
			<input type="hidden" name="sh_id" value="${shop.sh_id}">
			댓글 : <textarea rows="2" cols="100" name="replytext" id="textarea"></textarea>
			<input type="button" value="확인" id="repInsert" class="btn btn-info">
			<input type="button" value="평가하기" onclick="score()">			  
			</form>			
	</div>

	<aside class="support" role="complementary">
		<div class="hits">
			<div>
				조회수: <span></span>
			</div>
			<div>
				팔로워: <span></span>
			</div>
		</div>


		  <div class="sns">
  	  	<a class="linked facebook" href="" target="_blank" rel="external"></a>
  	  	<a class="linked instagram" href="" target="_blank" rel="external"></a>
  	  	<a class="linked twitter" href="" target="_blank" rel="external"></a>
  	  </div>
  	  <div class="photo">
  	  	<div class="main-photo">
  	  	  <img src="${shop.sh_img1}" width="255" height="180" alt="메인">
  	  	</div>
  	  </div>
  	  	<div class="sub-photo">
  	  	  <ul>
  	  	  	<li><img src="${shop.sh_img2}" alt="사진1"></li>
  	  	  	<li><img src="${shop.sh_img3}" alt="사진2"></li>
  	  	  	<li><img src="${shop.sh_img4}" alt="사진3"></li>
  	  	  	<li><img src="${shop.sh_img5}" alt="사진4"></li>
  	  	  	<li><img src="${shop.sh_img6}" alt="사진5"></li>
  	  	  </ul>
  	  	</div>
  	  	<div>
  	  	  <a class="slide-btn pre" href="" onclick="prevPhoto()"><span class="hide">이전</span></a>
  	  	  <a class="slide-btn next" href="" onclick="nextPhoto()"><span class="hide">다음</span></a>
  	  	</div>
  	  	
		<%-- <div class="photo">
			<div class="main-photo">
				<img src="shopPic/upload/${shop.sh_img1}" height="180">
			</div>
			<div class="sub-photo">
				<img src="shopPic/upload/${shop.sh_img2}">
			</div>
		</div> --%>
		 <div class="shop-info">
			<h4>기본 정보</h4>
			<div class="ad-info">
				<span> <c:if test="${shopDetail.smoking =='y'}">
						<img src="${path}/resources/img/smoking-area.png" width="30"
							height="30">
					</c:if> 
				</span> <span> <c:if test="${shopDetail.freeWifi =='y'}">
						<img src="${path}/resources/img/wifi.png" width="30" height="30">
					</c:if> 
				</span> <span> <c:if test="${shopDetail.toilet =='y'}">
						<img src="${path}/resources/img/toilet.png" width="30" height="30">
					</c:if> 
				</span> <span> <c:if test="${shopDetail.parking =='y'}">
						<img src="${path}/resources/img/parking.png" width="30"
							height="30">
					</c:if> 
				</span> <span> <c:if test="${shopDetail.blanket =='y'}">
						<img src="${path}/resources/img/blanket.png" width="30"
							height="30">
					</c:if>
				</span> <span> <c:if test="${shopDetail.mobileCharge =='y'}">
						<img src="${path}/resources/img/charging-phone.png" width="30"
							height="30">
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
	
    
  
   <!--  <div class="review">
  	  	<h4>리뷰</h4> -->
			   <script type="text/javascript">
			
				$(function(){
					$('#slist').load("slist.go?sh_id=${sh_id}");		
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
					window.open('score.go?sh_id=${shop.sh_id}','popup1','width=300,height=500,toolbar=no,menubar=no,resizable=no, scrollbars=no')
				}
								
				</script>
				
			
		<%-- 	<p>
			 <div>
			<form name="frm" id="frm">
			<input type="hidden" name="replyer" value="${rb.replyer}">
			<input type="hidden" name="sh_id" value="${shop.sh_id}">
			댓글 : <textarea rows="2" cols="100" name="replytext" id="textarea"></textarea>
			<input type="button" value="확인" id="repInsert" class="btn btn-info">
			<input type="button" value="평가하기" onclick="score()"> --%>
			
			<!-- <p><a href="https://naver.com" onclick="winPop(this.href, {name:'팝업1',width:300,height:500}); return false;">팝업보기 </a></p> -->  
			<!-- </form>
			</div> 
						 -->				
  
			<div id="slist"></div>




	<script type="text/javascript">//댓글 계산
	/* $('.gpa').css('width','${ap.aver}'/5*100); */
	var a = (${ap.aver})/5*100;
	$('.gpa-img').css('width', a);  	
	</script>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script>
	$('.menu-category li:first').addClass('selected');
	$('.menu-list>div:not(":first-of-type")').hide();
	$('.menu-category li').each(function(i) {
		$(this).attr('data-tab', 'tab'+i);
	});
	$('.menu-list>div').each(function(i) {
		$(this).attr('data-tab', 'tab'+i);
	});
	
	$('.menu-category li').click(function() {
		$('.menu-category li').removeClass('selected');
		$(this).addClass('selected');
		
		var dataTab = $(this).data('tab');
		$('.menu-list>div').hide();
		$('.menu-list>div[data-tab='+dataTab+']').show();
	});
	
	function photoView(seq) {
		$('.main-photo').find('img').attr('src', photolist.eq(seq).find('img').attr('src'));
	}
	function autoNext() {
		if(overflag == true) {
			return;
		}
		photoView(seq);
		seq++;
		if(seq>4) {
			seq = 0;
		}
	}
	var timerid = setInterval( autoNext, 1000*5 );
	var photolist=$('.sub-photo li');
	var seq=0;
	var overflag = false;
	$('.slide-btn').mouseover( function() { overflag=true; } );
	$('.slide-btn').mouseout( function() { overflag=false; } );
	$(document).ready( function() { autoNext(); });
</script>
</body>
</html>