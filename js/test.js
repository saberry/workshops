(function($) {
    $(document).ready(function() {
	
	$('#test').scianimator({
	    'images': ['images/test1.png'],
	    'width': 480,
	    'delay': 1000,
	    'loopMode': 'loop'
	});
	$('#test').scianimator('play');
    });
})(jQuery);
