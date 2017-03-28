window.page = {};

(function(window, document, page){

	'use strict';

	page.init = function(){
		// caching jQuery objects for resuse
		
		page.vars = {
			$win : $(window),
			$body : $('body'),
			$main : $('.main-content-container'),
			$leftNav : $('#menu-primary-menu'),
			$foot : $('footer'),
		};

		// init all the things
		
		/* Don't need initFooter() since we aren't using the left nav template. */
		// self.initFooter();
		self.initMenuToggles();
		self.initModuleBlocks();
		self.initResize();
	};

	var self = {

		// ********************************************************************************
		// Main Init Methods 
		// ********************************************************************************

		// Set height of main content to prevent footer from covering left nav
		// Bind mousewheel event to page body and proxy to handleFooter
		
		initFooter: function(){
			
			// clear existing js style

			page.vars.$main.removeAttr("style");

			var height = page.vars.$win.height(),
				screenWidth = page.vars.$win.width(),
				mainHeight = page.vars.$main.outerHeight();


			if((screenWidth >= 768) && (mainHeight < height - 30)){
				$('.main-content-container').height(height - 30);
			}
			
			if(screenWidth >= 768){
				$('html,body').on('mousewheel', this.handleFooter);
			}
			
		},

		initMenuToggles: function(){
			//alert('test');
			
			//$('.extended-banner img').click(self.handleMenuToggle);
			$('#menu-toggle').click(self.handleMenuToggle);
			$('#leftNav-menu-toggle').click(self.handleMenuToggle);
			jQuery('#global-nav > ul > li').hover(function(){jQuery(this).parents('#global-nav > ul').first().find('.active').removeClass('active');});
			jQuery('#global-nav > ul li.menu-item-has-children > a').focus(function(){
				jQuery(this).parent().addClass('active');
			});
	//		jQuery('#global-nav > ul > li a').focus(function(){jQuery(this).parents('#global-nav > ul > li').first().addClass('active');});

			jQuery('#global-nav > ul li > a').blur(function(){
				var link = jQuery(this);
				setTimeout(function() {
					jQuery( '#global-nav li.active' ).each(function(){
						if (jQuery(this).find(':focus').length < 1) {
							jQuery(this).removeClass('active');
						}
					});
				}, 10);
			});
	//		jQuery('#global-nav > ul > li a').blur(function(){jQuery(this).parents('#global-nav > ul').first().find('.active').removeClass('active');});
		},

		initModuleBlocks: function(){
			// Bind sizing of module blocks to page load event to prevent
			// sizing without images.

			page.vars.$win.on("load", self.handleModuleBlocks);
		},

		// Bind page resize to initModuleBlocks and initFooter
	
		initResize: function(){
			page.vars.$win.on('resize', self.initFooter);
			page.vars.$win.on('resize', self.handleModuleBlocks);
		},

		// ********************************************************************************
		// Helpers 
		// ********************************************************************************

		// Handles restyling of the page to prevent footer from covering left nav

		handleFooter: function() {
			
			var height = page.vars.$win.height(),
				screenWidth = page.vars.$win.width(),
				footerHeight = page.vars.$foot.outerHeight(),
				navHeight = page.vars.$leftNav.outerHeight();

			// Only an issue for tablet and above.
			// Only fires when the footer and nav are larger than window height.
			// The '+30' is to accommodate for the utility bar. It may be better to
			// find a way to calculate it in case we change the size of the bar in
			// the future.

			if((screenWidth >= 768) && (height < navHeight + footerHeight + 30)){
				var docHeight = page.vars.$body.height(),
					unfixLimit = docHeight - height - footerHeight + 30,
					scrollOffset = $(document).scrollTop(),
					navOffset = docHeight - height - footerHeight;

					if(scrollOffset > unfixLimit) {
						$('.left-nav').addClass('affixed');
						$('.left-nav').css({top: navOffset});
					}
					if(scrollOffset <= unfixLimit){
						$('.left-nav').removeClass('affixed');
						$('.left-nav').removeAttr("style");
					}
			}
	
		},

		handleMenuToggle: function(event) {
			if(event.target.id === 'menu-toggle' || event.target.parentNode.id === 'menu-toggle'){
				$('#global-nav').toggle();
			}
			else {
				$('.main-content-container').toggleClass('is-displaced');
				$('.left-nav').toggleClass('is-active');
			}
		},

		handleModuleBlocks: function() {
			// Makes each block the same height within each module
			var screenWidth = page.vars.$win.width(),
				scope = (screenWidth >= 992) ? '.l-main ' : 'body ',
				modules = new Array('.mod-social', '.mod-events', '.mod-rss', '.mod-generic');

			// First clear existing js style, then recalculate

			self.clearStyles($('[class$=-block]'));

			for(var i=0; i<modules.length; i++) {
				var module = modules[i];

				$(scope + module).each( function() {
					var theHeight = 0,
						blocks = $(this).find('[class$=-block]');
					blocks.each(function() {
						if($(this).height() > theHeight) {
							theHeight = $(this).height();
						}
					});

					if(screenWidth >= 768) {
						blocks.each(function() {
							$(this).height(theHeight);
						});
					}
				});
			}
		},

		clearStyles: function(elements) {
			elements.each( function() {
				$(this).removeAttr('style');
			});
		}

	};
	
	$(".gce-feed .date").each( function() {
		var val = $(this).html();
		$(this).html(val.replace(/\s+/g, "<br>"));
	});
	
	/*$("#s").focus(function() {
		alert('focused');
		$(this).parents('.sub-menu').addClass('focused');
	});*/
	
	$("#global-nav li.search").hover(function() {
		$(this).children('.sub-menu').addClass('focused');
		$('#s').focus();
	});
	
	$("#s").blur(function() {
		$(this).parents('.sub-menu').removeClass('focused');
	});
	
	$("#global-nav .menu-item-has-children").hover(function() {
		$("#global-nav .sub-menu").removeClass('focused');
	});

})(window, document, window.page);


	// initialize js layer
	window.page.init();
