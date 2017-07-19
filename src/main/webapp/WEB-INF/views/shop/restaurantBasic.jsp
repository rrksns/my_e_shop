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
								<li><a href="">마이페이지</a></li>
								<li><a href="">1</a></li>
								<li><a href="">2</a></li>
								<li><a href="">3</a></li>
								<li><a href="">4</a></li>
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
				<input type="hidden" name="sh_id" value="${shop.sh_id+1}">
					<fieldset>
						<legend class="hide">기본 정보 선택</legend>
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
										<h4>주소</h4>
										<input id="address" type="text" name="sh_addr1">
									</div>
									<div class="address-detail">
										<h4>상세주소</h4>
										<input type="text" name="sh_addr2">
										<button type="button" onclick="execDaumPostcode()">주소
											검색</button>
									</div>
									<div class="location">
										<h4>위치</h4>
										<div id="map"></div>
									</div>
								</div>
							</div>
							<div class="vertical-frame fl_R">
								<h4>
									운영 형태<span class="comment">(중복 선택 가능)</span>
								</h4>
								<div class="service-type">
									<div class="wrapper">
										<h5>매장 식사</h5>
										<img class="service-img" src="${path}/resources/img/icon/dine-in.png"> 
										<input name="dineIn" id="dine-in" type="checkbox" value="y">
											 <label class="chk-btn"for="dine-in"></label>
									</div>
									<div class="wrapper">
										<h5>테이크 아웃</h5>
										<img class="service-img" src="${path}/resources/img/icon/take-out.png"> 
										<input name="takeOut" id="take-out" type="checkbox" value="y"> 
										<label class="chk-btn"for="take-out"></label>
									</div>
									<div class="wrapper">
										<h5>배달</h5>
										<img class="service-img" src="${path}/resources/img/icon/delivery.png"> 
										<input name ="delivery" id="delivery" type="checkbox" value="y"> 
										<label class="chk-btn"for="delivery"></label>
									</div>
									<div class="wrapper">
										<h5>드라이브 스루</h5>
										<img class="service-img" src="${path}/resources/img/icon/drive-thru.png">
										<input name="driveThru" id="drive-thru" type="checkbox" value="y"> <label
											class="chk-btn" for="drive-thru"></label>
									</div>
								</div>
								<div class="operating-hours">
									<div class="input-time">
										<div class="wrapper">
											<h4>운영 시간</h4>
											<div class="select-time">
												<select>
													<option selected>오전</option>
													<option>오후</option>
												</select> <select>
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
												</select> <select>
													<option selected>00분</option>
													<option>10분</option>
													<option>20분</option>
													<option>30분</option>
													<option>40분</option>
													<option>50분</option>
												</select><span
													style="font-weight: bold; margin-left: 10px; font-size: 20px;">~</span>
											</div>
											<div class="select-time fl_R">
												<select>
													<option>오전</option>
													<option selected>오후</option>
												</select> <select>
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
												</select> <select>
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
										<img class="service-img" src="${path}/resources/img/icon/allday.png"> <input
											name="allday_open" id="allday" type="checkbox" value="y"> <label class="chk-btn"
											for="allday"></label>
									</div>
								</div>
								<div class="hashtag">
									<h4>해시 태그</h4>
									<input type="text">
								</div>
							</div>
						</div>
						<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
						<script>
							function execDaumPostcode() {
								new daum.Postcode(
										{
											oncomplete : function(data) {
												// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

												// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
												// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
												var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
												var extraRoadAddr = ''; // 도로명 조합형 주소 변수

												// 법정동명이 있을 경우 추가한다. (법정리는 제외)
												// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
												if (data.bname !== ''
														&& /[동|로|가]$/g
																.test(data.bname)) {
													extraRoadAddr += data.bname;
												}
												// 건물명이 있고, 공동주택일 경우 추가한다.
												if (data.buildingName !== ''
														&& data.apartment === 'Y') {
													extraRoadAddr += (extraRoadAddr !== '' ? ', '
															+ data.buildingName
															: data.buildingName);
												}
												// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
												if (extraRoadAddr !== '') {
													extraRoadAddr = ' ('
															+ extraRoadAddr
															+ ')';
												}
												// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
												if (fullRoadAddr !== '') {
													fullRoadAddr += extraRoadAddr;
												}

												// 우편번호와 주소 정보를 해당 필드에 넣는다.
												document
														.getElementById('address').value = data.jibunAddress;
												document
														.getElementById('address').value = fullRoadAddr;

												// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
												if (data.autoRoadAddress) {
													//예상되는 도로명 주소에 조합형 주소를 추가한다.
													var expRoadAddr = data.autoRoadAddress
															+ extraRoadAddr;
													document
															.getElementById('guide').innerHTML = '(예상 도로명 주소 : '
															+ expRoadAddr + ')';

												} else if (data.autoJibunAddress) {
													var expJibunAddr = data.autoJibunAddress;
													document
															.getElementById('guide').innerHTML = '(예상 지번 주소 : '
															+ expJibunAddr
															+ ')';

												} else {
													document
															.getElementById('guide').innerHTML = '';
												}
											}
										}).open();
							}
						</script>
						<div class="txt-info">
							<h4>샵에 대한 설명</h4>
							<textarea name="sh_content" onkeyup="updateChar(100);"
								placeholder="샵에 대해 자유롭게 적어주세요.&#13;&#10;e.g. 년도, 방송 출현 여부, 외국어 메뉴 여부, 인테리어 등등"></textarea>
							<div style="text-align: right; font-weight: bold;">
								<span id="textlimit">0</span>/100자
							</div>
						</div>
						<div class="btn-box">
							<button class="prev-btn" type="button"
								onclick="window.history.go(-1)">이전으로</button>
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
							register.comment.value = register.comment.value
									.replace(/\r\n$/, "");
							register.comment.value = assert_msglen(
									register.comment.value, length_limit);
						}
					}

					function calculate_msglen(message) {
						var letter = 0;
						for (i = 0; i < message.length; i++) {
							letter += 1;
						}
						return letter;
					}

					function assert_msglen(message, maximum) {
						var letter = 0;
						var msg = "";
						var msglen = message.length;
						for (i = 0; i < msglen; i++) {
							var ch = message.charAt(i);
							letter += 1;
							if (letter > maximum) {
								break;
							}
							msg += ch;
						}
						textlimit.innerText = letter - 1;
						return msg;
					}
				</script>
			</div>
		</div>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script>
		$('aside').css({
			height : $(window).height()
		});
	</script>
</body>
</html>



<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My Shop 등록 : 로드 샵</title>
<link rel="stylesheet" href="${path}/resources/css/all.css">
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
  	  	  			<input id="id" name="sh_name" type="text" title="사업자등록증과 동일하게 입력" required="required"><p>
  	  	  			<label>가계 전화번호</label>
  	  	  			<input id="pw" name="sh_tel" type="text" autocomplete="off" title="-없이 입력하세요"><p>
  	  	  			<label>주소</label>
  	  	  			<input type="text" id="sample6_postcode" placeholder="우편번호"><p>
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
					
					<div id="map" style="width:350px;height:120px;"></div>
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
</html> --%>