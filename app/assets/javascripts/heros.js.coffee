# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
	$( "#hero-home-mini-layout-sidebar" ).easytabs();
	
	$( "#tab-container" ).easytabs();
	
	$("#hero-home-mini-layout-sidebar-ul > li > a").click (e) ->
		$(this).addClass("btn large primary")
		$(this).parent().siblings().children().removeClass("btn large primary").addClass("btn large")		
		
		
		
		 
		
		
		
		
		
		
	# $("#tabs").easytabs({
	#   animate: true,
	#   animationSpeed: 5000,
	#   defaultTab: "li#tab-2",
	#   panelActiveClass: "active-content-div",
	#   tabActiveClass: "selected-tab",
	#   tabs: "> div > span",
	#   updateHash: false,
	#   cycle: 5000
	# });
	
	# $('#tabs').easytabs('select', '#tab-2');