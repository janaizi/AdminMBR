<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	if (session.getAttribute("p_session").equals("1")) {
		response.sendRedirect(request.getContextPath() + "/dashboard");
	} else {
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<form action="<%=request.getContextPath()%>/flogin" method="POST">
		<div>
			<label>Username *</label> <input type="text" name="p_login">
		</div>
		<div>
			<label>Password *</label> <input type="password" name="p_password">
		</div>
		<div>
			<button type="submit">Login</button>
		</div>
		<div>
			<label><%=session.getAttribute("p_message") %></label>
		</div>
	</form>
</body>
</html>

<%
	}
%>