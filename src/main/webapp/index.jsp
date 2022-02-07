<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	try {
		if (session.getAttribute("p_session").equals("1")) {
			response.sendRedirect(request.getContextPath() + "/dashboard");
		} else {
			session.setAttribute("p_user", "");
			session.setAttribute("p_session", "0");
			session.setAttribute("p_message", "");
			response.sendRedirect(request.getContextPath() + "/login");
		}
	} catch (Exception e) {
		session.setAttribute("p_user", "");
		session.setAttribute("p_session", "0");
		session.setAttribute("p_message", "");
		response.sendRedirect(request.getContextPath() + "/login");
	}
%>