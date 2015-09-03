
	<div class="contant_left" style="margin:20px 0px 10px 225px;">
<div class="contant_left-main">
<h1 style="font-weight:bold; font-size:18px">My Profile</h1>

<div class="contact-form">	
<form action="<?php echo base_url('enduser/login/changePassword');?>" method="post">
        <input type="hidden" name="old_pass" id="old_pass" value="<?php echo $old_pass;?>">
<input type="hidden" name="sucess_status" id="sucess_status" value="<?php if(isset($sucess_status)) { echo $sucess_status; } else { echo "";} ?>">
<div class="contact-form-row">
<div class="contact-form-row-left1">First Name</div>
<div class="contact-form-row-left2"><?php echo ucfirst($userDetails['first_name']);?></div>
</div>
<div class="contact-form-row">
<div class="contact-form-row-left1">Last Name</div>
<div class="contact-form-row-left2"><?php echo ucfirst($userDetails['last_name']);?></div>
</div>
<div class="contact-form-row">
<div class="contact-form-row-left1">Email &nbsp;&nbsp;</div>
<div class="contact-form-row-left2"><?php echo ucfirst($userDetails['email']);?></div>
</div>	
<div class="contact-form-row">
<div class="contact-form-row-left1">Last Logged In &nbsp;</div>
<div class="contact-form-row-left2"><?php if(empty($userDetails['login_time'])) echo "First time login"; else echo date('M d Y',strtotime($userDetails['login_time']));?></div>
</div>

</div>


</div>
</div>


