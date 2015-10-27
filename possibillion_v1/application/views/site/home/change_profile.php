<br/>
<div class="container">
	<div class="row">
		<div class="col-md-12">
			</br>
			<?php if($this->session->flashdata('msg')!=NULL) { ?>
								<div class="alert col-md-12 alert-success display-none" style="display: block;">
									<a data-dismiss="alert" href="#" aria-hidden="true" class="close">�</a>
									<?php  echo $this -> session -> flashdata('msg'); ?>
								</div>
<?php
}
?>
			<form action="<?php echo base_url(); ?>welcome/profile" onsubmit="return pwdvalidation();"  class="form-horizontal" method="post"enctype="multipart/form-data" name="student_login">
				<!--<?php// echo base_url();?>BTech-Student-Preview
				<input type="hidden" name="done" value="done"/> -->
				<div class="row" id="printerdiv">
					<div class="form-group">
						<label class="col-sm-6 control-label"><h4 class="view-all-size title-border-line">Your Login Details</h4></label>
					</div>
					<div style="float:left; width:100%" class="print-table">
						<table width="100%" align="center" cellpadding="0" cellspacing="0" border="0">
							<tr>
								<td width="30%" align="right" class="student-title">Enter password</td>
								<td width="70%" align="left"  class="student-details">
								<input type="password" required  name="password" id="password"  minlength=6 maxlength=12 >
								<input type="hidden" name="userid" id="password" value="<?php echo $coordinator_details['id']; ?>">
								<span>password should 6-12 characters</span></td>
							</tr>
							<tr>
								<td width="30%" align="right" class="student-title">Enter password</td>
								<td width="70%" align="left"  class="student-details">
								<input type="password" required id="txtConfirmPassword" name="passconf" minlength=6 maxlength=12>
							</tr>
							<div id="divCheckPassword" style="color:red"></div>
							
						</table>
						

						<button class="submit_button_sub" type="submit">
							Submit
						</button>
			</form>
			<div class="clearfix"></div>
		</div>

		<!-- .col-md-9 -->
		<!-- .col-md-3 -->
	</div>
	<!-- .row -->
</div>
</div>
</div>

</div>
<style>
	.title-border-line {
		margin-bottom: 23px;
		border-bottom: 1px solid #CCC;
	}
	.form-horizontal .control-label {
		text-align: left;
	}
	table td, table th {
		border: none;
		text-align: left;
	}
	.student-title {
		text-align: left;
	}
	input {
		padding: 0px
	}
</style>

<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script>
	function pwdvalidation() {
		var password = $("#password").val();
		var confirmPassword = $("#txtConfirmPassword").val();

		if (password != confirmPassword) {
			$("#divCheckPassword").html("Passwords do not match!");
			return false;
			;
		} else {
			$("#divCheckPassword").html("Passwords match.");
			return true;
		}
	}


	$(document).ready(function() {
		$("#txtConfirmPassword").keyup(pwdvalidation);
	}); 
</script>