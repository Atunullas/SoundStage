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
<link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">
<script src="<c:url value="/resources/bootstrap/js/jquery.min.js" />"></script>
<script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"></script>
</head>
<style>
table { border-collapse: separate; border-spacing: 10px; }
li { color :black ; font-weight:bold }
.warning { color :black }
.center{
 position: absolute;
        top: 40%;
        left: 50%;
        margin-right: -50%;
        transform: translate(-50%, -50%); 
}
</style> 
<body>
<nav class="navbar navbar-fixed-top navbar-inverse" role="navigation">
   <div class="navbar-header">
      <a class="navbar-brand" href="home.jsp">Sound &amp; Stage Entertainment</a>
   <button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
   </div>
      <ul id="navbar" class="nav navbar-nav navbar-right" style="margin-right:5px;">
      	<li><a href="AboutUs.view">AboutUs</a></li>
        <li class="active"><a  href="Login.do">Already a User? Login</a></li>
        <li> <a href="Register.do">Register</a></li>
      </ul> 
   </nav>
<div class="well center" style="width: 400px;"  >
<legend> Reset Password</legend>
		<form action="ResetPassword.do" id="resetPassword"  >
		<table>
		<tr>
		<td> E-mail ID</td>
		<td><input type="text" placeholder="Registered Email-Id" class="col-md-12"/>
		</td></tr>
		<tr>
		<td> Phone number</td> 
		<td><input type="number" placeholder="Registered Phone No" class="col-md-12"/>
		</td>
		</tr>
		<tr><td>
						<button type="submit" class="btn btn-success">Reset</button></td>
						<td><button type="button" id="cancel "name="cancel" class="btn btn-danger" onclick="location.href = 'home.jsp'" >Cancel</button></td>
		</tr></table>
	</form>
	</div>
</body></html>