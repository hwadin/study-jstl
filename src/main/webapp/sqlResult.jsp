<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<f:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${param.id}-${param.pass}-${param.name} <br/>
	${param.addr}-${param.gender}-${param.age} <br/>
	${param.phone} <br/><hr/>
	
<c:catch var="e"> <!--발생한 예외에 대해서 -->

<s:setDataSource var="conn"
driver="com.mysql.cj.jdbc.Driver" 
url="jdbc:mysql://localhost:3306/bigdata" 
user="bigdata" 
password="12345" 
/>
<h3>${conn}</h3>
<!-- 정보 삽입 -->
<s:update var="result" dataSource="${conn}">
	INSERT INTO test_member VALUES(null,?,?,?,?,?,?,?)
		<s:param>${param.id}</s:param>
		<s:param>${param.pass}</s:param>
		<s:param>${param.name}</s:param>
		<s:param>${param.addr}</s:param>
		<s:param>${param.phone}</s:param>
		<s:param>${param.gender}</s:param>
		<s:param>${param.age}</s:param>
</s:update>
<c:if test="${result > 0}">
	<h3></h3>
</c:if>
</c:catch>
<c:if test="${!empty e}">
	에러메세지 : <c:out value="${e.message}"/>
</c:if>
</body>
</html>