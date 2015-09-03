<style>
body{
	margin-top:0px!important;
}
</style>
<link href="<?php echo base_url();?>site/css/animate.css" rel="stylesheet"><link href="<?php echo base_url();?>site/inc/shortcodes/css/shortcodes.css" rel="stylesheet"><link href="<?php echo base_url();?>site/css/animate.css" rel="stylesheet"><link href="<?php echo base_url();?>site/style.css" rel="stylesheet"><link href="<?php echo base_url();?>site/css/fullwidth.css" rel="stylesheet">	
	<script type='text/javascript' src='<?php echo base_url();?>site/js/bootstrap.js'></script>	
		<script type='text/javascript' src='<?php echo base_url();?>site/js/jquery.fitvids.js'></script>
				<script type='text/javascript' src='<?php echo base_url();?>site/js/jquery.easing.1.3.js'></script>		
						<script type='text/javascript' src='<?php echo base_url();?>site/js/common.js'></script>
								<script type='text/javascript' src='<?php echo base_url();?>site/js/flexslider.js'></script>
										<script type='text/javascript' src='<?php echo base_url();?>site/js/flexsliderhome.js'></script>	
											<script type='text/javascript' src='<?php echo base_url();?>site/js/carouselrecentportfolio.js'></script>	
												<script type='text/javascript' src='<?php echo base_url();?>site/js/carousel.js'></script>
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
										<li> Outreach Coordinator</li>
									</ul>
									<!-- /BREADCRUMBS -->      									<?php if(isset($msg)) { ?>
								<div class="alert alert-success display-none" style="display: block;">
									<a data-dismiss="alert" href="#" aria-hidden="true" class="close">×</a>
									<?php  echo $msg;?>
								</div>
								<?php } ?>
									<div class="clearfix">
										<h3 class="content-title pull-left">Outreach Coordinator</h3>
									</div>
									<div class="description"></div>
								</div>
							</div>
						</div>
						<!-- /PAGE HEADER -->
						<!-- Filter -->
                     	<!-- EXPORT TABLES -->
						<div class="row">
							<div class="col-md-12">
								<!-- BOX -->
								<div class="box solid gray">
									<div class="box-title">
										<h4><i class="fa fa-table"></i>Manage Outreach Coordinator</h4>
										<div class="tools hidden-xs">
											<a href="<?php echo site_url('admin/home/addCoordinator');?>"><button class="btn btn-xs btn-inverse">Add New Outreach Coordinator</button></a>
										</div>
									</div>
									<div class="box-body">
										<table id="datatable2" cellpadding="0" cellspacing="0" border="0" class="datatable table table-striped table-bordered table-hover">
											<thead>
												<tr>
													<th>S.No</th>
													<th>Outreach Coordinator</th>
																								
													 <th>Email id</th> 
													<th>Created on</th>
																
													<th>Status</th>													
													<th>Action</th>
												</tr>
											</thead>
											<tbody>
												<?php  if(!empty($coordinatorList)) { $i=1; foreach($coordinatorList as $coordinator) { ?>
												<tr class="gradeX">
													<td><?php echo $i;?></td>
													<td><?php echo ucfirst($coordinator['name']);?>	</td>
																									
													<td><?php echo $coordinator['email'];?></td>													
													<td><?php echo $coordinator['created_on'];?></td>													
													<td>
													
													<a style="text-decoration:none;cursor:pointer;" id="s-<?php echo  $coordinator['id'];?>"   class="activeclass btn-xs <?php if($coordinator['status'] == 1) { ?>btn-success <?php }else{ echo "btn-danger"; }?>" > <?php if($coordinator['status'] == 1) { ?> Active <?php }else{ echo "In Active"; } ?></a>
													
													</td>
													<td>
														<a href="<?php echo site_url('admin/home/editCoordinator/'.base64_encode($coordinator['id']));?>"><button class="btn btn-xs btn-warning"><i class="fa fa-pencil-square-o"></i> Edit</button></a>&nbsp;
														<a onclick = "return confirm('are you sure you want to delete the coordinator');" href="<?php echo base_url('admin/home/deleteCoordinator/'.base64_encode($coordinator['id']));?>"><button class="btn btn-xs btn-danger"><i class="fa fa-exclamation-circle"></i> Delete</button></a>
													</td>
												</tr>
												<?php $i++;} } else { echo "No data found"; } ?>

											</tbody>
											<tfoot>
											</tfoot>
										</table>
										<div class="row" style="float:right">
										<?php echo $pagination;?>
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
		

	<script>
	
	$(".activeclass").click(function(){
	
	var staffidstr   = $(this).attr('id');
	var staffid      = staffidstr.split("-");
	var staffid      = staffid[1];
	var staffobj      = $(this).attr('class');
	//alert(staffobj);
	if(staffid>0){
	
		$.ajax({
					type: "POST",
					url: "<?php echo base_url();?>admin/staffToggle",
					data: {"staff_id" : staffid			
						  },
					success: function(data) {
					//if exist success  overite 
					
							if(data == 1)
							{

									if(staffobj.search("btn-success") > -1)
									{
										$('#'+staffidstr).removeClass('btn-success');
										$('#'+staffidstr).addClass('btn-danger');
										$('#'+staffidstr).html('In Active');
									}
									if(staffobj.search("btn-danger") > -1)
									{
										$('#'+staffidstr).removeClass('btn-danger');
										$('#'+staffidstr).addClass('btn-success');
										$('#'+staffidstr).html('Active');
									}

							}
							
						}
						
			});
			
			}
	
	
	});
	
	</script>
<script>
$(document).ready(function(){
	$('#date_range').daterangepicker({
		timePicker: true, 
		timePickerIncrement: 30,
		format: 'DD-MM-YYYY hh:mm:ss',
		timePicker12Hour: false, 
		separator: '_'});
	});
</script>		