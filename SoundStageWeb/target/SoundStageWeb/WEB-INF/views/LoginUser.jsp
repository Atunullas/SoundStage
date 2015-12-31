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
<title>Sound & Stage Entertainment - User Login</title>
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

li {
	color: black;
	font-weight: bold
}

.warning {
	color: red
}
.center{
 position: absolute;
        top: 40%;
        left: 50%;
        margin-right: -50%;
        transform: translate(-50%, -50%); 
}
</style>
<body >


	<nav class="navbar navbar-fixed-top navbar-inverse" role="navigation">
	<div class="navbar-header">
		<a class="navbar-brand" href="home.jsp">Sound &amp; Stage
			Entertainment</a> 
	</div>
	<div class="navbar-collapse collapse">

		<ul class="nav navbar-nav navbar-right" style="margin-right: 5px;">
			<li><a href="AboutUs.view">AboutUs</a></li>
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-expanded="false">Help
					<i class="icon-question-sign icon-white"> </i><span class="caret"></span>
			</a>
				<ul  id="navbar" class="dropdown-menu" role="menu">
					<li><a href="Register.do">Register</a></li>
					<li class="divider"></li>
					<li class="dropdown-header">Skip Login</li>
					<li><a href="GuestUser.view">Login as Guest</a></li>
				</ul></li>
		</ul>
	</div>
	</nav>

	<form action="Validate.run" id="login" class="center">
		<div class="well"
			style=" width: 375px;">
			<legend style="margin-left: 2px"> Login </legend>
			<fieldset>
				<table>
					<tr>
						<td colspan="2" id="validate" style="color:red"></td>
					</tr>
					<tr>
						<td id="user"><label><b>User Name<span class="warning">*</span></b></label></td>
						<td><input type="Text" class="col-md-12" name="username"
							placeholder="Type your username.." id="username"
							onkeypress="emptyinput()"></td>

					</tr>
					<tr>
						<td><label><b>Password<span class="warning">*</span></b></label></td>
						<td><input type="password" class="col-md-12" name="password"
							placeholder="Type your Password.." id="password"
							onkeypress="emptyinput()" onclick="Register.jsp"></td>
						<td id="pass" class="warning"></td>
					</tr>
					<tr>
						
						<td style="float: right;"><button type="submit" class="btn btn-primary">Login</button></td>
							<td><button type="button" class="btn btn-warning">
								Forgot Password <i class="icon-question-sign icon-white"></i>
							</button></td>
					</tr>
				</table>
			</fieldset>
		</div>
	</form>
</body>
</html>