<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="${path}/resources/css/a.css">
<link rel="stylesheet" href="${path}/resources/css/myshop-common.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,700">
<style>
.file-upload {
	overflow:hidden;
	margin-top:20px;
}
.file-upload .wrapper {
	overflow:hidden;
	width:250px;
	height:180px;
	border:3px dashed #DEBB3D;
}
button.replace {
	position:absolute;
	width:250px;
	height:180px;
}
input#file {
	position:relative;
	width:250px;
	height:180px;
	opacity:0;
	cursor:pointer;
}
.preview {
	margin-top:20px;
}
.preview * {
	display:inline-block;
	width:120px;
	height:auto;
	margin-right:20px;
}
.btn-box {
	margin-top:50px;
}
</style>
</head>
<body>
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
  	  	  	  <img class="myshop-img" src="img/icon/shop.png" width="25" height="25" alt="마이 샵">
  	  	  	</a>
  	  	  </li>
  	  	  <li class="nav-list">
  	  	  	<a class="dropdown-btn" href=""><span>"${seller.s_name}"</span>님 <span class="dropdown-img"></span></a>
  	  	  	<ul class="dropdown">
  	  	  	  <li><a href="">마이페이지</a></li>
  	  	  	  <li><a href="">1</a></li>
  	  	  	  <li><a href="">2</a></li>
  	  	  	  <li><a href="">3</a></li>
  	  	  	  <li><a href="">4</a></li>
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
  	  	<p><span class="name-txt">"{seller.s_name}"</span>님의</p>
  	  	<p style="padding:5px 0; border-bottom:2px solid #DEBB3D;">e-Shop</p>
  	  </div>
  	  <div class="input-steb"><h2 class="hide">샵 정보 등록 단계</h2>
  	  	<ol>
  	  	  <li class="steb-list"><p class="steb-txt" style="border:none;">기본 정보</p></li>
  	  	  <li class="steb-list here"><p class="steb-txt">사진 등록</p></li>
  	  	  <li class="steb-list"><p class="steb-txt">메뉴 등록</p></li>
  	  	  <li class="steb-list"><p class="steb-txt">부가 정보</p></li>
  	  	</ol>
  	  </div>
  	</aside>
  	<div class="contents" role="main">
  	  <form action="restaurantPicture.go" method="post" enctype="multipart/form-data">
  	  	<fieldset><legend class="hide">사진 업로드</legend>
  	  	  <h3 class="title">사진 등록</h3>
  	  	  <div class="file-upload">
  	  	  	<div class="wrapper">
  	  	  	  <button class="replace" type="button">
  	  	  	  	<img src="img/icon/file-upload.png">
  	  	  	  	<p>사진 올리기</p>
  	  	  	  </button>
  	  	  	  <input id="file" type="file" maxlength="5" accept="image/*" multiple>
  	  	  	</div>
  	  	  	<div class="comment">
  	  	  	  <p>이미지는 최대 5장까지 추가할 수 있습니다.</p>
  	  	  	</div>
  	  	  	<div class="preview">
  	  	  	</div>
  	  	  </div>
  	  	  <div class="btn-box">
  	  	  	<button class="prev-btn" type="button" onclick="window.history.go(-1)">이전으로</button>
  	  	  	<button class="next-btn" type="submit">다음</button>
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

$('#file').on('change',imgParade);

function imgParade(input) {
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
			var img = "<img src=\""+e.target.result+"\"/>"
			$('.preview').append(img);
		}
		reader.readAsDataURL(f);
	});
}
</script>
</body>
</html>
 --%>


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
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,700">
<style>
.file-upload {
	overflow:hidden;
	margin-top:20px;
}
.file-upload .wrapper {
	overflow:hidden;
	width:250px;
	height:180px;
	border:3px dashed #DEBB3D;
}
button.replace {
	position:absolute;
	width:250px;
	height:180px;
}
input#file {
	position:relative;
	width:250px;
	height:180px;
	opacity:0;
	cursor:pointer;
}
.preview {
	margin-top:20px;
}
.preview * {
	display:inline-block;
	width:120px;
	height:auto;
	margin-right:20px;
}
.btn-box {
	margin-top:50px;
}
</style>

</head>
<body>
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
  	  	  <li class="steb-list"><p class="steb-txt" style="border:none;">기본 정보</p></li>
  	  	  <li class="steb-list here"><p class="steb-txt">사진 등록</p></li>
  	  	  <li class="steb-list"><p class="steb-txt">메뉴 등록</p></li>
  	  	  <li class="steb-list"><p class="steb-txt">부가 정보</p></li>
  	  	</ol>
  	  </div>
  	</aside>
  	<div class="contents" role="main">
			<form action="restaurantPicture.go" method="post"
				enctype="multipart/form-data">
				<input type="hidden" name="sh_id" value="${sh_id}">
				<input type="hidden" name="sh_name" value="${shop.sh_name}">
					  	<fieldset><legend class="hide">사진 업로드</legend>
  	  	  <h3 class="title">사진 등록</h3>
  	  	 
  	  	  	 <table>
					<tr>
						<th scope="row">메인사진</th>
						<td><input type="file" name="file1"></td>
					</tr>
					<tr>
						<th scope="row">사진추가</th>
						<td><input type="file" name="file2"></td>
					</tr>
					<tr>
						<th scope="row">사진추가</th>
						<td><input type="file" name="file3"></td>
					</tr>
					<tr>
						<th scope="row">사진추가</th>
						<td><input type="file" name="file4"></td>
					</tr>
					<tr>
						<th scope="row">사진 추가</th>
						<td><input type="file" name="file5"></td>
					</tr>
					<tr>
						<th scope="row">사진 추가</th>
						<td><input type="file" name="file6"></td>
					</tr>
				</table>
  	  	  	
  	  	  	<div class="comment">
  	  	  	  <p>이미지는 최대 6장까지 추가할 수 있습니다.</p>
  	  	  	</div>  
  	  	  <div class="btn-box">
  	  	  	<button class="prev-btn" type="button" onclick="window.history.go(-1)">이전으로</button>
  	  	  	<button class="next-btn" type="submit">다음</button>
  	  	  </div>
  	  	</fieldset>
  	  </form>
  	</div>
  </div>
</div>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script>
		$('aside').css({height:$(window).height()});
		</script>		

<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section>
		<div>
			<h2>사진등록</h2>
		</div>
		<form action="restaurantPicture.go" method="post"
			enctype="multipart/form-data">
			<input type="text" name="sh_id" value="${sh_id}">
			<table>
				<tr>
					<th scope="row">메인사진</th>
					<td><input type="file" name="file1"></td>
				</tr>
				<tr>
					<th scope="row">사진추가</th>
					<td><input type="file" name="file2"></td>
				</tr>
				<tr>
					<th scope="row">사진추가</th>
					<td><input type="file" name="file3"></td>
				</tr>
				<tr>
					<th scope="row">사진추가</th>
					<td><input type="file" name="file4"></td>
				</tr>
				<tr>
					<th scope="row">사진 추가</th>
					<td><input type="file" name="file5"></td>
				</tr>
				<tr>
					<th scope="row">사진 추가</th>
					<td><input type="file" name="file6"></td>
				</tr>
			</table>
			<div class="nextBtnWrap">
				<button class="prev_btn" type="button" onclick="history.go(-1)">이전으로</button>
				<button class="next_btn" type="submit">다음으로</button>
			</div>
		</form>
	</section>--%>
</body>
</html> 