
        	$(function(){
			$( "#mou" ).datepicker({ dateFormat: 'yy-mm-dd' }).val();
		})

    jQuery(document).ready(function( $ ) {
        $('.counter').counterUp({
            delay: 10,
            time: 1000
        });
		setTimeout(function(){
  $('#divaid').hide();
}, 5000);
    });
(function($) {
	$(function() {
		$("#scroller").simplyScroll({orientation:'vertical',customClass:'vert'});
		$("#scroller123").simplyScroll({orientation:'vertical',customClass:'vert'});
	});
})(jQuery);

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