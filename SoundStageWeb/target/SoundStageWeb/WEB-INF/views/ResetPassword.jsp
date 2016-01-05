<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : Register
    Created on : Nov 27, 2014, 9:01:56 AM
    Author     : atun.ullas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration</title>
<link
	href="<c:url value="/resources/bootstrap/css/bootstrap.min.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/bootstrap/js/jquery.min.js" />"></script>
<script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"></script>
</head>
<style>
table {
	border-collapse: separate;
	border-spacing: 10px;
}

li {
	color: black;
	font-weight: bold
}

.warning {
	color: black
}
</style>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<form action="ResetPassword.do" id="resetPassword" class="form-group">
		<div s	style="margin-top: 15%; margin-left: 35%">
			<b>
				Reset Password
			</b>
			<table>
				<tr>
					<td>
						E-mail ID
					</td>
					<td>
						<input type="email" placeholder="Email"	class="form-control" />
					</td>
				</tr>
				<tr>
					<td>
						Phone number
					</td>
					<td>
						<input type="text" placeholder="Registered Phone No" class="form-control number" />
					</td>
				</tr>
				<tr>
					<td>
						<button type="submit" class="btn btn-default">
							Reset
						</button>
					</td>
					<td>
						<button type="button" id="cancel " name="cancel" class="btn btn-danger" onclick="location.href = 'home.jsp'">
							Cancel
						</button>
					</td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>