# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
	$("#hero-home-main-layout-body" ).easytabs({
		transitionIn: 'fadeIn',
		transitionOut: 'fadeOut'		
	});
	$('#hero-home-main-layout-body').easytabs('select', '#hero-btn-hero-feed');
	
	# $( "#hero-home-main-layout-body" ).easytabs({
	# 	  animate: false,
	# 	  animationSpeed: 0,
	# 		# collapsedByDefault: false,
	# 		# collapsedClass: ""
	# 		collapsible: false,
	# 		cycle: 0,
	# 	  # defaultTab: "> ul > li#hero-btn-hero-feed-default-li",
	# 	  # panelActiveClass: "hero-home-mini-layout-body-class",
	# 	  # tabActiveClass: "btn large primary",
	# 	  # tabs: "> ul > li",
	# 		transitionIn: 'fadeIn',
	# 		transitionOut: 'fadeOut'
	# 		# transitionCollapse: 'fadeOut',
	# 		# transitionUncollapse: 'fadeOut',
	# 		# updateHash: false,
	# 		# uiTabs: false
	# 	});
	
	$("#hero-home-main-layout-body-tabs-ul > li > a").click (e) ->
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