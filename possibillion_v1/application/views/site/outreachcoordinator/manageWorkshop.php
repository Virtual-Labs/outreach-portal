<?php $ses_data = $this -> session -> userdata('user_details'); ?> <!-- end servicesbox -->
	<section class="strip-colors">
		<div class="container">
			<div>
				<div class="col-md-3 text-center workshop-run">
					<div class="icon-box-top">
						<div class="value-disp">
							<p align="left" class="value-list">
								<span class="counter1" style="display:inline-block; color:#fff;"><?php echo $nodalcoordinatorcounthistroy[0]['participants']; ?>/<?php echo $nodalcoordinatorworkshop['experiments']; ?></span>
								<span class="resu-top">EXPERIMENTS</span>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 text-center labs-taken">
					<div class="icon-box-top">
						<div class="value-disp">
							<p align="left" class="value-list">
								<span class="counter1" style="display: inline-block;color:#fff;"><?php echo $nodalcoordinatorcounthistroy[0]['experiments']; ?>/<?php echo $nodalcoordinatorworkshop['participants']; ?></span>
								<span class="resu-top">PARTICIPANTS</span>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 text-center workshop-run">
					<div class="icon-box-top">
					<div class="value-disp">
						<p align="left" class="value-list">
							<span class="counter1" style="display:inline-block; color:#fff;"><?php echo $nodalcoordinatorworkshopcount; ?>/<?php echo $nodalcoordinatorworkshop['workshop']; ?></span>
							<span class="resu-top">WORKSHOPS</span>
						</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 text-center node-centers">
					<div class="icon-box-top">
						<div class="value-disp">
							<p align="left" class="value-list">
								<span class="counter1" style="display: inline-block;color:#fff;"><?php echo $nodalcoordinatorcount; ?></span>
								<span class="resu-top">NODEL CENTERS</span>
							</p>
						</div>
					</div>
				</div>	
			</div>
		</div>
        
	</section>
		<!-- end homerecentportfolio -->
    <div class="container" style="margin-top:30px;"> 
 		<?php if($this->session->flashdata('msg')!=NULL)
		 { ?>
		<div class="alert col-md-12 alert-success display-none" style="display: block;">
			<a data-dismiss="alert" href="#" aria-hidden="true" class="close">�</a>
					<?php  echo $this -> session -> flashdata('msg'); ?>
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
				foreach($getActiveWorkshop as $workshopdata)
				{
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
							echo "<br>";
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
						foreach($getPendingWorkshopOutreach as $workshopdata)
						{
							$newDate = strtoupper(date("M", strtotime($workshopdata['date'])));												
							$newDated = date("d", strtotime($workshopdata['date']));	
							$newyear = date("Y", strtotime($workshopdata['date']));		
						?>
				            <div class="col-md-12 align-top-botm">
								 <div class="col-md-1">
									<div class="month-box">
										<span><?php echo $newDated; ?> <?php echo $newDate; ?><br/><?php echo $newyear; ?></span>
									</div>				
								</div>
								<div class="col-md-2"><?php echo $workshopdata['location']; ?></div>
				                <div class="col-md-1"><?php echo $workshopdata['no_of_participants']; ?></div>
				                <div class="col-md-1"><?php echo $workshopdata['participate_experiment']; ?></div>
				                <div class="col-md-3 "
									<p style="font-size: 12px;line-height: 20px;text-align: justify;">
				                	<?php
									$workshopdataa = explode(",", $workshopdata['institutes']);
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
										?>
									</p>
								</div>
				                <div class="col-md-2"><?php echo $workshopdata['name']; ?></div>
				                <div class="col-md-2">
				                	<a  href ="<?php echo site_url('viewReport'); ?>/<?php echo $workshopdata['workshop_id']; ?>"  style="cursor: pointer;">
				                		<span id="mew1-<?php echo $workshopdata["workshop_id"]; ?>">►</span>
				                		viewReport
				                	</a
								</div>         
									<script type="text/javascript">
										$("#feedback2-<?php echo $workshopdata["workshop_id"]; ?>
											").click(function(){
											if($('#frn_comment2-
									<?php echo $workshopdata["workshop_id"]; ?>
										').css('display
										') == 'none'){
										$('#frn_comment2-
									<?php echo $workshopdata["workshop_id"]; ?>
										').show('slow');
										$('#mew2-
									<?php echo $workshopdata["workshop_id"]; ?>
										').html("▼");
										} else {
										$('#frn_comment2-
									<?php echo $workshopdata["workshop_id"]; ?>
										').hide('slow');
										$('#mew2-
									<?php echo $workshopdata["workshop_id"]; ?>
										').html("►");
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
											<th>No of participants</th>
											<th>No of sessions</th>
											<th>Duration of sessions</th>
											<th>Subject of sessions</th>
											<th>Labs planned</th>
										</tr>
									</thead>
										<?php
												foreach($view_reports as $workshopdata)
												{
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
							<?php if($workshopdata['upload_attend_sheet'])
									{
							?>
										<form method="post" action="<?php echo site_url('home/approverepost'); ?>">
												<div class="tabbable tabs-left">
								       					 	<ul class="nav nav-tabs">
									      						<li class="active"><a href="#a" data-toggle="tab">Attendance sheets</a></li>
									         					<li ><a href="#b" data-toggle="tab">College report</a></li>
									        					<li><a href="#c" data-toggle="tab">Workshop Photos</a></li>
									         					<li><a href="#d" data-toggle="tab">Comments</a></li>
								        					</ul>
								        			<div class="tab-content">
										         			<div class="tab-pane active" id="a">
											         			<div >
														 			<object data="<?php echo base_url(); ?>uploads/attend_sheet/<?php echo $workshopdata['upload_attend_sheet']; ?>" type="pdf" width="50%" height="100%">
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
																	<object data="<?php echo base_url(); ?>uploads/college_report/<?php echo $workshopdata['college_report']; ?>" type="pdf" width="100%" height="100%">
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
								        				<div class="tab-pane" id="d"><span>comments positive</span></br><?php echo $workshopdata['comments_positive']; ?>
								        					<span>
								        							</br> comments negative</br>	<?php echo $workshopdata['comments_negative']; ?>
								        			 		</span>
								        				</div>
								        			</div>
								     	 	 </div>
							     			 <input type="hidden"name="workshort_report" value="<?php echo $this -> uri -> segment(3); ?>">
								 			 <input type="submit" name="approve" value="approve">
										</form>
				
								<?php

								}
				       			 ?>
							</div>
                                                
        <?php
		}
		?>   
		 </div>
	</div>                      													
    <div role="tabpanel" class="tab-pane" id="messages">
			<div class="col-md-12 align-top-botm">
				<div class="col-md-1">
					Date			
				</div>
				<div class="col-md-1">Location</div>
                <div class="col-md-2 ">Participants </div>
                <div class="col-md-2 ">Sessions</div>
                <div class="col-md-3">Participating Institutes</div>
				<div class="col-md-2">Nodal Coordinator</div>
			</div>
			<?php
					foreach($getWorkshopHistory as $workshopdata)
							{
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
               							 <div class="col-md-3 ">
               					 				<p style="font-size: 12px;line-height: 20px;text-align: justify;">
				               					 	<?php
															$workshopdataa = explode(",", $workshopdata['institutes']);
															foreach ($workshopdataa as $workshopdataget)
																 {
																		$workshopdatagetlen = strlen($workshopdataget);
																		if ($workshopdatagetlen >= 20)
																		  {
																				$institutesnames = substr($workshopdataget, 0, 20);
																				echo $institutesnames . "...";
																				echo "<br>";
																		} else {
																				echo $workshopdataget;
																		}
																}	
													?>
												</p>
										</div>
										<div class="col-md-2"><?php echo $workshopdata['name']; ?></div>
                 						<div class="col-md-1"> <a id='feedback-<?php echo $workshopdata["workshop_id"]; ?>' style="cursor: pointer;"><span id="mew1-<?php echo $workshopdata["workshop_id"]; ?>">►</span>viewReport</a></div>
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
														<object data="<?php echo base_url(); ?>assests/uploads/attendsheet/<?php echo $workshopdata['attendance_sheet']; ?>" type="pdf" width="80%" height="250px">
					  										<p>Alternative text - include a link <a href="<?php echo base_url(); ?>assests/uploads/attendsheet/<?php echo $workshopdata['attendance_sheet']; ?>">to the PDF!</a></p>
														</object>
													</div>
				         						</div>
				         	
				        						<div class="tab-pane" id="b-<?php echo $workshopdata["workshop_id"]; ?>">
				         							<div style="float: right; margin-right: 50%;  ">
														<object data="<?php echo base_url(); ?>assests/uploads/collegereport/<?php echo $workshopdata['college_report']; ?>" type="pdf" width="80%" height="250px">
														  <p>Alternative text - include a link <a href="<?php echo base_url(); ?>assests/uploads/collegereport/<?php echo $workshopdata['college_report']; ?>">to the PDF!</a></p>
														</object>				
								
													</div>
				         		
				
				         						</div>
				        						<div class="tab-pane" id="c-<?php echo $workshopdata["workshop_id"]; ?>">
						         						<img src="<?php echo base_url(); ?>assests/uploads/workshopphotos/<?php echo $workshopdata['college_report']; ?>" width="250px" height="250px">
				
												</div>
				        
				       						 	</div>
		     						 		</div>
			 							</div>
        								<script type="text/javascript">
													$("#feedback-<?php echo $workshopdata["workshop_id"]; ?>
														").click(function(){
														if($('#frn_comment-
												<?php echo $workshopdata["workshop_id"]; ?>
													').css('display
													') == 'none'){
													$('#frn_comment-
												<?php echo $workshopdata["workshop_id"]; ?>
													').show('slow');
													$('#mew1-
												<?php echo $workshopdata["workshop_id"]; ?>
													').html("▼");
													} else {
													$('#frn_comment-
												<?php echo $workshopdata["workshop_id"]; ?>
													').hide('slow');
													$('#mew1-
												<?php echo $workshopdata["workshop_id"]; ?>
													').html("►");
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
						<?php   foreach($getTraininging as $displayTraininging)
							    { ?>
								<tr class="gradeX">
										<td><?php echo $displayTraininging['id']; ?></td>
										<td><?php echo ucfirst($displayTraininging['name']); ?>	</td>									
										<td><?php echo $displayTraininging['location']; ?></td>													
										<td><?php echo $displayTraininging['duration']; ?></td>																										
										<td><?php echo $displayTraininging['description']; ?></td>													
										<td><?php echo $displayTraininging['invitees']; ?></td>																									
													
								</tr>
						<?php  } ?>

						</tbody>
							
		</table>
	</div>
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
													<form class="form-horizontal" method="POST"  action="<?php echo site_url('welcome/traininging'); ?>"  enctype="multipart/form-data">
												  
												  <!-- Product Name -->
												  <div class="form-group">
													<label class="col-sm-4">Name:<span style="color:red">*</span></label>
													<div class="col-sm-6">
													  <input type="text"   required  name = "name" id = "name" >
													</div>
												  </div>
												    <div class="form-group">
													<label class="col-sm-4">Date:<span style="color:red">*</span></label>
													<div class="col-sm-6">
													  <input type="date" required  name = "date" id = "date">
													</div>
												  </div>
												   <div class="form-group">
													<label class="col-sm-4">Location:<span style="color:red">*</span></label>
													<div class="col-sm-6">
													  <input type="text"   required  name = "location" id = "location" >
													</div>
												  </div>
												  <div class="form-group">
													<label class="col-sm-4">Duration:<span style="color:red">*</span></label>
													<div class="col-sm-6">
													  <input type="text"   required  name = "duration" id = "duration" style="width: 10%;">
													</div>
												  </div>
												  
												  
												  <div class="form-group">
													<label class="col-sm-4">Description<span style="color:red">*</span></label>
													<div class="col-sm-6">
													  <textarea name="description" style="width: 46%;" required></textarea>
													</div>
												  </div>
												  <div class="form-group">
													<label class="col-sm-4">Invitees<span style="color:red">*</span></label>
													<div class="col-sm-6">
													  <textarea name="invitees" style="width: 46%;" required></textarea></div>
												  </div>
												  <div class="form-group">
													<div class="col-sm-6">
													
														<?php
														$ses_data = $this -> session -> userdata("user_details");
														?>
														<input type="hidden" name="outreach_id" name="outreach_id" value="<?php echo $ses_data['id']; ?>">
													  
													</div>
												  </div>
												  
												  <div class="form-group">
												  	<label class="col-sm-4">&nbsp;</label>
												  	<div class="col-sm-6">
													<button class="btn btn-success" id="add_nodal_traininging">Add Traininging</button>
												  	</div>
												  	<div class="col-sm-2">
												  
												 
												  </div> <a href="<?php echo base_url('dashboard')?>" style="    float: right;    background-color: #000;    color: #fff; padding: 5px;"> Cancel	</a>
												  </div> 
												<?php /* */ ?>
												  
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
										<div  style="color: #0B8422;"></div>
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
											
											
											<form class="form-horizontal" method="post" name="addStaff" id="addStaff"  role="form" enctype="multipart/form-data">
												  <input type="hidden" name="outreach_id" name="outreach_id" id="outreach_id" >
												  <!-- Product Name -->
												  <div class="form-group">
													<label class="col-sm-4">Name of the Center<span style="color:red">*</span></label>
													<div class="col-sm-6">
													  <input type="text"  name = "location11" id = "location11" class="required form-control" >
													  <?php echo "<span style='color:red'>" . form_error('location') . "</span>"; ?>
													</div>
												  </div>
												    <div class="form-group">
													<label class="col-sm-4">Name of Coordinator<span style="color:red">*</span></label>
													<div class="col-sm-6">
													  <input type="text" name = "name11" id = "name11" class=" form-control" value="<?php echo set_value('name'); ?>">
													  <?php echo "<span style='color:red'>" . form_error('name') . "</span>"; ?>
													</div>
												  </div>
												  <div class="form-group">
													<label class="col-sm-4">Email Id<span style="color:red">*</span></label>
													<div class="col-sm-6">
<input type="email" name="email" id="email">												  <?php echo "<span style='color:red'>" . form_error('email') . "</span>"; ?>
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
													  <input type="text" required   style="width: 10%;" name = "target_workshops" id ="target_workshops" class="required  required-width" value="<?php echo set_value('works'); ?>">
													  <?php echo "<span style='color:red'>" . form_error('works') . "</span>"; ?>
													</div>
												  </div>
												  <div class="form-group">
													<label class="col-sm-4">No of Participants<span style="color:red">*</span></label>
													<div class="col-sm-6">
													  <input type="text" required name = "target_participants" id = "target_participants" class="required required-width" value="<?php echo set_value('participants'); ?>">
													  <?php echo "<span style='color:red'>" . form_error('participants') . "</span>"; ?>
													</div>
												  </div>
												  <div class="form-group">
													<label class="col-sm-4">No of experiments<span style="color:red">*</span></label>
													<div class="col-sm-6">
													 <input type="text" name="target_expriments" id="target_expriments" class="required required-width" >
													</div>
												  </div>
												   <div id="failure" style="color: red;"></div>
												  <div class="form-group">
												  <label class="col-sm-4">&nbsp;</label><div class="col-sm-6">
												 
												  <a class="btn btn-success clr-btn" id="add_nodal_center">Add  Nodal Center</a>
												  </div>
												  
												  </div> 
												<?php /* */ ?>
												  </form>
												    <a id= "hide_form_nodal"style="float: right;    background-color: #000; color: #fff;padding: 5px;">Cancel	</a>
												  
											</div>
											
										</div>
									</div>
									<!-- product details -->
						
							
					
						


		
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
												<?php   foreach($getNodalCoordinator as $coordinator) { ?>
												<tr class="gradeX">
													<td><?php echo $coordinator['nodal_id']; ?></td>
													<td><?php echo ucfirst($coordinator['name']); ?>	</td>									
													<td><?php echo $coordinator['location']; ?></td>													
													<td><?php echo $coordinator['email']; ?></td>													
													<td><?php echo $coordinator['created']; ?></td>													
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
								<!-- /BOX -->
							</div>
										</div>
  </div>
 

</div>

 <script type="text/javascript">
	$("#addnodalcenterdrop").click(function() {
		if ($('#displaynodalform').css('display') == 'none') {
			$('#displaynodalform').show('slow');
			$('#iconform').html("▼");
		} else {
			$('#displaynodalform').hide('slow');
			$('#iconform').html("►");
		}
	});
	$("#hide_form_nodal").click(function() {

		$('#displaynodalform').hide('slow');
		$('#iconform').html("►");
	}); 
</script>
<script type="text/javascript">
	$("#addnodaltraininglink").click(function() {
		if ($('#addnodaltraining').css('display') == 'none') {
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
        
		<script>
																										$("#add_nodal_center").click(function(){
   	$.ajax({
						type: "POST",
						url: "<?php echo site_url('welcome/addNodalcenter'); ?>
							",
							data: {
							"location" : $("#location11").val(),
							"name" : $("#name11").val(),
							"email" : $("#email").val(),
							"mou" : $("#mou").val(),
							"target_workshops" : $("#target_workshops").val(),
							"target_participants" : $("#target_participants").val(),
							"outreach_id" : $("#outreach_id").val(),
							"target_expriments" : $("#target_expriments").val()
							},
							success: function(data) {
							alert(data);
							if($.trim(data) == 'success'){
							location.reload();
							}else{
							$('#failure').html(data)
							}

							}
							});
							});

		</script>
		
        
        
        <section class="infoarea whites">
        <div class="container placemetns-top">
		

<script src="<?php echo base_url(); ?>assests/site/js/jquery.counterup.min.js"></script>
<script src="<?php echo base_url(); ?>assests/site/js/waypoints.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assests/site/js/jquery.simplyscroll.js"></script>
<link rel="stylesheet" href="<?php echo base_url(); ?>assests/site/css/jquery.simplyscroll.css" media="all" type="text/css">

<style>
	.counter1 {
		font-size: 19px;
		font-family: 'Montserrat', sans-serif;
		font-weight: 700;
		line-height: 0px;
	}
</style>
<style>
	.padding-top-tag {
		padding-top: 33px;
	}
	</style>
		</div>
        </section>
