 <meta name="content-type"           content="application/vnd.ms-powerpoint"/>
 <meta name="content-type"           content="application/vnd.ms-word"/>
 <meta name="content-type"           content="application/vnd.ms-word"/>
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
  $('#divaid1').hide();
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
<style>
.counter1{
    font-size: 19px;
    font-family: 'Montserrat', sans-serif;
    font-weight: 700;
    line-height: 0px;
}
</style>
	
        <!-- end fixedmenu -->
		<?php $ses_data=$this->session->userdata('user_details'); ?>
          <!-- end servicesbox -->
		<section class="strip-colors">
		<div class="container">
			<div>
				<div class="col-md-3 text-center workshop-run">
					<div class="icon-box-top">
					<div class="value-disp">
						<p align="left" class="value-list">
							<span class="counter1" style="display:inline-block; color:#fff;"><?php echo $nodalcoordinatorcounthistroy[0]['participants']; ?>/<?php echo  $nodalcoordinatorworkshop['experiments']; ?></span><span class="resu-top">EXPERIMENTS</span>
						</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 text-center labs-taken">
					<div class="icon-box-top">
						<div class="value-disp">
						<p align="left" class="value-list">
							<span class="counter1" style="display: inline-block;color:#fff;"><?php echo $nodalcoordinatorcounthistroy[0]['experiments']; ?>/<?php echo  $nodalcoordinatorworkshop['participants']; ?></span><span class="resu-top">PARTICIPANTS</span>
						</p>
					</div></div>
				</div>
				<div class="col-md-3 text-center workshop-run">
					<div class="icon-box-top">
					<div class="value-disp">
						<p align="left" class="value-list">
							<span class="counter1" style="display:inline-block; color:#fff;"><?php echo $nodalcoordinatorworkshopcount; ?>/<?php echo  $nodalcoordinatorworkshop['workshop']; ?></span><span class="resu-top">WORKSHOPS</span>
						</p>
						</div>
					</div>
				</div>
				
				<div class="col-md-3 text-center node-centers">
					<div class="icon-box-top">
						<div class="value-disp">
						<p align="left" class="value-list">
							<span class="counter1" style="display: inline-block;color:#fff;"><?php echo $nodalcoordinatorcount; ?></span><span class="resu-top">NODEL CENTERS

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

  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active tab-workshop"><a href="#home" aria-controls="home" role="tab" data-toggle="tab" >Upcoming Workshops</a></li>
    <li role="presentation" class="tab-workshop"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Pending for Approval</a></li>
    <li role="presentation" class="tab-workshop"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">Workshop History</a></li>
    <li role="presentation" class="tab-workshop"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">Nodal Coordinator Training</a></li>
    <li role="presentation" class="tab-workshop"><a href="#addnewnodal" aria-controls="addnewnodal" role="tab" data-toggle="tab">Manage Nodal Centers</a></li>
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="home">
 <div class="container placemetns-top">
 
 
 
 <div>
<!--<h2 class="head-events">Upcoming Workshops</h2>-->
</div>

 <div class="col-md-12 align-top-botm">
				
				<div class="col-md-2">
					Date			
				</div>
				
				<div class="col-md-2">Location</div>
                <div class="col-md-2 ">Participants planned</div>
                <div class="col-md-3">Participating Institutes</div>
				<div class="col-md-3">Nodal Coordinator</div>
			</div>

			
			
			<?php
											foreach($get_workshop_upcoming as $workshopdata){
												$newDate = strtoupper(date("M", strtotime($workshopdata['date'])));												
												$newDated = date("d", strtotime($workshopdata['date']));	
												$newyear = date("Y", strtotime($workshopdata['date']));		
														?>
												
			<div class="col-md-12 align-top-botm">
				
				<div class="col-md-2">
					<div class="month-box"><span><?php echo $newDated; ?> <?php echo $newDate; ?><br/><?php echo $newyear; ?></span></div>				
				</div>
				
				<div class="col-md-2 mid-align"><?php echo $workshopdata['location']; ?></div>
                <div class="col-md-2 mid-align"><?php echo $workshopdata['number_of_participants']; ?></div>
                <div class="col-md-3 mid-align"><p style="font-size: 12px;line-height: 20px;text-align: justify;"><?php 
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
	}			

				?></p></div>
				
				<div class="col-md-3 mid-align"><?php echo $workshopdata['name']; ?></div>
			</div>
			<?php
											} 
			?>
			
		</div>
       
       

