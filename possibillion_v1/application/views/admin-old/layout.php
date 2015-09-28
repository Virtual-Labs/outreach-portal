<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>Outreach Admin | Dashboard</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=no">
		<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assests/css/cloud-admin.css" >
		<link rel="stylesheet" type="text/css"  href="<?php echo base_url(); ?>assests/css/themes/default.css" id="skin-switcher" >
		<link rel="stylesheet" type="text/css"  href="<?php echo base_url(); ?>assests/css/responsive.css" >
		<link href="<?php echo base_url(); ?>assests/font-awesome/css/font-awesome.min.css" rel="stylesheet">
		<!-- FONTS -->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>
		<!-- JQUERY -->
		<script src="<?php echo base_url(); ?>assests/js/jquery/jquery-2.0.3.min.js"></script>
		<script src="<?php echo base_url(); ?>assests/js/jquery-ui-1.10.3.custom/js/jquery-ui-1.10.3.custom.min.js"></script>
		<script src="<?php echo base_url(); ?>assests/js/jquery-validate/jquery.validate.min.js"></script>
		<link href="<?php echo base_url(); ?>assests/site/css/animate.css" rel="stylesheet">
		<link href="<?php echo base_url(); ?>assests/site/style.css" rel="stylesheet">
		<link href="<?php echo base_url(); ?>assests/site/css/fullwidth.css" rel="stylesheet">
		<script type='text/javascript' src='<?php echo base_url(); ?>assests/site/js/bootstrap.js'></script>
		<script type='text/javascript' src='<?php echo base_url(); ?>assests/site/js/common.js'></script>
	</head>
	<style>
		body{
			margin-top:0px!important;
		}
		.navbar{
			background-color:#fff;
		}
		.active{
			background-color: #000;
    		color: #fff!important;
		}
		
	</style>
	<body>
		<!-- HEADER -->
		<header class="navbar clearfix" id="header">
			<div class="container"style="height: 76px;border-bottom: 1px Solid; ">
				<div class="navbar-brand">
					<!-- COMPANY LOGO -->
					<a href="<?php echo base_url('admin/home/dashboard'); ?>"> <img src="<?php echo base_url(); ?>assests/site/img/logo.png" alt="Cloud Admin Logo" class="img-responsive" height="66px" width="120"style="
					height: 66px;
					"> </a>

				</div>
				<!-- BEGIN TOP NAVIGATION MENU -->
				<ul class="nav navbar-nav pull-right">

					<li class="dropdown user" style="float:right" id="header-user">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" style="background-color: #fff ;color: #000;">
						<?php $adminDetails = $this -> session -> userdata('adminDetails');
							
						?>

						
						<img alt="" src="<?php echo base_url(); ?>assests/img/avatars/avatar3.jpg" />
						
						<span class="username"><?php echo $adminDetails['name']; ?>
						</span>
						<i class="fa fa-angle-down"></i></a>
						<ul class="dropdown-menu">
							<li>
								<a href="<?php echo site_url('admin/admin/changePassword'); ?>"><i class="fa fa-cog"></i> Account Settings</a>
							</li>
							<li>
								<a href="<?php echo site_url('admin/admin/logout'); ?>"><i class="fa fa-power-off"></i> Log Out</a>
							</li>
						</ul>
					</li>
					<!-- END USER LOGIN DROPDOWN -->
				</ul>
				<!-- END TOP NAVIGATION MENU -->
			</div>
		</header>
		<section id="page">
			<!-- SIDEBAR -->
			<div id="sidebar" class="sidebar">
				<div class="sidebar-menu nav-collapse" style="margin-top: -15px;">
					<ul>
						<li class="<?php
						if ($menu && $menu == "dashboard") { echo "active";
						}
						?>">
							<a class= "<?php if($content=="dashboard"){ echo "active"; } ?>"href="<?php echo site_url('admin'); ?>"> </i> <span class="menu-text">Dashboard</span> <span class="selected"></span> </a>
						</li>

						<li class="">
							<a class="<?php if($content=="coordinator"){ echo "active"; } ?>" href="<?php echo site_url('admin/coordinators'); ?>">  <span class="menu-text">Outreach Coordinators</span> <span class="selected"></span> </a>
							<!--<a class="" href="<?php echo site_url('admin/addCoordinator'); ?>">  <span class="menu-text">Add Outreach Coordinator</span> <span class="selected"></span> </a>-->
						</li>
								<li>
									<a class="<?php if($content=="guidanceMetirial"){ echo "active"; } ?>" href="<?php echo site_url('admin/guidance_metirial'); ?>" ><span class="sub-menu-text"> Guidance & Material</span></a>
								</li>
								<li>
									<a class="<?php if($content=="workshopMaterial"){ echo "active"; } ?>" href="<?php echo site_url('admin/workshop_material'); ?>" ><span class="sub-menu-text"> Workshop Material</span></a>
								</li>
								<li>
									<a class="<?php if($content=="presentationReporting"){ echo "active"; } ?>" href="<?php echo site_url('admin/presentation_reporting'); ?>" ><span class="sub-menu-text"> Presentation & Reporting</span></a>
								</li>
						
						

					</ul>
					<!-- /SIDEBAR MENU -->
				</div>
			</div>
			
</html>
