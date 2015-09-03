<script src="<?php echo base_url();?>site/js/jquery.counterup.min.js"></script>
<script src="<?php echo base_url();?>site/js/waypoints.min.js"></script>
<script type="text/javascript" src="<?php echo base_url();?>site/js/jquery.simplyscroll.js"></script>
<link rel="stylesheet" href="<?php echo base_url();?>site/css/jquery.simplyscroll.css" media="all" type="text/css">
<script>
    jQuery(document).ready(function( $ ) {
        $('.counter').counterUp({
            delay: 10,
            time: 1000
        });
		setTimeout(function(){
  $('#divaid').hide();
}, 5000);
    });
</script>
<script type="text/javascript">
(function($) {
	$(function() {
		$("#scroller").simplyScroll({orientation:'vertical',customClass:'vert'});
		$("#scroller123").simplyScroll({orientation:'vertical',customClass:'vert'});
	});
})(jQuery);

</script>

		
        <!-- end fixedmenu -->
		<?php $ses_data=$this->session->userdata('user_details'); ?>
          <!-- end servicesbox -->
		  
		<section class="strip-colors">
		<div class="container">
			<div>
				<div class="col-md-4 text-center workshop-run">
					<div class="icon-box-top">
					<div class="value-disp">
						<p align="left" class="value-list">
							<span class="counternew" style="display:inline-block; color:#fff;"><?php echo $workshoprun; ?>/<?php echo $workshoprunall['workshop']; ?></span><span class="resu-top">WORKSHOPS RUN</span>
						</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 text-center labs-taken">
					<div class="icon-box-top">
						<div class="value-disp">
						<p align="left" class="value-list">
							<span class="counternew" style="display: inline-block;color:#fff;"><?php echo $participatecount['participate']; ?>/<?php echo $participantsall['participants']; ?></span><span class="resu-top">PARTICIPANTS</span>
						</p>
					</div></div>
				</div>
				<div class="col-md-4 text-center node-centers">
					<div class="icon-box-top">
						<div class="value-disp">
						<p align="left" class="value-list">
							<span class="counternew" style="display: inline-block;color:#fff;"><?php echo $experimentcount['experiment']; ?>/<?php echo $experimentsall['experiments']; ?></span><span class="resu-top">EXPERIMENTS

</span>
						</p>
					</div></div>
				</div>
				
			</div>
		</div>
        
		</section>
		
		<!-- end homerecentportfolio -->
        <div class="container" style="margin-top:30px;">
      
 <?php if($this->session->flashdata('msg')!=NULL) { ?>
								<div class="alert col-md-12 alert-success display-none" style="display: block;">
									<a data-dismiss="alert" href="#" aria-hidden="true" class="close">�</a>
									<?php  echo $this->session->flashdata('msg');?>
								</div>
								<?php } ?>
		<div>
<style>
.nav_li_pad {
    margin-left: 0px !important;
}
.counternew {
    font-size: 30px;
    font-family: 'Montserrat', sans-serif;
    font-weight: 700;
    line-height: 0px;
}

</style>

<style>
.align-top-botm1{
    padding-top: 8px;
    padding-bottom: 8px;
    float: left;
       width: 100%;
}
.tab-content{
	border-bottom:none;
}
.nav-tabs > li > a{
	text-transform: none!important;
}
</style>

<script>
var links = [
  'http://ideativedigital.com/outreach/uploads/workshop_material/1437747400-13.docx',
  'http://ideativedigital.com/outreach/uploads/workshop_material/1438160401-33.docx',
'http://ideativedigital.com/outreach/uploads/workshop_material/1438160432-63.docx',
  'http://ideativedigital.com/outreach/uploads/workshop_material/1438160417-43.docx'
];

