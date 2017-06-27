<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메인페이지</title>
</head>
<body>
<div>

<h2>메인페이지</h2><p>
	<a href="commonLogin.go">로그인</a>
	<a href ="s_Join.go">회원가입</a>
	<a href ="sellerJoinForm.go">my page</a>
	<a href ="shopMain.go">my e-shop</a>
	<a href ="boardList.go">Q&A</a>
</div>
<div id="map" style="width:750px;height:350px;"></div>

	<script src="//apis.daum.net/maps/maps3.js?apikey=f6eed7143332943349595b742f572fde"></script>
<!-- 	<script>
	//GPS정보 가져오기
	var x = document.getElementByid("demo");
	function getLocation(){
		if(navigator.geolocation){
			navigator.geolocation.getCurrentPosition(showPosition);
		}else{
			x.innerHTML="Geolocation is not support by this browser";
		}
	}
	function showPosition(position){
		var lation=position.coords.latitude
		var longitude=position.coords.longitude	
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = {
	        center: new daum.maps.LatLng(lation, longitude), // 지도의 중심좌표
	        /* center: new daum.maps.LatLng(37.499525, 127.030471), // 지도의 중심좌표 */
	        level: 2, // 지도의 확대 레벨
	        mapTypeId : daum.maps.MapTypeId.ROADMAP // 지도종류
	    }; 
	}
	
		// 지도를 생성한다 
		var map = new daum.maps.Map(mapContainer, mapOption); 

		// 지도에 확대 축소 컨트롤을 생성한다
		var zoomControl = new daum.maps.ZoomControl();

		// 지도의 우측에 확대 축소 컨트롤을 추가한다
		map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);

		// 지도에 마커를 생성하고 표시한다
		var marker = new daum.maps.Marker({
		    position: new daum.maps.LatLng(37.499525, 127.030471), // 마커의 좌표
		    map: map // 마커를 표시할 지도 객체
		});

	</script> -->
	<!--  <script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = {
		        center: new daum.maps.LatLng(37.499525, 127.030471), // 지도의 중심좌표
		        level: 2, // 지도의 확대 레벨
		        mapTypeId : daum.maps.MapTypeId.ROADMAP // 지도종류
		    }; 

		// 지도를 생성한다 
		var map = new daum.maps.Map(mapContainer, mapOption); 

		// 지도에 확대 축소 컨트롤을 생성한다
		var zoomControl = new daum.maps.ZoomControl();

		// 지도의 우측에 확대 축소 컨트롤을 추가한다
		map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);

		// 지도에 마커를 생성하고 표시한다
		var marker = new daum.maps.Marker({
		    position: new daum.maps.LatLng(37.499525, 127.030471), // 마커의 좌표
		    map: map // 마커를 표시할 지도 객체
		});

	</script>  -->
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

</body>
</html>