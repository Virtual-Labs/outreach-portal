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
										<li><a href="<?php echo site_url('admin/home/guidance_metirial');?>">Guidance & Material</a></li>
										<li>Edit Guidance & Material</li>
									</ul>
									<!-- /BREADCRUMBS -->
									<div class="clearfix">
										<h3 class="content-title pull-left">Edit Guidance & Material</h3>
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
												<h4><i class="fa fa-bars"></i>Edit Guidance & Material </h4>
											</div>
											<div class="box-body big">
											<span id="error" class='error'></span>
												<form class="form-horizontal" method="post" name="addStaff" id="addStaff" action="<?php echo site_url('admin/guidance_metirial/edit/'.base64_encode($certification[0]['document_id']));?>" role="form" enctype="multipart/form-data">
											
												  <div class="form-group">
													<label class="col-sm-4 control-label">Name</label>
													<div class="col-sm-8">
													  <input type="text" name = "document_name" id = "document_name" class="required form-control" value="<?php echo $certification[0]['document_name'];?>">
													  <?php echo "<span style='color:red'>".form_error('document_name')."</span>"; ?>
													</div>
												  </div>
												    <div class="form-group">
													<label class="col-sm-4 control-label">File</label>
													<div class="col-sm-8">
													  <input type="file" name = "document_path" id = "document_path" class=" form-control" value="">
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
					<a href="<?php echo base_url('admin/guidance_metirial')?>">	<button class="btn">Cancel</button>	</a>
						</p>
						<!-- /Save -->												
						</form>
					</div><!-- /CONTENT-->
				</div>
			</div>
		</div>