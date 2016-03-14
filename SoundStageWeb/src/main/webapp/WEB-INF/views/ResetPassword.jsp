<div>
	<script>
		$(document).ready(function(){
			$('#resetPwd').click(function(){
				$('#resetPwdError').empty();
				var resetEmail = $('#resetEmail').val();
				var resetPhoneNo = $('#resetPhoneNo').val();
				if(resetEmail == null || resetEmail ==''  
					|| resetPhoneNo == null || resetPhoneNo ==''){
					$('#resetPwdError').text('Key in all Mandatory Fields');
					return false;
				}
				return true;
			});
			
			$('#cancelResetPwd').click(function(){
				ajaxHeadLoad('Home.view','#header');
			});
		
		})
	</script>
	<form id="resetPwdForm" id="resetPassword" class="form-group" action="">
		<div style="margin-top: 15%; margin-left: 35%">
			<table class="well">
				<colgroup>
					<col width="150">
					<col width="10">
					<col width="250">
				</colgroup>
				<tr>
					<th colspan="3">
						Reset Password
					</th>
				</tr>
				<tr>
					<td colspan="3" id="resetPwdError" class="error" ></td>
				</tr>
				<tr>
					<td>
						<b>E-mail ID</b>
					</td>
					<td>:</td>
					<td>
						<input type="email" placeholder="Email" class="form-control" id="resetEmail" name="resetEmail"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>Phone number</b>
					</td>
					<td>:</td>
					<td>
						<input type="text" id="resetPhoneNo" name="resetPhoneNo" placeholder="Registered Phone No" class="form-control number" onkeypress="return isNumberKey(event)" />
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>
						<button type="submit" class="btn btn-default" id="resetPwd">
							Reset
						</button> 
						<button type="button" id="cancelResetPwd" name="cancelResetPwd" class="btn btn-danger" style="float: right;">
							Cancel
						</button>
					</td>
				</tr>
			</table> 
		</div>
	</form>
</div>