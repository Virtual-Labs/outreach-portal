<section class="strip-colors">
		<div class="container">
			<div>
				<div class="col-md-3 text-center workshop-run">
					<div class="icon-box-top">
					<div class="value-disp">
						<p align="left" class="value-list">
							<span class="counter1" style="display:inline-block; color:#fff;"><?php echo $nodalcoordinatorcounthistory[0]['participants']; ?>/<?php echo $nodalcoordinatorworkshop['experiments']; ?></span><span class="resu-top">EXPERIMENTS</span>
						</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 text-center labs-taken">
					<div class="icon-box-top">
						<div class="value-disp">
						<p align="left" class="value-list">
							<span class="counter1" style="display: inline-block;color:#fff;"><?php echo $nodalcoordinatorcounthistory[0]['experiments']; ?>/<?php echo $nodalcoordinatorworkshop['participants']; ?></span><span class="resu-top">PARTICIPANTS</span>
						</p>
					</div></div>
				</div>
				<div class="col-md-3 text-center workshop-run">
					<div class="icon-box-top">
					<div class="value-disp">
						<p align="left" class="value-list">
							<span class="counter1" style="display:inline-block; color:#fff;"><?php echo $outreachcoordinatorworkshopcount;?>/<?php echo $nodalcoordinatorworkshop['workshop']; ?></span><span class="resu-top">WORKSHOPS</span>
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
<div class="container" style="margin-top:30px;">
 <?php $ses_data = $this -> session -> userdata('user_details'); ?>
 <?php if($this->session->flashdata('msg')!=NULL) { ?>
								<div class="alert col-md-12 alert-success display-none" style="display: block;">
									<a data-dismiss="alert" href="#" aria-hidden="true" class="close">�</a>
									<?php  echo $this -> session -> flashdata('msg'); ?>
								</div>
<?php
}
?>
<div>
	 <ul class="nav nav-tabs" role="tablist">
	    <li role="presentation" class="active tab-workshop"><a href="#home" aria-controls="home" role="tab" data-toggle="tab" >Upcoming Workshops</a></li>
	    <li role="presentation" class="tab-workshop"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Pending for Approval</a></li>
	    <li role="presentation" class="tab-workshop"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">Workshop History</a></li>
	    <li role="presentation" class="tab-workshop"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">Nodal Coordinator Training</a></li>
	    <li role="presentation" class="tab-workshop"><a href="#addnewnodal" aria-controls="addnewnodal" role="tab" data-toggle="tab">Manage Nodal Centers</a></li>
	 </ul>
  <div class="tab-content">
    	<div role="tabpanel" class="tab-pane active" id="home">
 			<div class="container placemetns-top">
				 <div class="col-md-12 align-top-botm">	
					<div class="col-md-2">Date</div>	
					<div class="col-md-2">Location</div>
				    <div class="col-md-2 ">Participants planned</div>
				    <div class="col-md-3">Participating Institutes</div>
					<div class="col-md-3">Nodal Coordinator</div>
				</div>
					<?php
						 foreach($getActiveWorkshop as $workshopdata){
								$newDate = strtoupper(date("M", strtotime($workshopdata['date'])));												
								$newDated = date("d", strtotime($workshopdata['date']));	
								$newyear = date("Y", strtotime($workshopdata['date']));		

					?>
							<div class="col-md-12 align-top-botm">
								<div class="col-md-2">
									<div class="month-box">
										<span><?php echo $newDated; ?> <?php echo $newDate; ?><br/><?php echo $newyear; ?></span>
									</div>				
								</div>
								<div class="col-md-2 mid-align"><?php echo $workshopdata['location']; ?></div>
				                <div class="col-md-2 mid-align"><?php echo $workshopdata['no_of_participants']; ?></div>
				                <div class="col-md-3 mid-align">
				                	<p style="font-size: 12px;line-height: 20px;text-align: justify;"><?php
									$workshopdataa = explode(",", $workshopdata['institutes']);
									foreach ($workshopdataa as $workshopdataget) {
										$workshopdatagetlen = strlen($workshopdataget);
										if ($workshopdatagetlen >= 20) {
											$institutesnames = substr($workshopdataget, 0, 20);
											echo $institutesnames . "...";
											echo "
									<br>
									";
										} else {
											echo $workshopdataget;
										}
									}
									?>
									</p>
								</div>
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
            	<div class="col-md-1">Date</div>
				<div class="col-md-2">Location</div>
                <div class="col-md-1">Participants</div>
                <div class="col-md-1">Experiments</div>
                <div class="col-md-3 ">Participating Institutes</div>
                <div class="col-md-2">Nodal Coordinator</div>
				<div class="col-md-2">&nbsp;</div>
			</div>
					<?php
						foreach($getPendingWorkshopOutreach as $workshopdata){
								$newDate = strtoupper(date("M", strtotime($workshopdata['date'])));												
								$newDated = date("d", strtotime($workshopdata['date']));	
								$newyear = date("Y", strtotime($workshopdata['date']));		

					?>
             <div class="col-md-12 align-top-botm">
				<div class="col-md-1">
					<div class="month-box"><span><?php echo $newDated; ?> <?php echo $newDate; ?><br/><?php echo $newyear; ?></span></div>				
				</div>
				<div class="col-md-2"><?php echo $workshopdata['location']; ?></div>
                <div class="col-md-1"><?php echo $workshopdata['no_of_participants']; ?></div>
                <div class="col-md-1"><?php echo $workshopdata['participate_experiment']; ?></div>
                <div class="col-md-3 ">
                	<p style="font-size: 12px;line-height: 20px;text-align: justify;">
		                <?php $workshopdataa = explode(",", $workshopdata['institutes']);
						foreach ($workshopdataa as $workshopdataget) {
							$workshopdatagetlen = strlen($workshopdataget);
							if ($workshopdatagetlen >= 20) {
								$institutesnames = substr($workshopdataget, 0, 20);
								echo $institutesnames . "...";
								echo "
										<br>
										";
							} else {
								echo $workshopdataget;
							}
						}
						?>
				   </p>
				</div>
              <div class="col-md-2"><?php echo $workshopdata['name']; ?></div>
              <div class="col-md-2"><a  href ="<?php echo site_url('viewReport'); ?>/<?php echo $workshopdata['workshop_id']; ?>"  style="cursor: pointer;"><span id="mew1-<?php echo $workshopdata["workshop_id"]; ?>">►</span>viewReport</a></div>    
			  </div>
			  <div style="display:none" id="frn_comment2-<?php echo $workshopdata["workshop_id"]; ?>">
					<table id="datatable2" cellpadding="0" cellspacing="0" border="0" class="datatable table table-striped table-bordered table-hover">
						<thead>
							<tr>
								<th>S.No</th>
								<th>Name</th>
								<th>Location</th>
								<th>Participating institutes</th>
								<th>No of participants</th>
								<th>No of sessions</th>
								<th>Duration of sessions</th>
								<th>Subject of sessions</th>
								<th>Labs planned</th>
							</tr>
						</thead>
								<?php
									 foreach($view_reports as $workshopdata){
								?>
								<tr class="gradeX">
									<td><?php echo $workshopdata['workshop_id']; ?></td>
									<td><?php echo $workshopdata['name']; ?></td>
									<td><?php echo $workshopdata['location']; ?></td>
									<td><?php echo $workshopdata['institute']; ?></td>
									<td><?php echo $workshopdata['number_of_participants']; ?></td>
									<td><?php echo $workshopdata['no-of_sessions']; ?></td>
									<td><?php echo $workshopdata['durationofsessions']; ?></td>
									<td><?php echo $workshopdata['subject_of_session']; ?></td>
									<td><?php echo $workshopdata['labs_plan']; ?></td>
								</tr>
								<?php
								}
								?>
				</table>
				<?php if($workshopdata['upload_attend_sheet']){
				?>										
		   		<form method="post" action="<?php echo site_url('home/approverepost'); ?>">
						<div class="tabbable tabs-left">
							<ul class="nav nav-tabs">
								<li class="active">
									<a href="#a" data-toggle="tab">Attendance sheets</a>
								</li>
								<li >
									<a href="#b" data-toggle="tab">College report</a>
								</li>
								<li>
									<a href="#c" data-toggle="tab">Workshop Photos</a>
								</li>
								<li>
									<a href="#d" data-toggle="tab">Comments</a>
								</li>
							</ul>
							<div class="tab-content">
								<div class="tab-pane active" id="a">
									<div >
										<object data="<?php echo base_url(); ?>uploads/attend_sheet/<?php echo $workshopdata['upload_attend_sheet']; ?>" type="application/pdf" width="100%" height="500px">
											<p>
												Alternative text - include a link <a href="<?php echo base_url(); ?>uploads/attend_sheet/<?php echo $workshopdata['upload_attend_sheet']; ?>">to the PDF!</a>
											</p>
										</object>
									</div>

									<table>
										<tr>
											<th>Checklist for approval</th>
											<th>yes &nbsp; no</th>
										</tr>
										<tr>
											<td>Total attendance matches the reported participants</td>
											<td>
											<input type="radio" name="signed" value="yes">
											&nbsp;&nbsp;&nbsp;&nbsp;
											<input type="radio" name="signed" value="no">
											</td>
										</tr>
									</table>
								</div>
								<div class="tab-pane" id="b">
									<div >
										<object data="<?php echo base_url(); ?>uploads/college_report/<?php echo $workshopdata['college_report']; ?>" type="application/pdf" width="100%" height="500px">
											<p>
												Alternative text - include a link <a href="<?php echo base_url(); ?>uploads/college_report/<?php echo $workshopdata['college_report']; ?>">to the PDF!</a>
											</p>
										</object>
									</div>

									<table>
										<tr>
											<th>Checklist for approval</th>
											<th>yes &nbsp; no</th>
										</tr>
										<tr>
											<td>Report is on the college letterhead</td>
											<td>
											<input type="radio" name="letterhead" value="yes">
											&nbsp;&nbsp;&nbsp;&nbsp;
											<input type="radio" name="letterhead" value="no">
											</td>
										</tr>
										<tr>
											<td>Report is signed by the college principal</td>
											<td>
											<input type="radio" name="signed" value="yes">
											&nbsp;&nbsp;&nbsp;&nbsp;
											<input type="radio" name="signed" value="no">
											</td>
										</tr>
										<tr>
											<td>Report has the college seal stamped</td>
											<td>
											<input type="radio" name="seal" value="yes">
											&nbsp;&nbsp;&nbsp;&nbsp;
											<input type="radio" name="seal" value="no">
											</td>
										</tr>
									</table>
								</div>
								<div class="tab-pane" id="c">
									<img src="<?php echo base_url(); ?>/uploads/workshop_photos/<?php echo $workshopdata['workshop_photos']; ?>" width="250px" height="250px">
								</div>
								<div class="tab-pane" id="d">
									<span>comments positive</span></br><?php echo $workshopdata['comments_positive']; ?><
									span>
									</br> comments negative</br>	<?php echo $workshopdata['comments_negative']; ?>
									</span>
								</div>
							</div>
						</div>
						<input type="hidden"name="workshort_report" value="<?php echo $this -> uri -> segment(3); ?>">
						<input type="submit" name="approve" value="approve">
				</form>
						<div class="reportsattached"></div>
						<div class="signed"></div>
						<div class="seal"></div>
				<?php
				}
	        	?>
			</div>
                                                
                    	<?php
						}
													?>    	</div>
       
       
 
		</div>                      													
   		 <div role="tabpanel" class="tab-pane" id="messages">
		 <div class="col-md-12 align-top-botm">
			<div class="col-md-1">Date</div>
			<div class="col-md-1">Location</div>
            <div class="col-md-2 ">Participants </div>
            <div class="col-md-2 ">Sessions</div>
            <div class="col-md-3">Participating Institutes</div>
			<div class="col-md-2">Nodal Coordinator</div>
		</div>
 
<?php
				
			foreach($getWorkshopHistory as $workshopdata){
				$newDate = strtoupper(date("M", strtotime($workshopdata['date'])));												
				$newDated = date("d", strtotime($workshopdata['date']));	
				$newyear = date("Y", strtotime($workshopdata['date']));	

				?>
                                                
                <div class="col-md-12 align-top-botm">
				<div class="col-md-1">
				<div class="month-box"><span><?php echo $newDated; ?> <?php echo $newDate; ?><br/><?php echo $newyear; ?></span></div>				
				</div>
				
				 <div class="col-md-1"><?php echo $workshopdata['location']; ?></div>
                <div class="col-md-2"><?php echo $workshopdata['no_of_participants']; ?>Participants</div>
                <div class="col-md-2"><?php echo $workshopdata['no-of_sessions']; ?>sessions</div>
                <div class="col-md-3 "><p style="font-size: 12px;line-height: 20px;text-align: justify;"><?php $workshopdataa = explode(",", $workshopdata['institutes']);
				foreach ($workshopdataa as $workshopdataget) {
					$workshopdatagetlen = strlen($workshopdataget);
					if ($workshopdatagetlen >= 20) {
						$institutesnames = substr($workshopdataget, 0, 20);
						echo $institutesnames . "...";
						echo "
							<br>
							";
					} else {
						echo $workshopdataget;
					}
				}
				?></p>
				</div>
				<div class="col-md-2"><?php echo $workshopdata['name']; ?></div>
                <div class="col-md-1"> <a class="cc_page" id='<?php echo $workshopdata["workshop_id"]; ?>' style="cursor: pointer;"><span id="mew1-<?php echo $workshopdata["workshop_id"]; ?>">►</span>viewReport</a></div>
             	<div style='display:none' id="frn_comment-<?php echo $workshopdata["workshop_id"]; ?>"></br></br></br>
				<div class="tabbable tabs-left">
       			<ul class="nav nav-tabs no-border">
        		  <li class="active"><a href="#a-<?php echo $workshopdata["workshop_id"]; ?>" data-toggle="tab" class="bgclr-nobg">Attendance sheets</a></li>
        		  <li ><a href="#b-<?php echo $workshopdata["workshop_id"]; ?>" data-toggle="tab" class="bgclr-nobg">College report</a></li>
        		  <li><a href="#c-<?php echo $workshopdata["workshop_id"]; ?>" data-toggle="tab" class="bgclr-nobg">Workshop Photos</a></li>
       			</ul>
       		 <div class="tab-content only-no-border">
       		 <div class="tab-pane active" id="a-<?php echo $workshopdata["workshop_id"]; ?>">
	       		<div style="float: right; margin-right: 50%;  ">
					<object data="<?php echo base_url(); ?><?php echo $workshopdata['attendance_sheet']; ?>" type="application/pdf" width="80%" height="250px">
		  				<p>Alternative text - include a link <a href="<?php echo base_url(); ?>assests/uploads/attend_sheet/<?php echo $workshopdata['attendance_sheet']; ?>">to the PDF!</a></p>
					</object>
				</div>
      		</div>
         <div class="tab-pane" id="b-<?php echo $workshopdata["workshop_id"]; ?>">
         	<div style="float: right; margin-right: 50%;  ">
			<object data="<?php echo base_url(); ?><?php echo $workshopdata['college_report']; ?>" type="application/pdf" width="80%" height="250px">
			  <p>Alternative text - include a link <a href="<?php echo base_url(); ?>assests/uploads/college_report/<?php echo $workshopdata['college_report']; ?>">to the PDF!</a></p>
			</object>				
		</div>
        </div>
         <div class="tab-pane" id="c-<?php echo $workshopdata["workshop_id"]; ?>">
		        <ul class="bxslider">
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
                                                
            <?php
				}
			?>  													
	</div>
    <div role="tabpanel" class="tab-pane" id="settings">
	
	<h4>Manage Nodal Coordinators</h4>
										<div  style="color: #0B8422;"></div>		
	<a id="addnodaltraininglink" style="cursor: pointer;float: right;"><span id="trainingiconform" >►</span>+Submit Training Report</a>
	
	<div  id="addnodaltraining" style="display:none">
	
						<div class="row">
							<div class="col-md-12">
								<div class="row">
																
									<div class="col-md-12 col-centered" >
										<div class="box border dark gray">
											<div class="box-title">
												
											</div>
											<div class="box-body big">
											<span id="error" class='error'></span>	
											<form class="form-horizontal" method="POST"  action="<?php echo site_url('welcome/traininging'); ?>"  enctype="multipart/form-data">
												 
												  <div class="form-group">
													<label class="col-sm-4">Name:<span style="color:red">*</span></label>
													<div class="col-sm-6">
													  <input type="text"   class=" required default "  name = "name" id = "name" title="Enter Your Full Name" >
													</div>
												  </div>
												    <div class="form-group">
													<label class="col-sm-4">Date:<span style="color:red">*</span></label>
													<div class="col-sm-6">
													  <input type="text" class=" required default "  name = "date" id = "date" >
													</div>
												  </div>
												   <div class="form-group">
													<label class="col-sm-4">Location:<span style="color:red">*</span></label>
													<div class="col-sm-6">
													  <input type="text"   class=" required default "  name = "location" id = "location" title="Enter the location" >
													</div>
												  </div>
												  <div class="form-group">
													<label class="col-sm-4">Duration:<span style="color:red">*</span></label>
													<div class="col-sm-6">
													  <input type="text"   class=" required default "  name = "duration" id = "duration" style="width: 10%;" title="Enter the duration">
													</div>
												  </div>
												  
												  
												  <div class="form-group">
													<label class="col-sm-4">Description<span style="color:red">*</span></label>
													<div class="col-sm-6">
													  <textarea name="description" id="description"style="width: 46%;" class=" required default " title="Enter the description"></textarea>
													</div>
												  </div>
												  <div class="form-group">
													<label class="col-sm-4">Invitees<span style="color:red">*</span></label>
													<div class="col-sm-6">
													  <textarea name="invitees" id="invitees" style="width: 46%;" class=" required default " title="Enter the invitees"></textarea></div>
												  </div>
												  <div class="form-group">
													<div class="col-sm-6">
													
														<?php
														$ses_data = $this -> session -> userdata("user_details");
														?>
														<input type="hidden" name="outreach_id" name="outreach_id" id="outreach_id" value="<?php echo $ses_data['id']; ?>">
													  
													</div>
												  </div>
												  <div id="failure" style="color: red;"></div>
												  <div class="form-group">
												  <label class="col-sm-4">&nbsp;</label><div class="col-sm-6">
												  	<input class="btn-traininging" type="submit" value="submit" name="submit" />
												  </div><div class="col-sm-2">
												  
												 
												  </div> <a href="<?php echo base_url('dashboard')?>" style="    float: right;    background-color: #000;    color: #fff; padding: 5px;"> Cancel	</a>
												  </div> 
												<?php /* */ ?>
												  
											</div>
										</div>
									</div>
									
						
							
					
						


		
													</div>		
												</div>
											</div>														
										</form>
								</div>
			<div class="col-md-12 align-top-botm">
			<table id="datatable2" cellpadding="0" cellspacing="0" border="0" class="datatable table table-striped table-bordered table-hover">
											<thead>
												<tr>
													<th>S.No</th>
													<th>Name</th>
																<th>Location</th>								
													 <th>Duration</th> 
													<th>Description</th>
													<th>Invitees</th>
														
												</tr>
											</thead>
											<tbody>
												<?php   foreach($getTraininging as $displayTraininging) { $i++ ?>
												<tr class="gradeX">
													<td><?php echo $i; ?></td>
													<td><?php echo ucfirst($displayTraininging['name']); ?>	</td>									
													<td><?php echo $displayTraininging['location']; ?></td>													
													<td><?php echo $displayTraininging['duration']; ?></td>																										
													<td><?php echo $displayTraininging['description']; ?></td>													
													<td><?php echo $displayTraininging['invitees']; ?></td>																									
													
												</tr>
												<?php  } ?>

											</tbody>
											<tfoot>
											</tfoot>
										</table>
			</div>
	</div>										
					<div role="tabpanel" class="tab-pane" id="addnewnodal">

							<div class="col-md-12" style="margin-top: 30px;">
								<!-- BOX -->
								<div class="box solid gray">
									<div class="box-title">
										<h4>Manage Nodal Centers</h4>
										<div  style="color: #0B8422;"></div>
										<div class="tools hidden-xs" style="margin-top: -49px; float: right;">
											<a id="addnodalcenterdrop" style="cursor: pointer;"><span id="iconform">►</span>+New Nodal Center</a>
										</div>
										<div  id="displaynodalform" style="display:none">
	
										<div class="row">
											<div class="col-md-12">
												<div class="row">
																
											<div class="col-md-12 col-centered" >
										<div class="box border dark gray">
											<div class="box-title">
												<h4>Add  Nodal Center</h4>
											</div>
											<div class="box-body big">
											<span id="error" class='error'></span>
											
											
											<form class="form-horizontal" method="post" name="addStaff" id="addStaff"  role="form" enctype="multipart/form-data">
												  <input type="hidden" name="outreach_id" name="outreach_id" id="outreach_id" >
												 
												  <div class="form-group">
													<label class="col-sm-4">Name of the Center<span style="color:red">*</span></label>
													<div class="col-sm-6">
													  <input type="text" title="Enter the Name of the Center"  name="location11" id="location11" class="required default form-control"  >
													  <?php echo "<span style='color:red'>" . form_error('location') . "</span>"; ?>
													</div>
												  </div>
												    <div class="form-group">
													<label class="col-sm-4">Name of Coordinator<span style="color:red">*</span></label>
													<div class="col-sm-6">
													  <input type="text" name = "name11" id = "name11" class=" form-control required default" value="<?php echo set_value('name'); ?>" title="Enter the Name of Coordinator">
													  <?php echo "<span style='color:red'>" . form_error('name') . "</span>"; ?>
													</div>
												  </div>
												  <div class="form-group">
													<label class="col-sm-4">Email Id<span style="color:red">*</span></label>
													<div class="col-sm-6">
													<input type="email" name="email" id="email" class="required email default" title="Enter Your Email Address">												  <?php echo "<span style='color:red'>" . form_error('email') . "</span>"; ?>
													</div>
												  </div>
												  
												  <div class="form-group">
													<label class="col-sm-4">Upload MOU</label>
													<div class="col-sm-6">
													  <input type="file" name = "mou" id = "mou" value="<?php echo set_value('mou'); ?>">
													   <?php
													if (isset($msg)) { echo "<span style='color:red'>" . $msg . "</span>";
													}
													?>
													</div>
												  </div>
												  
												  <div class="box-title">
												<h4>Targets of Nodal Coordinator</h4>
											</div>
												  
												  <div class="form-group">
													<label class="col-sm-4">No of Workshops<span style="color:red">*</span></label>
													<div class="col-sm-6">
													  <input type="text" required   style="width: 10%;" name = "target_workshops" id ="target_workshops" class="required   required-width" value="<?php echo set_value('works'); ?>" title="Enter the No of Workshops">
													  <?php echo "<span style='color:red'>" . form_error('works') . "</span>"; ?>
													</div>
												  </div>
												  <div class="form-group">
													<label class="col-sm-4">No of Participants<span style="color:red">*</span></label>
													<div class="col-sm-6">
													  <input type="text" required name = "target_participants" id = "target_participants" class="required  required-width" value="<?php echo set_value('participants'); ?>" title="Enter the No of participants">
													  <?php echo "<span style='color:red'>" . form_error('participants') . "</span>"; ?>
													</div>
												  </div>
												  <div class="form-group">
													<label class="col-sm-4">No of experiments<span style="color:red">*</span></label>
													<div class="col-sm-6">
													 <input type="text" name="target_expriments" id="target_expriments" class="required  required-width" title="Enter the No of experiments">
													</div>
												  </div>
												   <div id="failure" style="color: red;"></div>
												  <div class="form-group">
												  <label class="col-sm-4">&nbsp;</label><div class="col-sm-6">
												 
												 
												  <input class="btn-submit" type="submit" value="submit" name="submit" />
												  </div>
												  
												  </div> 
												
												  </form>
												    <a id= "hide_form_nodal"style="float: right;    background-color: #000; color: #fff;padding: 5px;     cursor: pointer;">Cancel	</a>
												  
											</div>
											
										</div>
									</div>
		
			</div>		
		</div>
	</div>														
						
						
												</br>
												 
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
														
												</tr>
											</thead>
											<tbody>
												<?php   foreach($getNodalCoordinator as $coordinator) { $j++ ?>
												<tr class="gradeX">
													<td><?php echo $j; ?></td>
													<td><?php echo ucfirst($coordinator['name']); ?>	</td>									
													<td><?php echo $coordinator['location']; ?></td>													
													<td><?php echo $coordinator['email']; ?></td>													
													<td><?php
													$newDate = strtoupper(date("Y-M-d", strtotime($coordinator['created'])));
													echo $newDate; ?></td>													
													<td><?php echo $coordinator['target_workshops']; ?></td>													
													<td><?php echo $coordinator['target_participants']; ?></td>													
													<td><?php echo $coordinator['target_expriments']; ?></td>													
													
												</tr>
												<?php  } ?>

											</tbody>
											<tfoot>
											</tfoot>
										</table>
										<div class="row" style="float:right">
										<?php echo $pagination; ?>
										</div>
									</div>
								</div>
								
							</div>
										</div>
  </div>
 

</div>
<script src="<?php echo base_url(); ?>assests/site/js/jquery.counterup.min.js"></script>
<script src="<?php echo base_url(); ?>assests/css/outreach.css"></script>
<script src="<?php echo base_url(); ?>assests/site/js/waypoints.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assests/site/js/jquery.simplyscroll.js"></script>
<link rel="stylesheet" href="<?php echo base_url(); ?>assests/site/css/jquery.simplyscroll.css" media="all" type="text/css">
<link rel="stylesheet" href="<?php echo base_url(); ?>assests/date/jquery.mobile.datepicker.css" />
<link rel="stylesheet" href="<?php echo base_url(); ?>assests/date/jquery.mobile.datepicker.theme.css" />
<script src="<?php echo base_url(); ?>assests/date/datepicker.js"></script>
<script src="<?php echo base_url(); ?>assests/js/outreach.js"></script>
 <script type="text/javascript"></script>       
        </div>
 <section class="infoarea whites">
     <div class="container placemetns-top">

<style>
	.counter1 {
		font-size: 19px;
		font-family: 'Montserrat', sans-serif;
		font-weight: 700;
		line-height: 0px;
	}
	.padding-top-tag {
		padding-top: 33px;
	}
	.bxslider-gallery{
	list-style-type: none;
    margin: 10px;
    float: left;	
}
</style>		

	</div>
        </section>
