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
											<a href="<?php echo site_url();?>">Home</a>
										</li>
										<li>
											<a href="<?php echo site_url('admin/home/profile');?>">Profile</a>
										</li>
										<li>Update Profile</li>
									</ul>
									<!-- /BREADCRUMBS -->
									<div class="clearfix">
										<h3 class="content-title pull-left">Update Profile</h3>
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
												<h4><i class="fa fa-bars"></i>Update Profile</h4>
											</div>
											<div class="box-body big">
											<?php if(isset($msg)){ echo "<span class='error'>".$msg."</span><br/>"; } ?>
											<span id="error" class='error'></span>
											<?php //if(isset($msg)){ echo "<pre>";print_r($msg); } ?>
												<form method = "post" class="form-horizontal" enctype="multipart/form-data" name="updateFrom" id="updateFrom" role="form" action="<?php echo base_url('admin/home/editProfile');?>">
												  
												  <!-- Existing Password -->
												  <div class="form-group">
													<label class="col-sm-4 control-label">First Name</label>
													<div class="col-sm-8">
													  <input type="text" onkeypress="return onlyAlphabets(event,this);" class="form-control" name="first_name" id="first_name" value="<?php if($profile_details['first_name']) { echo $profile_details['first_name']; } else { echo set_value('first_name'); } ?>">
														<?php echo "<span style='color:red'>".form_error('first_name')."</span>"; ?>
													</div>
												  </div>
												 
												  <!-- New Password -->
												  <div class="form-group">
													<label class="col-sm-4 control-label">Last Name</label>
													<div class="col-sm-8">
													  <input type="text" class="form-control" onkeypress="return onlyAlphabets(event,this);"   name="last_name" id="last_name" value="<?php if($profile_details['last_name']) { echo $profile_details['last_name']; } else { echo set_value('last_name'); } ?>">
														<?php echo "<span style='color:red'>".form_error('last_name')."</span>"; ?>
													</div>
												  </div>
												  <!-- Confirm Password -->
												  <div class="form-group">
													<label class="col-sm-4 control-label">E-mail</label>
													<div class="col-sm-8">
													  <input type="email" class="form-control" name="email" id="email" readonly value="<?php if($profile_details['admin_name']) { echo $profile_details['admin_name']; } else { echo set_value('admin_name'); } ?>">
														<?php echo "<span style='color:red'>".form_error('email')."</span>"; ?>
													</div>
												  </div>	
												 <div class="form-group">
													 <label class="col-md-4 control-label">Image Upload</label> 
													 <div class="col-md-8">
														<div class="fileupload fileupload-new" data-provides="fileupload">
														<div class="input-group">
															<div class="form-control uneditable-input"><i class="fa fa-file fileupload-exists"></i> 
																<span class="fileupload-preview"></span>
															</div>
															<div class="input-group-btn">
																<a class="btn btn-default btn-file"> <input style="width:237px;" type="file" name = "image" id = "image" class="file-input"/> </a>
															</div>
														</div>
														</div>
													</div>
											  </div>
												  </div>												  
												
											</div>
										</div>
									</div>
									
				
							<!-- Save -->	
						<p class="btn-toolbar">							
							<button class="btn btn-success">Save</button></form>
							<a href="<?php echo site_url('admin/home/profile');?>"><button class="btn btn-warning">Cancel</button></a>					
						</p>
						
						<!-- /Save -->												
				 
					</div><!-- /CONTENT-->
				</div>
			</div>
		</div>
<script>
	$(document).ready(function() {

		// validate signup form on keyup and submit
		$("#updateFrom").validate();

	
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

