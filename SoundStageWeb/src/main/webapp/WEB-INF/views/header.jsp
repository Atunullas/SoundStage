<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Sound &amp; Stage Entertainment</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="<c:url value="/resources/bootstrap/css/bootstrap.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/bg/scilab-logo.png" />"
	rel="SHORTCUT ICON">
<script src="<c:url value="/resources/bootstrap/js/jquery.min.js" />"></script>
<script src="<c:url value="/resources/bootstrap/js/bootstrap.js" />"></script>
<script type="text/javascript">
	$(document).ready(
			function() {
				$('#validate').hide();
				$('#login').submit(
						function() {
							var user = $('#username').val();
							var pass = $('#password').val();
							if ((user === null || user === "")
									&& (pass === null || pass === "")) {
								$('#validate').show();
								$('#validate').text("Invalid Login");
								return false;
							} else if (user === null || user === "") {
								$('#validate').show();
								$('#validate').text("Bad Credentials");
								return false;
							} else if (pass === null || pass === "") {
								$('#validate').show();
								$('#validate').text("Bad Credentials");
								return false;
							} else {
								return true;
							}
						});
			});
	function showLogin() {
		if(document.getElementById("loginDiv").style.display=="block"){
			document.getElementById("loginDiv").style.display = "none";
			document.getElementById("validate").style.display ="none";
		}else{
			document.getElementById("loginDiv").style.display = "block";	
		}
	}
</script>
<style type="text/css">
h2 {
	margin: 0;
	color: white;
	padding-top: 80px;
	font-size: 30px;
	font-family: "trebuchet ms", sans-serif;
}

.item {
	background: #333;
	text-align: center;
	height: 400px !important;
}

.carousel {
	margin-top: 10px;
}

.bs-example {
	margin: 20px;
}

table {
	margin-left: 10px;
	border-collapse: separate;
	border-spacing: 5px;
}

li {
	color: black;
	font-weight: bold
}

.warning {
	color: red
}

.smallfont {
	font-size: 12px;
}

.textcentre {
	text-align: center;
}

body {
	background-image: url(resorces/homebg.jpg);
	/*You will specify your image path here.*/
	-moz-background-size: cover;
	-webkit-background-size: cover;
	background-size: cover;
	background-position: top center !important;
	background-repeat: no-repeat !important;
	background-attachment: fixed;
}
</style>
</head>
<body >

		<nav class="navbar navbar-fixed-top navbar-inverse" role="navigation">
		<div align="justify" style="width: 99%">
			<span style="width: 400px"> 
			<a class="navbar-brand navbar-left" href="/SoundStageWeb/home.jsp">
					 <span class=" glyphicon glyphicon-leaf"></span>&nbsp;&nbsp;Sound
					&amp; Stage Entertainment
			</a>
			</span>
			<a> 
			<span onclick="showLogin()" class="navbar-brand navbar-right" role="navigation">
					&nbsp;&nbsp;Login &nbsp;
					<span class=" glyphicon glyphicon-chevron-right"></span>
			</span>
			</a>	
		</div>
	</nav> 
	<div id="loginDiv"
		style="width: 270px; display: none; margin-top: 50px;"
		class="navbar-inverse navbar-right">
		<form id="login" action="Validate.run">

			<table>
				<tr>
					<td colspan="2" id="validate" class="alert alert-danger"></td>
				</tr>
				<tr>
					<td class="smallfont" style="color: white">Email id&nbsp;<span
						class="warning">*</span></td>
				</tr>
				<tr>
					<td><input type="Text" class="col-md-12" name="username"
						id="username"></td>
				</tr>
				<tr>
					<td class="smallfont" style="color: white">Password&nbsp;<span
						class="warning">*</span></td>
				</tr>
				<tr>
					<td><input type="password" class="col-sm-12" name="password"
						id="password"></td>
				</tr>
				<tr>
					<td style="float: right;" class="smallfont"><a
						href="ResetPassword.do"> Forgot Password ?</a></td>
				</tr>
				<tr>
					<td class="smallfont" style="color: white"><input
						type="checkbox"> &nbsp;Remember me on this device <span
						class="glyphicon glyphicon-question-sign"> </span></td>
				</tr>
				<tr>
					<td><button type="submit"
							class="btn btn-danger btn-lg  btn-block">
							<b>Login</b>
						</button>
				</tr>

			</table>
			<div align="center">
				<a href="Register.do">Sign up Now</a>
			</div>

		</form>
	</div>




	<%-- <jsp:include page="/WEB-INF/views/FirstMovie.jsp"></jsp:include> --%>
</body>
</html>