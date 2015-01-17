$.fn.slideFadeToggle  = function(speed, easing, callback) {
        return this.animate({opacity: 'toggle', height: 'toggle'}, speed, easing, callback);
};


jQuery(document).ready(function(){
	"use strict";
	
	jQuery('#nav-button').click(function() {
			jQuery('#responsive-nav').slideFadeToggle();
	});
	
	jQuery(window).resize(function() {
  if ( jQuery(window).width() < 1229) {
	  jQuery('#responsive-nav').hide();
	}
	});
	
	jQuery(window).resize(function() {
  if ( jQuery(window).width() > 1229) {
			jQuery('#responsive-nav').show();
	}
	});
	
});	
	