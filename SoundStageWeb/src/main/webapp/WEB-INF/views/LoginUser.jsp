<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : LoginUser
    Created on : Oct 6, 2014, 3:38:21 PM
    Author     : atun.ullas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Sound &amp; Stage Entertainment - User Login</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link
	href="<c:url value="/resources/bootstrap/css/bootstrap.min.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/bootstrap/js/jquery.min.js" />"></script>
<script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"></script>
<script type="text/javascript">
	$(document).ready(
			function() {
				$('#login').submit(
						function() {
							var user = $('#username').val();
							var pass = $('#password').val();
							if ((user === null || user === "")
									&& (pass === null || pass === "")) {
								$('#validate').text(
										"Please key in the mandatory fields");

								return false;
							} else if (user === null || user === "") {
								$('#validate').text("Bad Credentials");
								return false;
							} else if (pass === null || pass === "") {
								$('#validate').text("Bad Credentials");
								return false;
							} else {
								return true;
							}
						});
			});
</script>
</head>
<style>
table {
	border-collapse: separate;
	border-spacing: 10px;
}
 
.warning {
	color: red
}
 
</style>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<form action="Validate.run" id="login" class="form-group">
		<div style="width: 375px;margin-left: 40%;margin-top:20%;">
			<b> Login </b>
				<table>
					<tr>
						<td colspan="2" id="validate" style="color: red"></td>
					</tr>
					<tr>
						<td id="user">
							<label>
								<b>User Name
									<span class="warning">*</span>
								</b>
							</label>
						</td>
						<td>
							<input type="text" class="form-control" name="username" placeholder="Type your username.." id="username"onkeypress="emptyinput()">
						</td>
					</tr>
					<tr>
						<td>
							<label>
								<b>Password
									<span class="warning">*</span>
								</b>
							</label>
						</td>
						<td>
							<input type="password" class="form-control" name="password" placeholder="Type your Password.." id="password" onkeypress="emptyinput()" onclick="Register.jsp">
						</td>
						<td id="pass" class="warning"></td>
					</tr>
					<tr>
						<td style="float: right;">
							<button type="submit" class="btn btn-default">
								Login
							</button>
						</td>
						<td>
							<button type="button" class="btn btn-primary">
								Forgot Password 
								<i class="icon-question-sign icon-white"></i>
							</button>
						</td>
					</tr>
				</table>
			</div>
		</form>
	</body>
</html>