</div>

    <div role="tabpanel" class="tab-pane" id="profile">
     <div class="container placemetns-top">
 
 
 
 <div>
<h2 class="head-events"></h2>
</div>
										 <div class="col-md-12 align-top-botm">
            	<div class="col-md-1">
					Date			
				</div>
				
			<div class="col-md-2">Location</div>
                <div class="col-md-1">Participants</div>
                <div class="col-md-1">Experiments</div>
                <div class="col-md-3 ">Participating Institutes</div>
                <div class="col-md-2">Nodal Coordinator</div>
				<div class="col-md-2">&nbsp;</div>
			</div>
												<?php
												
											foreach($get_workshop as $workshopdata){
												if($workshopdata["report_id"]!=0){ 
												$newDate = strtoupper(date("M", strtotime($workshopdata['date'])));												
												$newDated = date("d", strtotime($workshopdata['date']));	
												$newyear = date("Y", strtotime($workshopdata['date']));		
												
												?>
                                                
                                                
                                                 <div class="col-md-12 align-top-botm">
				
				
                <div class="col-md-1">
					<div class="month-box"><span><?php echo $newDated; ?> <?php echo $newDate; ?><br/><?php echo $newyear; ?></span></div>				
				</div>
				
				 <div class="col-md-2"><?php echo $workshopdata['location']; ?></div>
                <div class="col-md-1"><?php echo $workshopdata['participate_attend'];  ?></div>
                <div class="col-md-1"><?php echo $workshopdata['participate_experiment'];  ?></div>
                <div class="col-md-3 "><p style="font-size: 12px;line-height: 20px;text-align: justify;"><?php 
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
	}


				?></p></div>
                <div class="col-md-2"><?php echo $workshopdata['name']; ?></div>
                  <div class="col-md-2"><a  href ="<?php echo site_url('home/viewReport');?>/<?php echo $workshopdata['workshop_id']; ?>"  style="cursor: pointer;"><span id="mew1-<?php echo $workshopdata["workshop_id"]; ?>">►</span>viewReport</a></div>
				
                
<script type="text/javascript">
	$("#feedback2-<?php echo $workshopdata["workshop_id"]; ?>").click(function(){
		if($('#frn_comment2-<?php echo $workshopdata["workshop_id"]; ?>').css('display') == 'none'){ 
		   $('#frn_comment2-<?php echo $workshopdata["workshop_id"]; ?>').show('slow'); 
		   $('#mew2-<?php echo $workshopdata["workshop_id"]; ?>').html("▼");
		} else { 
		   $('#frn_comment2-<?php echo $workshopdata["workshop_id"]; ?>').hide('slow'); 
		    $('#mew2-<?php echo $workshopdata["workshop_id"]; ?>').html("►");
		}
	});
</script>
                
			</div>
			<div style="display:none" id="frn_comment2-<?php echo $workshopdata["workshop_id"]; ?>">
										<table id="datatable2" cellpadding="0" cellspacing="0" border="0" class="datatable table table-striped table-bordered table-hover">

											<thead>

												<tr>

													<th>S.No</th>

													<th>Name</th>

													<th>Location</th>
													<th>Participating institutes</th>
												<!--	<th>Date</th>-->
													<th>No of participants</th>
													<th>No of sessions</th>
													<th>Duration of sessions</th>
													<th>Subject of sessions</th>
													<th>Labs planned</th>
												<!--	<th>Other </th>-->
													
												</tr>
											</thead>
											
												<?php
												
											foreach($view_reports as $workshopdata){
																						?>
												
												<tr class="gradeX">
													<td><?php echo $workshopdata['workshop_id']; ?></td>
													<td><?php echo $workshopdata['name']; ?></td>
													<td><?php echo $workshopdata['location']; ?></td>
													<td><?php echo $workshopdata['participate_institute']; ?></td>
													<!--<td><?php echo $workshopdata['date'];  ?></td>-->
													<td><?php echo $workshopdata['number_of_participants'];  ?></td>
													<td><?php echo $workshopdata['no_of_sessions'];  ?></td>
													<td><?php echo $workshopdata['durationofsessions']; ?></td>
													<td><?php echo $workshopdata['subject_of_session'];  ?></td>
													<td><?php echo $workshopdata['labs_plan'];  ?></td>
													<!--<td><?php echo $workshopdata['upload_attend_sheet']; ?></td>-->
													</tr>
													<?php
											}
											 ?>
</table>
<?php if($workshopdata['upload_attend_sheet']){
													?>
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
													</style>
													<form method="post" action="<?php echo site_url('home/approverepost');?>">
													 <div class="tabbable tabs-left">
        <ul class="nav nav-tabs">
          <li class="active"><a href="#a" data-toggle="tab">Attendance sheets</a></li>
          <li ><a href="#b" data-toggle="tab">College report</a></li>
          <li><a href="#c" data-toggle="tab">Workshop Photos</a></li>
          <li><a href="#d" data-toggle="tab">Comments</a></li>
        </ul>
        <div class="tab-content">
         <div class="tab-pane active" id="a"><div >
		 	<object data="<?php echo base_url(); ?>uploads/attend_sheet/<?php echo $workshopdata['upload_attend_sheet']; ?>" type="application/pdf" width="50%" height="100%">
  <p>Alternative text - include a link <a href="<?php echo base_url(); ?>uploads/attend_sheet/<?php echo $workshopdata['upload_attend_sheet']; ?>">to the PDF!</a></p>
</object>
  
  </div>
         	
         	<table>
	<tr>
		<th>Checklist for approval</th>
		<th>yes &nbsp; no</th>
	</tr>
	<tr>
		<td>Total attendance matches the reported participants</td>
		<td><input type="radio" name="signed" value="yes">&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="signed" value="no"></td>
	</tr>
	
</table>
         	
         	
         	</div>
         	
         <div class="tab-pane" id="b">
         	<div >
			<object data="<?php echo base_url(); ?>uploads/college_report/<?php echo $workshopdata['college_report']; ?>" type="application/pdf" width="100%" height="100%">
  <p>Alternative text - include a link <a href="<?php echo base_url(); ?>uploads/college_report/<?php echo $workshopdata['college_report']; ?>">to the PDF!</a></p>
</object>
				
				</div>
         		
<table>
	<tr>
		<th>Checklist for approval</th>
		<th>yes &nbsp; no</th>
	</tr>
	<tr>
		<td>Report is on the college letterhead</td>
		<td><input type="radio" name="letterhead" value="yes">&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="letterhead" value="no"></td>
	</tr>
	<tr>
		<td>Report is signed by the college principal</td>
		<td><input type="radio" name="signed" value="yes">&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="signed" value="no"></td>
	</tr>
	<tr>
		<td>Report has the college seal stamped</td>
		<td><input type="radio" name="seal" value="yes">&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="seal" value="no"></td>
	</tr>
</table>
         		</div>
         <div class="tab-pane" id="c">
		
		 <img src="<?php echo base_url(); ?>/uploads/workshop_photos/<?php echo $workshopdata['workshop_photos']; ?>" width="250px" height="250px">

		 </div>
         <div class="tab-pane" id="d"><span>comments positive</span></br><?php echo $workshopdata['comments_positive']; ?><span>
        </br> comments negative</br>	<?php echo $workshopdata['comments_negative']; ?>
         </span></div>
        </div>
      </div>
      <input type="hidden"name="workshort_report" value="<?php echo $this->uri->segment(3);  ?>">
	<input type="submit" name="approve" value="approve">
</form>
<div class="reportsattached">
	
</div>

<div class="signed">
	
</div>

<div class="seal">
	


			</div>
			<?php

											}        ?>
</div>
                                                
                    	<?php
												} }
													?>    	</div>
       
       
 
