<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AROUDN U</title>
<link rel="stylesheet" href="${path}/resources/css/index.css">
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
	.user-nav {
		float:right;
		position:relative;
	}
		.user-nav .nav-list {
			line-height:45px;
		}
		.user-nav .nav-list:hover {
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
					background-image:url('${path}/resources/img/btn/dropdown-close.png');
					background-size:contain;
				}
				.nav-list:hover .dropdown-btn > .dropdown-img {
					background-image:url('${path}/resources/img/btn/dropdown-open.png');
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
<script type="text/javascript">
	$(function(){
		$('#sellerShopList').load('sellerShopList.go');
	});
</script>
</head>
<body>
<input type="hidden" name="s_id" value= "${s_id}">
<input type="hidden" name="sh_name" value= "${shop.sh_name}">
<div class="universe">
  <header class="site-header">
  	<div class="top-cover">
  	  <div class="home-logo">
  	  	<h1 class="logo"><a href="" rel="home">AROUND U</a></h1>
  	  </div>
  	  <nav class="user-nav"><h2 class="hide">사용자 메뉴</h2>
  	  	<ul>
  	  	  <li class="nav-list">
  	  	  	<a class="myshop-btn" href="" title="마이 샵">
  	  	  	  <img class="myshop-img" src="${path}/resources/img/icon/shop.png" width="25" height="25" alt="마이 샵">
  	  	  	</a>
  	  	  </li>
  	  	  <li class="nav-list">
  	  	  	<a class="dropdown-btn" href=""><span>${seller.s_name}</span>님 <span class="dropdown-img"></span></a>
  	  	  	<ul class="dropdown">
  	  	  	  <li><a href ="s_page.go">my page</a></li>
  	  	  	  <li><a href ="shopManagement.go">my e-shop</a></li> 
  	  	  	  <li><a href="boardList.go">Q&A</a></li>
  	  	  	 <!--  <li><a href="">3</a></li>
  	  	  	  <li><a href="">4</a></li> -->
  	  	  	  <li class="log-out"><a href="s_logout.go">로그아웃</a></li>   	  
  	  	  	</ul>
  	  	  </li>
  	  	</ul>   	    	  
  	  
  	  
  	  </nav>
  	</div>
  	
  	<div class="search">
  	  <h2 class="hide">검색</h2>
  	  <form action="sh_search.go" method="post" accept-charset="utf-8" role="search">
  	  	<fieldset><legend>통합 검색</legend>
  	  	<select class="sch-filter" name="search">
				<option value="sh_name"
					<c:if test="${search =='sh_name'}">
		selected="selected"</c:if>>샵이름</option>
		<option value="sh_hash"<c:if test="${search =='sh_hash'}">
		selected="selected"</c:if>>메뉴</option>
		<option value="sh_hash" <c:if test="${search =='sh_hash'}">
		selected="selected"</c:if>>Hash tag</option>
		<option value="shcon" <c:if test="${search =='shcon'}">
		selected="selected"</c:if>>샵이름+Hashtag</option>
	</select>
	
  	  	  <input class="sch-inp" type="search" name="keyword" title="검색어 입력" autocomplete="off" autofocus>
  	  	  <button class="sch-btn" type="submit" ><span class="hide">검색</span></button>
  	  	</fieldset>
  	  </form>
 
  	  
  	</div>
  	<nav class="site-nav" role="navigation">
  	  <h2 class="hide">사이트 바로가기</h2>
  	  <ul>
  	 <li class="nav-list">
  	  	  <a class="cate-btn" href="#" role="button" title="카테고리 검색"><span class="cate-icon"></span> 전체 카테고리 <span></span></a>
  	  	</li>
  	  	<li class="nav-list"><a class="nav-btn" href="">핫플레이스</a></li>
  	  	<li class="nav-list"><a class="nav-btn" href="">프리미엄샵</a></li>
  	  	<li class="nav-list"><a class="nav-btn" href="">신규오픈샵</a></li>
  	  </ul>
  	</nav>
  </header>
  
	<div class="site-body">
		<div class="contents" role="main">
			<div class="near-shop">
				<h2 class="hide">주변 샵 정보</h2>
				<div class="main-frame">
					<div id="map">
					
						<script
							src="//apis.daum.net/maps/maps3.js?apikey=f6eed7143332943349595b742f572fde"></script>
						<script type="text/javascript">
							var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
							mapOption = {
								center : new daum.maps.LatLng(33.450701,
										126.570667), // 지도의 중심좌표
								level : 3
							// 지도의 확대 레벨 
							};

							var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

							//HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
							if (navigator.geolocation) {

								// GeoLocation을 이용해서 접속 위치를 얻어옵니다
								navigator.geolocation
										.getCurrentPosition(function(position) {

											/* var lat = position.coords.latitude, // 위도
											var lon = position.coords.longitude; // 경도 */
											
											var lat = 37.5043645, // 위도
											lon = 127.0508325; // 경도 			

											var locPosition = new daum.maps.LatLng(
													lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
											message = '<div style="padding:5px;">여기에 계신가요?!</div>'; // 인포윈도우에 표시될 내용입니다

											// 마커와 인포윈도우를 표시합니다
											displayMarker(locPosition, message);

										});

							} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다

								var locPosition = new daum.maps.LatLng(
										33.450701, 126.570667), message = 'geolocation을 사용할수 없어요..'

								displayMarker(locPosition, message);
							}

							//지도에 마커와 인포윈도우를 표시하는 함수입니다
							function displayMarker(locPosition, message) {

								// 마커를 생성합니다
								var marker = new daum.maps.Marker({
									map : map,
									position : locPosition
								});

								var iwContent = message, // 인포윈도우에 표시할 내용
								iwRemoveable = true;

								// 인포윈도우를 생성합니다
								var infowindow = new daum.maps.InfoWindow({
									content : iwContent,
									removable : iwRemoveable
								});

								// 인포윈도우를 마커위에 표시합니다 
								infowindow.open(map, marker);

								// 지도 중심좌표를 접속위치로 변경합니다
								map.setCenter(locPosition);

								//지도에 확대 축소 컨트롤을 생성한다
								var zoomControl = new daum.maps.ZoomControl();

								// 지도의 우측에 확대 축소 컨트롤을 추가한다
								map.addControl(zoomControl,
										daum.maps.ControlPosition.RIGHT);
							}
							
						
							
						</script>
  			</div>
				</div>
				<div class="side-frame">
					<div class="ad-banner">
						<img src="${path}/resources/img/bg/1.jpg" width="245" height="230">
						<img src="${path}/resources/img/bg/2.jpg" width="245" height="230">
					</div>
				</div>
			</div>
		</div>
	
	<div class="new-shop"><h2 class="hide">새로 등록한 샵</h2>
  	  	<h3 class="title">신규 등록 샵</h3>
  	  	<span>${seller.s_name}님의 등록된 샵으로 바로가기</span>

<div id="sellerShopList"></div>
<ul >
<li class="shop-list">

</li>
</ul>
  	  </div>
  	</div>
  </div>
  <footer>
  </footer>

</body>
</html>


