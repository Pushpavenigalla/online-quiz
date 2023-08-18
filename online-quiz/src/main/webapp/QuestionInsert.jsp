<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="oes.model.*" %>
    <%@ page import="oes.db.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String question = request.getParameter("Question");
String a = request.getParameter("option1");
String b = request.getParameter("option2");
String c = request.getParameter("option3");
String d = request.getParameter("option4");
String answer = request.getParameter("answer");

Questions q = new Questions();
q.setA(a);
q.setB(b);
q.setC(c);
q.setD(d);
q.setAnswer(answer);
q.setQuestion(question);

boolean status = QuestionsDao.insertQuestion(q);

if(status)
{
	String msg1 = "Question Added";
	response.sendRedirect("AddQuestion.jsp?msg1="+msg1);
}
else
{
	String msg2 = "Question not Added";
	response.sendRedirect("AddQuestion.jsp?msg2="+msg2);
}






%>
</body>
</html>