var links1 = [
  'http://ideativedigital.com/outreach/uploads/presentation_reporting/1438160432-63.docx',
  'http://ideativedigital.com/outreach/uploads/presentation_reporting/1438160432-63.docx'
];
function downloadAll(urls) {
  var link = document.createElement('a');

  link.setAttribute('download', null);
  link.style.display = 'none';

  document.body.appendChild(link);

  for (var i = 0; i < urls.length; i++) {
    link.setAttribute('href', urls[i]);
    link.click();
  }

  document.body.removeChild(link);
}
</script>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
<script type="text/javascript">
function datadiding(){
var geocoder = new google.maps.Geocoder();
var address = document.getElementById("location").value;
geocoder.geocode( { 'address': address}, function(results, status) {

  if (status == google.maps.GeocoderStatus.OK) {
    var latitude = results[0].geometry.location.lat();
    var longitude = results[0].geometry.location.lng();
	$( "#latitude1" ).val( latitude );
	$( "#longitude1" ).val( longitude );
	} 
}); 
}
</script>

  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active tab-workshop"><a href="#home" aria-controls="home" role="tab" data-toggle="tab" >Workshop Material</a></li>
    <li role="presentation" class="tab-workshop nav_li_pad"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Active Workshops</a></li>
    <li role="presentation" class="tab-workshop nav_li_pad"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">New Workshop</a></li>
    <li role="presentation" class="tab-workshop nav_li_pad"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">History</a></li>
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="home">
 <div class="container placemetns-top">
 
 
 
 <div>
<p class="print-color"><strong>For Print </strong><a class="download-clr" onclick="downloadAll(window.links)">Download all</a></p>
</div>
			<?php if($getGuidesMaterial){ foreach($getGuidesMaterial as $guidance){ ?>
			<div class="col-md-12 ">
				<!--<div class="col-md-1 mid-align"></div>-->
				<div class="col-md-8 mid-align" class="icon-ok"><span class="btn"><?php  
				$extension = pathinfo($guidance['document_path'], PATHINFO_EXTENSION);
echo strtoupper($extension);
				?></span>&nbsp;&nbsp;<?php echo $guidance['document_name'];?></div>
			</div>
			<?php }} else{?>
		<div class="col-md-12 align-top-botm">	
				<div class="col-md-1 mid-align">&#10148;</div>
				<div class="col-md-3 mid-align" class="icon-ok">No Guides & Material Documents</div>
			</div>
			<?php } ?>
			
			<div class="col-md-12 align-top-botm" style="border-top: solid 1px #eee;">
				<!--<h2 class="head-events">Workshop Material</h2>--><p class="print-color"><strong>For Print </strong><a class="download-clr" onclick="downloadAll(window.links)">Download all</a></p>
				<?php if($getWorkshopMetirial){ foreach($getWorkshopMetirial as $workshop){ ?>
				<div class="col-md-11 mid-align"><a href="<?php echo base_url().'uploads/workshop_material/'.$workshop['document_path'];?>" download>
				<span class="btn"><?php  
				$extension = pathinfo($workshop['document_path'], PATHINFO_EXTENSION);
echo strtoupper($extension);
				?></span></a>&nbsp;&nbsp;<?php echo $workshop['document_name'];?></div>
				<?php }} else{?>
				
				<div class="col-md-11 mid-align">No Workshop Material Documents</div>
				<?php } ?>
				
			</div>
			
			<div class="col-md-12 align-top-botm">
				<p class="print-color">
				<strong>Presentation & Reporting </strong><a href="<?php  echo base_url(); ?>/assets/download-pdf/Outreach%20Schema.pdf" download class="download-clr">Download all</a>
                </p>
				<?php if($getPresentationReporting){ foreach($getPresentationReporting as $reporting){ ?>
				<div class="col-md-11 mid-align"><a href="<?php echo base_url().'uploads/presentation_reporting/'.$workshop['document_path'];?>" download>
				<span class="btn"><?php 
				
				$extension = pathinfo($workshop['document_path'], PATHINFO_EXTENSION); 
				echo strtoupper($extension);
				?></span>
				
				</a>&nbsp;&nbsp;<?php echo $reporting['document_name'];?></div>
			<?php }} else{?>
				
				<div class="col-md-11 mid-align">No Presentation & Reporting Documents</div>
				<?php } ?>
			</div>
			</br>
			
		</div>
    

</div>
    <div role="tabpanel" class="tab-pane" id="profile">
										
