// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults


$(function() {
	$("div.project_box").hover(function() {
		$(this).addClass("project-box-hover");
		$(this).find('.toolbox').removeClass('hidden');
	}, function() {
		$(this).removeClass("project-box-hover");
		$(this).find('.toolbox').addClass('hidden');
	});
	
	$('.close-click').click(function() {
		$(this).fadeOut("slow", function() {
				$(this).remove();
			})
	});
	
	$('#new-user-dialog').dialog({
		autoOpen:false,
		modal:true,
		draggable:false,
		resizeable:false,
		closeOnEscape:true,
		width: 500,
		height: 370
	});
	$('#new-user').click(function(){
		$('#new-user-dialog').dialog('open');
	});
})