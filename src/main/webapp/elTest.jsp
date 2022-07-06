<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	parameter : <%=request.getParameter("test") %>
	<br/>
	EL param : ${param.test} <br/>
	<br/> 
	<input type="text" value="${param.test}"/>
</body>
</html>