<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:forEach var="shop" items="${shopList }">
	<span>${shop.sh_name}</span><br>
	<span>
		<img src="shopPic/upload/${shop.sh_img1}" width="210" height="160">
		<a href="shopView.go?sh_id=${shop.sh_id}"></a> 
	</span>
	
</c:forEach>
</body>
</html>