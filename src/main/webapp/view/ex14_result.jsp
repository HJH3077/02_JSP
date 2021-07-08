<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>ex13_session에서 넘어온 정보 받기</h2>
	<h2>이름 : <%=pageContext.getAttribute("name") %></h2>
 	<h2>나이 : <%=pageContext.getAttribute("age") %></h2>
 	<hr> 
 	
 	<h2>이름 : <%=request.getAttribute("name") %></h2>
 	<h2>나이 : <%=request.getAttribute("age") %></h2>
 	<hr>
 	
	<h2>이름 : <%=session.getAttribute("name") %></h2>
 	<h2>나이 : <%=session.getAttribute("age") %></h2>
 	
 	<%-- 
 		이론상 클라이언트가 서블릿(서버)에 요청을 하면 서블릿이 자바에 일을 시키는데
 		자바가 일을 처리하고 자기 자신에 결과를 저장한다. 그리고 그 저장한 값을 리턴하는 곳을
 		지정하는데 ex01.jsp로 리턴한다고 하면 서블릿이 그걸보고 거기로 간다. 근데 ex01.jsp는
 		저장된 값이 없으므로 getAttribute로 java에 저장된 정보를 가져오는 것이다. 
 	 --%>>
</body>
</html>