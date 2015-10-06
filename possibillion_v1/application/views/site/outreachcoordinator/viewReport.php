<script src="<?php echo base_url(); ?>assests/css/outreach.css"></script>
<script src="<?php echo base_url(); ?>assests/css/viewreport.css"></script>

<?php $ses_data = $this -> session -> userdata('user_details'); ?>
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
			<div role="tabpanel" class="tab-pane" id="profile">
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
					<th>Labs planned</th>
					</tr>
					</thead>
					<?php
					foreach($viewReports as $workshopdata){
					?>
					<tr class="gradeX">
					<td><?php echo $workshopdata['workshop_id']; ?></td>
					<td><?php echo $workshopdata['name']; ?></td>
					<td><?php echo $workshopdata['location']; ?></td>
					<td><?php echo $workshopdata['institute']; ?></td>
					<td><?php echo $workshopdata['no_of_participants']; ?></td>
					<td><?php echo $workshopdata['no-of_sessions']; ?></td>
					<td><?php echo $workshopdata['duration_of_session']; ?></td>
					<td><?php echo $workshopdata['labs_planned']; ?></td>
					</tr>
					<?php } ?>
					</table>
			<?php if($workshopdata['attendance_sheet']){
			?>
					<form method="post" action="<?php echo site_url('approverepost'); ?>">
						<div class="tabbable tabs-left">
							<ul class="nav nav-tabs">
								<li id="clicka" class="active"><a href="#a" data-toggle="tab">Attendance sheets</a></li>
								<li id="clickb" ><a href="#b" data-toggle="tab">College report</a></li>
								<li id="clickc"><a style="cursor:pointer;">Workshop Photos</a></li>
								<li id="clickd" ><a href="#d" data-toggle="tab">Comments</a></li>
							</ul> 
							<div class="tab-pane" id="c">
								<div>
									<ul class="bxslider">
									<?php $nodalphoto = json_decode($workshopdata['path']);
									 foreach($nodalphoto[0] as $nodalphotos){
									?>
										<li><img src="<?php echo base_url(); ?>assests/uploads/workshopphotos/<?php echo $nodalphotos; ?>"/>
										</li>
									<?php } ?>
									</ul>
								</div>
							</div>
							<div class="tab-content">
								<div class="tab-pane active" id="a">
									
									<div >
										<object  data="<?php echo base_url(); ?><?php echo $workshopdata['attendance_sheet']; ?>" type="application/pdf" width="100%" height= '500px'>
										<p>Alternative text - include a link <a href="<?php echo base_url(); ?>assests/uploads/attendsheet/<?php echo $workshopdata['attendance_sheet']; ?>">to the PDF!</a></p>
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
									<div  >
										<object data="<?php echo base_url(); ?><?php echo $workshopdata['college_report']; ?>" type="application/pdf" width="100%" height= '500px'>
										 	<p>Alternative text - include a link <a href="<?php echo base_url(); ?>assests/uploads/collegereport/<?php echo $workshopdata['college_report']; ?>">to the PDF!</a></p>
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
											<td>Report has the college seal stamped </td>
											<td><input type="radio" name="seal" value="yes">&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="seal" value="no"></td>
										</tr>
									</table>
								</div>
									<div class="tab-pane" id="d">
										<span><b>Comments positive</b></span></br><?php echo $workshopdata['positive_comments']; ?><span>
									</br> <b>Comments negative</b></br>	<?php echo $workshopdata['negative_comments']; ?>
									</span>
									</div>
							</div>
						</div>
					<input type="hidden"name="workshort_id" value="<?php echo $this -> uri -> segment(2); ?>">
					<input type="submit" name="approve" value="Approve" class="approve-btn" style="margin-top: 15px; border-radius: 4px;"> 
					</form>
			<div class="reportsattached">
			</div>
			<div class="signed">
			</div>
			<div class="seal">
			</div>
			<?php } ?>
			</div>
	</div> 
<section class="infoarea whites">
<div class="container placemetns-top">
</div>
</section>
<script src="<?php echo base_url(); ?>assests/site/js/jquery.counterup.min.js"></script>
<script src="<?php echo base_url(); ?>assests/site/js/waypoints.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assests/site/js/jquery.simplyscroll.js"></script>
<link rel="stylesheet" href="<?php echo base_url(); ?>assests/site/css/jquery.simplyscroll.css" media="all" type="text/css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script src="<?php echo base_url(); ?>assests/jquery.bxslider/jquery.bxslider.js"></script>
<link href="<?php echo base_url(); ?>assests/jquery.bxslider/jquery.bxslider.css" rel="stylesheet" />

<script>
	$(document).ready(function() {
		$('.bxslider').bxSlider({
			slideWidth : 600,
			minSlides : 2,
			maxSlides : 3,
			moveSlides : 1,
			pager : false,
			auto : true
		});
		$('#c').hide();
		$('.bx-wrapper').css({
			"margin-left" : "170px"
		});
	});
	$('#clickc').click(function() {
		$('#c').show();
		$('#clickc').addClass('active');
		$('#clicka').removeClass('active');

	});
	$('#clicka').click(function() {
		$('#c').hide();
	});
	$('#clickb').click(function() {
		$('#c').hide();
	});
	$('#clickd').click(function() {
		$('#c').hide();
	}); 
</script>