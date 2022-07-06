<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- elTestForm.jsp -->
	<!-- 
		4대 영역객체나 parameter 값을
		쉽게 jsp 페이지 내부에서 사용할 수 있도록
		지원 하는 언어
	 -->
	 <h1>EXPRESSION LANGUAGE</h1>
	 <%
	 pageContext.setAttribute("scopeName","pageContext");
	 request.setAttribute("scopeName","request");
 	session.setAttribute("scopeName","session");
 	application.setAttribute("scopeName","application");
	 %>
	 page영역 : 
	 <%=pageContext.getAttribute("scopeName")%>
	 <br/>
	 request영역 : 
	 <%=request.getAttribute("scopeName")%>
	 <br/>
	 session영역 : 
	 <%=session.getAttribute("scopeName")%>
	 <br/>
	 application 영역 : 
	 <%=pageContext.getAttribute("scopeName")%>
	 <br/>
 	 <hr/>
	 <%-- EL을 사용하기 위한 표현식 ${} --%>
	 page 영역 EL 속성 값 : ${pageScope.scopeName}<br/>
	 request 영역 : ${requestScope.scopeName}<br/>
 	 session 영역 : ${sessionScope.scopeName}<br/>
	 application 영역 : ${applicationScope.scopeName}
	 <br/>
	 <hr/>
	 EL scopeName : ${scopeName} <!-- 키값만 존재하면 제일 작은범위 출력  -->
	 <br/>
	 <%
	 	session.setAttribute("test","박주신");
	 %>
	 <!-- page->request->session->application -->
	 EL test : ${test} 
	 <br/>
 	 <br/>
	 <form action="elTest.jsp" method="POST">
	 	<input type="text" name="test" />
	 	<button>확인</button>
	 </form>
</body>
</html>