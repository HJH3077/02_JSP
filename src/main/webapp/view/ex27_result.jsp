<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	// 파라미터 있으면 꼭 이걸 넣어줄 것!
    	request.setCharacterEncoding("utf-8");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>EL을 이용한 파라미터 값 받기(따로 받지 않아도 받을 수 있음)</h2>
	<h3>
		<li>이름 : ${param.name}</li>
		<li>나이 : ${param.age }</li>
		<li>성별 : ${param.gender }</li>
		<!-- 잘 사용하지 않는다. (나중에는 JSTL을 사용한다.) -->
		<li>취미 : ${paramValues.hobby[0]}&nbsp;
				   ${paramValues.hobby[1]}&nbsp;
				   ${paramValues.hobby[2]}&nbsp;
				   ${paramValues.hobby[3]}&nbsp;
		</li>
	</h3>
</body>
</html>