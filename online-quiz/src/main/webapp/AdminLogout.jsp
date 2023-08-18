<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="oes.db.*"%>
<%@page import="oes.model.*"%>

<%
String msg1 = "Logged out successfully";
response.sendRedirect("AdminLogin.jsp?msg1="+msg1); %>