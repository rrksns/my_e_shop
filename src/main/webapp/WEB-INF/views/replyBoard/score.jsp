<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="Content-Type" content="text/html" charset="utf-8">
<title>별점</title>
<style>
.star-input>.input,
.star-input>.input>label:hover,
.star-input>.input>input:focus+label,
.star-input>.input>input:checked+label{display: inline-block;vertical-align:middle;background:url('${path}/resources/img/grade_img.png')no-repeat;}
.star-input{display:inline-block; white-space:nowrap;width:225px;height:40px;padding:25px;line-height:30px;}
.star-input>.input{display:inline-block;width:150px;background-size:150px;height:28px;white-space:nowrap;overflow:hidden;position: relative;}
.star-input>.input>input{position:absolute;width:1px;height:1px;opacity:0;}
star-input>.input.focus{outline:1px dotted #ddd;}
.star-input>.input>label{width:30px;height:0;padding:28px 0 0 0;overflow: hidden;float:left;cursor: pointer;position: absolute;top: 0;left: 0;}
.star-input>.input>label:hover,
.star-input>.input>input:focus+label,
.star-input>.input>input:checked+label{background-size: 150px;background-position: 0 bottom;}
.star-input>.input>label:hover~label{background-image: none;}
.star-input>.input>label[for="p1"]{width:30px;z-index:5;}
.star-input>.input>label[for="p2"]{width:60px;z-index:4;}
.star-input>.input>label[for="p3"]{width:90px;z-index:3;}
.star-input>.input>label[for="p4"]{width:120px;z-index:2;}
.star-input>.input>label[for="p5"]{width:150px;z-index:1;}
.star-input>output{display:inline-block;width:60px; font-size:18px;text-align:right; vertical-align:middle;}
</style>
<style>
.star-input1>.input1,
.star-input1>.input1>label:hover,
.star-input1>.input1>input:focus+label,
.star-input1>.input1>input:checked+label{display: inline-block;vertical-align:middle;background:url('${path}/resources/img/grade_img.png')no-repeat;}
.star-input1{display:inline-block; white-space:nowrap;width:225px;height:40px;padding:25px;line-height:30px;}
.star-input1>.input1{display:inline-block;width:150px;background-size:150px;height:28px;white-space:nowrap;overflow:hidden;position: relative;}
.star-input1>.input1>input{position:absolute;width:1px;height:1px;opacity:0;}
star-input1>.input1.focus{outline:1px dotted #ddd;}
.star-input1>.input1>label{width:30px;height:0;padding:28px 0 0 0;overflow: hidden;float:left;cursor: pointer;position: absolute;top: 0;left: 0;}
.star-input1>.input1>label:hover,
.star-input1>.input1>input:focus+label,
.star-input1>.input1>input:checked+label{background-size: 150px;background-position: 0 bottom;}
.star-input1>.input1>label:hover~label{background-image: none;}
.star-input1>.input1>label[for="q1"]{width:30px;z-index:5;}
.star-input1>.input1>label[for="q2"]{width:60px;z-index:4;}
.star-input1>.input1>label[for="q3"]{width:90px;z-index:3;}
.star-input1>.input1>label[for="q4"]{width:120px;z-index:2;}
.star-input1>.input1>label[for="q5"]{width:150px;z-index:1;}
.star-input1>output{display:inline-block;width:60px; font-size:18px;text-align:right; vertical-align:middle;}
</style>
<style>
.star-input2>.input2,
.star-input2>.input2>label:hover,
.star-input2>.input2>input:focus+label,
.star-input2>.input2>input:checked+label{display: inline-block;vertical-align:middle;background:url('${path}/resources/img/grade_img.png')no-repeat;}
.star-input2{display:inline-block; white-space:nowrap;width:225px;height:40px;padding:25px;line-height:30px;}
.star-input2>.input2{display:inline-block;width:150px;background-size:150px;height:28px;white-space:nowrap;overflow:hidden;position: relative;}
.star-input2>.input2>input{position:absolute;width:1px;height:1px;opacity:0;}
star-input2>.input2.focus{outline:1px dotted #ddd;}
.star-input2>.input2>label{width:30px;height:0;padding:28px 0 0 0;overflow: hidden;float:left;cursor: pointer;position: absolute;top: 0;left: 0;}
.star-input2>.input2>label:hover,
.star-input2>.input2>input:focus+label,
.star-input2>.input2>input:checked+label{background-size: 150px;background-position: 0 bottom;}
.star-input2>.input2>label:hover~label{background-image: none;}
.star-input2>.input2>label[for="a1"]{width:30px;z-index:5;}
.star-input2>.input2>label[for="a2"]{width:60px;z-index:4;}
.star-input2>.input2>label[for="a3"]{width:90px;z-index:3;}
.star-input2>.input2>label[for="a4"]{width:120px;z-index:2;}
.star-input2>.input2>label[for="a5"]{width:150px;z-index:1;}
.star-input2>output{display:inline-block;width:60px; font-size:18px;text-align:right; vertical-align:middle;}
</style>

</head>

<body>
<fieldset>

<form action="starInput.go" method="post">
<input type="hidden" name="sh_id" value="${sh_id}">
<ul>

<li>맛
<span class="star-input">
	<span class="input">
    	<input type="radio" name="flavor" value="1" id="p1">
    	<label for="p1">1</label>
    	<input type="radio" name="flavor" value="2" id="p2">
    	<label for="p2">2</label>
    	<input type="radio" name="flavor" value="3" id="p3">
    	<label for="p3">3</label>
    	<input type="radio" name="flavor" value="4" id="p4">
    	<label for="p4">4</label>
    	<input type="radio" name="flavor" value="5" id="p5">
    	<label for="p5">5</label>
  	</span>
  	<output for="star-input"><b>0</b>점</output>						
</span>


<li>서비스
<span class="star-input1">
	<span class="input1">
    	<input type="radio" name="service" value="1" id="q1">
    	<label for="q1">1</label>
    	<input type="radio" name="service" value="2" id="q2">
    	<label for="q2">2</label>
    	<input type="radio" name="service" value="3" id="q3">
    	<label for="q3">3</label>
    	<input type="radio" name="service" value="4" id="q4">
    	<label for="q4">4</label>
    	<input type="radio" name="service" value="5" id="q5">
    	<label for="q5">5</label>
  	</span>
  	<output for="star-input1"><b>0</b>점</output>						
</span>



<li>가격
<span class="star-input2">
	<span class="input2">
    	<input type="radio" name="price" value="1" id="a1">
    	<label for="a1">1</label>
    	<input type="radio" name="price" value="2" id="a2">
    	<label for="a2">2</label>
    	<input type="radio" name="price" value="3" id="a3">
    	<label for="a3">3</label>
    	<input type="radio" name="price" value="4" id="a4">
    	<label for="a4">4</label>
    	<input type="radio" name="price" value="5" id="a5">
    	<label for="a5">5</label>
  	</span>
  	<output for="star-input2"><b>0</b>점</output>						
</span> 

<input type="submit" value="입력하기" >
<input type="button" value="닫기" onclick="window.close()">


</ul>
</form>
</fieldset>
<script src="${path}/resources/js/jquery-1.11.3.min.js"></script>
<script src="${path}/resources/js/star.js"></script>
</body>
</html>





