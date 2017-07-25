<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="${path}/resources/css/a.css">
<link rel="stylesheet" href="${path}/resources/css/myshop-common.css">
<link rel="stylesheet" href="${path}/resources/css/myshop-register-basicinfo.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,700">
<style>
</style>
</head>
<body>
	<div class="universe">
		<header class="page-header">
			<div class="top-cover">
				<div class="home-logo">
					<h1 class="logo">
						<a href="sellerMain.go">AROUND U</a>
					</h1>
				</div>
				<nav class="user-nav">
					<h2 class="hide">사용자 메뉴</h2>
					<ul>
						<li class="nav-list"><a class="myshop-btn" href=""
							title="마이 샵"> <img class="myshop-img"
								src="${path}/resources/img/icon/shop.png" width="25" height="25"
								alt="마이 샵">
						</a></li>
						<li class="nav-list"><a class="dropdown-btn" href=""><span>"${seller.s_name}"</span>님
								<span class="dropdown-img"></span></a>
							<ul class="dropdown">
								<li><a href="s_page.go">My Page</a></li>
  	  	  	  					<li><a href="shopManagement.go"></a>My eShop</li>
  	  	  	  					<li><a href="boardList.go">2</a>Q&A</li>
  	  	  	  					<li class="log-out"><a href="s_logout.go">로그아웃</a></li>
							</ul></li>
					</ul>
				</nav>
			</div>
			<div class="secondary-line">
				<div class="page-title">
					<h3>
						<img class="home-img" src="${path}/resources/img/icon/home.png"
							width="25" height="25" alt=""> My e-Shop
					</h3>
				</div>
			</div>
		</header>
		<div class="page-body">
			<aside class="support" role="complementary">
				<div class="shop-name">
					<p>
						<span class="name-txt">"${seller.s_name}"</span>님의
					</p>
					<p style="padding: 5px 0; border-bottom: 2px solid #DEBB3D;">e-Shop</p>
				</div>
				<div class="input-steb">
					<h2 class="hide">샵 정보 등록 단계</h2>
					<ol>
						<li class="steb-list here"><p class="steb-txt">기본 정보</p></li>
						<li class="steb-list"><p class="steb-txt">사진 등록</p></li>
						<li class="steb-list"><p class="steb-txt">메뉴 등록</p></li>
						<li class="steb-list"><p class="steb-txt">부가 정보</p></li>
					</ol>
				</div>
			</aside>
  	<div class="contents" role="main">
  	  <form name="register" action="restaurantBasic.go" method="post">
  	  	<fieldset><legend class="hide">기본 정보 선택</legend>
  	  	  <h3 class="title">기본 정보</h3>
  	  	  <div class="horizontal-frame">
  	  	  	<div class="vertical-frame fl_L">
  	  	  	  <div class="shop-name">
  	  	  	  	<h4>가게이름</h4>
  	  	  	  	<input type="text" name="sh_name">
  	  	  	  </div>
  	  	  	  <div class="phone-number">
  	  	  	  	<h4>전화번호</h4>
  	  	  	  	<input type="text" name="sh_tel">
  	  	  	  </div>
  	  	  	  <div class="address">
  	  	  	  	<div class="address-search">
  	  	  	  	  <div style="margin-bottom:3px">
  	  	  	  	  	<h4></h4>
  	  	  	  	  	<button type="button" onclick="execDaumPostcode()">주소 검색</button>
  	  	  	  	  </div>
  	  	  	  	  <h4>주소</h4>
  	  	  	  	  <input id="address" type="text" name="sh_addr1">
  	  	  	  	</div>
  	  	  	  	<div class="address-detail">
  	  	  	  	  <h4>상세주소</h4>
  	  	  	  	  <input type="text" name="sh_addr2">
  	  	  	  	</div>
  	  	  	  </div>
  	  	  	  <div class="location">
  	  	  	  	<h4>위치</h4>
  	  	  	  	<div id="map" onclick="go()"></div>
  	  	  	  
  	  	  	  </div>

  	  	  	</div>
  	  	  	<div class="vertical-frame fl_R">
  	  	  	  <h4>운영 형태<span class="comment">(중복 선택 가능)</span></h4>
  	  	  	  	<div class="service-type">
  	  	  	  	  <div class="wrapper">
  	  	  	  	  	<h5>매장 식사</h5>
  	  	  	  	  	<img class="service-img" src="${path}/resources/img/icon/dine-in.png">
  	  	  	  	  	<input id="dine-in" type="checkbox" name="dineIn" value="y">
  	  	  	  	  	<label class="chk-btn" for="dine-in"></label>
  	  	  	  	  </div>
  	  	  	  	  <div class="wrapper">
  	  	  	  	  	<h5>테이크 아웃</h5>
  	  	  	  	  	<img class="service-img" src="${path}/resources/img/icon/take-out.png">
  	  	  	  	  	<input id="take-out" type="checkbox" name="takeOut" value="y">
  	  	  	  	  	<label class="chk-btn" for="take-out"></label>
  	  	  	  	  </div>
  	  	  	  	  <div class="wrapper">
  	  	  	  	  	<h5>배달</h5>
  	  	  	  	  	<img class="service-img" src="${path}/resources/img/icon/delivery.png">
  	  	  	  	  	<input id="delivery" type="checkbox" name="delivery" value="y">
  	  	  	  	  	<label class="chk-btn" for="delivery"></label>
  	  	  	  	  </div>
  	  	  	  	  <div class="wrapper">
  	  	  	  	  	<h5>드라이브 스루</h5>
  	  	  	  	  	<img class="service-img" src="${path}/resources/img/icon/drive-thru.png">
  	  	  	  	  	<input id="drive-thru" type="checkbox" name ="driveThru" value = "y">
  	  	  	  	  	<label class="chk-btn" for="drive-thru"></label>
  	  	  	  	  </div>
  	  	  	  	</div>
  	  	  	  <div class="operating-hours">
  	  	  	  	<div class="input-time">
  	  	  	  	  <div class="wrapper">
  	  	  	  	  	<h4>운영 시간</h4>
  	  	  	  	  	<div class="select-time">
  	  	  	  	  	  <select name="sh_operTimeS1">
  	  	  	  	  	  	<option selected>오전</option>
  	  	  	  	  	  	<option>오후</option>
  	  	  	  	  	  </select>
  	  	  	  	  	  <select name="sh_operTimeS2">
  	  	  	  	  	  	<option>1시</option>
  	  	  	  	  	  	<option>2시</option>
  	  	  	  	  	  	<option>3시</option>
  	  	  	  	  	  	<option>4시</option>
  	  	  	  	  	  	<option>5시</option>
  	  	  	  	  	  	<option>6시</option>
  	  	  	  	  	  	<option>7시</option>
  	  	  	  	  	  	<option>8시</option>
  	  	  	  	  	  	<option selected>9시</option>
  	  	  	  	  	  	<option>10시</option>
  	  	  	  	  	  	<option>11시</option>
  	  	  	  	  	  	<option>12시</option>
  	  	  	  	  	  </select>
  	  	  	  	  	  <select name="sh_operTimeS3">
  	  	  	  	  	  	<option selected>00분</option>
  	  	  	  	  	  	<option>10분</option>
  	  	  	  	  	  	<option>20분</option>
  	  	  	  	  	  	<option>30분</option>
  	  	  	  	  	  	<option>40분</option>
  	  	  	  	  	  	<option>50분</option>
  	  	  	  	  	  </select><span style="font-weight:bold;margin-left:10px;font-size:20px;">~</span>
  	  	  	  	  	</div>
  	  	  	  	  	<div class="select-time fl_R">
  	  	  	  	  	  <select name="sh_operTimeE1">
  	  	  	  	  	  	<option>오전</option>
  	  	  	  	  	  	<option selected>오후</option>
  	  	  	  	  	  </select>
  	  	  	  	  	  <select name="sh_operTimeE2">
  	  	  	  	  	  	<option>1시</option>
  	  	  	  	  	  	<option>2시</option>
  	  	  	  	  	  	<option>3시</option>
  	  	  	  	  	  	<option>4시</option>
  	  	  	  	  	  	<option>5시</option>
  	  	  	  	  	  	<option selected>6시</option>
  	  	  	  	  	  	<option>7시</option>
  	  	  	  	  	  	<option>8시</option>
  	  	  	  	  	  	<option>9시</option>
  	  	  	  	  	  	<option>10시</option>
  	  	  	  	  	  	<option>11시</option>
  	  	  	  	  	  	<option>12시</option>
  	  	  	  	  	  </select>
  	  	  	  	  	  <select name="sh_operTimeE3">
  	  	  	  	  	  	<option selected>00분</option>
  	  	  	  	  	  	<option>10분</option>
  	  	  	  	  	  	<option>20분</option>
  	  	  	  	  	  	<option>30분</option>
  	  	  	  	  	  	<option>40분</option>
  	  	  	  	  	  	<option>50분</option>
  	  	  	  	  	  </select>
  	  	  	  	  	</div>
  	  	  	  	  </div>
  	  	  	  	</div>
  	  	  	  	<div class="allday">
  	  	  	  	  <h5>24시간 운영</h5>
  	  	  	  	  <img class="service-img" src="${path}/resources/img/icon/allday.png">
  	  	  	  	  <input id="allday" type="checkbox" name="allday_open" value="y">
  	  	  	  	  <label class="chk-btn" for="allday"></label>
  	  	  	  	</div>
  	  	  	  </div>
  	  	  	  <div class="hashtag">
  	  	  	  	<h4>해시태그</h4>
  	  	  	  	<input type="text" name="sh_hash">
  	  	  	  </div>
  	  	  	  <div class="sns">
  	  	  	  	<h4>페이스북</h4>
  	  	  	  	<input type="text" name="sh_web1">
  	  	  	  	<h4>인스타</h4>
  	  	  	  	<input type="text" name="sh_web2">
  	  	  	  	<h4>트위터</h4>
  	  	  	  	<input type="text" name="sh_web3">
  	  	  	  </div>
  	  	  	</div>
  	  	  </div>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('address').value = data.jibunAddress;
                document.getElementById('address').value = fullRoadAddr;

                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    //예상되는 도로명 주소에 조합형 주소를 추가한다.
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

                } else {
                    document.getElementById('guide').innerHTML = '';
                }
            }
        }).open();
    }