</div>                      
												

			
    <div role="tabpanel" class="tab-pane" id="messages">

<style>.padding-top-tag{padding-top: 33px;}</style>

<div class="col-md-12 align-top-botm">
				
				<div class="col-md-1">
					Date			
				</div>
				
				<div class="col-md-1">Location</div>
                <div class="col-md-2 ">Participants </div>
                <div class="col-md-2 ">Experiments</div>
                <div class="col-md-3">Participating Institutes</div>
				<div class="col-md-2">Nodal Coordinator</div>
				
			</div>
 
									



<style>
.tab-content{
	border-bottom:none;
}
	.nav-tabs > li > a{
		
		text-transform:none;
	}													
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
													</style>
												
												
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
				
				 <div class="col-md-1"><?php echo $workshopdata['location']; ?></div>
                <div class="col-md-2"><?php echo $workshopdata['participate_attend'];  ?>Participants</div>
                <div class="col-md-2"><?php echo $workshopdata['participate_experiment'];  ?>Experiments</div>
                <div class="col-md-3 "><p style="font-size: 12px;line-height: 20px;text-align: justify;"><?php 
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
	}


				?></p></div><div class="col-md-2"><?php echo $workshopdata['name']; ?></div>
                 <div class="col-md-1"> <a id='feedback-<?php echo $workshopdata["workshop_id"]; ?>' style="cursor: pointer;"><span id="mew1-<?php echo $workshopdata["workshop_id"]; ?>">►</span>viewReport</a></div>
             <div style='display:none' id="frn_comment-<?php echo $workshopdata["workshop_id"]; ?>"></br></br></br>
			<div class="tabbable tabs-left">
        <ul class="nav nav-tabs no-border">
          <li class="active"><a href="#a-<?php echo $workshopdata["workshop_id"]; ?>" data-toggle="tab" class="bgclr-nobg">Attendance sheets</a></li>
          <li ><a href="#b-<?php echo $workshopdata["workshop_id"]; ?>" data-toggle="tab" class="bgclr-nobg">College report</a></li>
          <li><a href="#c-<?php echo $workshopdata["workshop_id"]; ?>" data-toggle="tab" class="bgclr-nobg">Workshop Photos</a></li>
        </ul>
        <div class="tab-content only-no-border">
         <div class="tab-pane active" id="a-<?php echo $workshopdata["workshop_id"]; ?>"><div style="float: right; margin-right: 50%;  ">
			
			
			    	    	 
