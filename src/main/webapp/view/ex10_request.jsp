<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request 속성을 이용한 데이터 저장</title>
</head>
<body>
<%--  
	  ** pageContext 속성을 이용해서 데이터 저장 및 호출
	  	 저장 방법 : pageContext.setAttribute("이름", 객체)
	  	 호출 방법 : pageContext.getAttribute("이름");
	  	 생명주기 : 해당 페이지를 벗어나면 저장 정보도 사라진다.
	  	 
	  ** request 속성을 이용해서 데이터 저장 및 호출
	  	 저장 방법 : request.setAttribute("이름", 객체)
	  	 호출 방법 : request.getAttribute("이름");
	  	 생명주기 : response를 하기 전까지 데이터를 가지고 있다.
 --%>
 	<% 
 		pageContext.setAttribute("name", "홍길동");
 		pageContext.setAttribute("age", 24);
 		
 		request.setAttribute("name", "둘리"); 		
 		request.setAttribute("age", 32); 		
 	%>
 	<%--
 		다른페이지로 이동하면 데이터가 날라가는데 page는 현재 페이지를 벗어나므로
 		무조건 사라지고, request는 포워드 방식이면 데이터가 남아있고 리다이렉트면 없어진다.	
 	 --%>
 	
 	<h2>이름 : <%=pageContext.getAttribute("name") %></h2>
 	<h2>나이 : <%=pageContext.getAttribute("age") %></h2>
 	<hr>
 	
 	<h2>이름 : <%=request.getAttribute("name") %></h2>
 	<h2>나이 : <%=request.getAttribute("age") %></h2>
 	<%-- 
 		ex11_result.jsp로 이동하자
 		이동 방법은 redirect와 forward 이다.
 		redirect는 request 정보도 사라진다. forward는 request 정보는 사라지지 않는다.
 	 --%>
 	<%-- 
 		response.sendRedirect("ex11_result.jsp"); 
 		=> 실행하면 ex11_result.jsp가 실행되고 redirect이므로 데이터가 사라져있다. 			 
 	--%>
 	<% request.getRequestDispatcher("ex11_result.jsp").forward(request, response); %>
</body>
</html>