</script>
  	  	  <div class="txt-info">
  	  	  	<h4>샵에 대한 설명</h4>
  	  	  	<textarea name="sh_content" onkeyup="updateChar(100);"
  	  	  	  placeholder="샵에 대해 자유롭게 적어주세요.&#13;&#10;e.g. 년도, 방송 출현 여부, 외국어 메뉴 여부, 인테리어 등등"></textarea>
  	  	  	<div style="text-align:right;font-weight:bold;"><span id="textlimit">0</span>/100자</div>
  	  	  </div>
  	  	  <div class="btn-box">
  	  	  	<button class="prev-btn" type="button" onclick="window.history.go(-1)">이전으로</button>
  	  	  	<button class="next-btn" type="submit">다음</button>
  	  	  </div>
  	  	</fieldset>
  	  </form>
<script>
function updateChar(length_limit) {
	var form = document.bbsForm;
	var length = calculate_msglen(register.comment.value);
	textlimit.innerText = length;
	if (length > length_limit) {
		alert("글자수는 최대 " + length_limit + "자입니다.");
		register.comment.value = register.comment.value.replace(/\r\n$/, "");
		register.comment.value = assert_msglen(register.comment.value, length_limit);
	}
}

function calculate_msglen(message) {
	var letter = 0;
	for (i=0; i<message.length; i++) {
		letter += 1;
	}
	return letter;
}

function assert_msglen(message, maximum) {
	var letter = 0;
	var msg = "";
	var msglen = message.length;
	for (i=0; i<msglen; i++) {
		var ch = message.charAt(i);
		letter += 1;
		if(letter>maximum) {
			break;
		}
		msg += ch;
	}
	textlimit.innerText = letter-1;
	return msg;
}
</script>
  	</div>
  </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
$('aside').css({height:$('.page-body').height()});
</script>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?apikey=f6eed7143332943349595b742f572fde&libraries=services"></script>
  	  	  	  <script>
  	  	  function go(){  	  		  
  	  	  alert('go');
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

							var lat = position.coords.latitude, // 위도
							lon = position.coords.longitude; // 경도

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
  	  	  }
			
				</script>

		
  	  
</body>
</html>


