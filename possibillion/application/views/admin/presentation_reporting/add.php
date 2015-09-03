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
										<li><a href="<?php echo site_url('admin/home/presentation_reporting');?>">Presentation & Reporting</a></li>
										<li>Add New Presentation & Reporting</li>
									</ul>
									<!-- /BREADCRUMBS -->
									<div class="clearfix">
										<h3 class="content-title pull-left">Add New Presentation & Reporting</h3>
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
									<div class="col-md-9">
										<div class="box border dark gray">
											<div class="box-title">
												<h4><i class="fa fa-bars"></i>Add New Presentation & Reporting</h4>
											</div>
											<div class="box-body big">
											<span id="error" class='error'></span>
												<form class="form-horizontal" method="post" name="addStaff" id="addStaff" action="<?php echo site_url('admin/presentation_reporting/add');?>" role="form" enctype="multipart/form-data">
												  
												  <!-- Product Name -->
												  <div class="form-group">
													<label class="col-sm-4 control-label">Name<span style="color:red;">*</span></label>
													<div class="col-sm-8">
													  <input type="text" name = "document_name" id = "document_name" class="required form-control" value="<?php echo set_value('document_name');?>">
													  <?php echo "<span style='color:red'>".form_error('document_name')."</span>"; ?>
													</div>
												  </div>
												    <div class="form-group">
													<label class="col-sm-4 control-label">File<span style="color:red;">*</span></label>
													<div class="col-sm-8">
													  <input type="file" name = "document_path" id = "document_path" class=" form-control" value="<?php echo set_value('document_path');?>">
													  <?php if($this->session->flashdata('msg')!=NULL) { echo "<span style='color:red'>".$this->session->flashdata('msg')."</span>"; } ?>
													</div>
												  </div>
											</div>
										</div>
									</div>
									<!-- product details -->
		
			</div>		
		</div>
	</div>		<!-- /FORMS -->
					
						
						<!-- Save -->	
						<p class="btn-toolbar">							
							<button class="btn btn-success">Save</button></form>
					<a href="<?php echo base_url('admin/presentation_reporting')?>">	<button class="btn">Cancel</button>	</a>
						</p>
						<!-- /Save -->												
						</form>
					</div><!-- /CONTENT-->
				</div>
			</div>
		</div>