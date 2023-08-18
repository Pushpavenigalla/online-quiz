<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String msg1 = "Logged out successfully";
response.sendRedirect("StudentLogin.jsp?msg1="+msg1);
%>
</body>
</html>