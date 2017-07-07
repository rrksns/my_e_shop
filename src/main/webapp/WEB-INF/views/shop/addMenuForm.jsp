<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	function clo() {
		frm.submit();	
	}
	
	function close() {
		 window.close();	
	}
</script>
</head>
<body>
<form action="addMenu.go" method="post" name="frm">
<h2>그룹추가</h2>
<table>
<tr>
	<th>그룹명</th><td><input type="text" name="it_groupName"></td>
	<th colspan="2"><input type="button" value="확인" onclick="clo()"></th>
</tr><tr><th colspan="2"><input type="button" value="닫기" onclick="close()"></th>
</table>
</form>

</body>
</html>