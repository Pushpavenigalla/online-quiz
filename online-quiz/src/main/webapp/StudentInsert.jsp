<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="oes.db.*" %>
    <%@ page import="oes.model.*" %>
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
String name = request.getParameter("name");

Students st = new Students();
st.setName(name);
st.setPassword(password);
st.setUsername(username);

boolean status = StudentsDao.insertStudent(st);
if(status)
{
	String msg1 = "Student Added";
	response.sendRedirect("AddStudent.jsp?msg1="+msg1);
}
else
{
	String msg2 = "Student not Added";
	response.sendRedirect("AddStudent.jsp?msg2="+msg2);
}



%>
</body>
</html>