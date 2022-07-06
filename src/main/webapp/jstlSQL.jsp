<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="sqlResult.jsp" method="POST">
		id : <input type="text" name="id"/><br/>
		pass : <input type="password" name="pass"/><br/>
		name :<input type="text" name="name"/><br/>
		addr :<input type="text" name="addr"/><br/>
		phone :<input type="number" name="phone"/><br/>
		gender :
			<label>
				<input type="radio" name="gender" value="남성"/>
				남성
			</label>
			<label>
				<input type="radio" name="gender" value="여성"/>
				여성
			</label>
		나이 : <input type="number" name="age"/><br/>
		<button>확인</button>
	</form>
</body>
</html>