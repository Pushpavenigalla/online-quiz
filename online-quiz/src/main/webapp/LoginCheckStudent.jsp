<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
         <%@page import="oes.db.*"%>
<%@page import="oes.model.*"%>
<%@page import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String username = request.getParameter("uname");
String password = request.getParameter("pass");



Students sd = new Students();
sd.setUsername(username);
sd.setPassword(password);

boolean status = StudentsDao.doValidate(sd);


if(status)
{
	
	//Logged in  as student do something (pending)
	 HttpSession studentsession = request.getSession();
	 studentsession.setAttribute("username", sd.getUsername());
	 studentsession.setAttribute("name",sd.getName() );
	 response.sendRedirect("StudentInstructions.jsp");
	
}
else
{
	String msg = "Invalid Username or Password";
	response.sendRedirect("StudentLogin.jsp?msg="+msg);

}




%>
</body>
</html>