<?php foreach($get_workshop_upcoming1 as $workshopdata){	
			if($workshopdata['workshop_status']==1){
				$newDate = strtoupper(date("M", strtotime($workshopdata['date'])));	$newDated = date("d", strtotime($workshopdata['date'])); $newyear = date("Y", strtotime($workshopdata['date']));	
?>
<div class="col-md-12 align-top-botm1">		
                <div class="col-md-1"><div class="month-box"><?php echo $newDated; ?> <?php echo $newDate; ?><br/><?php echo $newyear; ?></span></div></div>
				 <div class="col-md-2"><?php echo $workshopdata['location']; ?></div>
                <div class="col-md-2"><?php echo $workshopdata['number_of_participants'];  ?>participants</div>
                <div class="col-md-2"><?php if(empty($workshopdata['report_id'])){ ?><?php echo $workshopdata['no_of_sessions'];  ?>sessions<?php } ?> </div>
                <div class="col-md-2"><?php if(empty($workshopdata['report_id'])){ ?><?php echo $workshopdata['durationofsessions'];  ?><?php } ?></div>
                <div class="col-md-3"><?php if($workshopdata['report_id']){ echo "<span style='font-weight:bold'>Pending for approval</span>"; }?><a href="<?php echo site_url('home/editWorkshop');?>/<?php echo $workshopdata['workshop_id']; ?>" class='glyphicon glyphicon-edit'>Edit</a></div>
</div>
<div class="col-md-12 align-top-botm1">

     <div class="col-md-5 "><?php if(empty($workshopdata['report_id'])){ ?><p style="font-size: 12px;line-height: 20px;text-align: justify;">Participating institutes: <?php 
				$workshopdataa = explode(",", $workshopdata['participate_institute']);
foreach($workshopdataa as $workshopdataget){
	$workshopdatagetlen = strlen($workshopdataget);
	if($workshopdatagetlen>=20){
	 $institutesnames = substr($workshopdataget, 0, 20);
	echo $institutesnames."...";
	echo "<br>";
	}else{
		echo $workshopdataget;
		}
	}?></p> <?php } ?></div><div class="col-md-2 "><?php if(empty($workshopdata['report_id'])){ ?><?php echo $workshopdata['subject_of_session']; ?><?php } ?></div>
               <div class="col-md-2"><?php if(empty($workshopdata['report_id'])){ ?><?php echo $workshopdata['labs_plan']; ?><?php }?></div>
               <div class="col-md-2">
				<?php if($workshopdata['report_id']) {?>
<a  id="feedback1-<?php echo $workshopdata["workshop_id"]; ?>" style="cursor: pointer;"><span id="mew1-<?php echo $workshopdata["workshop_id"]; ?>">►</span>view Reports</span></a>
<?php			}
				?></div>
			   
			   
			   </div>
			   <div class="col-md-12 align-top-botm">
                  <div class="col-md-2">
		 	<?php if($workshopdata['report_id']){ echo ""; }else{?>
			<a id="feedback2-<?php echo $workshopdata["workshop_id"]; ?>"style="cursor: pointer;"><span id="mew2-<?php echo $workshopdata["workshop_id"]; ?>">►</span>Submit Reports</a>
			<?php } ?>&nbsp;&nbsp;&nbsp;
			
				  </div>
				  
<div role="tabpanel" class="tab-pane " id="reportnew1-<?php echo $workshopdata["workshop_id"]; ?>" style="display:none" >
	<!-- FORMS -->
						<div class="row">
							<div class="col-md-12">
								<div class="row">
									<!-- product details -->								
									<div class="col-md-12">
										<div class="box border dark gray">
											<div class="box-title">
												<h4>Submit Reports</h4>
												<p>From the workshops conducted report the following information</p>
											</div>
											<div class="box-body big">
											<span id="error" class='error'></span>
												<form class="form-horizontal" method="post" enctype="multipart/form-data"  name="addStaff" id="addStaff" action="<?php echo site_url('home/submitReport');?>" role="form">
											 <input type="hidden" name="workshop_id" value="<?php echo $workshopdata["workshop_id"];  ?> " />
												  <!-- Product Name -->
												  <div class="form-group">
													<label class="col-sm-3 label-names">Number of participants attended:<span style="color:red">*</span></label>
													<div class="col-sm-6">
													  <input type="number" onkeypress="return onlyAlphabets(event,this);"name = "participate_attend" id = "participate_attend" class="required form-control no-radius required-width" >													
													    <?php echo "<span style='color:red'>".form_error('participate_attend')."</span>"; ?>
													</div>
												  </div>
												    <div class="form-group">
													<label class="col-sm-3 label-names">Number of experiments conducted:<span style="color:red">*</span></label>
													<div class="col-sm-6">
													  <input type="number" onkeypress="return onlyAlphabets(event,this);" name = "participate_experiment" id = "participate_experiment" class=" form-control no-radius required-width" >
													  <?php echo "<span style='color:red'>".form_error('participate_experiment')."</span>"; ?>
													</div>
												  </div>
												 	
												<div class="newaa">Upload documents</div>
												  <div class="form-group">
													<label class="col-sm-3 label-names">Attendance sheet<span style="color:red">*</span></label>
													<div class="col-sm-6">
													  <input type="file" name = "upload_attend_sheet" id = "upload_attend_sheet" class="required form-control no-radius" >
													  <?php echo "<span style='color:red'>".form_error('upload_attend_sheet')."</span>"; ?>
													</div>
												  </div><div class="form-group">
													<label class="col-sm-3 label-names">College report<span style="color:red">*</span></label>
													<div class="col-sm-6">
													  <input type="file"  name = "college_report" id = "college_report" class="required form-control no-radius" >
													  <?php echo "<span style='color:red'>".form_error('college_report')."</span>"; ?>
													</div>
												  </div><div class="form-group">
													<label class="col-sm-3 label-names">Workshop photos<span style="color:red">*</span></label>
													<div class="col-sm-6">
													  <input type="file" class="form-control no-radius" name="workshop_photos">
													  <?php echo "<span style='color:red'>".form_error('workshop_photos')."</span>"; ?>
													</div>
												  </div>	
												  <div class="form-group">
													<label class="col-sm-3 label-names">Comments and Feedback </br> 
													Positive<span style="color:red">*</span></label>
													<div class="col-sm-6">
													  <textarea class="form-control no-radius" rows="3" name="comments_positive"></textarea>
													  <?php echo "<span style='color:red'>".form_error('other_details')."</span>"; ?>
													</div><div class="col-sm-3"><span> Based on your experience in planning & conducting the workshop

From the faculty and students of the participating institutes</span></div>
												  </div>	
												   <div class="form-group">
													<label class="col-sm-3 label-names">Negative<span style="color:red">*</span></label>
													<div class="col-sm-6">
													  <textarea  class="form-control no-radius" rows="3" name="comments_negative"></textarea>
													  <?php echo "<span style='color:red'>".form_error('comments_negative')."</span>"; ?>
													</div>
												  </div>									  
												
												<?php /* */?>
												  
											</div>
										</div>
									</div>
									<!-- product details -->
						
							
					
						


		
			</div>		
		</div>
	</div>		<!-- /FORMS -->
					
						
						<!-- Save -->	<div class="form-group"><div class="col-sm-3">&nbsp;</div><div class="col-sm-6">
													
							<button name="submit" value="submit" class="btn btn-success clr-btn">Submit for Approval</button>
							<button name="submit" value="save" class="btn btn-warning clr-btn-org">Save</button></div><div class="col-sm-3">
					<a href="<?php echo base_url('nodal-coordinator')?>" style="
    float: right;
">	<button class="btn clr-btn-gray" style="
    float: right;
    background-color: #000;
    color: #fff;
">Cancel</button>	</a></div>
						
						</div>
						<!-- /Save -->												
						</form>
	</div>
				  <div style='display:none' id="reportnew-<?php echo $workshopdata["workshop_id"]; ?>">
				  <div class="col-md-3"><span style="color:green">&radic;</span> Attendance sheet</div>
                <div class="col-md-3"><span style="color:green">&radic;</span>	College report</div>
                <div class="col-md-3"> <span style="color:green">&radic;</span>	Workshop photos</div>
				  </div> 
			</div>
		
 <script type="text/javascript">
	$("#feedback1-<?php echo $workshopdata["workshop_id"]; ?>").click(function(){
		if($('#reportnew-<?php echo $workshopdata["workshop_id"]; ?>').css('display') == 'none'){ 
		   $('#reportnew-<?php echo $workshopdata["workshop_id"]; ?>').show('slow'); 
		   $('#mew1-<?php echo $workshopdata["workshop_id"]; ?>').html("▼");
		} else { 
		   $('#reportnew-<?php echo $workshopdata["workshop_id"]; ?>').hide('slow'); 
		   
		   $('#mew1-<?php echo $workshopdata["workshop_id"]; ?>').html("►");
		}
	});
</script>	
<script type="text/javascript">
	$("#feedback2-<?php echo $workshopdata["workshop_id"]; ?>").click(function(){
		if($('#reportnew1-<?php echo $workshopdata["workshop_id"]; ?>').css('display') == 'none'){ 
		   $('#reportnew1-<?php echo $workshopdata["workshop_id"]; ?>').show('slow'); 
		   $('#mew2-<?php echo $workshopdata["workshop_id"]; ?>').html("▼");
		} else { 
		   $('#reportnew1-<?php echo $workshopdata["workshop_id"]; ?>').hide('slow'); 
		   
		   $('#mew2-<?php echo $workshopdata["workshop_id"]; ?>').html("►");
		}
	});
</script>
			<?php 
											} }
			 ?>

			</div>
    <div role="tabpanel" class="tab-pane" id="messages">
	
	 <!-- FORMS -->
						<div class="row">
							<div class="col-md-12">
								<div class="row">
									<!-- product details -->								
									<div class="col-md-10">
										<div class="box border dark gray">
											<div class="box-title">
												<h4 class="title-font">Plan a New Workshop</h4>
											</div>
											<div class="box-body big">
											<span id="error" class='error'></span>
												<form class="form-horizontal" method="post" name="addStaff" id="addStaff" action="<?php echo site_url('home/addWorkshop');?>" role="form">
												  
												  <!-- Product Name -->
												  <div class="form-group">
													<label class="col-sm-3 label-names">Name<span style="color:red">*</span></label>
													<div class="col-sm-4">
													  <input type="text" required  name = "name" id = "name" class="required form-control no-radius" value="<?php echo set_value('name');?>">
													  <?php echo "<span style='color:red'>".form_error('name')."</span>"; ?>
													</div>
												  </div>
												    <div class="form-group">
													<label class="col-sm-3 label-names">Location<span style="color:red">*</span></label>
													<div class="col-sm-6">
													  <input type="text" required name = "location" id = "location" class=" form-control no-radius" value="<?php echo set_value('location');?>" onchange="datadiding()">
													  															<input type="hidden" name="latitude" id="latitude1" value="">
															<input type="hidden" name="longitude" id="longitude1" value="">
													  <?php echo "<span style='color:red'>".form_error('location')."</span>"; ?>
													</div>
												  </div>
												  <div class="form-group">
													<label class="col-sm-3 label-names">Participating institutes<span style="color:red">*</span></label>
													<div class="col-sm-6">
													 <textarea  required name="participate_institute" id="participating_institutes" class="text-areawidth"><?php echo set_value('participating_institutes');?></textarea>
													  <?php echo "<span style='color:red'>".form_error('participating_institutes')."</span>"; ?>
													</div>
												  </div>	
												  <div class="form-group">
												  
													<label class="col-sm-3 label-names">Date<span style="color:red">*</span></label>
													<div class="col-sm-8">
		
													  <input type="date" required name = "date" id = "mou" class="required" value="<?php echo set_value('mou');?>">
										 
													 <?php echo "<span style='color:red'>".form_error('mou')."</span>"; ?>
													</div>
												  </div>
												  <div class="form-group">
													<label class="col-sm-3 label-names">Number of participants</label>
													<div class="col-sm-8">
													  <input type="number" name = "number_of_participants" id = "participants" class="required required-width no-radius" value="<?php echo set_value('participants');?>">
													  <?php echo "<span style='color:red'>".form_error('participants')."</span>"; ?>
													</div>
												  </div>
												  <div class="newaa"><h5 style="border-bottom:1px solid#e1e1e1">Agenda for workshop</h5></div>
												  <div class="form-group">
													<label class="col-sm-3 label-names">Number of sessions</label>
													<div class="col-sm-8">
													  <input type="text" name = "no_of_sessions" id = "numberofsessions" class="required no-radius required-width" value="<?php echo set_value('numberofsessions');?>">
													  <?php echo "<span style='color:red'>".form_error('numberofsessions')."</span>"; ?>
													</div>
												  </div>
												  <div class="form-group">
													<label class="col-sm-3 label-names">Duration of sessions</label>
													<div class="col-sm-8">
													  <input type="text" name = "durationofsessions" id = "durationofsession" class="required no-radius required-width" value="<?php echo set_value('durationofsession');?>">
													  <?php echo "<span style='color:red'>".form_error('durationofsession')."</span>"; ?>
													</div>
												  </div>
												  <div class="form-group">
													<label class="col-sm-3 label-names">domain / discipline / department</label>
													<div class="col-sm-6">
													  <input type="text" name = "subject_of_session" id = "numberofsessions" class="required form-control no-radius" value="<?php echo set_value('numberofsessions');?>">
													  <?php echo "<span style='color:red'>".form_error('numberofsessions')."</span>"; ?>
													</div>
												  </div><div class="form-group">
													<label class="col-sm-3 label-names">Labs planned</label>
													<div class="col-sm-6">
													  <input type="text" name = "labs_plan" id = "labplanned" class="required form-control no-radius" value="<?php echo set_value('labplanned');?>">
													  <?php echo "<span style='color:red'>".form_error('labplanned')."</span>"; ?>
													</div>
												  </div>
												  <div class="form-group">
													<label class="col-sm-3 label-names">Other details</label>
													<div class="col-sm-6">
													  <textarea class="form-control no-radius" rows="3" name="other_details" id="other"><?php echo set_value('other');?></textarea>
													  <?php echo "<span style='color:red'>".form_error('other')."</span>"; ?>
													</div>
													<div class="col-sm-3 label-names"><span>Like special guest attending,</span></div>
													<?php
													
													$ses_data=$this->session->userdata('user_details');
													
													?>
													<input type="hidden" name="uid" value="<?php echo $ses_data['id']; ?>">
													<input type="hidden" name="outreach_id" value="<?php echo $ses_data['outreach_id']; ?>">
												  </div>	<div class="form-group">										  
												
										
								<div class="col-sm-3 label-names">&nbsp;</div><div class="col-sm-6">				
							<button   class="btn btn-success clr-btn">submit</button> <button name="submit" value="save" class="btn btn-warning clr-btn-org">Save</button></div>
				<div class="col-sm-3">	<a href="<?php echo base_url('nodal-coordinator')?>">	<button class="btn btn-warning" style="
    float: right;
    background-color: #000;
    color: #fff;
