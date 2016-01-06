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
	$(document).ready(function() {
				$('#login').submit(
						function() {
							var user = $('#username').val();
							var pass = $('#password').val();
							if ((user == null || user == "")
									&& (pass == null || pass == "")) {
								$('#validate').html("Invalid Login").show().fadeOut(1500);
								return false;
							} else if (user == null || user == "") {
								$('# ').html("Bad Credentials").show().fadeOut(1500);
								return false;
							} else if (pass == null || pass == "") {
								$('#validate').html("Bad Credentials").show().fadeOut(1500);
								return false;
							} else {
								return true;
							}
						});
				$("#number").keypress(function (e) {
					if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
							return false;
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
table {
	margin-left: 10px;
	border-collapse: separate;
	border-spacing: 5px;
}

.warning {
	color: red
}

.smallfont {
	font-size: 12px;
}

body {
	background: url('/SoundStageWeb/resources/bg/homebg.jpg') no-repeat
		center center fixed;
	-moz-background-size: cover;
	-webkit-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
}
</style>
</head>
<body >
	<nav class="navbar navbar-fixed-top navbar-inverse" role="navigation">
		<div align="justify" style="width: 98%">
			<span style="width: 400px"> 
				<a class="navbar-brand navbar-left" href="/SoundStageWeb/home.jsp">
					 <span class=" glyphicon glyphicon-leaf"></span>
					 	&nbsp;&nbsp;Sound &amp; Stage Entertainment
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
	<div id="loginDiv" style="width: 240px; display: none; margin-top: 4%;!important" class="navbar-inverse navbar-right">
		<form id="login" action="Validate.run" class="form-group">
			<table>
				<tr>
					<td colspan="2" id="validate" class="form-control" style="display:none"></td>
				</tr>
				<tr>
					<td class="smallfont" style="color: white">Email &nbsp;
						<span class="warning">*</span>
					</td>
				</tr>
				<tr>
					<td>
						<input type="email" class="form-control" name="username" placeholder="Email" id="username">
					</td>
				</tr>
				<tr>
					<td class="smallfont" style="color: white">Password&nbsp;
						<span class="warning">*</span>
					</td>
				</tr>
				<tr>
					<td>
						<input type="password" class="form-control" name="password" placeholder="Password" id="password">
					</td>
				</tr>
				<tr>
					<td style="float: right;" class="smallfont"><a
						href="ResetPassword.do"> Forgot Password ?</a></td>
				</tr>
				<tr>
					<td class="smallfont" style="color: white">
						<input type="checkbox"> 
							&nbsp;Remember me on this device 
							<span class="glyphicon glyphicon-question-sign"></span>
					</td>
				</tr>
				<tr>
					<td>
						<button type="submit" class="btn btn-default btn-lg btn-block">
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