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
										<li>Workshop Material</li>
									</ul>
									<!-- /BREADCRUMBS -->
									<div class="clearfix">
										<h3 class="content-title pull-left">Workshop Material</h3>
									</div>
                                <?php if($this->session->flashdata('msg')!=NULL) { ?>
								<div class="alert alert-success display-none" style="display: block;">
									<a data-dismiss="alert" href="#" aria-hidden="true" class="close">×</a>
									<?php  echo $this -> session -> flashdata('msg'); ?>
								</div>
								<?php } ?>
									<div class="description"></div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<!-- BOX -->
								<div class="box solid gray">
									<div class="box-title">
										<h4><i class="fa fa-table"></i>Workshop Material</h4>
									<div class="tools hidden-xs">
											<a href="<?php echo site_url('admin/workshop_material_add'); ?>" style="color: #fff;background-color: #309CD1;padding: 2px;border-radius: 8px;">Add New Workshop Material</a>
										</div>
									</div>
									<div class="box-body">
										<table id="datatable2" cellpadding="0" cellspacing="0" border="0" class="datatable table table-striped table-bordered table-hover">
											<thead>
												<tr>
                                                	<th>S.No</th>
													<th>Name</th>
													<th>Document</th>
													<th>Actions</th>
												</tr>
											</thead>
											<tbody>
                     <?php $i=0; if(!empty($workshop_material_details)) {
								foreach ($workshop_material_details as $row) {$i++;  ?>
													<tr class="gradeX">
                                                    <td><?php echo $i; ?></td>
													<td><?php echo $row['name']; ?></td>
													<td><a target="_blank" href="<?php echo base_url() . "assests/uploads/guidance_metirial/" . $row['path']; ?>">
													<?PHP   $extension = pathinfo($row['path'], PATHINFO_EXTENSION); 
													if($extension=="doc"){ ?>
													<img src="<?php echo base_url(); ?>assests/img/word.jpg"></img>
													<?php }elseif($extension=="pdf"){ ?>
													<img src="<?php echo base_url(); ?>assests/img/pdf.jpg"></img>
													<?php
													//echo "PDF";
													}elseif($extension=="JPEG"){
 ?>
													<img src="<?php echo base_url(); ?>assests/img/notepad.png"></img>
													<?php
													echo "JPEG";
													}
 ?>
													</a></td>
													<td>
                        
                                <a href="<?php echo site_url('admin/workshop_metirial_edit/' . base64_encode($row['id'])); ?>"><button class="btn btn-xs btn-warning"><i class="fa fa-pencil-square-o"></i> Edit</button></a>&nbsp;
&nbsp;
								<a onclick = "return confirm('are you sure want to delete the Workshop Material ?');" href="<?php echo site_url('admin/workshop_metirial_delete/' . base64_encode($row['id'])); ?>"><button class="btn btn-xs btn-danger"><i class="fa fa-exclamation-circle"></i> Delete</button></a>
													</td>
												</tr>
								<?php }
													} else {echo '<tr class="gradeX"><td colspan="6" align="left">No Workshop Material Records found</td></tr>'; }
												?>
											</tbody>
											<tfoot>
												<tr>
                                                	<th>S.No</th>
													<th>Name</th>
													<th>Document</th>
													<th>Actions</th>
												</tr>
											</tfoot>
										</table>
									</div>
								</div>
                                       <div class="row" style="float:right">
                                        <?php echo $pagination; ?>
                             		   </div>
								<!-- /BOX -->
							</div>
						</div>
						<!-- /EXPORT TABLES -->
						<div class="footer-tools">
							<span class="go-top">
								<i class="fa fa-chevron-up"></i> Top
							</span>
						</div>
					</div><!-- /CONTENT-->
				</div>
			</div>
		</div>