">Cancel</button>	</a>
						</div></div>
						</form>		  
											</div>
										</div>
									</div>
									
			</div>		
		</div>
	</div>		<!-- /FORMS -->
		
						
						<!-- Save -->	
						<!-- /Save -->												
						
						
						
	</div>
    <div role="tabpanel" class="tab-pane" id="settings">
	
	 <div class="container placemetns-top">
 
 
 
 <div>
<h2 class="head-events"></h2>
</div>
	
	
							
						<style>
														
tabs-below > .nav-tabs,
.tabs-right > .nav-tabs,
.tabs-left > .nav-tabs {
  border-bottom: 0;
}

.tab-content > .tab-pane,
.pill-content > .pill-pane {
  display: none;
}

.tab-content > .active,
.pill-content > .active {
  display: block;
}

.tabs-below > .nav-tabs {
  border-top: 1px solid #ddd;
}

.tabs-below > .nav-tabs > li {
  margin-top: -1px;
  margin-bottom: 0;
}

.tabs-below > .nav-tabs > li > a {
  -webkit-border-radius: 0 0 4px 4px;
     -moz-border-radius: 0 0 4px 4px;
          border-radius: 0 0 4px 4px;
}

.tabs-below > .nav-tabs > li > a:hover,
.tabs-below > .nav-tabs > li > a:focus {
  border-top-color: #ddd;
  border-bottom-color: transparent;
}

