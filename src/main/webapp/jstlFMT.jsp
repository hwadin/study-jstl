<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstlFMT.jsp</title>
</head>
<body>
	<form action="jstlFmtTest.jsp" method="POST">
	 	<input type="text" name="addr" />
	 	<select name="encode">
	 		<option value="ko_KR">한국어</option>
			<option value="en_US">English</option>
	 	</select>
	 	<br/>
	 	<input type="date" pattern="yyyy-MM-dd"  name="selectDate"/>
	 	<button>확인</button>
	</form>
</body>
</html>