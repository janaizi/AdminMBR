<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	if (session.getAttribute("p_session").equals("1")) {
		response.sendRedirect(request.getContextPath() + "/dashboard");
	} else {
		try {
			if (request.getParameter("p_login").equals("jas") && !request.getParameter("p_password").equals("jas")) {
				session.setAttribute("p_message", "Не правильный пароль!");
				response.sendRedirect(request.getContextPath() + "/login");
			} else if (request.getParameter("p_login").equals("jas")
					&& request.getParameter("p_password").equals("jas")) {
				session.setAttribute("p_message", "Ок!");
				session.setAttribute("p_session", "1");
				session.setAttribute("p_user", "Janysh");
				response.sendRedirect(request.getContextPath() + "/dashboard");
			} else {
				session.setAttribute("p_message", "Неправильный логин или пароль!");
				response.sendRedirect(request.getContextPath() + "/login");
			}
		} catch (Exception e) {
			session.setAttribute("p_message", "");
			response.sendRedirect(request.getContextPath() + "/login");
		}
	}
%>