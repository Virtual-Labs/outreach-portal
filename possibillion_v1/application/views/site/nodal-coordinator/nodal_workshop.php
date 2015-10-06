<script src="<?php echo base_url(); ?>assests/site/js/jquery.counterup.min.js"></script>
<script src="<?php echo base_url(); ?>assests/site/js/waypoints.min.js"></script>
<?php $ses_data = $this -> session -> userdata('user_details'); ?>
<section class="strip-colors">
<div class="container">
<div>
<div class="col-md-4 text-center workshop-run">
<div class="icon-box-top">
<div class="value-disp">
<p align="left" class="value-list">
<span class="counternew" style="display:inline-block; color:#fff;"><?php
	if (!empty($nodalcoordinatorworkshopcount)) { echo $nodalcoordinatorworkshopcount;
	}
 ?>/<?php
	if (!empty($ses_data['target_workshops'])) { echo $ses_data['target_workshops'];
	}
 ?></span><span class="resu-top">WORKSHOPS RUN</span>
</p>
</div>
</div>
</div>
<div class="col-md-4 text-center labs-taken">
<div class="icon-box-top">
<div class="value-disp">
<p align="left" class="value-list">
<span class="counternew" style="display: inline-block;color:#fff;"><?php
	if (!empty($participatecount[0]['participants'])) { echo $participatecount[0]['participants'];
	}
 ?>/<?php
	if (!empty($ses_data['target_participants'])) { echo $ses_data['target_participants'];
	}
 ?></span><span class="resu-top">PARTICIPANTS</span>
</p>
</div></div>
</div>
<div class="col-md-4 text-center node-centers">
<div class="icon-box-top">
<div class="value-disp">
<p align="left" class="value-list">
<span class="counternew" style="display: inline-block;color:#fff;"><?php
	if (!empty($participatecount[0]['experiments'])) { echo $participatecount[0]['experiments'];
	}
 ?>/<?php
	if (!empty($ses_data['target_expriments'])) { echo $ses_data['target_expriments'];
	}
 ?></span><span class="resu-top">EXPERIMENTS
</span>
</p>
</div></div>
</div>

</div>
</div>

