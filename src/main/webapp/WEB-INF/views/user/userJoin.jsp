<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../header.jsp" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${result > 0 }">
 	<script type="text/javascript">
 		alert("회원가입을 환영합니다")
 		location.href="u_join_fin.go";
 	</script>
</c:if>
<c:if test="${result <= 0 }">
 	<script type="text/javascript">
 		alert("실패했습니다");
 		history.go(-1);
 	</script>
</c:if>
</body>
</html>