<object data="<?php echo base_url(); ?>uploads/attend_sheet/<?php echo $workshopdata['upload_attend_sheet']; ?>" type="application/pdf" width="80%" height="250px">
  <p>Alternative text - include a link <a href="<?php echo base_url(); ?>uploads/attend_sheet/<?php echo $workshopdata['upload_experiment_sheet']; ?>">to the PDF!</a></p>
</object>
			
			</div>
         	
		   	

         	         	</div>
         	
         <div class="tab-pane" id="b-<?php echo $workshopdata["workshop_id"]; ?>">
         	<div style="float: right; margin-right: 50%;  ">
<object data="<?php echo base_url(); ?>uploads/college_report/<?php echo $workshopdata['college_report']; ?>" type="application/pdf" width="80%" height="250px">
  <p>Alternative text - include a link <a href="<?php echo base_url(); ?>uploads/college_report/<?php echo $workshopdata['college_report']; ?>">to the PDF!</a></p>
</object>				
				
				</div>
         		

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
		   $('#mew1-<?php echo $workshopdata["workshop_id"]; ?>').html("▼");
		} else { 
		   $('#frn_comment-<?php echo $workshopdata["workshop_id"]; ?>').hide('slow'); 
		    $('#mew1-<?php echo $workshopdata["workshop_id"]; ?>').html("►");
		}
	});
