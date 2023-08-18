<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="oes.db.*"%>
<%@page import="oes.model.*"%>


<%
String instruction = request.getParameter("inst");

Instructions ist = new Instructions();
ist.setInstruction(instruction);

boolean status = InstructionsDao.insertInstruction(ist);
if(status)
{
	String msg1 = "Instruction Added";
	response.sendRedirect("AddInstruction.jsp?msg1="+msg1);
}
else
{
	String msg2 = "Instruction not Added";
	response.sendRedirect("AddInstruction.jsp?msg2="+msg2);
}




%>