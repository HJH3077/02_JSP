<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	request.setCharacterEncoding("utf-8");
    	String fruits = request.getParameter("fruits");
    	
    	// 장바구니의 크기를 정할 수 없으므로 컬렉션에 저장해야 한다.
    	ArrayList<String> list =
    		(ArrayList<String>)session.getAttribute("list");
    	
    	// 맨 처음에는 해당 페이지로 넘어오면 당연히 session에는 list가 없다.
    	if(list == null){
    		list = new ArrayList<String>();  // 이걸로 컬렉션 list 생성
    		session.setAttribute("list", list); // list를 줄 수 있게 session 생성
    		// 두번째 넘어올 때 부터는 이 list가 만들어져 있으므로 또 list를 생성할 필요가 없음
    	}
    	
    	// 리스트에 정보 추가
    	list.add(fruits); // 과일을 list에 담기
    %>

   <script>
   	 // 첫번째 방법
  	 <%-- response.sendRedirect("ex17_session.jsp"); --%> // 자바 코드 부분이라 % 있어야됨
  	 
  	 // 두번째 방법
  	 alert("<%=fruits %>가 추가 되었습니다.");
  	 history.go(-1); // 이전 페이지로 넘어가라는 의미
   </script>
    
   <%-- 여기도 실제로는 자바로 하는 부분입니다. --%>