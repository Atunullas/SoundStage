<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ page isELIgnored="false"%>
<div>
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
								$('#validate').text("Please input the Username");
								return false;
							} else if (pass === null || pass === "") {
								$('#validate').text("Please input the password");
								return false;
							} else {
								return true;
							}
						});
			});
</script>
	<form action="Validate.run" id="login" class="form-group">
		<div style="margin-left: 35%; margin-top: 15%;">
			<table class="well" width="400px">
				<tr>
					<td><b>Login</b></td>
					<td colspan="2" id="validate"
						style="color: red; text-align: center; font-weight: bold;"></td>
				</tr>
				<tr>
					<td>
						<div class="divider"></div>
					</td>
				</tr>
				<tr>
					<td id="user"><label> <b>User Name </b>
					</label></td>
					<td><input type="email" class="form-control" name="username"
						placeholder="Email" id="username"></td>
				</tr>
				<tr>
					<td><label> <b>Password </b>
					</label></td>
					<td><input type="password" class="form-control"
						name="password" placeholder="Password" id="password"></td>
					<td id="pass"></td>
				</tr>
				<tr></tr>
				<tr></tr>
				<tr>
					<td></td>
					<td>
						<button type="submit" class="btn btn-default" style="float: left;">Login</button> 
						<a href="/SoundStage/ResetPassword.do">
						<button type="button" class="btn btn-primary"
								style="float: right;">
								Forgot Password <i class="glyphicon glyphicon-question-sign"></i>
							</button>
					</a>
					</td>
				</tr>
			</table>
		</div>
	</form>
</div>