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
<input type="text" name="sh_id" value= "${menu.it_id}">
<c:if test="${result >0 }">
	<script type="text/javascript">
		alert("입력성공");
		location.href="restaurantMenuResult.go?sh_id=${sh_id}";
	</script>
</c:if>
<c:if test="${result <=0 }">
	<script type="text/javascript">
		alert("실패");
		history.go(-1);
	</script>
</c:if>
</body>
</html>