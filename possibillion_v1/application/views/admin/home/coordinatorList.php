<div id="main-content"> 
	<div class="container">
		<div class="row">
			<div id="content" class="col-lg-12">
			<!-- PAGE HEADER-->
				<div class="row">
					<div class="col-sm-12">
						<div class="page-header">
									
									<ul class="breadcrumb">
										<li>
											<i class="fa fa-home"></i>
											<a href="<?php echo site_url('admin'); ?>">Home</a>
										</li>
										<li> Outreach Coordinator</li>
									</ul>
									<!-- /BREADCRUMBS -->      									<?php if(isset($msg)) { ?>
								<div class="alert alert-success display-none" style="display: block;">
									<a data-dismiss="alert" href="#" aria-hidden="true" class="close">×</a>
									<?php  echo $msg; ?>
								</div>
								<?php } ?>
									<div class="clearfix">
										<h3 class="content-title pull-left">Outreach Coordinator</h3>
									</div>
									<div class="description"></div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<!-- BOX -->
								<div class="box solid gray">
									<div class="box-title">
										<h4><i class="fa fa-table"></i>Manage Outreach Coordinator</h4>
										<div class="tools hidden-xs">
											<a href="<?php echo site_url('admin/addCoordinator'); ?>" style="color: #fff;background-color: #309CD1;padding: 2px;border-radius: 8px;">Add New Outreach Coordinator</a>
										</div>
									</div>
									<div class="box-body">
										<table id="datatable2" cellpadding="0" cellspacing="0" border="0" class="datatable table table-striped table-bordered table-hover">
											<thead>
												<tr>
													<th>S.No</th>
													<th>Outreach Coordinator</th>
																								
													 <th>Email id</th> 
													<th>Created</th>												
													<th>Action</th>
												</tr>
											</thead>
											<tbody>
												<?php  if(!empty($coordinatorList)) { $i=1; foreach($coordinatorList as $coordinator) { ?>
												<tr class="gradeX">
													<td><?php echo $i; ?></td>
													<td><?php echo ucfirst($coordinator['name']); ?>	</td>
																									
													<td><?php echo $coordinator['email']; ?></td>													
													<td><?php echo $coordinator['created']; ?></td>													
													
													<td>
														<a href="<?php echo site_url('admin/editCoordinator/' . base64_encode($coordinator['outreach_id'])); ?>"><button class="btn btn-xs btn-warning"><i class="fa fa-pencil-square-o"></i> Edit</button></a>&nbsp;
														
													</td>
												</tr>
												<?php $i++;
													} } else { echo "No data found"; }
 ?>

											</tbody>
											<tfoot>
											</tfoot>
										</table>
										<div class="row" style="float:right">
										<?php echo $pagination; ?>
										</div>
									</div>
								</div>
								<!-- /BOX -->
							</div>
						</div>
						<!-- /EXPORT TABLES -->

					</div><!-- /CONTENT-->
				</div>
			</div>
		</div>	