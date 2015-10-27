<div id="main-content">
	<div class="container">
		<div class="row">
			<div id="content" class="col-lg-12">
				<!-- PAGE HEADER-->
				<div class="row">
					<div class="col-sm-12">
						<div class="page-header">
							<!-- STYLER -->

							<!-- /STYLER -->
							<!-- BREADCRUMBS -->
							<ul class="breadcrumb">
								<li>
									<i class="fa fa-home"></i>
									<a href="<?php echo site_url('admin'); ?>">Home</a>
								</li>
								<li>
									<a href="<?php echo site_url('admin/coordinator'); ?>">Outreach Coordinator</a>
								</li>
								<li>
									Edit Outreach Coordinator
								</li>
							</ul>
							<!-- /BREADCRUMBS -->
							<div class="clearfix">
								<h3 class="content-title pull-left">Edit Outreach Coordinator</h3>
							</div>
							<div class="description"></div>
						</div>
					</div>
				</div>
				<!-- /PAGE HEADER -->
				<!-- FORMS -->
				<div class="row">
					<div class="col-md-12">
						<div class="row">
							<!-- product details -->
							<div class="col-md-6">
								<div class="box border dark gray">
									<div class="box-title">
										<h4><i class="fa fa-bars"></i>Edit Outreach Coordinator </h4>
									</div>
									<div class="box-body big">
										<span id="error" class='error'></span>
										<form class="form-horizontal" method="post" name="coordinator" id="coordinator" action="<?php echo site_url('admin/admin/editCoordinator'); ?>" role="form">

											<!-- Product Name -->
											<div class="form-group">
												<label class="col-sm-4 control-label">First Name</label>
												<div class="col-sm-8">
													<input type="text"  onkeypress="return onlyAlphabets(event,this);" name = "first_name" id = "first_name" class="required form-control" value="<?php echo $coordinatorList['name']; ?>">
													<input type="hidden" name = "outreach_id" id = "outreach_id" class="form-control" value="<?php echo $coordinatorList['outreach_id']; ?>">
													<?php echo "<span style='color:red'>" . form_error('first_name') . "</span>"; ?>
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-4 control-label">Email</label>
												<div class="col-sm-8">
													<input type="email" name = "email" id = "email" readonly class=" form-control" value="<?php echo $coordinatorList['email']; ?>">
													<?php echo "<span style='color:red'>" . form_error('email') . "</span>"; ?>
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-4 control-label">Phone Number</label>
												<div class="col-sm-8">
													<input type="phone" name = "phone" id = "phone"  class=" form-control" value="<?php echo $coordinatorList['phone']; ?>">
													<?php echo "<span style='color:red'>" . form_error('phone') . "</span>"; ?>
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-4 control-label">Institute Name</label>
												<div class="col-sm-8">
													<input type="institute_name" name = "institute_name" id = "institute_name"  class=" form-control" value="<?php echo $coordinatorList['institute_name']; ?>">
													<?php echo "<span style='color:red'>" . form_error('institute_name') . "</span>"; ?>
												</div>
											</div>

									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
				<!-- /FORMS -->

				<!-- Save -->
				<p class="btn-toolbar">
					<button class="btn btn-success">
						Update
					</button></form>
					<a href="<?php echo site_url('admin/coordinators'); ?>">
					<button class="btn">
						Cancel
					</button> </a>
				</p>
				<!-- /Save -->
				</form>
			</div><!-- /CONTENT-->
		</div>
	</div>
</div>
<script>
	$(document).ready(function() {
		$('#editStaff').validate();
	}); 
</script>
