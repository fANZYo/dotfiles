$(document).ready(function(){
	$('.responsive .btn').on('click', function(event){
		ga('send', 'event', 'CTA', 'click', 'Responsive', 1);
	});
	$('.performance .btn').on('click', function(event){
		ga('send', 'event', 'CTA', 'click', 'Performance', 1);
	});
	$('.navigation .btn').on('click', function(event){
		ga('send', 'event', 'CTA', 'click', 'Navigation', 1);
	});
	$('.html5 .btn').on('click', function(event){
		ga('send', 'event', 'CTA', 'click', 'HTML5', 1);
	});
	$('.request .btn').on('click', function(event){
		ga('send', 'event', 'CTA', 'click', 'Request', 1);
	});
	$('.converted').on('click', function(event){
		ga('send', 'event', 'CTA', 'click', 'Converted', 1);
	});
});
