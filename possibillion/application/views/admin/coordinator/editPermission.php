<?php  //echo "<pre>".$permissionList['role_name'];print_r($permissionList);die();?>
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
										<li>Edit Permissions</li>
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
											<?php																						$careers=explode(",",$permissionList['careers']);												$cms=explode(",",$permissionList['cms']);												$students=explode(",",$permissionList['students']);												$tepprogramme=explode(",",$permissionList['tepprogramme']);												$staff=explode(",",$permissionList['staff']);												$partners=explode(",",$permissionList['partners']);												$company=explode(",",$permissionList['company']);												$notifications=explode(",",$permissionList['notifications']);																								$courses=explode(",",$permissionList['courses']);												$results=explode(",",$permissionList['results']);																								$certifications=explode(",",$permissionList['certifications']);																								$downloads=explode(",",$permissionList['downloads']);																								$placements=explode(",",$permissionList['placements']);																								$settings=explode(",",$permissionList['settings']);												$news=explode(",",$permissionList['news']);
											?>
											<div class="box-body big">
												<form class="form-horizontal" method = "post" action = "<?php echo base_url('admin/home/editPermission');?>" name="editPermission" id="editPermission" role="form">
												  
												  <!-- First Name -->
												  <div class="form-group">
													<label class="col-sm-4 control-label">Role Name</label>
													<div class="col-sm-8">
													  <input type="text" name = "role_name" id = "role_name" value="<?php echo $permissionList['role_name'];?>" class="required form-control" >
													  <input type="hidden" name = "hidden_permission_id" id = "hidden_permission_id" value="<?php echo $hidden_permission_id;?>" class="form-control" >
													  <?php echo "<span style='color:red'>".form_error('role_name')."</span>"; ?>
													</div>
												  </div>
												   <div class="form-group">													   <label class="col-md-4 control-label">Staff</label> 													   <div class="col-md-8">															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="staff[]"  value="read" <?php if(in_array("read", $staff)) { echo  "checked"; }?> > Read  </label> 															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="staff[]"  value="write" <?php if(in_array("write", $staff)) { echo  "checked"; }?> > Read & Write </label> 													   </div>												  </div>												<br>												  <div class="form-group">													   <label class="col-md-4 control-label">College</label> 													   <div class="col-md-8">															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="company[]"  value="read" <?php if(in_array("read", $company)) { echo  "checked"; }?> > Read  </label> 															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="company[]"  value="write" <?php if(in_array("write", $company)) { echo  "checked"; }?> > Read & Write </label> 													   </div>												  </div> <br>													<div class="form-group">													   <label class="col-md-4 control-label">Students</label> 													   <div class="col-md-8">															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="students[]"  value="read" <?php if(in_array("read", $students)) { echo  "checked"; }?> > Read  </label> 															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="students[]"  value="write" <?php if(in_array("write", $students)) { echo  "checked"; }?> > Read & Write </label> 													   </div>												  </div>                                                 <br>												  												  <div class="form-group">													   <label class="col-md-4 control-label">TEP Programme</label> 													   <div class="col-md-8">															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="tepprogramme[]"  value="read" <?php if(in_array("read", $tepprogramme)) { echo  "checked"; }?> > Read  </label> 															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="tepprogramme[]"  value="write" <?php if(in_array("write", $tepprogramme)) { echo  "checked"; }?> > Read & Write </label> 													   </div>												  </div>												  												 <br>												 <br>												  												  <div class="form-group">													   <label class="col-md-4 control-label">Partners</label> 													   <div class="col-md-8">															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="partners[]"  value="read" <?php if(in_array("read", $partners)) { echo  "checked"; }?> > Read  </label> 															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="partners[]"  value="write" <?php if(in_array("write", $partners)) { echo  "checked"; }?> > Read & Write </label> 													   </div>												  </div>                                                  												 <br>												  <div class="form-group">													   <label class="col-md-4 control-label">Notifications</label> 													   <div class="col-md-8">															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="notifications[]"  value="read" <?php if(in_array("read", $notifications)) { echo  "checked"; }?> > Read  </label> 															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="notifications[]"  value="write" <?php if(in_array("write", $notifications)) { echo  "checked"; }?> > Read & Write </label> 													   </div>												  </div> <br>												  <div class="form-group">													   <label class="col-md-4 control-label">Courses</label> 													   <div class="col-md-8">															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="courses[]"  value="read" <?php if(in_array("read", $courses)) { echo  "checked"; }?> > Read  </label> 															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="courses[]"  value="write" <?php if(in_array("write", $courses)) { echo  "checked"; }?> > Read & Write </label> 													   </div>												  </div> <br>												  												  <div class="form-group">													   <label class="col-md-4 control-label">Results</label> 													   <div class="col-md-8">															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="results[]"  value="read" <?php if(in_array("read", $results)) { echo  "checked"; }?> > Read  </label> 															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="results[]"  value="write" <?php if(in_array("write", $results)) { echo  "checked"; }?> > Read & Write </label> 													   </div>												  </div>												 <br>												  												  <div class="form-group">													   <label class="col-md-4 control-label">Certifications</label> 													   <div class="col-md-8">															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="certifications[]"  value="read" <?php if(in_array("read", $certifications)) { echo  "checked"; }?> > Read  </label> 															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="certifications[]"  value="write" <?php if(in_array("write", $certifications)) { echo  "checked"; }?> > Read & Write </label> 													   </div>												  </div>												 <br>												  <div class="form-group">													   <label class="col-md-4 control-label">Downloads</label> 													   <div class="col-md-8">															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="downloads[]"  value="read" <?php if(in_array("read", $downloads)) { echo  "checked"; }?> > Read  </label> 															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="downloads[]"  value="write" <?php if(in_array("write", $downloads)) { echo  "checked"; }?> > Read & Write </label> 													   </div>												  </div> <br>												  												  <div class="form-group">													   <label class="col-md-4 control-label">Placements</label> 													   <div class="col-md-8">															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="placements[]"  value="read" <?php if(in_array("read", $placements)) { echo  "checked"; }?> > Read  </label> 															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="placements[]"  value="write" <?php if(in_array("write", $placements)) { echo  "checked"; }?> > Read & Write </label> 													   </div>												  </div> <br>												  <div class="form-group">													   <label class="col-md-4 control-label">Settings</label> 													   <div class="col-md-8">															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="settings[]"  value="read" <?php if(in_array("read", $settings)) { echo  "checked"; }?> > Read  </label> 															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="settings[]"  value="write" <?php if(in_array("write", $settings)) { echo  "checked"; }?> > Read & Write </label> 													   </div>												  </div>												 <br>												  <div class="form-group">													   <label class="col-md-4 control-label">Careers</label> 													   <div class="col-md-8">															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="careers[]"  value="read" <?php if(in_array("read", $careers)) { echo  "checked"; }?> > Read  </label> 															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="careers[]"  value="write" <?php if(in_array("write", $careers)) { echo  "checked"; }?> > Read & Write </label> 													   </div>												  </div>	 <br>                                                   <div class="form-group">													   <label class="col-md-4 control-label">Cms</label> 													   <div class="col-md-8">															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="cms[]"  value="read" <?php if(in_array("read", $cms)) { echo  "checked"; }?> > Read  </label> 															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="cms[]"  value="write" <?php if(in_array("write", $cms)) { echo  "checked"; }?> > Read & Write </label> 													   </div>												  </div>												   <br>												  <div class="form-group">													   <label class="col-md-4 control-label">News</label> 													   <div class="col-md-8">															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="news[]"  value="read" <?php if(in_array("read", $news)) { echo  "checked"; }?> > Read  </label> 															<label class="checkbox-inline"> <input type="checkbox" class="uniform" name="news[]"  value="write" <?php if(in_array("write", $news)) { echo  "checked"; }?> > Read & Write </label> 													   </div>												  </div>
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