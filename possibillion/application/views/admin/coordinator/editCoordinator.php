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
											<a href="<?php echo site_url('admin/home/dashboard');?>">Home</a>
										</li>
										<li><a href="<?php echo site_url('admin/home/coordinator');?>">Outreach Coordinator</a></li>
										<li>Edit Outreach Coordinator</li>
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
												<form class="form-horizontal" method="post" name="editStaff" id="editStaff" action="<?php echo site_url('admin/home/editCoordinator');?>" role="form">
												  
												  <!-- Product Name -->
												  <div class="form-group">
													<label class="col-sm-4 control-label">First Name</label>
													<div class="col-sm-8">
													  <input type="text"  onkeypress="return onlyAlphabets(event,this);" name = "first_name" id = "first_name" class="required form-control" value="<?php echo $coordinatorList['name'];?>">
													  <input type="hidden" name = "hidden_staff_id" id = "hidden_staff_id" class="form-control" value="<?php echo $hidden_coordinator_id;?>">
													  <?php echo "<span style='color:red'>".form_error('first_name')."</span>"; ?>
													</div>
												  </div>
												   <!-- <div class="form-group">
													<label class="col-sm-4 control-label">Nodal Center</label>
													<div class="col-sm-8">
													  <input type="text"  onkeypress="return onlyAlphabets(event,this);" name = "nodalcenter" id = "nodalcenter" class=" form-control" value="<?php echo $coordinatorList['nodalcenter'];?>">
													  <?php echo "<span style='color:red'>".form_error('nodalcenter')."</span>"; ?>
													</div>
												  </div>-->
												  <div class="form-group">
													<label class="col-sm-4 control-label">Email</label>
													<div class="col-sm-8">
													  <input type="email" name = "email" id = "email" readonly class=" form-control" value="<?php echo $coordinatorList['email'];?>">
													  <?php echo "<span style='color:red'>".form_error('email')."</span>"; ?>
													</div>
												  </div>													  
												<?php /* */?>
												<!--<div class="form-group">
													<label class="col-sm-4 control-label">Role</label>
													<div class="col-sm-8">
													  <select name="permission_id" id="permission_id" class="required form-control">
															
															<option  value=""></option>
															
													  </select>
													  <?php echo "<span style='color:red'>".form_error('permission_id')."</span>"; ?>
													</div>
												</div>-->
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
							<button class="btn btn-success">Save</button></form>
					<a href="<?php echo site_url('admin/home/coordinator');?>">	<button class="btn">Cancel</button>	</a>
						</p>
						<!-- /Save -->												
						</form>
					</div><!-- /CONTENT-->
				</div>
			</div>
		</div>
	<script>
	$(document).ready(function(){
		$('#editStaff').validate();
	});
	</script>
	<script language="Javascript" type="text/javascript">
 
       function onlyAlphabets(e, t) {
            try {
                if (window.event) {
                    var charCode = window.event.keyCode;
                }
                else if (e) {
                    var charCode = e.which;
                }
                else { return true; }
                if ((charCode > 7 && charCode < 9) || (charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123) || (charCode > 6 && charCode < 8) || (charCode > 31 && charCode < 33))
                {
					return true;
				}
                else
				{
					$('#error').html('only character allowed');
					setTimeout(function() {
						$('#error').fadeOut('fast');
					}, 2000);
                    return false;
				}
            }
            catch (err) {
                alert(err.Description);
            }
        }

    </script>