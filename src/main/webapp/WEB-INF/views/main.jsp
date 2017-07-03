<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Around U</title>
<link rel="stylesheet" href="${path}/resources/css/alll.css">
<link rel="stylesheet" href="${path}/resources/css/home.css">

</head>
<body>
	<div class="universe">
		<header class="site-header">
		
			<div class="top-cover">
				<div class="home-logo">
					<a href="main.go" rel="home">AROUND U</a>
				</div>
				<nav class="user-nav">
					<ul>
						<li class="nav-list"><a href="commonLogin.go">로그인</a></li>
						<li class="nav-list"><a href="commonJoin.go">회원가입</a></li>
						<li class="nav-list"><a href="commonLogin.go">my page</a></li>
						<li class="nav-list"><a href="commonLogin.go">my e-shop</a></li>
						<li class="nav-list"><a href="boardList.go">Q&A</a></li>
					</ul>
				</nav>
			</div>
			<div class="search">
				<h2 class="hide">검색</h2>
				<form action="" method="get" accept-charset="utf-8" role="search">
					<fieldset>
						<legend>통합 검색</legend>
						<input class="sch-inp" type="search" title="검색어 입력"
							autocomplete="off" autofocus>
						<button class="sch-btn" type="submit">
							<span class="hide">검색</span>
						</button>
					</fieldset>
				</form>
			</div>
			<nav class="site-nav" role="navigation">
				<h2 class="hide">사이트 바로가기</h2>
				<ul>
					<li class="nav-list"><a class="category" href=""
						title="카테고리 검색"><span class="cate-icon"></span> 전체 카테고리</a></li>
					<li class="nav-list"><a href="">로드샵</a></li>
					<li class="nav-list"><a href="">온라인샵</a></li>
					<li class="nav-list"><a href="">중고마켓</a></li>
				</ul>
			</nav>
		</header>
			
		<div class="contents" role="main">
			<div class="a">
				<div class="mapStyle">
						<div id="map" style="width:740px;height:400px;"></div>
						<div>
						<script src="//apis.daum.net/maps/maps3.js?apikey=f6eed7143332943349595b742f572fde"></script>
						<script type="text/javascript">
						var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
						mapOption = { 
						    center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
						    level: 3 // 지도의 확대 레벨 
						}; 
						
						var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
						
						//HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
						if (navigator.geolocation) {
						
						// GeoLocation을 이용해서 접속 위치를 얻어옵니다
						navigator.geolocation.getCurrentPosition(function(position) {
						    
						    var lat = position.coords.latitude, // 위도
						        lon = position.coords.longitude; // 경도
						    
						    var locPosition = new daum.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
						        message = '<div style="padding:5px;">여기에 계신가요?!</div>'; // 인포윈도우에 표시될 내용입니다
						    
						    // 마커와 인포윈도우를 표시합니다
						    displayMarker(locPosition, message);
						        
						  });
						
						} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
						
						var locPosition = new daum.maps.LatLng(33.450701, 126.570667),    
						    message = 'geolocation을 사용할수 없어요..'
						    
						displayMarker(locPosition, message);
						}
						
						//지도에 마커와 인포윈도우를 표시하는 함수입니다
						function displayMarker(locPosition, message) {
						
						// 마커를 생성합니다
						var marker = new daum.maps.Marker({  
						    map: map, 
						    position: locPosition
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
						map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);
						}    
						</script>
						</div>
						
					</div>
				</div>
			</div>
			<section class="b">
				<article class="shop"></article>
				<article class="shop"></article>
				<article class="shop"></article>
				<article class="shop"></article>
				<article class="shop"></article>
			</section>
		</div>
		<footer>	 </footer>
	
</body>
</html>
