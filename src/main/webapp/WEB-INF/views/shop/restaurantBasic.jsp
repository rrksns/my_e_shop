<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My Shop 등록 : 로드 샵</title>
<%-- <link rel="stylesheet" href="${path}/resources/css/all.css">  --%>
<link rel="stylesheet" href="${path}/resources/css/myshop.css">

</head>
<body>
<div class="universe">
  <aside>
  	<h2 class="home_logo"><a href="sellerMain.go">Around U</a></h2>
  	<div class="shopNameWrap">
  	  	<p>${seller.s_name}님의</p>
		<p>e-shop을 꾸며보세요!</p>
  	</div>
  	<ul class="phase">
  	  <li><p>기본 정보</p></li>
  	  <li><p>사진 등록</p></li>
  	  <li><p>메뉴 등록</p></li>
  	  <li><p>부가 정보</p></li>
  	</ul>
  </aside>
  <main role="main">
  	<header>
  	  <div class="setWrap">
  	  	<button class="set_btn" type="button">
  	  	  <img src="${path}/resources/img/set.png" width="36" height="25" alt="설정">
  	  	</button>
  	  </div>
  	  <div class="titleWrap">
  	  	<h3 class="title"><img src="${path}/resources/img/home.png" width="25" height="25" alt=""> My e-Shop</h3>
  	  </div>
  	</header>
  	<section id="shopInfo_register">
  	  <article class="basic_shopInfo">
  	  	<form action="restaurantBasic.go" method="post">
  	  	<input type="text" name="sh_id" value="${shop.sh_id+1}">
  	  	  <fieldset><legend class="hide">기본 정보</legend>
  	  	  	<h2>샵 기본 정보</h2>
  	  	  	<h4>샵에 대한 설명</h4>
  	  	  	<textarea class="txtInfo" name="sh_content"placeholder="샵에 대해 자유롭게 적어주세요.&. 설립년도, 방송 출현 여부, 외국어 메뉴 여부, 이국적인 느낌 등등" autofocus></textarea>
  	  	  	<div>
  	  	  	  <div class="infoContainer fl_L">
  	  	  	  	<h4>운영 형태(중복가능)</h4>
  	  	  	  	<div class="serviceTypeBox">
  	  	  	  	  <div class="typeWrap">
  	  	  	  	  	<p>매장 식사</p>
  	  	  	  	  	<span class="type_icon in" ></span>
  	  	  	  	  	<input name= "dineIn" id="in" type="checkbox" value="y">
  	  	  	  	  	<label class="chk_btn" for="in"></label>
  	  	  	  	  </div>
  	  	  	  	  <div class="typeWrap mg_add">
  	  	  	  	  	<p>테이크 아웃</p>
  	  	  	  	  	<span class="type_icon take"></span>
  	  	  	  	  	<input name ="takeOut" id="take" type="checkbox" value="y">
  	  	  	  	  	<label class="chk_btn" for="take"></label>
  	  	  	  	  </div>
  	  	  	  	  <div class="typeWrap">
  	  	  	  	  	<p>배달</p>
  	  	  	  	  	<span class="type_icon delivery"></span>
  	  	  	  	  	<input name ="delivery" id="delivery" type="checkbox" value="y">
  	  	  	  	  	<label class="chk_btn" for="delivery"></label>
  	  	  	  	  </div>
  	  	  	  	</div>
  	  	  	  	<div class="timeBox">
  	  	  	  	  <div class="timeWrap">
  	  	  	  	  	<h4>운영 시간</h4>
  	  	  	  	  	<input type="time" name="sh_operTimeS">
  	  	  	  	  	<span>~</span>
  	  	  	  	  	<input type="time" name="sh_operTimeE" >
  	  	  	  	  </div>
  	  	  	  	  <div class="timeWrap">
  	  	  	  	  	<h4>브레이크 타임</h4>
  	  	  	  	  	<input type="time" name="sh_brTimeS">
  	  	  	  	  	<span>~</span>
  	  	  	  	  	<input type="time" name="sh_brTimeE">
  	  	  	  	  </div>
  	  	  	  	</div>
  	  	  	  	<div class="alltimeWrap">
  	  	  	  	  <p>24시간 운영</p>
  	  	  	  	  <span class="type_icon alltime"></span>
  	  	  	  	  <input name="allday_open "id="alltime" type="checkbox" value="y">
  	  	  	  	  <label class="chk_btn" for="alltime"></label>
  	  	  	  	</div>
  	  	  	  </div>
  	  	  	  <div class="infoContainer fl_R">
  	  	  	  	 <div class="inputWrap">
  	  	  			<label>가계 이름</label>
  	  	  			<input id="id" name="sh_name" type="text" title="사업자등록증과 동일하게 입력" required="required">
  	  	  			<label>가계 전화번호</label>
  	  	  			<input id="pw" name="sh_tel" type="text" autocomplete="off" title="-없이 입력하세요">
  	  	  			<label>주소</label>
  	  	  		<input type="text" id="sample6_postcode" placeholder="우편번호">
					<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
					<input type="text" id="sample6_address" name="sh_addr1" placeholder="주소">
					<input type="text" id="sample6_address2" name="sh_addr2" placeholder="상세주소">
					
					<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
					<script>
					    function sample6_execDaumPostcode() {
					        new daum.Postcode({
					            oncomplete: function(data) {
					                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
					
					                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
					                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					                var fullAddr = ''; // 최종 주소 변수
					                var extraAddr = ''; // 조합형 주소 변수
					
					                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
					                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
					                    fullAddr = data.roadAddress;
					
					                } else { // 사용자가 지번 주소를 선택했을 경우(J)
					                    fullAddr = data.jibunAddress;
					                }
					
					                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
					                if(data.userSelectedType === 'R'){
					                    //법정동명이 있을 경우 추가한다.
					                    if(data.bname !== ''){
					                        extraAddr += data.bname;
					                    }
					                    // 건물명이 있을 경우 추가한다.
					                    if(data.buildingName !== ''){
					                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
					                    }
					                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
					                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
					                }
					
					                // 우편번호와 주소 정보를 해당 필드에 넣는다.
					                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
					                document.getElementById('sample6_address').value = fullAddr;
					
					                // 커서를 상세주소 필드로 이동한다.
					                document.getElementById('sample6_address2').focus();
					            }
					        }).open();
					    }
					</script>
					</div>
					<input type="button" value="위치표시" onclick="go()">
					
					<div id="map" style="width:370px;height:150px;"></div>
  	  	  	  		<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=f6eed7143332943349595b742f572fde&libraries=services"></script>
					<script>
					function go(){
					var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
					    mapOption = {
					        center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
					        level: 3 // 지도의 확대 레벨
					    };  
					
					// 지도를 생성합니다    
					var map = new daum.maps.Map(mapContainer, mapOption);
					var fullAddr = '';
					/*  document.getElementById('sample6_address').value = fullAddr */  
					fullAddr = $("#sample6_address").val()
					// 주소-좌표 변환 객체를 생성합니다
					var geocoder = new daum.maps.services.Geocoder();
					
					// 주소로 좌표를 검색합니다
				
					/* geocoder.addr2coord('제주특별자치도 제주시 첨단로 242', function(status, result) {  */
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
					
					}
					</script>	
				</div>
  	  	  	
  	  	  	</div>  	  	  		
  	  		<div class="nextBtnWrap">
  	  	  	  <button class="prev_btn" type="button" onclick="history.go(-1)">이전으로</button>
  	  	  	  <button class="next_btn" type="submit">다음</button>
  	  		</div>
  	  	  </fieldset>
  	  	</form>
  	  </article>
  	</section>
  </main>
</div>
</body>
</html>