</script>
  
                
			</div>
                                                
                    	<?php
											}
													?>  													
    

	</div>
    <div role="tabpanel" class="tab-pane" id="settings">
	<div class="col-md-12 align-top-botm">
				
				<div class="col-md-1">
					Date			
				</div>
				
				
                <div class="col-md-2 ">Participants </div>
                <div class="col-md-2 ">Experiments</div>
				
			</div>
			<?php
												
											foreach($training as $trainingdisplay){
												$newDate = strtoupper(date("M", strtotime($trainingdisplay['created_on'])));												
												$newDated = date("d", strtotime($trainingdisplay['created_on']));	
												$newyear = date("Y", strtotime($trainingdisplay['created_on']));	
												?>
                                                
                                                
                                                 <div class="col-md-12 align-top-botm">
				
				
                <div class="col-md-1">
					<div class="month-box"><span><?php echo $newDated; ?> <?php echo $newDate; ?><br/><?php echo $newyear; ?></span></div>				
				</div>
				
				 <div class="col-md-2"><?php echo $trainingdisplay['participants_attended']; ?>Participants</div>
                <div class="col-md-2"><?php echo $trainingdisplay['experiments_conducted'];  ?>Experiments</div>
                
               
                 <div class="col-md-1"> <a id='trainingdisplay-<?php echo $trainingdisplay["id"]; ?>' style="cursor: pointer;"><span id="trainingicon-<?php echo $trainingdisplay["id"]; ?>">►</span>viewReport</a></div>
             <div style='display:none' id="trainingdisplayinner-<?php echo $trainingdisplay["id"]; ?>"></br></br></br>
			<div class="tabbable tabs-left">
        <ul class="nav nav-tabs no-border">
          <li class="active"><a href="#a-<?php echo $trainingdisplay["id"]; ?>" data-toggle="tab" class="bgclr-nobg">Attendance sheets</a></li>
          <li ><a href="#b-<?php echo $trainingdisplay["id"]; ?>" data-toggle="tab" class="bgclr-nobg">Training photos</a></li>
        </ul>
        <div class="tab-content only-no-border">
         <div class="tab-pane active" id="a-<?php echo $trainingdisplay["id"]; ?>"><div style="float: right;  width:80%  ">
			
			
			    	    	 
<object data="<?php echo base_url(); ?>uploads/Report/attendance/<?php echo $trainingdisplay['attendance_sheet']; ?>" type="application/pdf" width="100%" height="250px">
  <p>Alternative text - include a link <a href="<?php echo base_url(); ?>uploads/Report/attendance/<?php echo $trainingdisplay['attendance_sheet']; ?>">to the PDF!</a></p>
</object>
			
			</div>
         	
		   	

         	         	</div>
         	
         
         <div class="tab-pane" id="b-<?php echo $trainingdisplay["id"]; ?>">
		         <img src="<?php echo base_url(); ?>uploads/Report/training/<?php echo $trainingdisplay['training_photos']; ?>" width="250px" height="250px">

	</div>
        
        </div>
      </div>
			 </div>
			 
			 
        <script type="text/javascript">
	$("#trainingdisplay-<?php echo $trainingdisplay["id"]; ?>").click(function(){
		if($('#trainingdisplayinner-<?php echo $trainingdisplay["id"]; ?>').css('display') == 'none'){ 
		   $('#trainingdisplayinner-<?php echo $trainingdisplay["id"]; ?>').show('slow'); 
		   $('#trainingicon-<?php echo $trainingdisplay["id"]; ?>').html("▼");
		} else { 
		   $('#trainingdisplayinner-<?php echo $trainingdisplay["id"]; ?>').hide('slow'); 
		    $('#trainingicon-<?php echo $trainingdisplay["id"]; ?>').html("►");
		}
	});
</script>
  
                
			</div>
                                                
                    	<?php
											}
													?> 
	<a id="addnodaltraininglink" style="cursor: pointer;"><span id="trainingiconform">►</span>+Submit Training Report</a>
	<!---add nodal training---->
	<div  id="addnodaltraining" style="display:none">
	<!-- FORMS -->
						<div class="row">
							<div class="col-md-12">
								<div class="row">
									<!-- product details -->								
									<div class="col-md-12 col-centered" >
										<div class="box border dark gray">
											<div class="box-title">
												<h4></h4>
											</div>
											<div class="box-body big">
											<span id="error" class='error'></span>	