</section>
<div class="container" style="margin-top:30px;">
<?php if($this->session->flashdata('msg')!=NULL) { ?>
<div class="alert col-md-12 alert-success display-none" style="display: block;">
<a data-dismiss="alert" href="#" aria-hidden="true" class="close">�</a>
<?php  echo $this -> session -> flashdata('msg'); ?>
</div>
<?php } ?>
<div>
<ul class="nav nav-tabs" role="tablist">
<li role="presentation" class="active tab-workshop"><a href="#home" aria-controls="home" role="tab" data-toggle="tab" >Workshop Material</a></li>
<li role="presentation" class="tab-workshop nav_li_pad"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Active Workshops</a></li>
<li role="presentation" class="tab-workshop nav_li_pad"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">New Workshop</a></li>
<li role="presentation" class="tab-workshop nav_li_pad"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">History</a></li>
</ul>
<div class="tab-content">
<div role="tabpanel" class="tab-pane active" id="home">
<div class="container placemetns-top">
<div>
<p class="print-color"><strong>For Print </strong><a class="download-clr" onclick="downloadAll(window.links)">Download all</a></p>
</div>
<?php if($getGuidesMaterial){ foreach($getGuidesMaterial as $guidance){ ?>
<div class="col-md-12 ">
<div class="col-md-8 mid-align" class="icon-ok"><span class="btn"><?php
$extension = pathinfo($guidance['document_path'], PATHINFO_EXTENSION);
echo strtoupper($extension);
?></span>&nbsp;&nbsp;<?php echo $guidance['name']; ?></div>
</div>
<?php }} else{ ?>
<div class="col-md-12 align-top-botm">	
<div class="col-md-1 mid-align">&#10148;</div>
<div class="col-md-5 mid-align" class="icon-ok">No Guides & Material Documents</div>
</div>
<?php } ?>
<div class="col-md-12 align-top-botm" style="border-top: solid 1px #eee;">
<p class="print-color"><strong>For Print </strong><a class="download-clr" onclick="downloadAll(window.links)">Download all</a></p>
<?php if($getWorkshopMetirial){ foreach($getWorkshopMetirial as $workshop){ ?>
<div class="col-md-11 mid-align"><a href="<?php echo base_url() . 'uploads/workshop_material/' . $workshop['document_path']; ?>" download >
<span class="btn"><?php
$extension = pathinfo($workshop['document_path'], PATHINFO_EXTENSION);
echo strtoupper($extension);
?></span></a>&nbsp;&nbsp;<?php echo $workshop['name']; ?></div>
<?php }} else{ ?>
<div class="col-md-1 mid-align">&#10148;</div>
<div class="col-md-11 mid-align">No Workshop Material Documents</div>
<?php } ?>
</div>
<div class="col-md-12 align-top-botm">
<p class="print-color">
<strong>Presentation & Reporting </strong><a href="" download class="download-clr">Download all</a>
</p>
<?php if($getPresentationReporting){ foreach($getPresentationReporting as $reporting){ ?>
<div class="col-md-11 mid-align"><a href="<?php echo base_url() . 'uploads/presentation_reporting/' . $workshop['document_path']; ?>" download>
<span class="btn"><?php
$extension = pathinfo($workshop['document_path'], PATHINFO_EXTENSION);
echo strtoupper($extension);
?></span>
</a>&nbsp;&nbsp;<?php echo $reporting['name']; ?></div>
<?php }} else{ ?>
<div class="col-md-1 mid-align">&#10148;</div>
<div class="col-md-11 mid-align">No Presentation & Reporting Documents</div>
<?php } ?>
</div>
</br>
</div>
</div>
<div role="tabpanel" class="tab-pane" id="profile">									
<?php foreach($getActiveWorkshop as $workshopdata){
$newDate = strtoupper(date("M", strtotime($workshopdata['date'])));	$newDated = date("d", strtotime($workshopdata['date'])); $newyear = date("Y", strtotime($workshopdata['date']));	
?>
<div class="col-md-12 align-top-botm1">		
<div class="col-md-1"><div class="month-box"><?php echo $newDated; ?> <?php echo $newDate; ?><br/><?php echo $newyear; ?></span></div></div>
<div class="col-md-2"><?php echo $workshopdata['location']; ?></div>
<div class="col-md-2"><?php echo $workshopdata['no_of_participants']; ?>participants</div>
<div class="col-md-2"><?php if(empty($workshopdata['status'])){ ?><?php echo $workshopdata['no-of_sessions']; ?>Sessions<?php } ?> </div>
<div class="col-md-2"><?php if(empty($workshopdata['status'])){ ?><?php echo $workshopdata['duration_of_session']; ?>Duration<?php } ?></div>
<div class="col-md-3"><?php if($workshopdata['status']==1){ echo "<span style='font-weight:bold'>Pending for approval</span>"; } if($workshopdata['status']!=3){?><a href="<?php echo site_url('editWorkshop'); ?>/<?php echo $workshopdata['workshop_id']; ?>" class='glyphicon glyphicon-edit'>Edit</a> <?php }else{ echo "cancel";} ?></div>
</div>
<div class="col-md-12 align-top-botm1">
<div class="col-md-5 "><?php if(empty($workshopdata['status'])){ ?><p style="font-size: 12px;line-height: 20px;text-align: justify;">Participating institutes: <?php $workshopdataa = explode(",", $workshopdata['institutes']);
foreach ($workshopdataa as $workshopdataget) {
	$workshopdatagetlen = strlen($workshopdataget);
	if ($workshopdatagetlen >= 20) {
		$institutesnames = substr($workshopdataget, 0, 20);
		echo $institutesnames . "...";
		echo "<br>";
	} else {
		echo $workshopdataget;
	}
}
?></p> <?php } ?></div><div class="col-md-2 "><?php if(empty($workshopdata['status'])){ ?><?php echo $workshopdata['subject_of_session']; ?><?php } ?></div>
<div class="col-md-2"><?php if(empty($workshopdata['status'])){ ?><?php echo $workshopdata['labs_plan']; ?><?php } ?></div>
<div class="col-md-2">
<?php if($workshopdata['status']) {
	if($workshopdata['status']!=3){
	?>
<a  id="<?php echo $workshopdata["workshop_id"]; ?>" class="nodal12_id"style="cursor: pointer;"><span id="mew1-<?php echo $workshopdata["workshop_id"]; ?>">►</span>view Reports</span></a>
	<?php			} } ?></div>
</div>
<div class="col-md-12 align-top-botm">
<div class="col-md-2">
<?php if($workshopdata['status']){ echo ""; }else{?>
<a id="<?php echo $workshopdata["workshop_id"]; ?>" class="nodal1_id" style="cursor: pointer;"><span id="mew2-<?php echo $workshopdata["workshop_id"]; ?>">►</span>Submit Reports</a>
<?php } ?>&nbsp;&nbsp;&nbsp;
</div>
<div role="tabpanel" class="tab-pane " id="reportnew1-<?php echo $workshopdata["workshop_id"]; ?>" style="display:none" >
<div class="row">
<div class="col-md-12">
<div class="row">
<div class="col-md-12">
<div class="box border dark gray">
<div class="box-title">
<h4>Submit Reports</h4>
<p>From the workshops conducted report the following information</p>
</div>
<div class="box-body big">
<span id="error" class='error'></span>
<form class="form-horizontal" method="post" enctype="multipart/form-data"  name="submitreport" id="submitreport" action="<?php echo site_url('submitReport'); ?>" role="form">
<input type="hidden" name="workshop_id" value="<?php echo $workshopdata["workshop_id"]; ?> " />
<div class="form-group">
<label class="col-sm-3 label-names">Number of participants attended:<span style="color:red">*</span></label>
<div class="col-sm-6">
<input type="number" required min="1" onkeypress="return onlyAlphabets(event,this);"name = "participate_attend" id = "participate_attend" class="required form-control no-radius required-width" >													
<?php echo "<span style='color:red'>" . form_error('participate_attend') . "</span>"; ?>
</div>
</div>
<div class="form-group">
<label class="col-sm-3 label-names">Number of experiments conducted:<span style="color:red">*</span></label>
<div class="col-sm-6">
<input type="number" required min="1" onkeypress="return onlyAlphabets(event,this);" name = "participate_experiment" id = "participate_experiment" class=" form-control no-radius required-width" >
<?php echo "<span style='color:red'>" . form_error('participate_experiment') . "</span>"; ?>
</div>
</div>
<div class="newaa">Upload documents</div>
<div class="form-group">
<label class="col-sm-3 label-names">Attendance sheet<span style="color:red">*</span></br>Please upload PDF file format!</label>
<div class="col-sm-6">
<input type="file" name = "upload_attend_sheet" accept=".pdf"  id = "upload_attend_sheet" class="required form-control no-radius" >
<?php echo "<span style='color:red'>" . form_error('upload_attend_sheet') . "</span>"; ?>
</div>
</div><div class="form-group">
<label class="col-sm-3 label-names">College report<span style="color:red">*</span></br>Please upload PDF file format!</label>
<div class="col-sm-6">
<input type="file"  name = "college_report" accept=".pdf" id = "college_report" class="required form-control no-radius" >
<?php echo "<span style='color:red'>" . form_error('college_report') . "</span>"; ?>
</div>
</div><div class="form-group">
<label class="col-sm-3 label-names">Workshop photos<span style="color:red">*</span></br>Please upload image formats only</label>
<div class="col-sm-6">
<input type="file" multiple accept="image/gif, image/jpeg" class="form-control no-radius" name="workshop_photos[]" id="workshop_photos">
<?php echo "<span style='color:red'>" . form_error('workshop_photos') . "</span>"; ?>
</div>
</div>	
<div class="form-group">
<label class="col-sm-3 label-names">Comments and Feedback </br> 
Positive<span style="color:red">*</span></label>
<div class="col-sm-6">
<textarea required class="form-control no-radius" rows="3" name="comments_positive"></textarea>
<?php echo "<span style='color:red'>" . form_error('other_details') . "</span>"; ?>
</div><div class="col-sm-3"><span> Based on your experience in planning & conducting the workshop

From the faculty and students of the participating institutes</span></div>
</div>	
<div class="form-group">
<label class="col-sm-3 label-names">Negative<span style="color:red">*</span></label>
<div class="col-sm-6">
<textarea  required class="form-control no-radius" rows="3" name="comments_negative"></textarea>
<?php echo "<span style='color:red'>" . form_error('comments_negative') . "</span>"; ?>
</div>
</div>									  
</div>
</div>
</div>
</div>		
</div>
</div>	<div class="form-group"><div class="col-sm-3">&nbsp;</div><div class="col-sm-6">
<button name="submit" value="submit" class="btn btn-success clr-btn">Submit for Approval</button>
</div>
</div>
</form><div class="col-sm-3" style="float: right;margin-top: -42px;">
<a href="<?php echo base_url('NodalDashboard')?>" style="float: right;">	<button class="btn clr-btn-gray" style="float: right;background-color: #000;color: #fff;">Cancel</button>	</a></div>
</div>
<div style='display:none' id="reportnew-<?php echo $workshopdata["workshop_id"]; ?>">
<div class="col-md-3"><span style="color:green">&radic;</span> Attendance sheet</div>
<div class="col-md-3"><span style="color:green">&radic;</span>	College report</div>
<div class="col-md-3"> <span style="color:green">&radic;</span>	Workshop photos</div>
</div> 
</div>

<?php } ?>

