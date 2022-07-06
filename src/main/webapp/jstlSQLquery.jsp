<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstlSQLquery.jsp</title>
</head>
<body>
<c:catch var="e">
	<s:query var="rs" dataSource="jdbc/MySQLDBCP" 
		sql="SELECT * FROM test_member ORDER BY num DESC" />
	<table border="1">
		<tr>
			<c:forEach var="name" items="${rs.columnNames}">
				<th>${name}</th>
			</c:forEach>
		</tr>
		<c:forEach var="rowIndex" items="${rs.rowsByIndex}">
			<tr>
				<c:forEach var="value" items="${rowIndex}">
					<td>${value}</td>
				</c:forEach>
			</tr>
		</c:forEach>
	</table>
	<br/>
	<hr/>
	<h1>전체 리스트</h1>
	<s:query var="r" dataSource="jdbc/MySQLDBCP">
		SELECT * FROM test_member ORDER BY num DESC
	</s:query>
	<!-- r.rowCount == 검색된 행의 개수 -->
	<c:choose>
		<c:when test="${r.rowCount >0}">
			<h2>검색된 회원정보가 존재함.</h2>	
			<c:forEach var="data" items="${r.rows }">
				${data.num}
				${data.id}
				${data.pass}
				${data.name}
				${data.addr}
				${data.phone}
				${data.gender}
				${data.age} <br/>
			</c:forEach>
		</c:when>
		<c:otherwise>
			<h2>검색된 정보가 없습니다.</h2>
		</c:otherwise>
	</c:choose>
</c:catch>
<c:if test="${!empty e}">
	<h3>검색 실패 - ${e.getMessage()}</h3>
</c:if>

</body>
</html>
