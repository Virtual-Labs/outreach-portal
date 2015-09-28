<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<title>outreach Admin | Login</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=no">
		<meta name="description" content="">
		<meta name="author" content="">
		<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assests/css/cloud-admin.css" >
		<link href="<?php echo base_url(); ?>assests/font-awesome/css/font-awesome.min.css" rel="stylesheet">
		<!-- UNIFORM -->
		<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assests/js/uniform/css/uniform.default.min.css" />
		<!-- FONTS -->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>
	</head>
	<body class="login">
		<!-- PAGE -->
		<section id="page">
			<!-- HEADER -->
			<header>
				<!-- NAV-BAR -->
				<div class="container">
					<div class="row">
						<div class="col-md-4 col-md-offset-4">
							<div id="logo">
								<a href="<?php echo base_url(); ?>"><img src="<?php echo base_url(); ?>assests/img/logo/logo-alt.png" height="120" alt="logo name" /></a>
							</div>
						</div>
					</div>
				</div>
				<!--/NAV-BAR -->
			</header>
			<!--/HEADER -->
			<!-- LOGIN -->
			<section id="login" class="visible">
				<div class="container">
					<div class="row">
						<div class="col-md-4 col-md-offset-4">
							<div class="login-box-plain">
								<h2 class="bigintro">Sign In</h2>
								<div class="divide-40">
									<?php
									$this -> session -> flashdata('msg');
									$msg = $this -> session -> flashdata('msg');
									if (isset($msg)) { echo "<span class='error' style='color:red'>" . $msg . "</span><br/>";
									}
									?>
								</div>
								<?php
								$attributes = array('id' => 'loginForm', 'name' => 'loginForm');
								echo form_open('admin/admin/checkLogin', $attributes);
								echo "<div class='form-group'>";
								echo form_label('Email address', 'exampleInputEmail1');
								echo "<i class='fa fa-envelope'></i>";
								$data = array('type' => 'email', 'name' => 'email', 'id' => 'email', 'class' => 'required form-control', 'maxlength' => '100');
								echo form_input($data);
								echo "</div>";

								echo "<div class='form-group'>";
								echo form_label('Password', 'exampleInputPassword1');
								echo "<i class='fa fa-lock'></i>";
								$data = array('type' => 'password', 'name' => 'password', 'id' => 'password', 'class' => 'required form-control', 'maxlength' => '100');
								echo form_input($data);
								echo "</div>";
								echo "<div class='form-actions'>";
								echo "<button type='submit' class='btn btn-danger'>Submit</button>";

								echo "</div>";

								echo form_close();
								?>
							</div>
						</div>
					</div>
				</div>
			</section>
		</section>
		<!-- JQUERY -->
		<script src="<?php echo base_url(); ?>assests/js/jquery/jquery-2.0.3.min.js"></script>
		<!-- JQUERY UI-->
		<script src="<?php echo base_url(); ?>assests/js/jquery-ui-1.10.3.custom/js/jquery-ui-1.10.3.custom.min.js"></script>
		<!-- BOOTSTRAP -->
		<script src="<?php echo base_url(); ?>assests/bootstrap-dist/js/bootstrap.min.js"></script>
		<!-- UNIFORM -->
		<script type="text/javascript" src="<?php echo base_url(); ?>assests/js/uniform/jquery.uniform.min.js"></script>
		<!-- CUSTOM SCRIPT -->
		<script src="<?php echo base_url(); ?>assests/js/script.js"></script>
		<script src="<?php echo base_url(); ?>assests/js/jquery-validate/jquery.validate.min.js"></script>
		<script>
			jQuery(document).ready(function() {
				$("#loginForm").validate();
				App.setPage("login");
				//Set current page
				App.init();
				//Initialise plugins and elements
			});
		</script>
		<!-- /JAVASCRIPTS -->
	</body>
</html>