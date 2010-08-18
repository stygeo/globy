// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults


$(function() {
	$(".project_box").hover(function() {
		$(this).addClass('mouse-over')
	}, function() {
		$(this).removeClass('mouse-over')
	});
})