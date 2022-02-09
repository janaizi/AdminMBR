<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	if (session.getAttribute("p_session").equals("1")) {
		response.sendRedirect(request.getContextPath() + "/dashboard");
	} else {
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Corona Admin</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/vendors/css/vendor.bundle.base.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/style.css">
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/assets/images/favicon.png" />
</head>
<body>
	<div class="container-scroller">
		<div class="container-fluid page-body-wrapper full-page-wrapper">
			<div class="row w-100 m-0">
				<div
					class="content-wrapper full-page-wrapper d-flex align-items-center auth login-bg">
					<div class="card col-lg-4 mx-auto">
						<div class="card-body px-5 py-5">
							<h3 class="card-title text-left mb-3">Login</h3>
							<form action="<%=request.getContextPath()%>/flogin" method="POST">

								<div class="form-group">
									<label>Username or email *</label> <input type="text"
										name="p_login" class="form-control p_input">
								</div>
								<div class="form-group">
									<label>Password *</label> <input type="password" name="p_password"
										class="form-control p_input">
								</div>
								<div>
									<button type="submit"
										class="btn btn-primary btn-block enter-btn">Login</button>
								</div>
								<div>
									<label><%=session.getAttribute("p_message")%></label>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="${pageContext.request.contextPath}/assets/vendors/js/vendor.bundle.base.js"></script>

	<script src="${pageContext.request.contextPath}/assets/js/off-canvas.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/hoverable-collapse.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/misc.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/settings.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/todolist.js"></script>
</body>
</html>

<%
	}
%>