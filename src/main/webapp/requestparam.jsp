<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>requestparam.jsp</title>
</head>
<body>
	<%!
		String name, id, pw, major, protocol;
		String[] hobbys;
	%>
	<%
		request.setCharacterEncoding("euc-kr");
	
		name = request.getParameter("name");
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		major = request.getParameter("major");
		protocol = request.getParameter("protocol");
		
		hobbys = request.getParameterValues("hobby");
	%>
	
	이름 : <%= name %> <br/>
	아이디 : <%= id %> <br/>
	비밀번호 : <%= pw %> <br/>
	전공 : <%= major %> <br/>
	프로토콜 : <%= protocol %> <br/>
	
	취미 : <%= Arrays.toSting(hobbys) %>
	
	
</body>
</html>