<form class="form-horizontal" method="POST"  action="<?php echo site_url('site/traininging');?>"  enctype="multipart/form-data">
												  
												  <!-- Product Name -->
												  <div class="form-group">
													<label class="col-sm-4">Number of participants attended:<span style="color:red">*</span></label>
													<div class="col-sm-6">
													  <input type="text"  required name = "participants_attended" id = "participants_attended" style="width: 10%;">
													</div>
												  </div>
												    <div class="form-group">
													<label class="col-sm-4">Number of experiments conducted:<span style="color:red">*</span></label>
													<div class="col-sm-6">
													  <input type="text" required  name = "experiments_conducted" id = "experiments_conducted" style="width: 10%;">
													 
													</div>
												  </div>
												  <div class="uploaddocuments">Upload documents</div>
												  
												  <div class="form-group">
													<label class="col-sm-4">Attendance sheet</label>
													<div class="col-sm-6">
													  <input type="file" required name="attendance_sheet" id ="attendance_sheet" >
													</div>
												  </div>
												  <div class="form-group">
													<label class="col-sm-4">Training photos</label>
													<div class="col-sm-6">
													  <input type="file" required name="training_photos" id="training_photos" >
													  
													</div>
												  </div>
												  <div class="commentsfeedback">Comments & Feedback</div>
												  <div class="box-title">
												
											</div>
												  
												  <div class="form-group">
													<label class="col-sm-4">Positive<span style="color:red">*</span></label>
													<div class="col-sm-6">
													  <textarea name="positive" style="width: 46%;" required></textarea>
													</div>
												  </div>
												  <div class="form-group">
													<label class="col-sm-4">Negative<span style="color:red">*</span></label>
													<div class="col-sm-6">
													  <textarea name="negative" style="width: 46%;" required></textarea></div>
												  </div>
												  <div class="form-group">
													<div class="col-sm-6">
														<?php
														$ses_data= $this->session->userdata("user_details"); 
														?>
														<input type="hidden" name="outreach_id" name="outreach_id" value="<?php echo $ses_data['id']; ?>">
													  
													</div>
												  </div>
												  <div class="form-group">
												  <label class="col-sm-4">&nbsp;</label><div class="col-sm-6">
												 <input type="submit" name="submit" value="submit">
												  </div><div class="col-sm-2">
												  <a href="<?php echo base_url('nodal-coordinator')?>">	<button class="btn btn-warning" style="    float: right;    background-color: #000;    color: #fff;">Cancel</button>	</a>
												  </div>
												  </div> 
												<?php /* */?>
												  
											</div>
										</div>
									</div>
									<!-- product details -->
						
							
					
						


		
			</div>		
		</div>
	</div>														
						</form>
						</div>
	
	<!---add nodal training---->
										</div>
										
