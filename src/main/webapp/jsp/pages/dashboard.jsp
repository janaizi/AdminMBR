<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	if (!session.getAttribute("p_session").equals("1")) {
		session.setAttribute("p_user", "");
		session.setAttribute("p_session", "0");
		session.setAttribute("p_message", "");
		response.sendRedirect(request.getContextPath() + "/login");
	} else {
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<div>
		<h1>
			Привет -
			<%=session.getAttribute("p_user")%>
			!
		</h1>
	</div>

	<div>
		<form action="<%=request.getContextPath()%>/flogout" method="POST">
			<div>
				<button type="submit">Login</button>
			</div>
		</form>
	</div>

</body>
</html>
<%
	}
%>