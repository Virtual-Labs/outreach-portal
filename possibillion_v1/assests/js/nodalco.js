$(".nodal_id").click(function(){
var nodalid = $(this).attr('id');	
if($("#frn_comment-"+nodalid).css('display') == 'none'){
$("#frn_comment-"+nodalid).show('slow');
$("#mew-"+nodalid).html("▼")
} else {
$("#frn_comment-"+nodalid).hide('slow');
$("#mew-"+nodalid).html("►")
}
});
$(".nodal1_id").click(function(){
var nodalid1 = $(this).attr('id');
	if($("#reportnew1-"+nodalid1).css('display') == 'none'){
		$("#reportnew1-"+nodalid1).show('slow');
		$("#mew2-"+nodalid1).html("▼");
			} else {
	$("#reportnew1-"+nodalid1).hide('slow');
$("#mew2-"+nodalid1).html("►");
	}
			});
			$(".nodal12_id").click(function(){
var nodalid2 = $(this).attr('id');
	if($("#reportnew-"+nodalid2).css('display') == 'none'){
		$("#reportnew-"+nodalid2).show('slow');
			$("#mew1-"+nodalid2).html("▼");
			} else {
			$("#reportnew-"+nodalid2).hide('slow');
$("#mew1-"+nodalid2).html("►");
			}
			});
			


		$(function() {
			$("#mou").datepicker({
				dateFormat : 'yy-mm-dd'
			}).val();
		})
	function datadiding() {
	var geocoder = new google.maps.Geocoder();
		var address = document.getElementById("location").value;
		geocoder.geocode({
			'address' : address
		}, function(results, status) {

			if (status == google.maps.GeocoderStatus.OK) {
				var latitude = results[0].geometry.location.lat();
				var longitude = results[0].geometry.location.lng();
				$("#latitude1").val(latitude);
				$("#longitude1").val(longitude);
			}
		});
	}
		

	/* jQuery(document).ready(function($) {
		$('.counter').counterUp({
			delay : 10,
			time : 1000
		});
		setTimeout(function() {
			$('#divaid').hide();
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
	});
var links = [''];
var links1 = [''];
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

*/