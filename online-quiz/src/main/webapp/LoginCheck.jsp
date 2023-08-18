<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="oes.db.Admins"%>
<%@page import="oes.model.AdminsDao"%>
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
	

	
	Admins ad = new Admins(); // Creating object
	ad.setUsername(username);
	ad.setPassword(password);
	
   boolean status = AdminsDao.doValidate(ad);
   
   if(status)
   {
   	
   	//Logged in  as student do something (pending)
   	 HttpSession studentsession = request.getSession();
		 studentsession.setAttribute("username", ad.getUsername());
		 studentsession.setAttribute("name",ad.getPassword() );
		 response.sendRedirect("AdminPanel.jsp");
   	
   }
   else
   {
   	String msg2 = "Invalid Username or Password";
   	response.sendRedirect("AdminLogin.jsp?msg2="+msg2);
   }
	
	

%>
</body>
</html>