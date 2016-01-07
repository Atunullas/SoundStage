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
<script type="text/javascript">
	$(document).ready(
			function() {
				$('#login').submit(
						function() {
							var user = $('#username').val();
							var pass = $('#password').val();
							if ((user === null || user === "")
									&& (pass === null || pass === "")) {
								$('#validate').text("Please key in the mandatory fields");
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
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<form action="Validate.run" id="login" class="form-group">
		<div style="margin-left:35%;margin-top:15%;">
				<table class="well" width="400px">
					<tr>
						<td><b>Login</b></td>
						<td></td>
					</tr>
					<tr>
						<td colspan="2" id="validate" style="color: red"></td>
					</tr>
					<tr>
						<td id="user">
							<label>
								<b>User Name
								</b>
							</label>
						</td>
						<td>
							<input type="email" class="form-control" name="username" placeholder="Email" id="username"onkeypress="emptyinput()">
						</td>
					</tr>
					<tr>
						<td>
							<label>
								<b>Password
								</b>
							</label>
						</td>
						<td>
							<input type="password" class="form-control" name="password" placeholder="Password" id="password" onkeypress="emptyinput()" onclick="Register.jsp">
						</td>
						<td id="pass" class="warning"></td>
					</tr>
					<tr></tr>
					<tr></tr>
					<tr>
						<td>
						</td>
						<td>
							<button type="submit" class="btn btn-default">
								Login
							</button>
							<button type="button" class="btn btn-primary"  style="float: right;">
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