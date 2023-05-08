<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- 로그인 처리 --%>
<%
	//dId, dPwd
	String did = "test";
	String dpwd = "1234";
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String result="";
	
	if(did.equals(id)&&dpwd.equals(pwd))
		//result="성공"; 06_loginSuccess.jsp 이동
		response.sendRedirect("06_loginSuccess.jsp");
	else
		//result="실패"; 06_loginFail.jsp 이동
		response.sendRedirect("06_loginFail.jsp");
		
%>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>로그인 결과<%=result %></h1>
	<ul>
		<li>
			<label>아이디 : </label>
			<label><%=id %></label>
		</li>
		<li>
			<label>비밀번호 : </label>
			<label><%=pwd %></label>
		</li>	
	</ul>
</body>
</html>