<div role="tabpanel" class="tab-pane" id="addnewnodal">

							<div class="col-md-12" style="margin-top: 30px;">
								<!-- BOX -->
								<div class="box solid gray">
									<div class="box-title">
										<h4>Manage Nodal Centers</h4>
										<div class="tools hidden-xs" style="margin-top: -49px; float: right;">
											<a id="addnodalcenterdrop" style="cursor: pointer;"><span id="iconform">►</span>+New Nodal Center</a>
										</div>
										<div  id="displaynodalform" style="display:none">
	<!-- FORMS -->
						<div class="row">
							<div class="col-md-12">
								<div class="row">
									<!-- product details -->								
									<div class="col-md-12 col-centered" >
										<div class="box border dark gray">
											<div class="box-title">
												<h4>Add  Nodal Center</h4>
											</div>
											<div class="box-body big">
											<span id="error" class='error'></span>
											
											
<form class="form-horizontal" method="post" name="addStaff" id="addStaff" action="<?php echo site_url('home/addNodalcenter');?>" role="form" enctype="multipart/form-data">
												  
												  <!-- Product Name -->
												  <div class="form-group">
													<label class="col-sm-4">Name of the Center<span style="color:red">*</span></label>
													<div class="col-sm-6">
													  <input type="text" required onkeypress="return onlyAlphabets(event,this);" name = "fname" id = "first_name" class="required form-control" value="<?php echo set_value('first_name');?>">
													  <?php echo "<span style='color:red'>".form_error('first_name')."</span>"; ?>
													</div>
												  </div>
												    <div class="form-group">
													<label class="col-sm-4">Name of Coordinator<span style="color:red">*</span></label>
													<div class="col-sm-6">
													  <input type="text" required onkeypress="return onlyAlphabets(event,this);" name = "lastname" id = "last_name" class=" form-control" value="<?php echo set_value('last_name');?>">
													  <?php echo "<span style='color:red'>".form_error('last_name')."</span>"; ?>
													</div>
												  </div>
												  <div class="form-group">
													<label class="col-sm-4">Email Id<span style="color:red">*</span></label>
													<div class="col-sm-6">
<input type="email" name="email">												  <?php echo "<span style='color:red'>".form_error('email')."</span>"; ?>
													</div>
												  </div>
												  
												  <div class="form-group">
													<label class="col-sm-4">Upload MOU</label>
													<div class="col-sm-6">
													  <input type="file" name = "mou" id = "mou" value="<?php echo set_value('mou');?>">
													   <?php if(isset($msg)){ echo "<span style='color:red'>".$msg."</span>"; }?>
													</div>
												  </div>
												  
												  <div class="box-title">
												<h4>Targets of Nodal Coordinator</h4>
											</div>
												  
												  <div class="form-group">
													<label class="col-sm-4">No of Workshops<span style="color:red">*</span></label>
													<div class="col-sm-6">
													  <input type="text" required   style="
    width: 10%;