</div>
<div role="tabpanel" class="tab-pane" id="messages">
<div class="row">
<div class="col-md-12">
<div class="row">							
<div class="col-md-10">
<div class="box border dark gray">
<div class="box-title">
<h4 class="title-font">Plan a New Workshop</h4>
</div>
<div class="box-body big">
<span id="error" class='error'></span>
<form class="form-horizontal" method="post" name="nodal" id="nodalworkshopcre" action="<?php echo site_url('addWorkshop'); ?>" role="form">
<div class="form-group">
<label class="col-sm-3 label-names">Name<span style="color:red">*</span></label>
<div class="col-sm-4">
<input type="text"   name = "name" id = "name" class="required form-control no-radius" value="<?php echo set_value('name'); ?>" required>
<?php echo "<span style='color:red'>" . form_error('name') . "</span>"; ?>
</div>
</div>
<div class="form-group">
<label class="col-sm-3 label-names">Location<span style="color:red">*</span></label>
<div class="col-sm-6">
<input type="text"  name = "location" id = "location" class=" form-control no-radius" value="<?php echo set_value('location'); ?>" onchange="datadiding()" required>
<input type="hidden" name="latitude" id="latitude1" value="">
<input type="hidden" name="longitude" id="longitude1" value="">
<?php echo "<span style='color:red'>" . form_error('location') . "</span>"; ?>
</div>
</div>
<div class="form-group">
<label class="col-sm-3 label-names">Participating institutes<span style="color:red">*</span></label>
<div class="col-sm-6">
<textarea   name="institutes" id="institutes" class="text-areawidth" required><?php echo set_value('participating_institutes'); ?></textarea>
<?php echo "<span style='color:red'>" . form_error('participating_institutes') . "</span>"; ?>
</div>
</div>	
<div class="form-group">
<label class="col-sm-3 label-names">Date<span style="color:red">*</span></label>
<div class="col-sm-8">
<input type="text"  name = "date" id = "mou" class="required" value="<?php echo set_value('mou'); ?>" required>
<?php echo "<span style='color:red'>" . form_error('mou') . "</span>"; ?>
</div>
</div>
<div class="form-group">
<label class="col-sm-3 label-names">Number of participants<span style="color:red">*</span></label>
<div class="col-sm-8">
<input type="number"   min="1" name = "no_of_participants" id = "no_of_participants" class="required required-width no-radius" value="<?php echo set_value('participants'); ?>" required>
<?php echo "<span style='color:red'>" . form_error('participants') . "</span>"; ?>
</div>
</div>
<div class="newaa"><h5 style="border-bottom:1px solid#e1e1e1">Agenda for workshop</h5></div>
<div class="form-group">
<label class="col-sm-3 label-names">Number of sessions<span style="color:red">*</span></label>
<div class="col-sm-8">
<input type="text"   name = "no-of_sessions" id = "no-of_sessions" class="required no-radius required-width" value="<?php echo set_value('numberofsessions'); ?>" required>
<?php echo "<span style='color:red'>" . form_error('numberofsessions') . "</span>"; ?>
</div>
</div>
<div class="form-group">
<label class="col-sm-3 label-names">Duration of sessions<span style="color:red">*</span></label>
<div class="col-sm-8">
<input type="text"  name = "duration_of_session" id = "duration_of_session" class="required no-radius required-width" value="<?php echo set_value('durationofsession'); ?>" required>
<?php echo "<span style='color:red'>" . form_error('durationofsession') . "</span>"; ?>
</div>
</div>
<div class="form-group">
<label class="col-sm-3 label-names">domain / discipline / department<span style="color:red">*</span></label>
<div class="col-sm-6">
<input type="text"   name = "discipline" id = "discipline" class="required form-control no-radius" value="<?php echo set_value('numberofsessions'); ?>" required>
<?php echo "<span style='color:red'>" . form_error('numberofsessions') . "</span>"; ?>
</div>
</div><div class="form-group">
<label class="col-sm-3 label-names">Labs planned<span style="color:red">*</span></label>
<div class="col-sm-6">
<input type="text"  name = "labs_planned" id = "labs_planned"  class="required form-control no-radius" value="<?php echo set_value('labplanned'); ?>" required>
<?php echo "<span style='color:red'>" . form_error('labplanned') . "</span>"; ?>
</div>
</div>
<div class="form-group">
<label class="col-sm-3 label-names">Other details<span style="color:red">*</span></label>
<div class="col-sm-6">
<textarea   class="form-control no-radius" rows="3" name="other_details" id="other_details" required><?php echo set_value('other'); ?></textarea>
<?php echo "<span style='color:red'>" . form_error('other') . "</span>"; ?>
</div>
<div class="col-sm-3 label-names"><span>Like special guest attending,</span></div>
<?php $ses_data = $this -> session -> userdata('user_details'); ?>
<input type="hidden" name="nodal_id" value="<?php echo $ses_data['nodal_id']; ?>">
</div>	<div class="form-group">										  
<div class="col-sm-3 label-names">&nbsp;</div><div class="col-sm-6">				
<button   class="btn btn-success clr-btn">Submit</button> <!--<button name="submit" value="save" class="btn btn-warning clr-btn-org">Save</button>--></div>
</div>
</form>	<div class="col-sm-3" style="float: right;margin-top: -42px;">	<a href="<?php echo base_url('NodalDashboard')?>">	<button class="btn btn-warning" style="float: right;background-color: #000;color: #fff;">Cancel</button>	</a>
</div>	  
</div>
</div>
</div>

