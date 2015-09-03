
<style>
.form-group {
margin-bottom: 15px;
display: block;
float: left;
width: 100%;
}

.box.border{
width: 100%;
float: left;
background: #fff;
}

</style>


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
										<li><a href="<?php echo site_url('admin/home/permissions');?>">Permissions</a></li>
										<li>Add Permissions</li>
									</ul>
									<!-- /BREADCRUMBS -->

								</div>
							</div>
						</div>
						<!-- /PAGE HEADER -->
						<!-- FORMS -->
						<div class="row">
							<div class="col-md-12">
								<div class="row">
									<!-- product details -->								
									<div class="col-md-8">
										<div class="box border dark gray">
											<div class="box-title">
												<h4><i class="fa fa-bars"></i>Staff Permissions</h4>
											</div>
											<div class="box-body big">
												<form class="form-horizontal" method = "post" action = "<?php echo base_url('admin/home/addPermission');?>" name="editPermission" id="editPermission" role="form">
												  
												  <!-- First Name -->
												  <div class="form-group">
													<label class="col-sm-4 control-label">Role Name</label>
													<div class="col-sm-8">
													  <input type="text" name = "role_name" id = "role_name" value="" class="required form-control" >
													  <?php echo "<span style='color:red'>".form_error('role_name')."</span>"; ?>
													</div>
												  </div>
												  <div class="form-group">
													   <label class="col-md-4 control-label">College</label> 
													   <div class="col-md-8">
															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="company[]"  value="read"> Read  </label> 
															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="company[]"  value="write"> Read & Write </label> 
													   </div>
												  </div>
													<div class="form-group">
													   <label class="col-md-4 control-label">Staff</label> 
													   <div class="col-md-8">
															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="staff[]"  value="read"> Read  </label> 
															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="staff[]"  value="write" > Read & Write </label> 
													   </div>
												  </div>
													
													<div class="form-group">
													   <label class="col-md-4 control-label">Students</label> 
													   <div class="col-md-8">
															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="students[]"  value="read"> Read  </label> 
															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="students[]"  value="write"> Read & Write </label> 
													   </div>
												  </div>
												  <div class="form-group">
													   <label class="col-md-4 control-label">TEP Programme</label> 
													   <div class="col-md-8">
															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="tepprogramme[]"  value="read"> Read  </label> 
															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="tepprogramme[]"  value="write"> Read & Write </label> 
													   </div>
												  </div>
												  												  <div class="form-group">
													   <label class="col-md-4 control-label">Partners</label> 
													   <div class="col-md-8">
															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="partners[]"  value="read"> Read  </label> 
															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="partners[]"  value="write"> Read & Write </label> 
													   </div>
												  </div>
												   <div class="form-group">
													   <label class="col-md-4 control-label">Notifications</label> 
													   <div class="col-md-8">
															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="notifications[]"  value="read"> Read  </label> 
															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="notifications[]"  value="write"> Read & Write </label> 
													   </div>
												  </div>
												   <div class="form-group">
													   <label class="col-md-4 control-label">Courses</label> 
													   <div class="col-md-8">
															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="courses[]"  value="read"> Read  </label> 
															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="courses[]"  value="write"> Read & Write </label> 
													   </div>
												  </div>
												   <div class="form-group">
													   <label class="col-md-4 control-label">Results</label> 
													   <div class="col-md-8">
															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="results[]"  value="read"> Read  </label> 
															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="results[]"  value="write"> Read & Write </label> 
													   </div>
												  </div>
												     <div class="form-group">
													   <label class="col-md-4 control-label">Certifications</label> 
													   <div class="col-md-8">
															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="certifications[]"  value="read"> Read  </label> 
															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="certifications[]"  value="write"> Read & Write </label> 
													   </div>
												  </div>
												   <div class="form-group">
													   <label class="col-md-4 control-label">Downloads</label> 
													   <div class="col-md-8">
															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="downloads[]"  value="read"> Read  </label> 
															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="downloads[]"  value="write"> Read & Write </label> 
													   </div>
												  </div>
												  												  <div class="form-group">
													   <label class="col-md-4 control-label">Placements</label> 
													   <div class="col-md-8">
															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="placements[]"  value="read"> Read  </label> 
															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="placements[]"  value="write"> Read & Write </label> 
													   </div>
												  </div>
												  												  <div class="form-group">
													   <label class="col-md-4 control-label">Settings</label> 
													   <div class="col-md-8">
															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="settings[]"  value="read"> Read  </label> 
															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="settings[]"  value="write"> Read & Write </label> 
													   </div>
												  </div>
												  
												  <div class="form-group">
													   <label class="col-md-4 control-label">Careers</label> 
													   <div class="col-md-8">
															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="careers[]"  value="read"> Read  </label> 
															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="careers[]"  value="write"> Read & Write </label> 
													   </div>
												  </div>

												  <div class="form-group">
													   <label class="col-md-4 control-label">Cms</label> 
													   <div class="col-md-8">
															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="cms[]"  value="read"> Read  </label> 
															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="cms[]"  value="write"> Read & Write </label> 
													   </div>
												  </div> 
												  
												  <div class="form-group">
													   <label class="col-md-4 control-label">News</label> 
													   <div class="col-md-8">
															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="news[]"  value="read"> Read  </label> 
															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="news[]"  value="write"> Read & Write </label> 
													   </div>
												  </div>
											</div>
										</div>
									</div>
									<!-- product details -->
									<!-- other details -->									
								
									
									<!-- other details -->						
								</div>
							</div>
						</div>
						<!-- /FORMS -->
												
						
						<!-- Save -->	
						<p class="btn-toolbar">							
							<button class="btn btn-success">Save</button>
							<button type = "reset" class="btn btn-grey">Reset</button>			 </form>				
							&nbsp;<a href="<?php echo site_url('admin/home/permissions')?>">	
							<button class="btn btn-warning">Cancel</button>	</a>

						</p>
						<!-- /Save -->												
						
					</div><!-- /CONTENT-->
				</div>
			</div>
		</div>
	<script>
	$(document).ready(function(){
		$("#editPermission").validate();	
	});
	</script>