"name = "workshop" id = "works" class="required  required-width" value="<?php echo set_value('works');?>">
													  <?php echo "<span style='color:red'>".form_error('works')."</span>"; ?>
													</div>
												  </div>
												  <div class="form-group">
													<label class="col-sm-4">No of Participants<span style="color:red">*</span></label>
													<div class="col-sm-6">
													  <input type="text" required name = "participants" id = "participants" class="required required-width" value="<?php echo set_value('participants');?>">
													  <?php echo "<span style='color:red'>".form_error('participants')."</span>"; ?>
													</div>
												  </div>
												  <div class="form-group">
													<label class="col-sm-4">No of experiments<span style="color:red">*</span></label>
													<div class="col-sm-6">
														<?php
														$ses_data= $this->session->userdata("user_details"); 
														?>
														<input type="hidden" name="outreach_id" name="outreach_id" value="<?php echo $ses_data['id']; ?>">
													  <input type="text" name = "experiments" id = "experiments" class="required required-width"  value="<?php echo set_value('experiments');?>">
													  <?php echo "<span style='color:red'>".form_error('experiments')."</span>"; ?>
													</div>
												  </div>
												  <div class="form-group">
												  <label class="col-sm-4">&nbsp;</label><div class="col-sm-6">
												  <button class="btn btn-success clr-btn">Add  Nodal Center</button>
												  </div><div class="col-sm-2">
												  <a href="<?php echo base_url('nodal-coordinator')?>">	<button class="btn btn-warning" style="    float: right;    background-color: #000;    color: #fff;">Cancel</button>	</a>
												  </div>
												  </div> 
												<?php /* */?>
												  
											</div>
										</div>
									</div>
									<!-- product details -->
						
							
					
						


		
			</div>		
		</div>
	</div>														
						</form>
						</div>
									</div>
									<div class="box-body">
										<table id="datatable2" cellpadding="0" cellspacing="0" border="0" class="datatable table table-striped table-bordered table-hover">
											<thead>
												<tr>
													<th>S.No</th>
													<th>Nodal Coordinator</th>
																<th>Nodal Center</th>								
													 <th>Email id</th> 
													<th>Date registered</th>
													<th>Workshops</th>
													<th>Participants</th>
													<th>Experiments</th>
																
													<th>Status</th>													
													<th>Action</th>
												</tr>
											</thead>
											<tbody>
												<?php   foreach($get_workshop1 as $coordinator) { ?>
												<tr class="gradeX">
													<td><?php echo $coordinator['id'];;?></td>
													<td><?php echo ucfirst($coordinator['name']);?>	</td>
																									
													<td><?php echo $coordinator['center'];?></td>													
													<td><?php echo $coordinator['email'];?></td>													
													<td><?php echo $coordinator['created_on'];?></td>													
													<td><?php echo $coordinator['workshop'];?></td>													
													<td><?php echo $coordinator['participants'];?></td>													
													<td><?php echo $coordinator['experiments'];?></td>													
													<td>
													
													<a style="text-decoration:none;cursor:pointer;" id="s-<?php echo  $coordinator['id'];?>"   class="activeclass btn-xs <?php if($coordinator['status'] == 1) { ?>btn-success <?php }else{ echo "btn-danger"; }?>" > <?php if($coordinator['status'] == 1) { ?> Active <?php }elseif($coordinator['status'] == 2){ echo "In Active"; }else{ echo "delete";} ?></a>
													
													</td>
													<td>
														<!--<a href="<?php echo site_url('admin/home/editCoordinator/'.base64_encode($coordinator['id']));?>"><button class="btn btn-xs btn-warning"><i class="fa fa-pencil-square-o"></i> Edit</button></a>&nbsp;-->
												<?php if($coordinator['status'] != 3){ ?> <a onclick = "return confirm('are you sure you want to delete the coordinator');" href="<?php echo base_url('home/deleteNodalcenter/'.base64_encode($coordinator['id']));?>"><button class="btn btn-xs btn-danger"><i class="fa fa-exclamation-circle"></i> Delete</button></a> <?php } ?>
													</td>
												</tr>
												<?php  } ?>

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
  </div>
 

</div>

 <script type="text/javascript">
	$("#addnodalcenterdrop").click(function(){
		if($('#displaynodalform').css('display') == 'none'){ 
		   $('#displaynodalform').show('slow'); 
		   $('#iconform').html("▼");
		} else { 
		   $('#displaynodalform').hide('slow'); 
		    $('#iconform').html("►");
		}
	});
</script>
<script type="text/javascript">
	$("#addnodaltraininglink").click(function(){
		if($('#addnodaltraining').css('display') == 'none'){ 
		   $('#addnodaltraining').show('slow'); 
		   $('#trainingiconform').html("▼");
		} else { 
		   $('#addnodaltraining').hide('slow'); 
		    $('#trainingiconform').html("►");
		}
	});
</script>
 
        
        <!--------- Banner right panel ------>
        <!-- end homeslider -->	
        
        </div>
        
		
		
        
        
        <section class="infoarea whites">
        <div class="container placemetns-top">
		

		</div>
        </section>