.tabs-below > .nav-tabs > .active > a,
.tabs-below > .nav-tabs > .active > a:hover,
.tabs-below > .nav-tabs > .active > a:focus {
  border-color: transparent #ddd #ddd #ddd;
}

.tabs-left > .nav-tabs > li,
.tabs-right > .nav-tabs > li {
  float: none;
}

.tabs-left > .nav-tabs > li > a,
.tabs-right > .nav-tabs > li > a {
  min-width: 74px;
  margin-right: 0;
  margin-bottom: 3px;
}

.tabs-left > .nav-tabs {
  float: left;
  margin-right: 19px;
  border-right: 1px solid #ddd;
}

.tabs-left > .nav-tabs > li > a {
  margin-right: -1px;
  -webkit-border-radius: 4px 0 0 4px;
     -moz-border-radius: 4px 0 0 4px;
          border-radius: 4px 0 0 4px;
}

.tabs-left > .nav-tabs > li > a:hover,
.tabs-left > .nav-tabs > li > a:focus {
  border-color: #eeeeee #dddddd #eeeeee #eeeeee;
}

.tabs-left > .nav-tabs .active > a,
.tabs-left > .nav-tabs .active > a:hover,
.tabs-left > .nav-tabs .active > a:focus {
  border-color: #ddd transparent #ddd #ddd;
  *border-right-color: #ffffff;
  text-decoration:underline;
}