</div>		
</div>
</div>
</div>
<div role="tabpanel" class="tab-pane" id="settings">
<div class="container placemetns-top">
<div>
<h2 class="head-events"></h2>
</div>					
<div class="col-md-12 align-top-botm">
<div class="col-md-1">
<b>Date	</b>		
</div>
<div class="col-md-2"><b>Location</b></div>
<div class="col-md-2 "><b>Participants </b></div>
<div class="col-md-3"><b>Session</b></div>
<div class="col-md-3"></div>
</div>
<?php
foreach($getWorkshopHistoryNodal as $workshopdata){
$newDate = strtoupper(date("M", strtotime($workshopdata['date'])));												
$newDated = date("d", strtotime($workshopdata['date']));	
$newyear = date("Y", strtotime($workshopdata['date']));	
?>
<div class="col-md-12 align-top-botm">
<div class="col-md-1">
<div class="month-box"><span><?php echo $newDated; ?> <?php echo $newDate; ?><br/><?php echo $newyear; ?></span></div>				
</div>
<div class="col-md-2"><?php echo $workshopdata['location']; ?></div>
<div class="col-md-2"><?php if($workshopdata['reason']){ ?><span  style="color: #CACACA;"><?php echo $workshopdata['no_of_participants']; ?></span> <?php }else{ ?><?php echo $workshopdata['no_of_participants']; ?>participants<?php } ?></div>
<div class="col-md-2"><?php if($workshopdata['reason']){ ?><span  style="color: #CACACA;"><?php echo $workshopdata['no-of_sessions']; ?></span><?php }else{ ?><?php echo $workshopdata['no-of_sessions']; ?> Session<?php  } ?></div>
<div class="col-md-2"> <a href="#" class="nodal_id" id='<?php echo $workshopdata["workshop_id"]; ?>'><span id="mew-<?php echo $workshopdata["workshop_id"]; ?>" >► </span> viewReport</a></div><?php
if ($workshopdata['reason']) { echo "Workshop Cancelled";
}
?>
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
<object data="<?php echo base_url(); ?><?php echo $workshopdata['attendance_sheet']; ?>" type="application/pdf" width="80%" height="250px">
		  				<p>Alternative text - include a link <a href="<?php echo base_url(); ?>assests/uploads/attend_sheet/<?php echo $workshopdata['attendance_sheet']; ?>">to the PDF!</a></p>
					</object>				 
</div>
<div class="tab-pane" id="b-<?php echo $workshopdata["workshop_id"]; ?>">
<div style="float: right; margin-right: 50%;  ">
</div>
<object data="<?php echo base_url(); ?><?php echo $workshopdata['college_report']; ?>" type="application/pdf" width="80%" height="250px">
			  <p>Alternative text - include a link <a href="<?php echo base_url(); ?>assests/uploads/college_report/<?php echo $workshopdata['college_report']; ?>">to the PDF!</a></p>
			</object>
</div>
<div class="tab-pane" id="c-<?php echo $workshopdata["workshop_id"]; ?>"> <ul class="bxslider">
									<?php $nodalphoto = json_decode($workshopdata['path']);
									 foreach($nodalphoto[0] as $nodalphotos){
									?>
										<li class="bxslider-gallery"><img src="<?php echo base_url(); ?>assests/uploads/workshopphotos/<?php echo $nodalphotos; ?>" width="250px" height="250px"/>
										</li>
									<?php } ?>
									</ul>
</div>
</div>
</div>
</div>
</div>
<?php } ?>  
</div>
</div>
</div>
</div>
<script type="text/javascript" src="<?php echo base_url(); ?>assests/js/jquery-validate/jquery.validate.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assests/site/js/jquery.simplyscroll.js"></script>
<link rel="stylesheet" href="<?php echo base_url(); ?>assests/site/css/jquery.simplyscroll.css" media="all" type="text/css">
<link rel="stylesheet" href="<?php echo base_url(); ?>assests/date/jquery.mobile.datepicker.css" />
<link rel="stylesheet" href="<?php echo base_url(); ?>assests/date/jquery.mobile.datepicker.theme.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script> 
<script src="<?php echo base_url(); ?>assests/date/datepicker.js"></script>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assests/js/nodalco.js"></script>
<link rel="stylesheet" href="<?php echo base_url(); ?>assests/css/nodal.css" />

</div>
<section class="infoarea whites">
<div class="container placemetns-top">
</div>
</section>
<style>
	.bxslider-gallery {
		list-style-type: none;
		margin: 10px;
		float: left;
	}
</style>
