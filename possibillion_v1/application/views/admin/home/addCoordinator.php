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
									Add new Outreach Coordinator
								</li>
							</ul>
							<?php if($this->session->flashdata('msg')!=NULL) {
							?>
							<div class="alert col-md-12 alert-success display-none" style="display: block;">
								<a data-dismiss="alert" href="#" aria-hidden="true" class="close">�</a>
								<?php  echo $this -> session -> flashdata('msg'); ?>
							</div>
							<?php } ?>
							<!-- /BREADCRUMBS -->
							<div class="clearfix">
								<h3 class="content-title pull-left">Add new Outreach Coordinator</h3>
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
										<h4><i class="fa fa-bars"></i>Add new Outreach Coordinator </h4>
									</div>
									<div class="box-body big">
										<span id="error" class='error'></span>
										<form class="form-horizontal" method="post" name="addcoordinator" id="addcoordinator" action="<?php echo site_url('admin/admin/addCoordinator'); ?>" role="form">

											<!-- Product Name -->
											<div class="form-group">
												<label class="col-sm-4 control-label">Name of Coordinator</label>
												<div class="col-sm-8">
													<input type="text" onkeypress="return onlyAlphabets(event,this);" name = "last_name" id = "last_name" class=" form-control" value="<?php echo set_value('last_name'); ?>">
													<?php echo "<span style='color:red'>" . form_error('last_name') . "</span>"; ?>
												</div>
											</div>

											<div class="form-group">
												<label class="col-sm-4 control-label">Email Id</label>
												<div class="col-sm-8">
													<input type="text" name = "email" id = "email" class="required form-control" value="<?php echo set_value('email'); ?>">
													<?php echo "<span style='color:red'>" . form_error('email') . "</span>"; ?>
												</div>
											</div>

											<?php /* */ ?>

									</div>
								</div>
							</div>
							<!-- product details -->

						</div>
					</div>
				</div>
				<!-- /FORMS -->

				<!-- Save -->
				<p class="btn-toolbar">
					<button class="btn btn-success" style="color: #fff;background-color: #309CD1;padding: 9px;border-radius: 8px;">
						Create coordinator
					</button></form>
					<a href="<?php echo site_url('admin/coordinators'); ?>">
					<button class="btn" style="border-color: #7c7c7c;">
						Cancel
					</button> </a>
				</p>
				<!-- /Save -->
				</form>
			</div><!-- /CONTENT-->
		</div>
	</div>
</div>