<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="okkill" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>jstlCoreTest2</h1>
	<h2>parameter name - ${param.name}</h2>
	<h1>제어문</h1>
	<okkill:set var="myCar" value="red" />
	<okkill:if test="${myCar eq 'red'}">
		내차는 빨간색 <br/>
	</okkill:if>
	
	<okkill:if test="${para.name eq '박주신'}">
		내이름은 박주신 ! <br/>
	</okkill:if>
	<okkill:set var="grade" value="50"/>
	
	<okkill:choose>
		<okkill:when test="${grade >=90}">
			A학점
		</okkill:when>
		<okkill:when test="${grade >= 80}">
			B학점
		</okkill:when>
		<okkill:when test="${grade >= 70}">
			C학점
		</okkill:when>
		<okkill:otherwise>
			F학점
		</okkill:otherwise>
	</okkill:choose>
	
	<%
		int[] nums = {10,9,8,7,6,5,4,3,2,1};
		request.setAttribute("nums",nums);
	%>
	
	<okkill:forEach var="n" items="${nums}">
		${n} &nbsp;&nbsp;
	</okkill:forEach>
	<!-- step="3" i+=3 -->
	<okkill:forEach var="i" begin="1" end="100" step="3"> <!--스텝은 증가만 가능. 음수 X  -->
		${i} &nbsp;
	</okkill:forEach>
	<br/>
	<okkill:set var="data" value="권능환,박주신,하옥형,이주명,박정대" />
	<okkill:forTokens var="name" items="${data}" delims=",">
		${name} &nbsp;
	</okkill:forTokens>

<%
	java.util.ArrayList<String> list
	= new java.util.ArrayList<>();
	list.add("리트리버");
	list.add("시베리안 허스키");
	list.add("주주");
	list.add("푸들");
	list.add("말라뮤트");
	list.add("샤모에드");
	request.setAttribute("dogList",list);
	
%>
<br/>
	<okkill:choose>
		<okkill:when test="${!empty dogList}">
			<okkill:forEach var="dog" items="${dogList}">
				${dog} &nbsp;
				<okkill:if test="${dog eq '주주'}">
					박주신 배신자...
				</okkill:if>
			</okkill:forEach>
		</okkill:when>
		<okkill:otherwise>
			목록이 존재하지 않습니다.
		</okkill:otherwise>
	</okkill:choose>
</body>
</html>