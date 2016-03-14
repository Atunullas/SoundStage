<div>
	<script>
		$(document).ready(function(){
			$('.warning').empty();
			$('#error').empty();
			$('#birthDate').datepicker();
		    $('#birthDate').datepicker('option','showAnim','slide');
			$('#userRegister').submit(function() {
				$('.warning').attr({
					'src' : '',
					'alt' : '',
				});
				$('#error').show();
				var firstName = $('#firstName').val();
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
				
				if ((firstName == null || firstName == '')
					|| (lastName == null || lastName == '')
					|| (password == null || password == '')
					|| (cpassword == null || cpassword == '' || cpassword != password )
					|| (email == null || email == '')
					|| (birthDate == null || birthDate == '')
					|| (gender == null || gender == '' || gender == 'Gender')
					|| (number == null || number == '')
					|| (address == null || address == '')
					|| (landmark == null || landmark == '')
					|| (city == null || city == '')
					|| (state == null || state == '')
					|| (code == null || code == '')) {
						$('.warning').append('&nbsp;');
						$('.warning').attr({
							'src' : 'resources/bg/warning-sign.png',
							'alt' : 'Mandatory Field',
							'height' : '20px',
							'weight' : '20px'
						})
						$('#error').text('Please Key in all Mandatory Fields');
						$('#error').hide(2000);
						return false;
				}
				return true;
			});
		});
	</script>
	<form method="post" id="userRegister" class="form-group" action="">
		<div style="margin-top: 10%; margin-left: 40%;">
			<table class="well">
				<colgroup>
					<col width="150">
					<col width="10">
					<col width="250">
				</colgroup>
				<tr>
					<th colspan="3">					
						Registration
					</th>
				</tr>
				<tr>
					<td colspan="3" id="error" class="error">&nbsp;</td>
				</tr>
				<tr>
					<td>First Name</td>
					<td>:</td>
					<td>
						<input type="text" placeholder="First Name" id="firstName" name="firstName" class="form-control" />
					</td>
					<td><img class="warning" alt="" src=""></td>
				</tr>
				<tr>
					<td>Last Name</td>
					<td>:</td>
					<td>
						<input type="text" placeholder="Last Name" id="lastName" name="lastName" class="form-control" />
					</td>
					<td><img class="warning" alt="" src=""></td>
				</tr>
				<tr>
					<td>Password</td>
					<td>:</td>
					<td>
						<input type="password" placeholder="Password" id="password" name="password" class="form-control">
					</td>
					<td><img class="warning" alt="" src=""></td>
				</tr>
				<tr>
					<td>Confirm Password</td>
					<td>:</td>
					<td>
						<input type="password" placeholder="Retype - Password" id="cpassword" name="cpassword" class="form-control">
					</td>
					<td><img class="warning" alt="" src=""></td>
				</tr>
				<tr>
					<td>Email</td>
					<td>:</td>
					<td>
						<input type="email" placeholder="Email" id="email" name="email" class="form-control" />
					</td>
					<td><img class="warning" alt="" src="" ></td>
				</tr>
				<tr>
					<td>Date of Birth</td>
					<td>:</td>
					<td>
						<input type="text" data-format="dd/MM/yyyy" placeholder="BirthDate" id="birthDate" name="birthDate" class="input-group date form-control" data-provide="datepicker">
					</td>
					<td><img class="warning" alt="" src=""></td>
				</tr>
				<tr> 
					<td>Gender</td>
					<td>:</td>
					<td>
						<select name="gender" id="gender" class="form-control">
							<option value="Gender">Gender</option>
							<option value="m">Male</option>
							<option value="f">Female</option>
						</select>
					</td>
					<td><img class="warning" alt="" src=""></td>
				</tr>
				<tr>
					<td>Contact Number</td>
					<td>:</td>
					<td>
						<input type="text" placeholder="Phone No" id="phoneNo" name="phoneNo" onkeypress="return isNumberKey(event)" class="form-control" />
					</td>
					<td><img class="warning" alt="" src=""></td>
				</tr>
				<tr>
					<td>Address</td>
					<td>:</td>
					<td>
						<input type="text" placeholder="Full-Address" id="address" name="address" class="form-control" />
					</td>
					<td><img class="warning" alt="" src=""></td>
				</tr>
				<tr>
					<td>Landmark</td>
					<td>:</td>
					<td>
						<input type="text" placeholder="Landmark" id="landmark" name="landmark" class="form-control" />
					</td>
					<td><img id="warning" alt="" src=""></td>
				</tr>
				<tr>
					<td>City</td>
					<td>:</td>
					<td>
						<input type="text" placeholder="City" id="city" name="city" class="form-control" />
					</td>
					<td><img class="warning" alt="" src=""></td>
				</tr>
				<tr>
					<td>State</td>
					<td>:</td>
					<td>
						<input type="text" placeholder="State" id="state" name="state" class="form-control" />
					</td>
					<td><img class="warning" alt="" src=""></td>
				</tr>
				<tr>
					<td>Zip Code</td>
					<td>:</td>
					<td>
						<input type="text" placeholder="Zip code" id="code" name="zipCode" class="form-control" onkeypress="return isNumberKey(event)"/>
					</td>
					<td><img class="warning" alt="" src=""></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td>
						<button type="submit" class="btn btn-default">Register</button>
						<button type="button" id="cancel " name="cancel" class="btn btn-danger" onclick="ajaxHeadLoad('/Home.view','#header')" style="float: right;">Cancel</button>
					</td>
				</tr>
			</table>
		</div>
	</form>
</div>