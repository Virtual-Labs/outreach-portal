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
										<li>
											<a href="<?php echo site_url('admin/cms');?>">CMS</a>
										</li>
										
										<li>Update CMS Page</li>
									</ul>
									<!-- /BREADCRUMBS -->

									<div class="description"></div>
								</div>
							</div>
						</div>
						<!-- /PAGE HEADER -->
						<!-- ADVANCED -->
						<div class="row">
							<div class="col-md-12">
								<!-- BOX -->
								<div class="box border green">
									<div class="box-title">
										<h4><i class="fa fa-bars"></i>Update CMS Page</h4>
									</div>
									<div class="box-body"> <?php /*?> action="<?php echo base_url();?>cms/updateCms"<?php */?>
         <form id='cms-form' class="form-horizontal" role="form" method="post" enctype="multipart/form-data">
<?php //print_r($cms_details); echo $cms_details->cms_id?>
         <div class="form-group">
                <label class="col-sm-2 control-label">Title</label>
				<div class="col-sm-8">
    			<input type="text" name='title' class="required form-control" placeholder="Title Name" value="<?php if(set_value('title')== false) {if(isset($cms_details->title)) echo $cms_details->title;}else echo set_value('title'); ?>" >
    			<?php echo "<span style='color:red'>".form_error('title')."</span>"; ?>
	            </div>			
    		 </div>
										  <div class="form-group">
													<label class="col-sm-2 control-label">Description</label>
													<div class="col-sm-8">
													 <textarea id='description' class="required form-control" rows="3" name='description'><?php if(set_value('description')== false) {if(isset($cms_details->description)) echo $cms_details->description;}else echo set_value('description'); ?></textarea>
                                                     <?php echo "<span style='color:red'>".form_error('description')."</span>"; ?>
													</div>
												  </div>
												  
											<!--	  <div class="form-group">
            <label class="col-sm-2 control-label">File</label>
				 <div class="col-sm-8">
    			<input type="file" name='cms_file' class="required form-control" value="<?php if(set_value('cms_file')== false) {if(isset($cms_details->cms_file)) echo $cms_details->cms_file;}else echo set_value('cms_file'); ?>" >
	            </div>	
		</div>  -->                              
      <div class="form-group">
            <label class="col-sm-2 control-label"> SEO Title</label>
				 <div class="col-sm-8">
    			<input type="text" name='seo_title' class="required form-control" placeholder="SEO Title" value="<?php if(set_value('seo_title')== false) {if(isset($cms_details->seo_title)) echo $cms_details->seo_title;}else echo set_value('seo_title'); ?>" >
    			<?php echo "<span style='color:red'>".form_error('seo_title')."</span>"; ?>
	            </div>	
		</div>
		
         <div class="form-group">
                <label class="col-sm-2 control-label"> SEO Tags</label>
 				<div class="col-sm-8">
    			<input type="text" name='seo_tags' class="required form-control" placeholder="SEO Tags" value="<?php if(set_value('seo_tags')== false) {if(isset($cms_details->seo_tags)) echo $cms_details->seo_tags;}else echo set_value('seo_tags'); ?>" >
    			<?php echo "<span style='color:red'>".form_error('seo_tags')."</span>"; ?>
	            </div>	
		 </div>

									   </form>
									</div>
								</div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                    <button class="btn btn-success"  form="cms-form" />Save</button>&nbsp;
                                    <button type='reset' name='reset' class="btn btn-grey" form="cms-form">Reset</button> &nbsp;
                                   <a href="<?php echo site_url('admin/cms'); ?>"> <button name='cancel' class="btn">Cancel</button>			
									</div>
								</div>
								<!-- /BOX -->
							</div>
						</div>
						<!-- /ADVANCED -->
						
					</div><!-- /CONTENT-->
				</div>
			</div>
		</div>
        
<!--<script> $("#cms-form").validate(); </script>-->

<script type="text/javascript" src="<?php echo base_url().'assests/js/custom_ckeditor/ckeditor/ckeditor.js';?>"></script>
<script type="text/javascript" src="<?php echo base_url().'assests/js/custom_ckeditor/ckfinder/ckfinder.js';?>"></script>
<script type="text/javascript">
var editor = CKEDITOR.replace( 'description', {
    filebrowserBrowseUrl : '<?php echo base_url();?>assests/js/custom_ckeditor/ckfinder/ckfinder.html',
    filebrowserImageBrowseUrl : '<?php echo base_url();?>assests/js/custom_ckeditor/ckfinder/ckfinder.html?type=Images',
    filebrowserFlashBrowseUrl : '<?php echo base_url();?>assests/js/custom_ckeditor/ckfinder/ckfinder.html?type=Flash',
    filebrowserUploadUrl : '<?php echo base_url();?>assests/js/custom_ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
    filebrowserImageUploadUrl : '<?php echo base_url();?>assests/js/custom_ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
    filebrowserFlashUploadUrl : '<?php echo base_url();?>assests/js/custom_ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash'
});
CKFinder.setupCKEditor( editor, '<?php echo base_url();?>' );
</script>          
  