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
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<form action="ResetPassword.do" id="resetPassword" class="form-group">
		<div style="margin-top: 15%; margin-left: 35%">
			<table class="well" width="400px">
			<tr>
				<td>
					<b> Reset Password</b>
				</td>
			</tr>
			<tr></tr>
				<tr>
					<td>
						<b>E-mail ID</b>
					</td>
					<td>
						<input type="email" placeholder="Email"	class="form-control" />
					</td>
				</tr>
				<tr>
					<td>
						<b>Phone number</b>
					</td>
					<td>
						<input type="text" id="number" placeholder="Registered Phone No" class="form-control number" />
					</td>
				</tr>
				<tr>
					<td></td>
					<td>
						<button type="submit" class="btn btn-default">
							Reset
						</button>
						<button type="button" id="cancel " name="cancel" class="btn btn-danger" onclick="location.href ='home.jsp'" style="float: right;">
							Cancel
						</button>
					</td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>