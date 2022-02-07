<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	session.setAttribute("p_user", "");
	session.setAttribute("p_session", "0");
	session.setAttribute("p_message", "");
	response.sendRedirect(request.getContextPath() + "/login");
%>