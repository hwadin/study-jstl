<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- prefix: 태그 식별 이름  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 특정 영역 객체에 속성값을 추가  -->
	<!-- scope  -->
	<c:set var = "varPage" value="pageContext 저장" scope="page" />
	EL : ${pageScope.varPage} <br/>
	<%
		String pageValue ="스크립트로 저장";
		pageContext.setAttribute("pageName",pageValue);
	%>
	EL : ${pageName} <br/>
	<!-- 속성 값 삭제 --> 
	<!-- removeAttribute -->
	<c:remove var="pageName" scope="page"/>
	EL remove : ${pageName} <br/>
	<hr/>
	out : <c:out value="${varPage}"/>
	<c:set var="test1" value="<script>alert('박주신 메롱');</script>"/>
	test1 : <c:out value="${test1}" escapeXml="true" /> <!-- excapeXml="false" 이스케이프 특수문자로 보지 않음 -->
	<br/>
	test2 : <c:out value="${test2}" default="test2는 존재하지 않습니다."/>
	<br/>
	test3 : <c:out value="${test3}">test3는 존재하지 않습니다.</c:out>
	<hr/>
	<jsp:useBean id="member" class="vo.MemberVO" scope="page"/>	
	${member} <br/>
	<c:set target="${member}" property="id" value="id001" />
	${member} <br/>
	<hr/>
	<!-- 지정된 경로에 contextPath를 자동으로 부여 -->
	<a href="/index.jsp">index</a><br/>
		<c:url var="pageLink" value="/index.jsp" />
	${pageLink} : <a href='${pageLink}'>url index</a> <!-- url:페이지컨테스트영역에 자동으로 저장 -->
	<br/>
	<c:url value="/test/test.jsp"/>
	<br/> <hr/>
	<!-- response.sendRedirect("jstlCoreTest2.jsp"); -->
	<%-- <c:redirect url="jstlCoreTest2.jsp"/> --%>
	<!-- include와 동일 -->
	<c:import url ="jstlCoreTest2.jsp">
		<c:param name="name" value="최기근"/>
	</c:import>
	<div>
		<%-- <jsp:include page="https://www.naver.com" /> --%><!--외부에 있는파일 포함  -->
		<c:import url="https://www.naver.com"/>
	</div>
</body>
</html>