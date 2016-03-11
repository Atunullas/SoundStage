
<div>
<script>
	$(document).ready(function(){
		$('#register').submit(function() {
			var firstName = $('#firstName')
					.val();
			var lastName = $('#lastName').val();
			var password = $('#password').val();
			var cpassword = $('#cpassword').val();
			var email = $('#email').val();
			var birthDate = $('#birthDate').val();
			var gender = $('#gender').val();
			var number = $('#number').val();
			var address = $('#address').val();
			var landmark = $('#landmark').val();
			var city = $('#city').val();
			var state = $('#state').val();
			var code = $('#code').val();
			if ((firstName == null || firstName == "")
				&& (lastName == null || lastName == "")
				&& (password == null || password == "")
				&& (cpassword == null || cpassword == "" || cpassword != password )
				&& (email == null || email == "")
				&& (birthDate == null || birthDate == "")
				&& (gender == null
						|| gender == "" || gender == "Gender")
				&& (number == null || number == "")
				&& (address == null || address == "")
				&& (landmark == null || landmark == "")
				&& (city == null || city == "")
				&& (state == null || state == "")
				&& (code == null || code == "")) {
					$('#validate').text("Please Key in all Mandatory Fields");												return false;
			}
				return true;
		});
		$('#register').action='Login.do'
	});
</script>
	<form method="post" id="register" class="form-group">
		<div style="margin-top: 10%; margin-left: 40%;">
			<table class="well">
				<tr>
					<td><b>Registration</b></td>
				</tr>
				<tr></tr>
				<tr>
					<td colspan="2" id="validate" class="mandatory"></td>
				</tr>
				<tr>
					<td>First Name <span class="mandatory">*</span></td>
					<td><input type="text" placeholder="First Name" id="firstName"
						name="firstName" class="form-control" /></td>
				</tr>
				<tr>
					<td>Last Name <span class="mandatory">*</span></td>
					<td><input type="text" placeholder="Last Name" id="lastName"
						name="lastName" class="form-control" /></td>
				</tr>
				<tr>
					<td>Password <span class="mandatory">*</span></td>
					<td><input type="password" placeholder="Password"
						id="password" name="password" class="form-control"></td>
				</tr>
				<tr>
					<td>Confirm Password <span class="mandatory">*</span></td>
					<td><input type="password" placeholder="Retype - Password"
						id="cpassword" name="cpassword" class="form-control"></td>
				</tr>
				<tr>
					<td>Email <span class="mandatory">*</span>
					</td>
					<td><input type="email" placeholder="Email" id="email"
						name="email" class="form-control" /></td>
				</tr>
				<tr>
					<td>Date of Birth <span class="mandatory">*</span></td>
					<td><input type="text" placeholder="BirthDate" id="birthDate"
						name="birthDate" class="form-control" /></td>
				</tr>
				<tr>
					<td>Gender <span class="mandatory">*</span>
					</td>
					<td><select name="gender" id="gender" class="form-control">
							<option value="Gender">Gender</option>
							<option value="m">Male</option>
							<option value="f">Female</option>
					</select></td>
				</tr>
				<tr>
					<td>Contact Number <span class="mandatory">*</span>
					</td>
					<td><input type="text" placeholder="Phone No" id="number"
						name="phoneNo" class="form-control" /></td>
				</tr>
				<tr>
					<td>Address <span class="mandatory">*</span>
					</td>
					<td><input type="text" placeholder="Full-Address" id="address"
						name="address" class="form-control" /></td>
				</tr>
				<tr>
					<td>Landmark <span class="mandatory">*</span>
					</td>
					<td><input type="text" placeholder="Landmark" id="landmark"
						name="landmark" class="form-control" /></td>
				</tr>
				<tr>
					<td>City <span class="mandatory">*</span>
					</td>
					<td><input type="text" placeholder="City" id="city"
						name="city" class="form-control" /></td>
				</tr>
				<tr>
					<td>State <span class="mandatory">*</span>
					</td>
					<td><input type="text" placeholder="State" id="state"
						name="state" class="form-control" /></td>
				</tr>
				<tr>
					<td>Zip Code <span class="mandatory">*</span>
					</td>
					<td><input type="text" placeholder="Zip code" id="code"
						name="code" class="form-control" /></td>
				</tr>
				<tr>
					<td></td>
					<td>
						<button type="submit" class="btn btn-default">Register</button>
						<button type="button" id="cancel " name="cancel"
							class="btn btn-danger" onclick="location.href = 'home.jsp'"
							style="float: right;">Cancel</button>
					</td>
				</tr>
			</table>
		</div>
	</form>
</div>