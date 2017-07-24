<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
    
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>검색결과</h2>
<h4>${total}건의 결과가 있습니다</h4>
<table>

<tr>
<c:if test="${empty sh_list1}">
				<td>데이터가 없습니다</td>
</c:if></tr>


<tr>
<c:if test="${not empty sh_list1}">

<c:forEach var="shop" items="${sh_list1}">
<td>샵이름 : ${shop.sh_name}<br>
	<a href="shopView1.go?sh_id=${shop.sh_id}">
	<img src="shopPic/upload/${shop.sh_img1}" width="210" height="160">
		</a>
	<%-- <a href="shopView.go?s_id=${seller.s_id}"> --%>
	
		<!-- </a> --></td>
	
</c:forEach>
</c:if>
</tr>
</table>


</body>
</html>