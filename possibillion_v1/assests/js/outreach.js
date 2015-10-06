jQuery(document).ready(function($) {
	$(".default").each(function(){
		var defaultVal = $(this).attr('title');
		$(this).focus(function(){
			if ($(this).val() == defaultVal){
				$(this).removeClass('active').val('');
			}
		});
		$(this).blur(function() {
			if ($(this).val() == ''){
				$(this).addClass('active').val(defaultVal);
			}
		})
		.blur().addClass('active');
	});
	$('.btn-submit').click(function(e){
		var $formId = $(this).parents('form');
		var formAction = $formId.attr('action');
		defaulttextRemove();
		var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
		$('li',$formId).removeClass('error');
		$('span.error').remove();
		$('.required',$formId).each(function(){
			var inputVal = $(this).val();
			var $parentTag = $(this).parent();
			if(inputVal == ''){
				$parentTag.addClass('error').append('<span class="error">Required field</span>');
			}
			if($(this).hasClass('email') == true){
				if(!emailReg.test(inputVal)){
					$parentTag.addClass('error').append('<span class="error">Enter a valid email address.</span>');
				}
			}
		});
		if ($('span.error').length == "0") {
				$.ajax({
						type: "POST",
						url: "http://localhost/possibillionnew6/welcome/addNodalcenter",
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
							if($.trim(data) == 'success'){
							location.reload();
							}else{
							$('#failure').html(data)
							}

							}
							});
		}
		e.preventDefault();
	});
	$('.btn-traininging').click(function(e){
		var $formId = $(this).parents('form');
		var formAction = $formId.attr('action');
		defaulttextRemove();
		var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
		$('li',$formId).removeClass('error');
		$('span.error').remove();
		$('.required',$formId).each(function(){
			var inputVal = $(this).val();
			var $parentTag = $(this).parent();
			if(inputVal == ''){
				$parentTag.addClass('error').append('<span class="error">Required field</span>');
			}
			if($(this).hasClass('email') == true){
				if(!emailReg.test(inputVal)){
					$parentTag.addClass('error').append('<span class="error">Enter a valid email address.</span>');
				}
			}
		});
		if ($('span.error').length == "0") {
				$.ajax({
						type: "POST",
						url: "http://localhost/possibillionnew6/welcome/traininging",
							data: {
							"name" : $("#name").val(),
							"date" : $("#date").val(),
							"location" : $("#location").val(),
							"duration" : $("#duration").val(),
							"description" : $("#description").val(),
							"invitees" : $("#invitees").val(),
							"outreach_id" : $("#outreach_id").val()
							},
							success: function(data) {
							if($.trim(data) == 'success'){
							location.reload();
							}else{
							$('#failure1').html(data)
							}

							}
							});
		}
		e.preventDefault();
	});
});
function defaulttextRemove(){
	$('.default').each(function(){
		var defaultVal = $(this).attr('title');
		if ($(this).val() == defaultVal){
			$(this).val('');
		}
	});
}
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
	$("#addnodaltraininglink").click(function() {
		if ($('#addnodaltraining').css('display') == 'none') {
			$('#addnodaltraining').show('slow');
			$('#trainingiconform').html("▼");
		} else {
			$('#addnodaltraining').hide('slow');
			$('#trainingiconform').html("►");
		}
	}); 
	jQuery(document).ready(function($) {
		$('.counter').counterUp({
			delay : 10,
			time : 1000
		});
		setTimeout(function() {
			$('#divaid1').hide();
		}, 5000);
	});
	(function($) {
		$(function() {
			$("#scroller").simplyScroll({
				orientation : 'vertical',
				customClass : 'vert'
			});
			$("#scroller123").simplyScroll({
				orientation : 'vertical',
				customClass : 'vert'
			});
		});
	})(jQuery); 
	$(".cc_page").click(function(){
    var search_r = $(this).attr('id');	
	if($('#frn_comment-'+search_r).css('display') == 'none'){
	$('#frn_comment-'+search_r).show('slow');
	$('#mew1-'+search_r).html("▼");
	} else {
	$('#frn_comment-'+search_r).hide('slow');
	$('#mew1-'+search_r).html("►");
	}
    console.log(search_r); // just to check it works

    // I assume this is just for testing, otherwise leaving the page 
    // immediately on click renders getting the id completely moot.
    //window.location.href = "http://imes.********.com/app/userpanel.html#sfpp_page";
});

		$(function() {
			$("#date").datepicker({
				dateFormat : 'yy-mm-dd'
			}).val();
		})