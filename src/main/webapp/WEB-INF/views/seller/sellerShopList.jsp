<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<table>
<tr>
<c:forEach var="shop" items="${sellerShopList}">
<td>${shop.sh_name}<br>
	<a href="shopView.go?s_id=${seller.s_id}">
	<img src="shopPic/upload/${shop.sh_img1}" width="210" height="160">
		</a></td>
</c:forEach>
</tr>
</table>
</body>
</html>