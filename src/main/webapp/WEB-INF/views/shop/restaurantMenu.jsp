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
<link rel="stylesheet" href="${path}/resources/css/myshop-register-menu.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,700">
</head>
<body>
<div class="universe">
  <header class="page-header">
  	<div class="top-cover">
  	  <div class="home-logo">
  	  	<h1 class="logo"><a href="">AROUND U</a></h1>
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
  	  	  	  <li><a href="s_page.go">My Page</a></li>
  	  	  	  <li><a href="shopManagement.go"></a>My eShop</li>
  	  	  	  <li><a href="boardList.go">2</a>Q&A</li>
  	  	  	  <li class="log-out"><a href="s_logout.go">로그아웃</a></li>
  	  	  	</ul>
  	  	  </li>
  	  	</ul>
  	  </nav>
  	</div>
  	<div class="secondary-line">
  	  <div class="page-title">
  	  	<h3><img class="home-img" src="${path}/resources/img/icon/home.png" width="25" height="25" alt=""> My e-Shop</h3>
  	  </div>
  	</div>
  </header>
  <div class="page-body">
  	<aside class="support" role="complementary">
  	  <div class="shop-name">
  	  	<p><span class="name-txt">${seller.s_name}</span>님의</p>
  	  	<p style="padding:5px 0; border-bottom:2px solid #DEBB3D;">e-Shop</p>
  	  </div>
  	  <div class="input-steb"><h2 class="hide">샵 정보 등록 단계</h2>
  	  	<ol>
  	  	  <li class="steb-list"><p class="steb-txt">기본 정보</p></li>
  	  	  <li class="steb-list"><p class="steb-txt" style="border:none;">사진 등록</p></li>
  	  	  <li class="steb-list here"><p class="steb-txt">메뉴 등록</p></li>
  	  	  <li class="steb-list"><p class="steb-txt">부가 정보</p></li>
  	  	</ol>
  	  </div>
  	</aside>
  	<div class="contents" role="main">
  	  <form action="restaurantMenu.go" method="post" name="form" id="frm" 
				enctype="multipart/form-data">
				<input type="hidden" name="sh_id" value="${sh_id}">
  	  	<fieldset><legend class="hide">메뉴 등록</legend>
  	  	  <h3 class="title">메뉴 등록</h3>
  	  	  <div class="line-container">
  	  	  	<div class="vertical-line fl_L">
  	  	  	  <div class="menu-category">
  	  	  	  	<span class="cate-type">메뉴 카테고리</span>
  	  	  	  	<select name="it_groupId">
  	  	  	  	  <option value="식사">식사</option>
  	  	  	  	  <option value="음료">음료</option>
  	  	  	  	  <option value="디저트">디저트</option>
  	  	  	  	</select>
  	  	  	  </div>
  	  	  	  <div class="input-menu">
  	  	  	  	<div class="wrapper">
  	  	  	  	  <h4>메뉴 이름</h4>
  	  	  	  	  <input type="text" name="it_name" id="it_name"
							required="required" placeholder="메뉴 이름을 입력하세요">
  	  	  	  	</div>
  	  	  	  	<div class="wrapper">
  	  	  	  	  <h4>가격</h4>
  	  	  	  	  <input type="text" name="it_price" id="it_price"
								required="required" placeholder="숫자를 입력하세요">
  	  	  	  	</div>
  	  	  	  	<div class="wrapper">
  	  	  	  	  <h4>설명</h4>
  	  	  	  	  <input type="text" name="it_cont" id="it_cont"
								required="required">
  	  	  	  	</div>
  	  	  	  	<div class="wrapper">
  	  	  	  	  <input id="top" type="checkbox">
  	  	  	  	  <label  style="font-weight:bold;text-align:center;" class="topmenu" for="top">대표 메뉴 선정 </label>
  	  	  	  	</div>
  	  	  	  	<div class="wrapper">
  	  	  	  	  <h4>메뉴 사진</h4>
  	  	  	  	  <input type="file" id="it_pic1" name="menu1"><p>
							<!-- 메뉴사진 2 <input type="file" id="it_pic2" name="menu2"><p>
							메뉴사진 3 <input type="file" id="it_pic3" name="menu3"> <p> -->
							탑 메뉴 등록 <input type="checkbox" name="it_top3" id="it_top3" value="y" style="display:inline-block;"><p>
							<label for="it_top3">선택</label> 
  	  	  	  	  <div class="preview">
  	  	  	  	  </div>  	  	  	  	  	  
  	  	  	  	  			
  	  	  	  	</div>
  	  	  	  	<button class="add-btn" type="submit"><span class="add-img"></span></button>
  	  	  	  </div>
  	  	  	</div>
  	  	  	<div class="vertical-line fl_R">
  	  	  	  <div class="cate-list">
  	  	  	  	<ul>
  	  	  	  	  <li>메뉴 이름</li>
  	  	  	  	  <li>가격</li>
  	  	  	  	  <li>분류</li>
  	  	  	  	</ul>
  	  	  	  </div>
  	  	  	 
  	  	  <%-- 	  	<c:if test="${empty mlist}">
  	  	   	 <div class="menu-list">  	  	  	
  	  	  	  	<ul>
  	  	  	  	  <li><span>  데이터가 없습니다</span></li>
  	  	  	  	 </ul>
  	  	  	   </div>
  	  	  	  	</c:if>	 --%>
  	  	  	  	
  	  	  	  	
  	  	  	  	<div class="menu-list"> 
  	  	  	  	
  	  	  	  	<ul> 
  	  	  	  	<c:if test="${empty mlist}">
  	  	  	  	<c:forEach var="menu" items="${mlist}"> 	  	  	  	
  	  	  	  	  <li><span>${menu.it_name}</span><span>${menu.it_price}</span><span>${menu.it_groupId}</span></li>
  	  	  	  	</c:forEach>
  	  	  		</c:if>	  	  	  	  	
  	  	  	  	</ul>
  	  	  	  
  	  	  	  	</div>
  	  	  	  		  	   	  				      
				
			 
  	  	  	  	
  	  	  	  </div>
  	  	  	  <div class="">
  	  	  	  </div>
  	  	  	</div>
  	  	  </div>
  	  	  <div class="btn-box">
  	  	  	<button class="prev-btn" type="button" onclick="window.history.go(-1)">이전으로</button>
  	  	  	<button class="next-btn" onclick="location.href='restaurantMenuResult.go?sh_id=${sh_id}'" >다음</button>
  	  	  </div>
  	  	</fieldset>
  	  </form>
  	</div>
  </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
$('aside').css({height:$(window).height()});

var sel_files = new Array();
$('#file').on('change',preview);
function preview(input) {
	var files = input.target.files;
	var fileArr = Array.prototype.slice.call(files);
	fileArr.forEach(function(f) {
		if(!f.type.match("image.*")) {
			alert("이미지로 된 확장자만 첨부할 수 있습니다.")
			return;
		}
		sel_files.push(f);
		var reader = new FileReader();
		reader.onload = function(e) {
			var img = "<img src=\""+e.target.result+"\"/>";
			$('.preview').html(img);
		}
		reader.readAsDataURL(f);
	});
}
</script>
</body>
</html>