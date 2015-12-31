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
<script>
$(document).ready(
		function() {
			$('#register').submit(
					function() {
		var firstName = $('#firstName').val();
		var lastName = $('#lastName').val();
		var password = $('#password').val();
		var email = $('#email').val();
		var birthDate = $('#birthDate').val();
		var gender = $('#gender').val();
		var phoneNo = $('#phoneNo').val();
		var address = $('#address').val();
		var landmark = $('#landmark').val();
		var city = $('#city').val();
		var state = $('#state').val();
		var code = $('#code').val();
		
		if ((firstName == null || firstName == "") 
				&& (lastName == null || lastName == "") 
				&& (password == null || password == "")
				&& (email == null || email == "") 
				&& (birthDate == null || birthDate == "") 
				&& (gender == null || gender == "" || gender=="Gender") 
				&& (phoneNo == null || phoneNo == "") 
				&& (address == null || address == "")
				&& (landmark == null || landmark == "")
				&& (city == null || city == "")
				&& (state == null || state == "") 
				&& (code == null || code == "")){
					$('#validate').text("Please Key in all Mandatory Fields");
					return false;
				}
				return true;
		});
		
	
});
</script>
</head>
<style>
table { border-collapse: separate; border-spacing: 10px; }
li { color :black ; font-weight:bold }
.warning { color :red }
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
    <ul  id="navbar"class="nav navbar-nav navbar-right" style="margin-right:5px;">
    	<li><a href="AboutUs.view">AboutUs</a></li>
        <li class="active"><a  href="Login.do">Already a User? Login</a></li>
         </ul>
   
</nav>

	<div class="well center" style="width: 350px;margin-top:100px! important;"  >
		<form action="Login.do" id="register"  >
			<fieldset> 
				<legend style="width: 300px">Registration Form </legend>
				<table style="margin-left:0px;" >
				<tr>
					<td colspan="2" id="validate" class="warning">
					</td>
				</tr>
					<tr>
						<td>First Name<span class="warning">*</span></td>
						<td><input type="text" placeholder="First Name" id="firstName" name="firstName" /></td>
					</tr>
					<tr>
						<td>Last Name<span class="warning">*</span></td>
						<td><input type="text" placeholder="Last Name" id="lastName" name="lastName"/></td>
					</tr>
					<tr>
						<td>Password<span class="warning">*</span></td>
						<td><input type="password" placeholder="Password" id="password" name="password"/></td>
					</tr>
					<tr>
						<td>Email<span class="warning">*</span></td>
						<td><input type="text" placeholder="Email" id="email" name="email" /></td>
					</tr>
					<tr>
						<td>Date of Birth<span class="warning">*</span></td>
						<td><input type="text"  placeholder="BirthDate" id="birthDate" name="birthDate"/></td>
					</tr>
					<tr>
						<td>Gender<span class="warning">*</span></td>
						<td><select name="gender" id="gender">
								<option value="Gender">Gender</option>
								<option value="m">Male</option>
								<option value="f">Female</option>
						</select></td>
					</tr>
					<tr>
						<td>Contact Number<span class="warning">*</span></td>
						<td><input type="number" placeholder="Phone No"  id="phoneNo" name="phoneNo"/></td>
					</tr>
					<tr>
						<td>Address<span class="warning">*</span></td>
						<td><input type="text" placeholder="Full-Address" id="address"  name="address"/></td>
					</tr>
					<tr>
						<td>Landmark<span class="warning">*</span></td>
						<td><input type="text" placeholder="Landmark" id="landmark" name="landmark" />
						</td>
					</tr>
					<tr>
						<td>City<span class="warning">*</span></td>
						<td><input type="text" placeholder="City" id="city" name="city" /></td>
					</tr>
					<tr>
						<td>State<span class="warning">*</span></td>
						<td><input type="text" placeholder="State" id="state"  name="state"/></td>
					</tr>
					<tr>
						<td>Zip Code<span class="warning">*</span></td>
						<td><input type="number" placeholder="Zip code" id="code" name="code"/></td>
					</tr>
					<tr>
					<td></td>
					<td>
						<button type="submit" class="btn btn-success">Register</button>
						<button type="button" id="cancel "name="cancel" class="btn btn-danger" onclick="location.href = 'home.jsp'" >Cancel</button></td>
					</tr>
				</table>
			</fieldset>
		</form>
	</div>
</body>
</html>