.tabs-right > .nav-tabs {
  float: right;
  margin-left: 19px;
  border-left: 1px solid #ddd;
}

.tabs-right > .nav-tabs > li > a {
  margin-left: -1px;
  -webkit-border-radius: 0 4px 4px 0;
     -moz-border-radius: 0 4px 4px 0;
          border-radius: 0 4px 4px 0;
}

.tabs-right > .nav-tabs > li > a:hover,
.tabs-right > .nav-tabs > li > a:focus {
  border-color: #eeeeee #eeeeee #eeeeee #dddddd;
}

.tabs-right > .nav-tabs .active > a,
.tabs-right > .nav-tabs .active > a:hover,
.tabs-right > .nav-tabs .active > a:focus {
  border-color: #ddd #ddd #ddd transparent;
  *border-left-color: #ffffff;
}

.bgclr-nobg{
	background:none !important;	
	color:#000 !important;
	border:none !important;	
}

.no-border{
	border:none!important;	
}
.only-no-border{
	border:none;	
}
		input[type=date], input[type=time], input[type=datetime-local], input[type=month] {
    line-height: 14px!important;
	::-webkit-calendar-picker-indicator { background: orange; }
    
}											</style>
<div class="col-md-12 align-top-botm">
				
				<div class="col-md-1">
					<b>Date	</b>		
				</div>
				
				<div class="col-md-2"><b>Location</b></div>
                <div class="col-md-2 "><b>Participants </b></div>
                <div class="col-md-3"><b>Experiments</b></div>
				<div class="col-md-3"></div>
			</div>
												<?php
												
											foreach($get_workshop_history as $workshopdata){
												$newDate = strtoupper(date("M", strtotime($workshopdata['date'])));												
												$newDated = date("d", strtotime($workshopdata['date']));	
												$newyear = date("Y", strtotime($workshopdata['date']));	
												?>
                                                
                                                
                                                 <div class="col-md-12 align-top-botm">
				
				
                <div class="col-md-1">
					<div class="month-box"><span><?php echo $newDated; ?> <?php echo $newDate; ?><br/><?php echo $newyear; ?></span></div>				
				</div>
				
				 <div class="col-md-2"><?php echo $workshopdata['location']; ?></div>
                <div class="col-md-2"><?php if($workshopdata['reason']){ ?><span  style="color: #CACACA;"><?php echo $workshopdata['number_of_participants'];  ?></span> <?php }else{ ?><?php echo $workshopdata['number_of_participants'];  ?>participants<?php } ?></div>
                <div class="col-md-2"><?php if($workshopdata['reason']){ ?><span  style="color: #CACACA;"><?php echo $workshopdata['number_of_participants'];  ?></span><?php }else{ ?><?php echo $workshopdata['number_of_participants'];  ?> experiments<?php  } ?></div>
				                 <div class="col-md-2"> <a href="#" id='feedback-<?php echo $workshopdata["workshop_id"]; ?>'><span id="mew-<?php echo $workshopdata["workshop_id"]; ?>" >► </span> viewReport</a></div><?php if($workshopdata['reason']){ echo "Workshop Cancelled";} ?>

             <div style='display:none' id="frn_comment-<?php echo $workshopdata["workshop_id"]; ?>"></br></br></br>
			<div class="tabbable tabs-left">
        <ul class="nav nav-tabs no-border">
          <li class="active"><a href="#a-<?php echo $workshopdata["workshop_id"]; ?>" data-toggle="tab" class="bgclr-nobg">Attendance sheets</a></li>
          <li ><a href="#b-<?php echo $workshopdata["workshop_id"]; ?>" data-toggle="tab" class="bgclr-nobg">College report</a></li>
          <li><a href="#c-<?php echo $workshopdata["workshop_id"]; ?>" data-toggle="tab" class="bgclr-nobg">Workshop Photos</a></li>
        </ul>
        <div class="tab-content only-no-border">
         <div class="tab-pane active" id="a-<?php echo $workshopdata["workshop_id"]; ?>"><div style="float: right; margin-right: 50%;  ">
			</div>
         	    	 
<object data="<?php echo base_url(); ?>uploads/attend_sheet/<?php echo $workshopdata['upload_attend_sheet']; ?>" type="application/pdf" width="80%" height="250px">
  <p>Alternative text - include a link <a href="<?php echo base_url(); ?>uploads/attend_sheet/<?php echo $workshopdata['upload_experiment_sheet']; ?>">to the PDF!</a></p>
</object>					 
         	         	</div>
         	
         <div class="tab-pane" id="b-<?php echo $workshopdata["workshop_id"]; ?>">
         	<div style="float: right; margin-right: 50%;  ">
				</div>
         		<object data="<?php echo base_url(); ?>uploads/college_report/<?php echo $workshopdata['college_report']; ?>" type="application/pdf" width="80%" height="250px">
  <p>Alternative text - include a link <a href="<?php echo base_url(); ?>uploads/college_report/<?php echo $workshopdata['college_report']; ?>">to the PDF!</a></p>
</object>

         		</div>
         <div class="tab-pane" id="c-<?php echo $workshopdata["workshop_id"]; ?>">
		 <img src="<?php echo base_url(); ?>uploads/workshop_photos/<?php echo $workshopdata['workshop_photos']; ?>" width="250px" height="250px">
		
		 
		 </div>
        
        </div>
      </div>
			 </div>
			 
			 
        <script type="text/javascript">
	$("#feedback-<?php echo $workshopdata["workshop_id"]; ?>").click(function(){
		if($('#frn_comment-<?php echo $workshopdata["workshop_id"]; ?>').css('display') == 'none'){ 
		   $('#frn_comment-<?php echo $workshopdata["workshop_id"]; ?>').show('slow'); 
		   $('#mew-<?php echo $workshopdata["workshop_id"]; ?>').html("▼")
		} else { 
		   $('#frn_comment-<?php echo $workshopdata["workshop_id"]; ?>').hide('slow'); 
		   
		   $('#mew-<?php echo $workshopdata["workshop_id"]; ?>').html("►")
		}
	});
</script>

                
			</div>
                                                
                    	<?php
											}
													?>  
	
	
	
    					
										</div>
  </div>
</div>
</div>

 
 
        
        <!--------- Banner right panel ------>
        <!-- end homeslider -->	
        
        </div>
        
		
		
        
        
        <section class="infoarea whites">
        <div class="container placemetns-top">
		

		</div>
        </section>