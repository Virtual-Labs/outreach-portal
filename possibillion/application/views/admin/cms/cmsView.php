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
										<li>Cms</li>
									</ul>
									<!-- /BREADCRUMBS -->
									<div class="clearfix">
										<h3 class="content-title pull-left">Cms</h3>
									</div>
                                <?php if($this->session->flashdata('msg')!=NULL) { ?>
								<div class="alert alert-success display-none" style="display: block;">
									<a data-dismiss="alert" href="#" aria-hidden="true" class="close">×</a>
									<?php  echo $this->session->flashdata('msg');?>
								</div>
								<?php } ?>
									<div class="description"></div>
								</div>
							</div>
						</div>
						<!-- /PAGE HEADER -->
             
           <!-- Filter --
                      <div class="row">
                       <div class="col-md-12">
                        <div class="row">
                         <!-- product details --       
                         <div class="col-md-12">
                          <div class="box border dark gray">
                           <div class="box-title">
                            <h4><i class="fa fa-search"></i>CMS Filter </h4>
                           </div>
                           <div class="box-body big">
                            <form class="form-horizontal" method="post" action="<?php echo site_url('admin/cms/index');?>" role="form">
                
                              <div class="form-group">
                             <label class="col-sm-2 control-label">CMS Title</label>
                             <div class="col-sm-4">
                               <input type="text" name = "cms_name" class="form-control" placeholder="Enter CMS Name">
                             </div>
                              </div>
                              <div class="form-group">
                             <label class="col-sm-2 control-label">Uploaded On</label>
                             <div class="col-sm-4">
                               <input type="text" id = "date_range" name = "date_range" class="form-control" value="" placeholder="Select Uploaded Date Range" readonly>
                             </div>
                              </div>
                                   <div align="center">
                                       <span>       
                                        <button type="submit" name = "submit" class="btn btn-success">Go</button>
                                        <button type="reset"  class="btn btn-grey">Reset</button> 
                                        <button type="submit" name="reset"  class="btn btn-warning" value='reset'>Clear Filter</button> 
                                       </span>
                                   </div>
                                   </form>
  
                           </div>
                          </div>
                         </div>
                         <!-- product details --
                        </div>
                       </div>
                      </div>
                      
        
      <!-- /Filter -->
						<!-- EXPORT TABLES -->
						<div class="row">
							<div class="col-md-12">
								<!-- BOX -->
								<div class="box solid gray">
									<div class="box-title">
										<h4><i class="fa fa-table"></i>Cms</h4>
										<div class="tools hidden-xs">
											<a href="<?php echo site_url('admin/cms/createCms');?>"><button class="btn btn-xs btn-inverse">Add New Cms</button></a>
										</div>
									</div>
									<div class="box-body">
										<table id="datatable2" cellpadding="0" cellspacing="0" border="0" class="datatable table table-striped table-bordered table-hover">
											<thead>
												<tr>
                                                	<th>S.No</th>
													<th>Title</th>
													<th>Status</th>
													<th>Created On</th>
													<th>Action</th>
												</tr>
											</thead>
											<tbody>
                     <?php $i=0; if(!empty($cms_details)) {
								foreach ($cms_details as $row) {$i++;  ?>
													<tr class="gradeX">
                                                    <td><?php echo $i;?></td>
													<td><?php echo $row['title'];?></td>
													 <td> <button id="s-<?php echo  $row['cms_id'];?>"   class="activeclass btn-xs <?php if($row['status'] == 1) { ?>btn-success <?php }else{ echo "btn-danger"; }?>" > <?php if($row['status'] == 1) { ?> Active <?php }else{ if($row['status'] == 2)echo "InActive"; else{ if($row['status'] == 3)echo "Deleted"; }} ?></a></td>												
													<td><?php echo date('M jS Y',strtotime($row['added_on']));?></td>
													<td>
								
                                <a href="<?php echo site_url('admin/cms/updateCms/'.base64_encode($row['cms_id']));?>">
                                <button class="btn btn-xs btn-warning"><i class="fa fa-pencil-square-o"></i> Edit</button></a>&nbsp;
                                
                                <!--<a onclick = "return confirm('are you sure want to delete the CMS page ?');" href="<?php //echo site_url('admin/cms/cmsDelete/'.base64_encode($row['cms_id']));?>"><button class="btn btn-xs btn-danger"><i class="fa fa-exclamation-circle"></i> Delete</button></a>-->
													</td>
												</tr>
								<?php }
					 } else {echo '<tr class="gradeX"><td colspan="6" align="left">No CMS Records found</td></tr>'; }?>
											</tbody>
											<tfoot>
												<tr>
                                                	<th>S.No</th>
													<th>Title</th>
													<th>Status</th>
													<th>Created On</th>
													<th>Action</th>
												</tr>
											</tfoot>
										</table>
									</div>
								</div>
                                       <div class="row" style="float:right">
                                        <?php echo $pagination;?>
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

<script>
$(document).ready(function(){	});
    $(".activeclass").click(function(){
    var staidstr   = $(this).attr('id');

    var staid      = staidstr.split("-");
    var staid      = staid[1];
    var staobj      = $(this).attr('class');
//  alert(staobj);
if(confirm('are you sure want to change the status?')) {
    if(staid>0){
		$.ajax({ 	
                    type: "POST",
                    url: "<?php echo base_url();?>admin/cms/cmsStatus",
                    data: {"status_bus_id" : staid            
                          },
                    success: function(data) {
						//	alert(data);
                            
							if(data == 1)
                            {
                                    if(staobj.search("btn-success") > -1)
                                    {
                                        $('#'+staidstr).removeClass('btn-success');
                                        $('#'+staidstr).addClass('btn-danger');
                                        $('#'+staidstr).html('In Active');
                                    }
                                    if(staobj.search("btn-danger") > -1)
                                    {
                                        $('#'+staidstr).removeClass('btn-danger');
                                        $('#'+staidstr).addClass('btn-success');
                                        $('#'+staidstr).html('Active');
                                    }
                            }
                            
                        }
                        
            });
            
            }
}
    
    
    });

</script>

<!--Date Range picker-->
<script>
$(document).ready(function(){
	$('#date_range').daterangepicker({
		timePicker: true, timePickerIncrement: 30,
		format: 'DD-MM-YYYY hh:mm:ss',
		timePicker12Hour: false, 
		separator: '_'});
	});
</script>
